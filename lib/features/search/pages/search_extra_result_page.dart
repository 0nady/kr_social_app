import 'package:flutter/material.dart';

class SearchExtra {
  final String query; // Хранение строки поиска

  // Конструктор класса, принимающий обязательный параметр query
  SearchExtra({required this.query});
}

class SearchExtraResultPage extends StatelessWidget {
  final SearchExtra extra; // Объект класса SearchExtra для хранения данных поиска

  // Конструктор, принимающий объект SearchExtra
  const SearchExtraResultPage({
    required this.extra, // Передача параметра extra в конструктор
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchExtraResultPage'), // Заголовок страницы
      ),
      body: Center(
        child: Text(extra.query), // Отображение строки поиска (query) на экране
      ),
    );
  }
}
