import 'package:core/src/http/token/token_service.dart';
import 'package:domain/domain.dart';

Future<void> useRequestTokenRefresh({bool remote = true, bool force = false}) async {
  try {
    final i = sl<TokenService>();
    await i.init();
    if (remote && force) {
      await i.refreshToken();
      return;
    }
    if (remote) {
      final lastRefreshDateTime = i.lastRefreshDateTime;
      if (lastRefreshDateTime == null) {
        await i.refreshToken();
        return;
      }
      // don't refresh if the last refresh was less than 3 minutes ago
      // It's limited to the hooks and has no impact on the interceptor.
      // The hooks are used for manual requests and, depending on the case, 
      // it can be called at the same interval, so an unnecessary refresh is 
      // not needed
      final differenceInMinutes = DateTime.now().difference(lastRefreshDateTime).inMinutes;
      if (differenceInMinutes < 3) return;
      await i.refreshToken();
    }
  } catch (_) {}
}

Future<void> useSetTokenData({
  required String accessToken,
  required String expiresIn,
}) async {
  try {
    await sl<TokenService>().setTokenData(
      accessToken: accessToken,
      expiresIn: expiresIn,
    );
  } catch (_) {}
}
