
import 'package:flutter/material.dart';
import 'package:flutter_application_16/pages/home_page.dart';

void main() {
  runApp(const KsilofonApp());
}

class KsilofonApp extends StatelessWidget {
  const KsilofonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ksilofon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
