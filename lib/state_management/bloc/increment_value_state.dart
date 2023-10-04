part of 'increment_value_bloc.dart';

@immutable
 class IncrementValueState {
  final int value;

  const IncrementValueState({required this.value});

    factory IncrementValueState.initial() => const IncrementValueState(value: 0);

    IncrementValueState copyWith({int? value}) {

      return IncrementValueState(value: value ?? this.value);
    }
}
