import 'package:CleanCounter/features/counter/data/data_sources/local_data_source.dart';
import 'package:CleanCounter/features/counter/data/repositories/index.dart';
import 'package:flutter/material.dart';
import 'package:CleanCounter/features/counter/presentation/screens/index.dart';
import 'package:provider/provider.dart';

import 'features/counter/domain/use_cases/get_counter_usecase.dart';
import 'features/counter/presentation/providers/counter_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => CounterProvider(GetCounterUseCase(
          counterRepository:
              CounterRepositoryImpl(counterDataSource: CounterDataSource()))),
    ),
  ], child: const MyApp()));
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
      home: const CounterScreen(
        title: 'CleanCounter',
      ),
    );
  }
}
