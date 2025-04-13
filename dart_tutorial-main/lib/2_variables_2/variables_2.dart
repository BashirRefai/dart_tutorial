void variables_2() {
  //////////// VAR //////////////
  //---------- 1 -----------
  var i = 2;
  print(i.runtimeType);

  //---------- 2 -----------
  // var d = 6.5;
  // print(d.runtimeType);

  //----------- 3 ----------
  // var s = "string";
  // print(s.runtimeType);

  //------------- 4 ---------
  // var si = "I am string but I want to be an integer";
  // si = 5;

  ///////////// DYANMIC //////////////
  // dynamic si = "I am string but I want to be an integer";
  // si = 5;
  // si = true;

  /////////// NULL SAFETY ////////////
  //--------- 1 --------------
  // int i1; // it must contain an integer value
  // print(i1);

  //---------- 2 ------------
  // int i;
  // i = 2;
  // print(i);

  //----------- 3 ------------
  // int? i2; // it can contain an value or NULL
  // print(i2);

  //----------- 4 ---------------
  // int? i;
  // print(i!); // if developer sure that i here musn't be null

  //------------ 5 --------------
  // int? i = 5;
  // print(i!); // compiler tell me that i is not null and no need for null check
}
