import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPageNoBloc extends StatefulWidget {
  @override
  MainPageBlocState createState() => MainPageBlocState();
}

class MainPageBlocState extends State<MainPageNoBloc> {
  Color _bgColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(
                color: _bgColor,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12)),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButton: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _bgColor = Colors.blue;
                });
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
                setState(() {
                  _bgColor = Colors.red;
                });
              },
              child: Icon(Icons.remove),
              backgroundColor: Colors.red,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _bgColor = Colors.orange;
                });
              },
              child: Icon(Icons.remove),
              backgroundColor: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }

//   int _currentColorIndex = 0;
//   List<Color> _colors = <Color>[Colors.blue, Colors.red, Colors.green];
//   void _incrementColorIndex() {
//     setState(() {
//       if (_currentColorIndex < _colors.length - 1) {
//         _currentColorIndex = 1;
//       } else if (_currentColorIndex < _colors.length - 2) {
//         _currentColorIndex = 2;
//       } else {
//         _currentColorIndex = 0;
//       }
//     });
//   }
}
