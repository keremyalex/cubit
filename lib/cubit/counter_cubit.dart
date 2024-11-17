import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void increment() => emit(CounterIncrement(state.count + 1));

  void decrement() => emit(CounterIncrement(state.count - 1));
}
