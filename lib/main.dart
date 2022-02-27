import 'package:flutter/cupertino.dart';
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
      title: 'Общежития КубГАУ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              flex: 2,
              child: Image.asset('assets/images/img_kubsau.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[])),
          Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text('Общежитие №20',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.5,
                                  fontSize: 12),
                              textAlign: TextAlign.left),
                          Text(
                            'Краснодар, ул. Калинина, 13',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Roboto',
                                letterSpacing: 0.5,
                                fontSize: 12),
                            textAlign: TextAlign.left,
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Text('27', textAlign: TextAlign.left)
                        ])
                  ])),
          Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          Text(
                            'ПОЗВОНИТЬ',
                            style: TextStyle(color: Colors.green),
                            textAlign: TextAlign.left,
                          )
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.green,
                          ),
                          Text(
                            'МАРШРУТ',
                            style: TextStyle(color: Colors.green),
                            textAlign: TextAlign.left,
                          )
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.green,
                          ),
                          Text(
                            'ПОДЕЛИТЬСЯ',
                            style: TextStyle(color: Colors.green),
                            textAlign: TextAlign.left,
                          )
                        ]),
                  ])),
          Container(
              padding: const EdgeInsets.all(20),
              child: ListView(children: const <Widget>[
                /*Text(
                    'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати' +
                        'общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех' +
                        'нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В'
                            'соответствии с Положением о студенческих общежитиях университета, при поселении'
                            'между администрацией и студентами заключается договор найма жилого помещения.'
                            'Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил'
                            'внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия'
                            'проживания в общежитиях университетского кампуса полностью отвечают санитарным'
                            'нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных,'
                            'читальных залов, комнат самоподготовки, помещений для заседаний студенческих'
                            ' советов и наглядной агитации. С целью улучшения условий быта студентов активно'
                            'работает система студенческого самоуправления - студенческие советы организуют всю'
                            'работу по самообслуживанию.',
                    textAlign: TextAlign.center)*/
              ]))
        ]));
  }
}
