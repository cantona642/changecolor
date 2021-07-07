import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:colorchange/model/colormode.dart';
import 'package:equatable/equatable.dart';

part 'changecolor_event.dart';
part 'changecolor_state.dart';

class ChangecolorBloc extends Bloc<ChangecolorEvent, ChangecolorState> {
  ChangecolorBloc() : super(ChangecolorInitial());

  @override
  Stream<ChangecolorState> mapEventToState(
    ChangecolorEvent event,
  ) async* {
    if (event is ChangeFetch) {
      yield ChangeColorLoaded(ColorModel(false));
    } else if (event is ChangeRed) {
      print(ColorModel(true));
      yield ChangeColorLoaded(ColorModel(true));
    } else if (event is ChangeBlue) {
      print(ColorModel(false));
      yield ChangeColorLoaded(ColorModel(false));
    }
  }
}
