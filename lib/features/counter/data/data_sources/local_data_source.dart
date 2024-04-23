// Local data operations for counter

import 'package:CleanCounter/features/counter/data/models/index.dart';

class CounterDataSource {
  CounterModel getCounter() {
    return CounterModel(count: 5);
  }
}
