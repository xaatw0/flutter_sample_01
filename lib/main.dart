import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'GOTOトラベル計算機'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _price = 0;
  int _person = 1;
  int _saty = 0;

  int _minus = 0;
  int _coupon = 0;
  int _pay = 0;

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> stayList = List.generate(
      7,
      (index) => DropdownMenuItem(
        child: Text("${index + 1}泊${index + 2}日"),
        value: index + 1,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Text("宿泊日数"),
                DropdownButton(
                  value: _saty,
                  items: [
                    DropdownMenuItem(
                      child: Text("日帰り"),
                      value: 0,
                    ),
                    ...stayList,
                    DropdownMenuItem(
                      child: Text("8泊以上"),
                      value: 10,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _saty = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
