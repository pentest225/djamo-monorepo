import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/pages/app_splash_page.dart';
import 'config/routes/app_router_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( ClientApp());
}

class ClientApp extends StatelessWidget {
   ClientApp({super.key});

  final _appRouter = AppRouteModule();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context, __) {
        return AppUIConfigProvider(
          currencyConfig: AppCurrencyConfig.xof(),
          localeConfig: AppLocaleConfig.fr(),
          modalRoutingConfig: UIModalRoutingConfig.empty,
          child: MaterialApp.router(
            title: 'Djamo monorepo',
            debugShowCheckedModeBanner: false,
            theme:AppTheme.clientLight(context).current,
            routerConfig: _appRouter.config(),
            localizationsDelegates: const [
              ...AppLocalizations.localizationsDelegates,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
          )
        );
      }
    );
  }
}
