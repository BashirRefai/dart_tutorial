// ignore_for_file: unused_local_variable, avoid_function_literals_in_foreach_calls

variables_3() {
  ////////// LIST ////////
  //--------- 1 -------
  // List l1 = [];
  // List<int> l2 = [];
  // List l3 = <int>[];
  // List<int> l4 = <int>[];

  //-------- 2 ----------
  // List l1 = [1, 2, 3, 4, 5];
  // List l2 = List.empty();
  // List l3 = List.empty(growable: true);
  // // equal to List l3 = [];
  // List l4 = List.generate(5, (index) => index);
  // //equal to List l4 = [1,2,3,4,5];
  // List l5 = List.from(l4); // create copy
  // List l6 = l4; // l4 and l6 the same instance
  // List l7 = List.filled(10, 1);

  //----------- 3 ---------
  // List list = [1, 2, 3, 4, 5];
  // print(list[0]);
  // list[0] = -1;
  // print(list);

  //------------ 4 ----------
  // List list = [1, 2, 3, 4, 5];
  // list.add(6);
  // print(list);

  //------------ 5 ----------
  // List list = [1, 2, 3, 4, 5];
  // list.insert(2, 2.5);
  // print(list);

  //------------ 6 ----------
  // List list = [1, 2, 3, 4, 5];
  // list.remove(1);
  // print(list);

  //------------ 7 ----------
  // List list = [1, 2, 3, 4, 5];
  // list.removeAt(4);
  // print(list);

  //----------- 8 ------------
  // List<int> list = <int>[1, 2, 3, 4, 5];
  // print(list.isEmpty);
  // print(list.isNotEmpty);
  // print(list.length);
  // print(list.reversed);
  // print(list.first);
  // print(list.last);
  // print(list.contains(2));
  // print(list.elementAt(1));
  // list[1];
  // print(list.indexOf(3));

  //---------- 9 ---------------
  // List list = [1, 2, 3, 4, 5];
  // list.forEach((element) {
  //   print(element);
  // });

  //------------ 10 ------------
  // List list = [1, 2, 3, 4, 5];
  // for (int element in list) {
  //   print(element);
  // }

  //---------- 11 -------------
  // List list = [1, 2, 3, 4, 5];
  // List<String> stringList;
  // stringList = list.map((e) => "number is $e").toList();
  // print(stringList);

  //====== Built-in loop functions ========
  //--------- 12 -------------
  // List list = [1, 2, 3, 4, 5];
  // print(list.where((element) => element > 2));
  // print(list.firstWhere((element) => element > 5,orElse: () => null));
  // print(list.lastWhere((element) => element > 2));
  // print(list.indexWhere((element) => element > 2));
  // print(list.lastIndexWhere((element) => element > 2));
  // list.removeWhere((element) => element > 2);
  // print(list);

  //------------ 13 -------------
  // List list = [1, 2, 3, 4, 5];
  // List list2 = list.map((e) {
  //   if (e > 2) {
  //     return e;
  //   }
  // }).toList();
  // print(list2);
  // list2.removeWhere((element) => element == null);
  // print(list2);

  //========== List Copy =========
  //---------- 14 -----------
  // List l1 = [1, 2, 3, 4, 5];
  // List l2 = l1;
  // l1.clear();
  // print(l2);

  // --------- 15 ----------
  // List l1 = [1, 2, 3, 4, 5];
  // List l2 = List.from(l1);
  // l1.clear();
  // print(l2);

  //======== List concatenation ========
  //--------- 16 --------
  // List l1 = [
  //   1,
  //   2,
  //   3,
  //   ...[4, 5, 6]
  // ];
  // print(l1);

  //--------- 17 ----------
  // List employees = [1, 2, 3, 4];
  // List staff = [100, 101, 102];
  // List users = [
  //   ...employees,
  //   ...staff,
  // ];
  // print(users);

  ///////////// MAP ///////////////
  //------------ 18 --------------
  // Map data = {
  //   "id": 1,
  //   "name": "mohammad",
  //   "friends": [1, 2, 3, 4, 5],
  // };
  // print(data["id"]);

  //------------ 19 --------------
  // Map<String,dynamic> data = {
  //   "id": 1,
  //   "name": "mohammad",
  //   "friends": [1, 2, 3, 4, 5],
  // };
  // print(data);

  //------------ 20 --------------
  // Map<String, String> data = {
  //   "id": "ledjsfnrd-flkvmfv",
  //   "name": "mohammad",
  // };
  // print(data);

  //------------- 21 -----------
  // Map<int, List> data = {
  //   1: [1, 2, 3, 4, 5, 6, 7, 8],
  //   2: [1, 2, 4, 6, 8],
  //   3: [1, 3, 6, 9],
  // };
  // print(data);

  //------------- 22 -------------
  // Map<String,Map<String,Map<String,List>>> data;

  //------------ 23 --------------
  // Map data = {
  //   "id": 1,
  //   "name": "mohammad",
  //   "friends": [1, 2, 3, 4, 5],
  // };
  // print(data["id"]);

  //------------ 24 --------------
  Map data = {
    "id": 1,
    "name": "mohammad",
    "friends": [1, 2, 3, 4, 5],
  };
  print(data.values);

  //-------------- 25 -------------
  // Map data = {
  //   "id": 1,
  //   "name": "Mohammad",
  //   "job": "ITE",
  // };
  // for (var key in data.keys) {
  //   print(data[key].runtimeType);
  //   print(data[key]);
  // }

  //------------- 26 ------------
  // Map data = {"id": 1};
  // data['name'] = "mohammad";
  // print(data);

  //------------- 27 ------------
  // Map data = {"id": 1};
  // data['id'] = 3;
  // print(data);
}
