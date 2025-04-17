import 'dart:developer';

import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

typedef MessagingHubService = MessagingHub;

MessagingHubService get messaging => sl<MessagingHubService>();

@singleton
@internal
class MessagingHub {
  MessagingHub();

  late final EventsHub _events;
  late final NotificationsHub _notifications;
  late final ToastHub _toast;

  EventsHub get events => _events;
  NotificationsHub get notifications => _notifications;
  ToastHub get toast => _toast;

  @PostConstruct()
  void init() {
    _events = EventsHub();
    _notifications = NotificationsHub();
    _toast = ToastHub();
  }

  @disposeMethod
  void dispose() {
    _events.dispose();
    _notifications.dispose();
    _toast.dispose();
  }
}

@internal
class EventsHub {
  EventsHub() {
    _remote = PublishSubject<EventEntity>();
    _local = PublishSubject<EventEntity>();
  }

  late final PublishSubject<EventEntity> _remote;
  late final PublishSubject<EventEntity> _local;

  Stream<EventEntity> get remote => _remote.stream;
  Stream<EventEntity> get local => _local.stream;
  Stream<EventEntity> get subscribe {
    return Rx.merge([remote, local]);
  }

  void sinkInRemote(EventEntity event) {
    log('\n🛜 Incoming Remote Event\n\tName: ${event.type}\n\tSubscription Type: ${event.subscriptionType}\n\tTimestamp: ${event.timestamp}\n🛜');
    _remote.sink.add(event);
  }

  void sinkInLocal(EventEntity event) {
    log('\n✆ Incoming Local Event\n\tName: ${event.type}\n✆');
    _local.sink.add(event);
  }

  void dispose() {
    _remote.close();
    _local.close();
  }
}

@internal
class NotificationsHub {
  NotificationsHub() {
    _remote = PublishSubject<PushNotificationResponse>();
    _local = PublishSubject<PushNotificationResponse>();
    _silent = PublishSubject<PushNotificationResponse>();
    _lastOpened = PublishSubject<PushNotificationResponse>();
    _lastInitialOpened = BehaviorSubject<PushNotificationResponse?>.seeded(null);
  }

  late final PublishSubject<PushNotificationResponse> _remote;
  late final PublishSubject<PushNotificationResponse> _local;
  late final PublishSubject<PushNotificationResponse> _silent;
  late final PublishSubject<PushNotificationResponse> _lastOpened;
  late final BehaviorSubject<PushNotificationResponse?> _lastInitialOpened;

  PushNotificationResponse? get lastInitialOpened => _lastInitialOpened.valueOrNull;

  Stream<PushNotificationResponse> get remote => _remote.stream;
  Stream<PushNotificationResponse> get local => _local.stream;
  Stream<PushNotificationResponse> get silent => _silent.stream;
  Stream<PushNotificationResponse> get lastOpened => _lastOpened.stream.debounceTime(const Duration(milliseconds: 100));

  Stream<PushNotificationResponse> get subscribe {
    return Rx.merge([
      remote,
      local,
      silent,
      lastOpened,
    ]);
  }

  void sinkInRemote(PushNotificationResponse notification) {
    _remote.sink.add(notification);
  }

  void sinkInLocal(PushNotificationResponse notification) {
    _local.sink.add(notification);
  }

  void sinkInSilent(PushNotificationResponse notification) {
    _silent.sink.add(notification);
  }

  void sinkInLastOpened(PushNotificationResponse notification) {
    _lastOpened.sink.add(notification);
  }

  void sinkInLastInitialOpened(PushNotificationResponse notification) {
    _lastInitialOpened.sink.add(notification);
  }

  void clearLastInitialOpened() {
    _lastInitialOpened.sink.add(null);
  }

  void dispose() {
    _remote.close();
    _local.close();
    _silent.close();
    _lastOpened.close();
    _lastInitialOpened.close();
  }
}

// TODO(TseoH): improve
class ToastHub {
  ToastHub() {
    _toast = PublishSubject<ToastMessageObject>();
  }

  late final PublishSubject<ToastMessageObject> _toast;

  Stream<ToastMessageObject> get toast => _toast.stream;

  void push(ToastMessageObject message) {
    _toast.sink.add(message);
  }

  void dispose() {
    _toast.close();
  }
}
