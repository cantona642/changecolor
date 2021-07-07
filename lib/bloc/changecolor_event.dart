part of 'changecolor_bloc.dart';

abstract class ChangecolorEvent extends Equatable {
  const ChangecolorEvent();
  @override
  List<Object> get props => [];
}

class ChangeFetch extends ChangecolorEvent {
  @override
  List<Object> get props => [];
}

class ChangeBlue extends ChangecolorEvent {
  final ColorModel colorModel;

  const ChangeBlue(this.colorModel);
  @override
  get props => [colorModel];
}

class ChangeRed extends ChangecolorEvent {
  final ColorModel colorModel;

  const ChangeRed(this.colorModel);
  @override
  get props => [colorModel];
}
