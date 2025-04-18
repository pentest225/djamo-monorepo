import 'package:app_ui/app_ui.dart';
import 'package:domain/domain.dart';

extension UIVaultTypeEnumMapperX on VaultTypeEnum {
  UIVaultTypeEnum get toUIEnum {
    return switch (this) {
      VaultTypeEnum.classic => UIVaultTypeEnum.classic,
      VaultTypeEnum.challenge => UIVaultTypeEnum.challenge,
      VaultTypeEnum.blocked => UIVaultTypeEnum.blocked,
      VaultTypeEnum.cashback => UIVaultTypeEnum.cashback,
    };
  }
}

extension UITransactionStatusEnumMapperX on TransactionStatusEnum {
  UITransactionStatusEnum get toUIEnum {
    return switch (this) {
      TransactionStatusEnum.completed => UITransactionStatusEnum.completed,
      TransactionStatusEnum.failed => UITransactionStatusEnum.failed,
      TransactionStatusEnum.frozen => UITransactionStatusEnum.frozen,
      _ => UITransactionStatusEnum.pending,
    };
  }
}
