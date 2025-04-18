// import 'package:crashlytics_tower/crashlytics_tower.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';

/// Interceptor for public key pinning.
class PKPGuardInterceptor extends CertificatePinningInterceptor {
  /// Constructs a [PKPGuardInterceptor].
  PKPGuardInterceptor({
    required super.allowedSHAFingerprints,
    super.callFollowingErrorInterceptor = true,
  })  : _store = sl();
        // _crashReportingService = sl();

  final DomainStore _store;
  // final CrashReportingService _crashReportingService;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final isCertError = err.error is CertificateNotVerifiedException || err.error is CertificateCouldNotBeVerifiedException;
    if (isCertError) {
      // _crashReportingService.log('CertificateNotVerifiedException', level: ServiceLogLevel.fatal);
      final updatedSession = _store.authentication.session.copyWith(isPKPValid: false);
      _store.authentication.sink(updatedSession);
    }
    super.onError(err, handler);
  }
}
