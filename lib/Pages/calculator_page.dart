import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_4/Component/custom_text.dart';
import 'package:flutter_application_4/Component/custom_textfield.dart';
import 'package:flutter_application_4/controller/calculator_controller.dart';
import 'package:get/get.dart';

class Calculator extends StatelessWidget {
  new({super.key});

  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNum1 = TextEditingController();
    TextEditingController txtNum2 = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 57),
          CustomText("Calculator", textColor: Colors.white, fontSize: 17),
          SizedBox(height: 17,),
          CustomTextfield(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter
                  .digitsOnly,
            ],
            Colors.white,
            txtController: txtNum1,
            hint: "input number ",
          ),
          SizedBox(height: 17,),
          CustomTextfield(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter
                  .digitsOnly,
            ],
            Colors.white,
            txtController: txtNum2,
            hint: "input number ",
          ),
          SizedBox(height: 17,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  double num1 = double.parse(txtNum1.text);
                  double num2 = double.parse(txtNum2.text);
                  controller.add(num1, num2);
                },
                child: Text("+"),
              ),
              ElevatedButton(
                onPressed: () {
                  double num1 = double.parse(txtNum1.text);
                  double num2 = double.parse(txtNum2.text);
                  controller.minus(num1, num2);
                },
                child: Text("-"),
              ),
              ElevatedButton(
                onPressed: () {
                  double num1 = double.parse(txtNum1.text);
                  double num2 = double.parse(txtNum2.text);
                  controller.multiple(num1, num2);
                },
                child: Text("x"),
              ),
              ElevatedButton(
                onPressed: () {
                  double num1 = double.parse(txtNum1.text);
                  double num2 = double.parse(txtNum2.text);
                  controller.devide(num1, num2);
                },
                child: Text("/"),
              ),
            ],
          ),
          SizedBox(height: 37),
          Obx(() => Text(controller.sum.toString(),
           style: TextStyle(fontSize: 30,color: Colors.white))),
        ],
      ),
    );
  }
}
