import 'package:bloc/bloc.dart';
import 'package:push_notifications/bloc/counter/counter_event.dart';
import 'package:push_notifications/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementCounter>(_icrementhandler);
    on<DecrementCounter>(_decremntHandler);
  }
  void _icrementhandler(IncrementCounter event, Emitter emit) {
    emit(state.withCopy(counter: state.counter + 1));
  }

  void _decremntHandler(DecrementCounter event, Emitter emit) {
    emit(state.withCopy(counter: state.counter - 1));
  }
}
