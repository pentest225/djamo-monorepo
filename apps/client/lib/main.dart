import 'package:flutter/material.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/pages/app_splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ClientApp());
}

class ClientApp extends StatelessWidget {
  const ClientApp({super.key});

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
          child: MaterialApp(
            title: 'Djamo monorepo',
            debugShowCheckedModeBanner: false,
            theme:AppTheme.clientLight(context).current,
            home:const AppSplashPage(),
            localizationsDelegates: const [
            ...AppLocalizations.localizationsDelegates,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
          ),
        );
      }
    );
  }
}
