import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:colorchange/model/colormode.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'changecolor_event.dart';
part 'changecolor_state.dart';

class ChangecolorBloc extends Bloc<ChangecolorEvent, ChangecolorState> {
  ChangecolorBloc() : super(ChangecolorInitial());

  @override
  Stream<ChangecolorState> mapEventToState(
    ChangecolorEvent event,
  ) async* {
    if (event is ChangeFetch) {
      ColorModel(Colors.blue);
      yield ChangeColorLoaded(ColorModel(Colors.blue));
    } else if (event is ChangeRed) {
      ColorModel(Colors.red);
      yield ChangeColorLoaded(ColorModel(Colors.red));
    } else if (event is ChangeBlue) {
      ColorModel(Colors.blue);
      yield ChangeColorLoaded(ColorModel(Colors.blue));
    } else if (event is ChangeOrange) {
      ColorModel(Colors.orange);
      yield ChangeColorLoaded(ColorModel(Colors.orange));
    }
  }
}
