import 'package:flutter/cupertino.dart'; // Импорт библиотеки Flutter для использования виджетов Cupertino

// Виджет для отображения страницы ошибки
class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key}); // Конструктор виджета, принимает ключ для идентификации

  @override
  Widget build(BuildContext context) {
    // Построение пользовательского интерфейса страницы
    return Center(
      // Выравнивание содержимого по центру
      child: Text(
        '404', // Текст сообщения, указывающий на ошибку
      ),
    );
  }
}

