import 'package:flutter/material.dart';

import 'package:calculadora_getx/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:calculadora_getx/controllers/calculator_controller.dart';


class MathResult extends StatelessWidget {

  final calculatorController = Get.find<CalculatorController>();


  @override
  Widget build(BuildContext context) {


    return Obx(() => Column(
      children: [
          SubResult( text: '${calculatorController.firstNumber}' ),
          SubResult( text: '${calculatorController.operation}' ),
          SubResult( text: '${calculatorController.secondNumber}' ),
          LineSeparator(),
          MainResultText( text: '${calculatorController.mathResult}' ),
      ],
    ));

  }
}