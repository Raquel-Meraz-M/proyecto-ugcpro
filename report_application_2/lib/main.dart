import 'package:flutter/material.dart';
import 'package:report_application_2/models/app_theme.dart';
import 'package:report_application_2/screens/principal_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi primer App Movil',
      home: const PaginaPrincipal(),
      theme: AppTheme.TemaApp,
    );
  }
}
