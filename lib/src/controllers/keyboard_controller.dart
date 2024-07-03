import 'package:bt3032124_calculadora/src/widgets/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class KeyboardController extends ChangeNotifier {
  var display = '';
  var novaConta = false;
  var ultOpInserido = false;

  void onButtonClick(ButtonClick click) {
    if (click is NumeroBotao) {
      if (novaConta == true) {
        display = '';
        novaConta = false;
      }
      display += click.value;
      ultOpInserido = false;
    } else if (click is OperacaoBotao) {
      if (ultOpInserido == false) {
        if (display == '') {
          if (click.value == '-') {
            display += click.value;
            ultOpInserido = true;
          }
        } else {
          display += click.value;
          novaConta = false;
          ultOpInserido = true;
        }
      }
    } else if (click is LimparBotao) {
      display = display.substring(0, display.length - 1);
    } else if (click is LimparTudoBotao) {
      display = '';
    } else if (click is ResultadoBotao) {
      if (ultOpInserido == false) {
        if (display != '') {
          display = display.replaceAll(',', '.');
          var resultado = display.interpret();
          display = '$resultado';
          novaConta = true;
        }
      }
    }
    notifyListeners();
  }
}
