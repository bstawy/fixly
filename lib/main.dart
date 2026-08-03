import 'package:flutter/material.dart';

import 'core/theme/app_theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fixly',
      theme: AppTheme.themeData,
      home: Scaffold(
        appBar: AppBar(title: const Text('Fixly')),
        body: const Center(child: Text('Welcome to Fixly!')),
      ),
    );
  }
}
