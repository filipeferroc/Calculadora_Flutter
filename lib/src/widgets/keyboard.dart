import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;
  ButtonClick(this.value);
}

class NumeroBotao extends ButtonClick {
  NumeroBotao(super.value);
}

class OperacaoBotao extends ButtonClick {
  OperacaoBotao(super.value);
}

class LimparBotao extends ButtonClick {
  LimparBotao(super.value);
}

class LimparTudoBotao extends ButtonClick {
  LimparTudoBotao(super.value);
}

class ResultadoBotao extends ButtonClick {
  ResultadoBotao(super.value);
}

class Keyboard extends StatelessWidget {
  final void Function(ButtonClick click) onBButtonClick;

  const Keyboard({
    super.key,
    required this.onBButtonClick,
  });

  /*@override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Button(
                  value: '7',
                  onPressed: () {
                    onBButtonClick(NumeroBotao('7'));
                  }),
              Button(
                  value: '8',
                  onPressed: () {
                    onBButtonClick(NumeroBotao('8'));
                  }),
              Button(
                  value: '9',
                  onPressed: () {
                    onBButtonClick(NumeroBotao('9'));
                  }),
              Button(
                  value: '÷',
                  onPressed: () {
                    onBButtonClick(OperacaoBotao('/'));
                  }),
            ],
          ),
          Row(
            children: <Widget>[
              Button(
                  value: '4',
                  onPressed: () {
                    onBButtonClick(NumeroBotao('4'));
                  }),
              Button(
                  value: '5',
                  onPressed: () {
                    onBButtonClick(NumeroBotao('5'));
                  }),
              Button(
                  value: '6',
                  onPressed: () {
                    onBButtonClick(NumeroBotao('6'));
                  }),
              Button(
                  value: 'X',
                  onPressed: () {
                    onBButtonClick(OperacaoBotao('*'));
                  }),
            ],
          )
        ],
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
            value: 'AC',
            onPressed: () {
              onBButtonClick(LimparTudoBotao('AC'));
            }),
        Button(
            value: '%',
            onPressed: () {
              onBButtonClick(OperacaoBotao('%'));
            }),
        Button(
            value: '()',
            onPressed: () {
              onBButtonClick(NumeroBotao('()'));
            }),
        Button(
            value: '⌫',
            onPressed: () {
              onBButtonClick(LimparBotao('⌫'));
            }),
        Button(
            value: '7',
            onPressed: () {
              onBButtonClick(NumeroBotao('7'));
            }),
        Button(
            value: '8',
            onPressed: () {
              onBButtonClick(NumeroBotao('8'));
            }),
        Button(
            value: '9',
            onPressed: () {
              onBButtonClick(NumeroBotao('9'));
            }),
        Button(
            value: '÷',
            onPressed: () {
              onBButtonClick(OperacaoBotao('/'));
            }),
        Button(
            value: '4',
            onPressed: () {
              onBButtonClick(NumeroBotao('4'));
            }),
        Button(
            value: '5',
            onPressed: () {
              onBButtonClick(NumeroBotao('5'));
            }),
        Button(
            value: '6',
            onPressed: () {
              onBButtonClick(NumeroBotao('6'));
            }),
        Button(
            value: 'X',
            onPressed: () {
              onBButtonClick(OperacaoBotao('*'));
            }),
        Button(
            value: '1',
            onPressed: () {
              onBButtonClick(NumeroBotao('1'));
            }),
        Button(
            value: '2',
            onPressed: () {
              onBButtonClick(NumeroBotao('2'));
            }),
        Button(
            value: '3',
            onPressed: () {
              onBButtonClick(NumeroBotao('3'));
            }),
        Button(
            value: '-',
            onPressed: () {
              onBButtonClick(OperacaoBotao('-'));
            }),
        Button(
            value: '0',
            onPressed: () {
              onBButtonClick(NumeroBotao('0'));
            }),
        Button(
            value: ',',
            onPressed: () {
              onBButtonClick(NumeroBotao(','));
            }),
        Button(
            value: '=',
            onPressed: () {
              onBButtonClick(ResultadoBotao('='));
            }),
        Button(
            value: '+',
            onPressed: () {
              onBButtonClick(OperacaoBotao('+'));
            }),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final VoidCallback onPressed;
  const Button({super.key, required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Center(
          child: Text(value),
        ));
  }
}
