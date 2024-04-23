import 'package:CleanCounter/features/counter/domain/entities/index.dart';
import 'package:CleanCounter/features/counter/domain/repositories/counter_repository.dart';

class GetCounterUseCase {
  final CounterRepository counterRepository;

  GetCounterUseCase({required this.counterRepository});

  CounterEntity execute() {
    return counterRepository.getCounter();
  }
}
