import 'package:calculator/widget/keyboard_item.dart';
import 'package:flutter/material.dart';

class CalculatorKeyboard extends StatelessWidget {
  const CalculatorKeyboard({Key? key, required this.backgroundColor})
      : super(key: key);
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: KeyboardItem(
              setBackgroundColor: true,
              data: const ["AC", "Ans", "%", "÷"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              data: const ["7", "8", "9", "*"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              data: const ["4", "5", "6", "-"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              data: const ["1", "2", "3", "+"],
              backgroundColor: backgroundColor,
            )),
        Expanded(
            flex: 1,
            child: KeyboardItem(
              data: const ["0", ".", "="],
              backgroundColor: backgroundColor,
            )),
      ],
    );
  }
}


