import 'package:bt3032124_calculadora/src/controllers/keyboard_controller.dart';
import 'package:bt3032124_calculadora/src/widgets/display.dart';
import 'package:bt3032124_calculadora/src/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final controller = KeyboardController();
  String expression = '';
  String value = '';

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(flex: 2, child: Display(valor: controller.display)),
          Expanded(
              flex: 3,
              child: Keyboard(onBButtonClick: controller.onButtonClick)),
        ],
      ),
    );
  }
}
