import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:intl/intl.dart';

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
  GotoModel model = GotoModel();
  int _price = 0;
  int _person = 1;
  int _saty = 0;
  String text = "";

  int _minus = 0;
  int _coupon = 0;
  int _pay = 0;

  final formatter = NumberFormat("#,###");

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
                        model.setStay(value);
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
                        model.setPerson(value);
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
                  model.setPrice(int.parse(text));
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
                  child: Text("${formatter.format(_price)}"),
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
                      "割引",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text("${formatter.format(_minus)}"),
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
                      "支払額",
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "${formatter.format(_pay)}",
                    style: Theme.of(context).textTheme.headline5,
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
                      "クーポン",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text("${formatter.format(_coupon)}"),
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

      _minus = (_price * 0.35).toInt();
      _coupon = (_price * 0.15).toInt();
      _pay = _price - _minus;
    });
  }
}
