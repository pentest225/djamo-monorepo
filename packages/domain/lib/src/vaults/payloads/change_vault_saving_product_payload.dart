import 'package:domain/src/_core/_core.dart';
import 'package:petit_extension/petit_extension.dart';

class ChangeVaultSavingProductPayload extends BasePayload {
  const ChangeVaultSavingProductPayload({
    required this.vaultId,
    this.productId,
  });

  final String vaultId;
  final String? productId;

  Map<String, dynamic> toJson() {
    return {
      'vaultId': vaultId,
      if (productId?.orNull != null) 'productId': productId,
    };
  }

  @override
  List<Object?> get props => [
        vaultId,
        productId,
      ];
}
