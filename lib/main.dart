import 'package:flutter/material.dart';

void main() {
  runApp(DarkTheme());
}

class DarkTheme extends StatefulWidget {
  @override
  _DarkThemeState createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  List<Icon> nightAndDay = [
    Icon(
      Icons.brightness_2,
      size: 100,
    ),
    Icon(
      Icons.wb_sunny_outlined,
      size: 100,
    )
  ];
  ThemeData darkAndWhite;
  bool flip = true;
  int state = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkAndWhite,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      if (flip == true) {
                        flip = false;
                        state = 0;
                        darkAndWhite = ThemeData.light();
                      } else {
                        flip = true;
                        state = 1;
                        darkAndWhite = ThemeData.dark();
                      }
                    });
                  },
                  child: nightAndDay[state],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
