
//entry point,where execution starts
void main() {
  // Test cases
  print(calculator(10, 18, '+'));
  print(calculator(33, 5, '-'));
  print(calculator(10, 10, '*'));
  print(calculator(224, 8, '/'));
  print(calculator(28, 0, '/'));
  print(calculator(10, 5, '%'));
  print(calculator(10, 28, '^')); 
}

// Basic Calculator Function
dynamic calculator(double num1, int num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      // Error handling for division by zero
      if (num2 == 0) {
        return 'Error: Division by zero';
      }
      return num1 / num2;
    case '%':
      return num1 % num2;
    default:
      return 'Error: Invalid operator';
  }
}
