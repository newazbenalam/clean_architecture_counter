import 'package:CleanCounter/features/counter/data/data_sources/index.dart';
import 'package:CleanCounter/features/counter/data/repositories/counter_repository_impl.dart';
import 'package:CleanCounter/features/counter/domain/use_cases/get_counter_usecase.dart';
import 'package:CleanCounter/features/counter/presentation/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  final String title;
  const CounterScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${context.watch<CounterProvider>().counterModel.count}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              Column(
                children: [
                  TextButton(
                      onPressed: () {
                        context.read<CounterProvider>().fetchCounter();
                      },
                      child: const Text("get")),
                  TextButton(
                      onPressed: () =>
                          context.read<CounterProvider>().incrementCounter(),
                      child: const Text("+")),
                  TextButton(
                      onPressed: () =>
                          context.read<CounterProvider>().decrementCounter(),
                      child: const Text("-"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
