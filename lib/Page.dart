import 'package:colorchange/bloc/changecolor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
      ),
      body: BlocBuilder<ChangecolorBloc, ChangecolorState>(
        builder: (context, state) {
          if (state is ChangecolorInitial) {
            context.read<ChangecolorBloc>().add(ChangeFetch());
            return CircularProgressIndicator();
          } else if (state is ChangeColorLoaded) {
            return Column(
              children: <Widget>[
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                      color:
                          state.colormodel.isChange ? Colors.red : Colors.blue,
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButton: BlocBuilder<ChangecolorBloc, ChangecolorState>(
          builder: (context, state) {
        if (state is ChangecolorInitial) {
          context.read<ChangecolorBloc>().add(ChangeFetch());
          return CircularProgressIndicator();
        } else if (state is ChangeColorLoaded) {
          return Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<ChangecolorBloc>(context)
                        .add(ChangeBlue(state.colormodel));
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<ChangecolorBloc>(context)
                        .add(ChangeRed(state.colormodel));
                  },
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          );
        } else {
          return CircularProgressIndicator();
        }
      }),
    );
  }
}
