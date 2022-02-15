import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    ElevatedButton(
        child: Text("Value:", style: TextStyle(fontSize: 22)),
        onPressed: () {
          _incrementCounter;
        });
    return Scaffold(
      appBar: AppBar(
        title: Text("Инкремент" /*widget.title*/),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Значение инкремента:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              FlatButton(
                  onPressed: _incrementCounter,
                  child: Text('+'),
                  color: Colors.green,
                  textColor: Colors.black),
              FlatButton(
                  onPressed: _decrementCounter,
                  child: Text('-'),
                  color: Colors.red,
                  textColor: Colors.black),
              FlatButton(
                  onPressed: _reset,
                  child: Text('Сбросить'),
                  textColor: Colors.black),
            ],
          )),
    );
  }
}