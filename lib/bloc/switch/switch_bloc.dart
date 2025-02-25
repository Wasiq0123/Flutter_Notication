import 'package:bloc/bloc.dart';
import 'package:push_notifications/bloc/switch/switch_event.dart';
import 'package:push_notifications/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<Siwtchenableordiable>(_swictheableevent);
  }

  void _swictheableevent(Siwtchenableordiable event, Emitter emit) {
    emit(state.withCopy(isenable: !state.isenable));
  }
}
