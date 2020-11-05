import 'package:flutter/material.dart';
import 'OnOffStateEnum.dart';

void main() {
  runApp(DarkTheme());
}

class DarkTheme extends StatefulWidget {
  @override
  _DarkThemeState createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  StateOnOff stateOnOff;
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
  int state = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: stateOnOff == StateOnOff.On ? ThemeData.dark() : ThemeData.light(),
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
                      stateOnOff == StateOnOff.On
                          ? () {
                              stateOnOff = StateOnOff.Off;
                              state = 0;
                            }()
                          : () {
                              stateOnOff = StateOnOff.On;
                              state = 1;
                            }();
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
