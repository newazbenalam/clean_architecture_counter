import 'package:CleanCounter/features/counter/data/models/counter_model.dart';
import 'package:CleanCounter/features/counter/domain/use_cases/get_counter_usecase.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  final GetCounterUseCase getCounterUseCase;

  CounterProvider(this.getCounterUseCase);

  CounterModel _counterModel = CounterModel(count: 0);
  CounterModel get counterModel => _counterModel;

  Future<void> fetchCounter() async {
    final count = getCounterUseCase.execute();
    _counterModel = CounterModel(count: count.count);
    debugPrint("Fetching!${_counterModel.count}");
    notifyListeners();
  }

  void incrementCounter() {
    _counterModel = CounterModel(count: _counterModel.count + 1);
    notifyListeners();
  }

  void decrementCounter() {
    _counterModel = CounterModel(count: _counterModel.count - 1);
    notifyListeners();
  }
}
