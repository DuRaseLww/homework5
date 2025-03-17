import 'dart:async';
import 'Counter.dart';

void main() {
  final StreamController<int> streamController = StreamController<int>();
  final Stream<int> stream = streamController.stream;

  Counter counter = Counter(0, streamController, stream);

  counter.increment();
  counter.increment();

  counter.decrement();
  counter.decrement();
  counter.decrement();

  counter.increment();
  counter.increment();



  counter.streamCounter();

  streamController.close();
}
