//////// INHERITANCE ///////////

//-------- 1 --------
// class A {}
// class B extends A{}

//-------- 2 ---------
// class A {
//   int id;
//   String name;
//   var _private;

//   A(this.id, this.name);
// }

// class B extends A {
//   int money;

//   B( super.id,  super.name, this.money);
//   // B(int id, String name, this.money) : super(id, name);

//   canGetPrivate(){
//     return _private;
//   }
// }

//--------- 3 ----------
// class A {
//   late int id;
//   late String name;

//   A(this.id, this.name);

//   A.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
// }

// class B extends A {
//   late int money;

//   B(super.id, super.name, this.money);

//   B.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
//     money = json['money'];
//   }
// }

//--------- 4 ---------
// class Animal {
//   String name;

//   Animal(this.name);

//   eat() {
//     print("Animal can eat");
//   }
// }

// class Cat extends Animal {
//   Cat(super.name);

//   @override
//   eat() {
//     super.eat();
//     print("cat can eat a bird");
//   }
// }

// class Bird extends Animal {
//   Bird(super.name);

//   @override
//   eat() {
//     print("bird can eat leaves");
//   }
// }

//--------- 5 -------
// class Poly {
//   eat(String s) {}
//   eat(int i) {}
// }

//-------- 6 -------
class Queue {
  List queue;
  Queue(this.queue);

  Queue operator +(Queue other) {
    return Queue(queue + other.queue);
  }

  operator [](int index) {
    return queue[index];
  }
}

fun() {
  Queue q = Queue([1, 2, 3]);
  q[0];
}

Queue q1 = Queue([1, 2, 3]);
Queue q2 = Queue([4, 5, 6]);
Queue q3 = q1 + q2;
