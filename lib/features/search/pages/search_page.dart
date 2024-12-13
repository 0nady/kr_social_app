import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social/configuration/navigation/app_routes.dart';
import 'package:social/features/search/pages/search_extra_result_page.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key}); // Конструктор, который вызывает конструктор родительского класса StatefulWidget

  @override
  State<SearchPage> createState() => _SearchPageState(); // Создание состояния для этого виджета
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController _searchTextController;
  // Контроллер для управления текстом, введенным в поле поиска

  @override
  void initState() {
    super.initState();

    _searchTextController = TextEditingController(text: 'asd');
    // Инициализация контроллера с начальным значением 'asd'
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    // Освобождение ресурсов контроллера, когда виджет уничтожается

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          // Добавление отступов вокруг содержимого
          child: Column(
            children: [
              TextFormField(
                controller: _searchTextController,
                // Поле ввода текста с контроллером, который управляет состоянием поля
              ),
              FilledButton(
                onPressed: () {
                  context.goNamed(
                    AppRoutes.searchResult.name, // Переход на страницу результатов поиска
                    queryParameters: {'q': _searchTextController.text},
                    // Передача введенного текста как параметра запроса
                  );
                },
                child: Text('Search'), // Кнопка для поиска, переход к результатам
              ),
              FilledButton(
                onPressed: () {
                  context.goNamed(
                    AppRoutes.searchExtraResult.name,
                    // Переход на страницу с дополнительными результатами поиска
                    extra: SearchExtra(query: _searchTextController.text),
                    // Передача объекта SearchExtra с запросом как дополнительного параметра
                  );
                },
                child: Text('Search with extra'), // Кнопка для поиска с дополнительными данными
              ),
            ],
          ),
        ),
      ),
    );
  }
}
