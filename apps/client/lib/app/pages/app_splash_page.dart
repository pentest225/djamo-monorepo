import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:client/app/mixims/app_start_mixin.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../view/app_splash_view.dart';


@RoutePage()
class AppSplashPage extends StatefulWidget {
   const AppSplashPage({super.key});

  @override
  State<AppSplashPage> createState() => _AppSplashPageState();
}

class _AppSplashPageState extends State<AppSplashPage> with AppStartMixin {
  late final StreamSubscription<CountryEntities> _countriesSubscription;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      init(context);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const AppSplashView();
  }

}
