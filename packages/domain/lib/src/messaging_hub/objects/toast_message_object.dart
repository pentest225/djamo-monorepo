import 'package:domain/src/_core/types/void_callback.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ToastMessageObject extends Equatable {
  @internal
  const ToastMessageObject({
    required this.message,
    this.type = ToastMessageTypeEnum.none,
    this.hidePrevious = true,
    this.actionText,
    this.actionOnTap,
    this.withCloseIcon = false,
    this.isLongerAction = false,
    this.durationInSeconds = 4,
  }) : assert(message.length > 0, 'message should not be empty');

  factory ToastMessageObject.success({
    required String message,
    bool hidePrevious = true,
    String? actionText,
    VoidCallback? actionOnTap,
    bool withCloseIcon = false,
    bool isLongerAction = false,
    int durationInSeconds = 4,
  }) {
    return ToastMessageObject(
      message: message,
      type: ToastMessageTypeEnum.success,
      hidePrevious: hidePrevious,
      actionText: actionText,
      actionOnTap: actionOnTap,
      withCloseIcon: withCloseIcon,
      isLongerAction: isLongerAction,
      durationInSeconds: durationInSeconds,
    );
  }

  factory ToastMessageObject.error({
    required String message,
    bool hidePrevious = true,
    String? actionText,
    VoidCallback? actionOnTap,
    bool withCloseIcon = false,
    bool isLongerAction = false,
    int durationInSeconds = 4,
  }) {
    return ToastMessageObject(
      message: message,
      type: ToastMessageTypeEnum.error,
      hidePrevious: hidePrevious,
      actionText: actionText,
      actionOnTap: actionOnTap,
      withCloseIcon: withCloseIcon,
      isLongerAction: isLongerAction,
      durationInSeconds: durationInSeconds,
    );
  }

  factory ToastMessageObject.warning({
    required String message,
    bool hidePrevious = true,
    String? actionText,
    VoidCallback? actionOnTap,
    bool withCloseIcon = false,
    bool isLongerAction = false,
    int durationInSeconds = 4,
  }) {
    return ToastMessageObject(
      message: message,
      type: ToastMessageTypeEnum.warning,
      hidePrevious: hidePrevious,
      actionText: actionText,
      actionOnTap: actionOnTap,
      withCloseIcon: withCloseIcon,
      isLongerAction: isLongerAction,
      durationInSeconds: durationInSeconds,
    );
  }

  factory ToastMessageObject.info({
    required String message,
    bool hidePrevious = true,
    String? actionText,
    VoidCallback? actionOnTap,
    bool withCloseIcon = false,
    bool isLongerAction = false,
    int durationInSeconds = 4,
  }) {
    return ToastMessageObject(
      message: message,
      type: ToastMessageTypeEnum.info,
      hidePrevious: hidePrevious,
      actionText: actionText,
      actionOnTap: actionOnTap,
      withCloseIcon: withCloseIcon,
      isLongerAction: isLongerAction,
      durationInSeconds: durationInSeconds,
    );
  }

  factory ToastMessageObject.none({
    required String message,
    bool hidePrevious = true,
    String? actionText,
    VoidCallback? actionOnTap,
    bool withCloseIcon = false,
    bool isLongerAction = false,
    int durationInSeconds = 4,
  }) {
    return ToastMessageObject(
      message: message,
      hidePrevious: hidePrevious,
      actionText: actionText,
      actionOnTap: actionOnTap,
      withCloseIcon: withCloseIcon,
      isLongerAction: isLongerAction,
      durationInSeconds: durationInSeconds,
    );
  }

  final String message;
  final ToastMessageTypeEnum type;
  final bool hidePrevious;
  final String? actionText;
  final VoidCallback? actionOnTap;
  final bool withCloseIcon;
  final bool isLongerAction;
  final int durationInSeconds;

  @override
  List<Object?> get props => [
        hidePrevious,
        actionText,
        actionOnTap,
        withCloseIcon,
        isLongerAction,
        durationInSeconds,
      ];
}

enum ToastMessageTypeEnum { success, error, warning, info, none }
