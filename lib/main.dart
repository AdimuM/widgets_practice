import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Practice'),
        ),
        body: Center(
          child: Column(
            children:[
              SizedBox(height: 30,),
              GreetingWidget(message: 'Hello, this is the the first shop card made by me:)'),
              SizedBox(height: 10,),
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0,3),
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Image.asset("lib/images/laptop.png"),
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "Ноутбук Asus X1502ZA-EJ1426 I5-12500H 8/512GB SSD 15,6 FHD",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50),
                      CounterWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30,),
        Text(
          'In the card : $counter',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(width: 10,),
        ElevatedButton(
          onPressed: incrementCounter,
          child: Text('Add one more'),
        ),
      ],
    );
  }
}
class GreetingWidget extends StatelessWidget {
  final String message;
  const GreetingWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal, ),
    );
  }
}

