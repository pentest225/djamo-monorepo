import 'package:flutter/material.dart';
import 'package:code/code.dart';
import 'package:app_ui/app_ui.dart';

import 'app/pages/app_splash_page.dart';

void main() {
  runApp(const ClientApp());
}

class ClientApp extends StatelessWidget {
  const ClientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Djamo monorepo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home:const AppSplashPage()
    );
  }
}
