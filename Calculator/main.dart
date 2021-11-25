// * Licensed under DO WHAT THE F*CK YOU WANT public license

import 'dart:io';

enum Operation { Sum, Subtract, Divide, Multiply}
void main() {
    const int a = 2;
    const int b = 16;
    
    print("""
Select The operation
-------------------

1. Sum
2. Subtraction
3. Division
4. Multiplication
""");
    final input = stdin.readLineSync();
    print("");

    const operations = {
        '1': Operation.Sum,
        '2': Operation.Subtract,
        '3': Operation.Divide,
        '4': Operation.Multiply,
    };

    switch (operations[input]) {
        case (Operation.Sum):
            print("$a + $b = ${a+b}");
            break;
        
        case (Operation.Subtract):
           print("$a - $b = ${a-b}");
            break;
        
        case (Operation.Divide):
            print("$a / $b = ${a/b}");
            break;
        
        case (Operation.Multiply):
            print("$a * $b = ${a*b}");
            break;
        default:
          print("Invalid operation");
          break;
    }
}