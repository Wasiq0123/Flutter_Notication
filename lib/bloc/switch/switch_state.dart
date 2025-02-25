import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  bool isenable;
  SwitchState({this.isenable = true});

  SwitchState withCopy({bool? isenable}) {
    return SwitchState(isenable: isenable ?? this.isenable);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isenable];
}
