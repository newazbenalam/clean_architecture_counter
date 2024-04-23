import 'package:flutter/material.dart';
import 'package:CleanCounter/features/counter/presentation/screens/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CleanCounter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 98, 183)),
        useMaterial3: true,
      ),
      home: const CounterScreen(),
    );
  }
}
