import 'dart:async';

void main() async {
  final StreamController<int> streamController = StreamController<int>();
  final Stream<int> stream = streamController.stream;

  Stream<int> generateNumber() async* {
    for (int i = 0; i < 11; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  Stream<int> numbers = generateNumber();

  await for (int number in numbers) {
    print('Число $number');
  }

  streamController.close();
}

// Создайте поток с одиночной подпиской, который будет генерировать числа от 1 до 10
// с интервалом в 1 секунду.
// Создайте слушателя, который будет печатать каждое число, полученное из потока, и
// завершать поток после получения всех чисел.
