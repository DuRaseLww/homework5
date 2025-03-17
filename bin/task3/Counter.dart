import 'dart:async';

class Counter {
  int _count;
  final StreamController streamController;
  final Stream<int> stream;

  Counter(this._count, this.streamController, this.stream);

  int get count => _count;

  set count(int value) {
    _count = value;
  }

  void increment() {
    count++;
    streamController.add(count);
  }

  void decrement() {
    count--;
    if (count < 0) {
      streamController.addError(Exception("Ошибка! Счетчик меньше 0!"));
      streamController.close();
    }
    try {
      streamController.add(count);
    } catch (e){
      print("Счетчик меньше 0!");
    } finally {
      print("Счетчик равен: $count");
      streamController.close();
    }
  }

  Future<void> streamCounter() async {
    streamController.stream.listen((data) => print('count = $data'));
  }
}
