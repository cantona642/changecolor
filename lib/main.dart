import 'package:colorchange/PagenoBloc.dart';
import 'package:colorchange/bloc/changecolor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangecolorBloc(),
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}
