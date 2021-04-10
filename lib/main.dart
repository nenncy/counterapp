import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyButton()));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  var defaulttext = 'enter two numbers to addition';
  var num1, num2, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void displayaddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addition'),
  
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(defaulttext,
                  style: TextStyle(color: Colors.black, fontSize: 20.0)),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a number 1',
                  ),
                  controller: t1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a number 2',
                  ),
                  controller: t2,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: RaisedButton(
                  child: Text(
                    'ADD',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: displayaddition,
                  color: Colors.purpleAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('output : $sum' , style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
