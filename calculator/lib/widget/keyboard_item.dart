import 'package:calculator/widget/calculator_button.dart';
import 'package:flutter/material.dart';

class KeyboardItem extends StatelessWidget {
  const KeyboardItem(
      {Key? key,
      required this.data,
      required this.backgroundColor,
      this.setBackgroundColor = false})
      : super(key: key);
  final List<String> data;
  final Color backgroundColor;
  final bool setBackgroundColor;

  @override
  Widget build(BuildContext context) {
    if (data.length == 4) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CalculatorButton(
            backgroundColor: setBackgroundColor ? backgroundColor : null,
            onTap: () {},
            child: Text(
              data[0],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          CalculatorButton(
            backgroundColor: setBackgroundColor ? backgroundColor : null,
            onTap: () {},
            child: Text(
              data[1],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          CalculatorButton(
            backgroundColor: setBackgroundColor ? backgroundColor : null,
            onTap: () {},
            child: Text(
              data[2],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          CalculatorButton(
            backgroundColor: backgroundColor,
            onTap: () {},
            child: Text(
              data[3],
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      );
    } else if (data.length == 3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CalculatorButton(
              onTap: () {},
              child: Text(
                data[0],
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CalculatorButton(
              onTap: () {},
              child: Text(
                data[1],
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              child: CalculatorButton(
                backgroundColor: Color.fromARGB(
                    backgroundColor.alpha + 40,
                    backgroundColor.red - 115,
                    backgroundColor.green - 112,
                    backgroundColor.blue - 112),
                onTap: () {},
                child: Text(
                  data[2],
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      throw "type 'data' accepts only arrays of length 3 or 4";
    }
  }
}
