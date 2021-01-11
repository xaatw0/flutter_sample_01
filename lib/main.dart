import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

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
  String text = "";

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

    List<DropdownMenuItem> peopleList = List.generate(
      10,
      (index) => DropdownMenuItem(
        child: Text("${index + 1}人"),
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
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      "宿泊日数",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: DropdownButton(
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
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      "宿泊人数",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: DropdownButton(
                    value: _person,
                    items: peopleList,
                    onChanged: (value) {
                      setState(() {
                        _person = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: Colors.red,
              rightButtonFn: () {
                setState(() {
                  text = text.substring(0, text.length - 1);
                });
              },
              rightIcon: Icon(
                Icons.backspace,
                color: Colors.red,
              ),
              leftButtonFn: () {
                print('left button clicked');
              },
              leftIcon: Icon(
                Icons.check,
                color: Colors.red,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      "料金",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text("${_price}"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      _price = int.parse(text);
    });
  }
}
