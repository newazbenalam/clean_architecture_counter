// ignore: depend_on_referenced_packages

import 'package:CleanCounter/features/counter/domain/entities/index.dart';

class CounterModel extends CounterEntity {
  CounterModel({required super.count});

  factory CounterModel.fromJson(Map<String, dynamic> map) {
    return CounterModel(count: map['count']);
  }
}
