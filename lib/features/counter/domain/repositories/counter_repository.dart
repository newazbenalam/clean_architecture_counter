// Abstract repository definition for counter
import 'package:CleanCounter/features/counter/domain/entities/index.dart';

abstract class CounterRepository {
  CounterEntity getCounter();
}
