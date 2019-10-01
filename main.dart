import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() =>_MyAppState();
}
class _MyAppState extends State<MyApp> {
final TextEditingController _age = TextEditingController();
final TextEditingController _height = TextEditingController();
final TextEditingController _weight = TextEditingController();
double a= 0.0, b=0.0, c=0.0, result =0.0,fresult=0.0;

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMR CALCULATER USING METRIC '),

        ),
        body: Column(
          children: <Widget>[
          Text("\n\n"),

          
Text("Age"),
            TextField(
              controller: _age,
            ),
            Text("Height"),
            TextField(
              controller: _height,
            ),
            Text("Weight"),
            TextField(
              controller: _weight,
            ),
            RaisedButton(
              child:Text("CALCULATE BMR"),
              onPressed:_onPress,
            ),
            Divider(),
            Text("IF YOU ARE MALE : $result"),
            Text("IF YOU ARE FEMALE $fresult"),
          ]
            )
      )
            );
  }

  void _onPress() {
    setState(() {
      a= double.parse(_age.text);
      b= double.parse(_height.text);
      c= double.parse(_weight.text);
      result =(10 * a ) + (6.25 * b) - (5 * c) + 5;
      fresult =(10 * a ) + (6.25 * b) - (5 * c ) - 161;
    
    });
  }
  }