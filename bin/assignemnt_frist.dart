void main() {
  print(calculate(num1: 10, num2: 5, operation: '*'));
  print(calculate(num1: 8, num2: 3));
}

double calculate({double num1 = 0, double num2 = 0, String? operation}) {
  switch (operation) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) throw ArgumentError('Division by zero');
      return num1 / num2;
    case '%':
      if (num2 == 0) throw ArgumentError('Modulo by zero');
      return num1 % num2;
    default:
      return num1 + num2;
  }
}
