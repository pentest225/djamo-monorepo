import 'package:domain/domain.dart';
import 'package:domain/src/src.dart';
import 'package:equatable/equatable.dart';

/// This object is used to store metadata arround the account
/// that are not linked to the API whatsoever but needed to
/// make the app work
class MainAccountStateObject extends Equatable {
  const MainAccountStateObject({
    required this.shouldAcknowledgeNewVirtualCardCreated,
  });

  factory MainAccountStateObject.fromJson(Map<String, dynamic> json) {
    return MainAccountStateObject(
      shouldAcknowledgeNewVirtualCardCreated: DP.asBool(json['shouldAcknowledgeNewVirtualCardCreated']),
    );
  }

  /// This boolean goes to true when a card has been destroyed
  /// See [AccountEntity.isDestroyedAfterNSFs]
  /// It is updated by the AccountsCubit ONLY when the value received is
  /// true.
  /// Then we need a user action to set it to false.
  /// This helps display the "New card has been created" widget
  final bool shouldAcknowledgeNewVirtualCardCreated;

  Map<String, dynamic> toJson() {
    return {
      'shouldAcknowledgeNewVirtualCardCreated': shouldAcknowledgeNewVirtualCardCreated,
    };
  }

  MainAccountStateObject copyWith({
    bool? shouldAcknowledgeNewVirtualCardCreated,
  }) {
    return MainAccountStateObject(
      shouldAcknowledgeNewVirtualCardCreated: shouldAcknowledgeNewVirtualCardCreated ?? this.shouldAcknowledgeNewVirtualCardCreated,
    );
  }

  static const empty = MainAccountStateObject(
    shouldAcknowledgeNewVirtualCardCreated: false,
  );

  bool get isEmpty => this == empty;

  @override
  List<Object> get props => [shouldAcknowledgeNewVirtualCardCreated];
}
