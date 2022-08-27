import 'package:calculator/widget/calculator_keyboard.dart';

import 'package:flutter/material.dart';

String string = '24 + 8 * 7 =';
//const Color color = Color.fromARGB(82, 216, 12, 12);

const Color color = Color.fromARGB(65, 130, 125, 125);

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Expanded(
            flex: 2,
            child: CalculatorScreen(),
          ),
          Container(
            height: 5,
            color: const Color.fromARGB(96, 110, 99, 99),
            margin: const EdgeInsets.only(left: 50, top: 20),
          ),
          const Expanded(
            flex: 5,
            child: CalculatorKeyboard(
              backgroundColor: color,
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              string,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            child: const Text(
              "24.45",
              style: TextStyle(
                  fontSize: 50, color: Color.fromARGB(255, 35, 201, 41)),
            ),
          ),
        ),
      ],
    );
  }
}
