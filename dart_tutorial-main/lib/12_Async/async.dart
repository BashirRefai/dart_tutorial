import 'dart:async';
import 'dart:math';

asyncProgragramming() {
  int exampleNumber = 3;
  switch (exampleNumber) {
    case 1:
      return fetch1();
    case 2:
      return fetch2();
    case 3:
      return fetch3();
    case 4:
      return fetch4();
    case 5:
      return fetch5();
    case 6:
      return fetch6();
    case 7:
      return fetch7();
    case 8:
      return timer();
    case 9:
      return locationTracking();
    default:
  }
}

////////// FUTURE /////////////
//--------- 1 ---------
Future apiFunction1() async {
  await Future.delayed(Duration(seconds: 2));
  return {"id": 1, "name": "mohammad", "email": "mohammad@test.com"};
}

fetch1() {
  //getting data from api we must be await for it
  Future data = apiFunction1();
  print(data);
}

//--------- 2 ---------
Future apiFunction2() async {
  await Future.delayed(Duration(seconds: 2));
  return {"id": 1, "name": "mohammad", "email": "mohammad@test.com"};
}

fetch2() async {
  //getting data from api we must be await for it
  var data = await apiFunction2();
  print(data);
}

//-------- 3 ----------
FutureOr apiFunction3(int? userId) async {
  if (userId == null) {
    return "user id must not be a null";
  }
  await Future.delayed(Duration(seconds: 2));
  return {"id": 1, "name": "mohammad", "email": "mohammad@test.com"};
}

fetch3() async {
  var data = await apiFunction3(1);
  print(data);
}

//----------- 4 ---------------
Future apiFunction4() async {
  await Future.delayed(Duration(seconds: 2));
  return {"id": 1, "name": "mohammad", "email": "mohammad@test.com"};
}

fetch4() async {
  Future data = apiFunction4();
  data.then((value) => print(value));
  print('some process');
}

//----------- 5 ---------------
Future apiFunction5_1() async {
  await Future.delayed(Duration(seconds: 3));
  return {"id": 1, "name": "mohammad", "email": "mohammad@test.com"};
}

Future apiFunction5_2() async {
  await Future.delayed(Duration(seconds: 2));
  return {"id": 2, "name": "Ahmad", "email": "ahmad@test.com"};
}

fetch5() async {
  final futures = [apiFunction5_1(), apiFunction5_2()];
  final results = await Future.wait(futures);
  print(results);
}

//-------------- 6 ------------
Future apiFunction6(int? userId) async {
  await Future.delayed(Duration(seconds: 2));
  if (userId == null) {
    throw Exception("user_id must not be null");
  }
  return {"id": 1, "name": "mohammad", "email": "mohammad@test.com"};
}

fetch6() async {
  Future result = apiFunction6(null);
  result.then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });
}

/////////// COMPLETER //////////////
//-------- 7 ----------
Future apiFunction7() async {
  await Future.delayed(Duration(seconds: 2));
  return {"id": 1, "name": "mohammad", "email": "mohammad@test.com"};
}

anotherFunction4() async {
  var data = await apiFunction4();
  print("data fetched");
  return data;
}

///Function depend on data from api
fetch7() async {
  Completer apiComplete = Completer();
  apiComplete.complete(apiFunction7());
  int id = (await apiComplete.future)['id'];
  print("id is $id");
}

///////////// TIMER //////////////////
//------------ 8 ------------
timer() {
  Timer.periodic(Duration(seconds: 10), (timer) {
    //execute every 10 seconds
    print(timer.tick);
    print("time is: ${Duration(seconds: 10) * timer.tick}");
  });
}

/////////// STREAMS ///////////////////
//---------- 9 -----------
locationChanged() async* {
  await Future.delayed(Duration(seconds: 2));
  yield [Random().nextDouble() * 90, Random().nextDouble() * 90];
}

locationTracking() {
  Stream locationStream = locationChanged();
  locationStream.listen((event) => print("Event from listeners: $event"));
}
