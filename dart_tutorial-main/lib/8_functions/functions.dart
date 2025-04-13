import 'dart:math';

functions(int exampleNumber) {
  switch (exampleNumber) {
    case 1:
      fun_1();
      break;
    case 2:
      fun_2();
      break;
    case 3:
      fun_3();
      break;
    case 4:
      fun_4();
      break;
    case 5:
      fun_5(100);
      break;
    case 6:
      fun_6(Point(0, 0), Point(1, 1));
      break;
    case 7:
      fun_8();
      fun_8(name: "mohammad");
      fun_8(name: null);
      break;
    default:
  }
}

//////////// FUNCTIONS //////////////

//========== Void ===========
//------------ 1 -------------
fun_1() {
  print("Hello World");
}

//----------- 2 ------------
void fun_2() {
  print("Hello World");
}

//======== Return value ========
//----------- 3 -----------
fun_3() {
  return 45 + 45;
}

//----------- 4 -----------
int fun_4() {
  return 45 + 45;
}

//========= arrow function =========
//---------- 5 -------------
String fun_5(int number) => "the number is $number";

//======== Pass Parameters =========
//--------- 6 ------------
double fun_6(Point point1, Point point2) {
  return point1.distanceTo(point2);
}

//-------- 7 ----------
fun_7(int year, [int month = 1, int day = 1]) {
  return DateTime(year, month, day);
}

//--------- 8 ------------
void fun_8({String? name}) {
  if (name != null) {
    print(name);
  } else {
    print("name is not passed");
  }
}

//--------- 9 ------------
fun_9({required Point point1, required Point point2, bool? asInteger}) {
  if (asInteger != null && asInteger) {
    return point1.distanceTo(point2).toInt();
  } else {
    return point1.distanceTo(point2);
  }
}

//----------- 10 -----------
(int, int, int) fun_10(int a, int b) {
  int c = a + b;
  return (a, b, c);
}

//--------- 11 ---------
Function fun_11 = () {
  print("I am fun_11 defined like variable");
};

//-------- 12 --------
void Function() fun_12 = () {
  print("I am void function");
};

//-------- 13 ---------
int Function(int, int) fun_13 = (a, b) {
  return a + b;
};

var fun_13_1 = fun_13;

//------------ 14 ----------
void looper(int element) {
  print(element);
}

fun_14() {
  List<int> list = [1, 2, 3, 4, 5];
  list.forEach(looper);
}
