//Crate the abstrct class for eveent
import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

//create the  increment event
class IncrementCounter extends CounterEvent {}

//created the decerement event
class DecrementCounter extends CounterEvent {}
