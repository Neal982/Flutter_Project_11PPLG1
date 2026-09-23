import 'package:get/get.dart';

class CalculatorController extends GetxController {

  var sum = 0.0.obs;

  void add (double num1, double num2){
    double sumAdd = num1 + num2;
    sum.value = sumAdd;
    
  }

  void minus (double num1, double num2){
    double sumMinus = num1 - num2;
     sum.value = sumMinus;
  }

  void multiple (double num1, double num2){
    double sumMultiple = num1 * num2;
     sum.value = sumMultiple;
  }

   void devide (double num1, double num2){
    double sumDevide = num1 / num2;
     sum.value = sumDevide;
  }
}