import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _state = true;

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      setState(() {
        _state = !_state;
      });
      //print(_state);  //for testing purposes
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: _state == true ? Colors.black : Colors.green,
                  
                
                ),
              ),
              Expanded(
                child: Container(
                  color: _state == true ? Colors.red : Colors.black,
                  
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: _state == true ? Colors.green : Colors.orange,
                  
                
                ),
              ),
              Expanded(
                child: Container(
                  color: _state == true ? Colors.orange : Colors.red,
                 
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}