// ignore_for_file: unnecessary_getters_setters, prefer_initializing_formals, unused_element

//-------- 1 --------
class A1 {
  int _id;
  String name;

  set id(int value) => _id = value;
  int get id => _id;

  _nameToLowerCase() => name.toLowerCase();

  A1(this._id, this.name);
}

//-------- 2 --------
class A2 {
  int id;
  String name;

  A2({required this.id, required this.name, lastname});
}

//--------- 3 -----------
class A3 {
  final int id;
  final String name;
  String? lastName;

  A3(this.id, this.name);

  changeName() {
    // name = "";
  }
}

//--------- 4 ---------
class A4 {
  static String secretKey = "I am a secret key";
  int id;
  String name;

  A4(this.id, this.name);

  static printSecretKey() => print(secretKey);

  // static printId() => print(id);
}

//-------- 5 --------
class A5 {
  late int id;
  late String name;

  A5(int id, String name) {
    this.id = id;
    this.name = name;
  }

  similarName(String name) {
    return this.name == name;
  }
}

//------- 6 --------
class A6 {
  late int id;
  late String name;

  A6(this.id, this.name);

  A6.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

//--------- 7 --------
class A7 {
  late int id;
  late String name;

  A7(this.id, this.name);

// json = {"id":0,"name":"mohammad"}
  A7.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

//----------- 8 ----------
class A8 {
  int _money = 10000;

  Function(int money, DateTime date) onMoneyChanged;
  A8({required this.onMoneyChanged});

  getMoney(int quantity) {
    _money -= quantity;
    onMoneyChanged(_money, DateTime.now());
  }

  addMoney(int quantity) {
    _money += quantity;
    onMoneyChanged(_money, DateTime.now());
  }
}

A8 account1 = A8(
  onMoneyChanged: (money, date) {
    print("There is in my account: $money at: $date");
  },
);

A8 account2 = A8(
  onMoneyChanged: (money, _) {
    print("There is in my account: $money");
  },
);
