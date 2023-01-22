// void main() {
//   // sum();
//   // sumparams(3, 3);
//   // var sum1 = sumReturn(5, 10);
//   // print(sum1);
//   // sumReq(firstNumber: 100, secondNumber: 200, third: 100);
//   // sumFunction(
//   //   23,
//   //   24,
//   //   (int f, int s) {
//   //     print('Function sum ${f + s}');
//   //   },
//   // );
//   // sumFuture(12, 12);
//   sum();
//   print('after Future');
// }

// void sum() {
//   print(2 + 3);
// }

// void sumparams(int a, int b) {
//   print('${a + b}');
// }

// int sumReturn(int a, int b) {
//   return a + b;
// }
Future<void> main() async {
  await sum();
  print('after Future');
}

Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print('Sum functions ${a + b}');
  return a + b;
}

Future<void> sum() async {
  await sumFuture(33, 44);
  print('in just Sum');
}

// void sumReq(
//     {required int firstNumber, required int secondNumber, int third = 0}) {
//   // if (third == null) {
//   //   third = 0;
//   // }
//   print(firstNumber + secondNumber + third);
// }

// void sumFunction(int a, int b, void Function(int, int) customSum) {
//   customSum(a, b);
// }
