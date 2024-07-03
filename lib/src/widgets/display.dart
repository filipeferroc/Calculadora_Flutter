import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  //final String expression;
  final String valor;
  const Display({super.key, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            /*Text(
              expression,
              style: Theme.of(context).textTheme.displayLarge,
            ),*/
            Text(
              valor,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
