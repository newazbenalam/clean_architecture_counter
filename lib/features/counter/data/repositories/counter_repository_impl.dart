// Repository implementation for counter

import 'package:CleanCounter/features/counter/data/data_sources/index.dart';
import 'package:CleanCounter/features/counter/domain/entities/counter_entity.dart';
import 'package:CleanCounter/features/counter/domain/repositories/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterDataSource counterDataSource;

  CounterRepositoryImpl({required this.counterDataSource});

  @override
  CounterEntity getCounter() {
    return counterDataSource.getCounter();
  }
}
