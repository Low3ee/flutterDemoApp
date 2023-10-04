// ignore_for_file: unnecessary_set_literal

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'increment_value_event.dart';
part 'increment_value_state.dart';

class IncrementValueBloc extends Bloc<IncrementValueEvent, IncrementValueState> {
  IncrementValueBloc() : super(IncrementValueState.initial()) {

    on<AddEvent>((event, emit) {
          final int initValue =state.value;

          emit(state.copyWith(value: initValue + 1));


    });
    
    
    }
  }
