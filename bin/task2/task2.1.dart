void main() async {
  String data = await fetchData();
  print('Ответ сервера: $data');
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Данные загружены!";
}


