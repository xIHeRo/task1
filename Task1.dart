import 'dart:io';

void main() {
  print("Welcome to Casio Calculator :)");
  print("-------------------------------- ");
  print("Available Options :");
  print("Press 1 : To Do Operation on Two numbers only");
  print(
      "Press 2 : To Do Operation on List of 8 numbers Ex: Add 4 numbers to 4 numbers");

  int Switch_Num = int.parse(stdin.readLineSync()!);

  switch (Switch_Num) {
    case 1:

      //Getting Information from User

      print("Enter the first Number");

      var First_Num = double.parse(stdin.readLineSync()!);

      print("Enter the Operator [+,-,*,/]");

      var operator = stdin.readLineSync();

      print("Enter the Second Number");

      var Second_Num = double.parse(stdin.readLineSync()!);

      double ans = 0;
      switch (operator) {
        case "+":
          ans = First_Num + Second_Num;
          break;

        case "-":
          ans = First_Num - Second_Num;
          break;

        case "*":
          ans = First_Num * Second_Num;
          break;

        case "/":
          ans = First_Num / Second_Num;
          break;
      }

      print("Result of $First_Num $operator $Second_Num = $ans");
      break;

    case 2:
      //------------------------------------------------------------------------
      //For Entery of Numbers at first order Ex: 1+2=3 (it is 1)
      print("Please Enter The First Numbers in order one by one :");
      List<double> list_1 = [];
      for (int i = 0; i < 4; i++)
        list_1.add(double.parse(stdin.readLineSync().toString()));

      //------------------------------------------------------------------------
      //For Entery of Operators
      print("Please Enter The Operators in order one by one :");
      List<String> operators = [];
      for (int i = 0; i < 4; i++) {
        operators.add(stdin.readLineSync().toString());
      }

      //------------------------------------------------------------------------
      //For Entery of Second Numbers at second order Ex: 1+2=3 (it is 2)
      print("Please Enter The Second Numbers in order one by one :");
      List<double> list_2 = [];
      for (int i = 0; i < 4; i++) {
        list_2.add(double.parse(stdin.readLineSync().toString()));
      }
      //------------------------------------------------------------------------
      //For doing the Operation:

      print("The Answer is:");
      List<double> listAns = [];

      // Conversion list
      // var OperatorsConversionList = new List<String>.from(List_Operators);

      for (int i = 0; i < 4; i++) {
        if (operators[i] == "+")
          listAns.add(list_1[i] + list_2[i]);
        else if (operators[i] == "-")
          listAns.add(list_1[i] - list_2[i]);
        else if (operators[i] == "*")
          listAns.add(list_1[i] * list_2[i]);
        else if (operators[i] == "/") listAns.add(list_1[i] / list_2[i]);
      }
      //Printint the Answer

      for (int i = 0; i < 4; i++)
        print("${list_1[i]}  ${operators[i]} ${list_2[i]} = ${listAns[i]}");
      break;
  }
}
