import 'package:domain/domain.dart';

/// Extension on Uri to get the complete path of the uri.
extension CoreUriExtension on Uri {
  /// Returns the complete path of the uri.
  String get completePath => query.isNotEmpty ? '$path?$query' : path;

  /// Check if the uri is for payment link confirmation.
  bool get isOldPaymentLinkConfirmation => (path == '/' || path.isEmpty) && queryParameters['type'] == 'payment_confirmation' && queryParameters.containsKey('chargeId');

  /// Retrieve payment link amount from the uri.
  double get paymentLinkAmount => DP.asDouble(queryParameters['amount']);

  /// Retrieve the payment link charge id from the uri.
  String get paymentLinkChargeId => queryParameters['chargeId'] ?? '';
}
