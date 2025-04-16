import 'package:flutter/material.dart';
import 'package:code/code.dart';
import 'package:app_ui/app_ui.dart';

void main() {
  runApp(const ClientApp());
}

class ClientApp extends StatelessWidget {
  const ClientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Client App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const ClientHomePage(title: 'Client Dashboard'),
    );
  }
}

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({super.key, required this.title});

  final String title;

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
  final String _clientInfo = CodeUtils.formatText("Client Information");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Client Application Dashboard',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            Text(_clientInfo),
            const SizedBox(height: 20),
            // Utilisation du widget partagé du package app_ui
            CommonButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Action effectuée!')),
                );
              },
              label: 'Action Client',
              color: Colors.orange,
            ),
            const SizedBox(height: 30),
            // Nous utiliserons les assets générés ici plus tard
          ],
        ),
      ),
    );
  }
}