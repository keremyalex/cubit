part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
  final int count;
  const CounterState({this.count = 0});
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(count: 0);
}

final class CounterIncrement extends CounterState {
  const CounterIncrement(int count) : super(count: count);
}
