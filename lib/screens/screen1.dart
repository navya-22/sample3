import 'package:flutter/material.dart';
import 'package:sample3/widgets/cust_text.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final TextEditingController _textEditingController1 = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();
  double? result;

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 100,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Simplistic Calculator',
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.topRight,
            child: Text(
              'Result : ${result ?? 56}',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          sizedBox,
          const Divider(
            color: Colors.grey,
            indent: 3,
            endIndent: 3,
            thickness: 3,
          ),
          sizedBox,
          TextFormField(
            controller: _textEditingController1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter a number',
            ),
          ),
          sizedBox,
          TextFormField(
            controller: _textEditingController2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter a number',
            ),
          ),
          sizedBox,
          Expanded(
            child: Wrap(
              spacing: 150,
              children: [
                CustText(
                  text: '+',
                  onPressed: () {
                    double number1 = double.parse(_textEditingController1.text);
                    double number2 = double.parse(_textEditingController2.text);
                    setState(() {
                      result = number1 + number2;
                      print(result);
                    });

                  },
                ),
                CustText(
                  text: '-',
                  onPressed: () {
                    double number1 = double.parse(_textEditingController1.text);
                    double number2 = double.parse(_textEditingController2.text);
                setState(() {
                  result = number1 - number2;
                   });


                  },
                ),
                CustText(
                  text: '*',
                  onPressed: () {
                    double number1 = double.parse(_textEditingController1.text);
                    double number2 = double.parse(_textEditingController2.text);
                    setState(() {
                      result = number1 * number2;
                    });
                  },
                ),
                CustText(
                  text: '/',
                  onPressed: () {
                    double number1 = double.parse(_textEditingController1.text);
                    double number2 = double.parse(_textEditingController2.text);
                    setState(() {
                      result = number1 / number2;
                    });


                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
