
import 'dart:math';

class Function_BMI {
    Function_BMI(this.weight,this.height);
    final int weight;
    final int height;
    double _bmi=0;
    String status(){
      _bmi=weight/(pow((height/100), 2));
      return _bmi.toStringAsFixed(1);
    }

    String digit(){
      if(_bmi>=25.0){
        return 'OverWeight';
      }else if(_bmi>=18.5){
        return 'Normal';
      }else{
        return 'UnderWeight';
      }
    }

    String description(){
      if(digit()=='OverWeight'){
        return 'You Need to Control your weight and do workout daily';
      }else if(digit()=='Normal'){
        return 'You are perfect in Shape. Just Maintain in future';
      }else{
        return 'you need to improve your Diet and Do excercise on daily basis';
      }
    }
}