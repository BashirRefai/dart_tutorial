// ignore_for_file: unnecessary_type_check

variables_4() {
  int exampleNumber = 0;
  switch (exampleNumber) {
    case 1:
      duration();
      break;
    case 2:
      date();
      break;
    case 3:
      typeCheck();
      break;
    default:
  }
}

///////// Duration ////////////
//-------- 1 ------------
duration() {
  Duration d1 = Duration.zero;
  Duration d2 = Duration(minutes: 2);
  Duration d3 = Duration(minutes: 2, seconds: 30);
  print("d1 is $d1");
  print("d2 is $d2");
  print("d3 is $d3");
}

////////// DateTime ////////
//--------- 2 ----------
date() {
  DateTime time1 = DateTime.now();
  DateTime time2 = DateTime(2010, 5, 5);
  print("time1 is $time1");
  print("time2 is $time2");
}

////////// Type Check //////////
//------ 1 -----------
typeCheck() {
  var data1 = 1;
  print("data1 is: ${data1.runtimeType}");
  print("Is data1 type double? ${data1 is double}");
  print("Is data1 type num? ${data1 is num}");
  var data2 = Duration.zero;
  print("data2 is: ${data2.runtimeType}");
  print("Is data2 type DateTime? ${data2 is DateTime}");
  print("Is data2 type Duration? ${data1 is Duration}");
}
