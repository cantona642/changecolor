part of 'changecolor_bloc.dart';

abstract class ChangecolorState extends Equatable {
  const ChangecolorState();

  @override
  List<Object> get props => [];
}

class ChangecolorInitial extends ChangecolorState {}

class ChangeColorLoaded extends ChangecolorState {
  final ColorModel colormodel;

  ChangeColorLoaded(this.colormodel);
  @override
  get props => [colormodel];
}
