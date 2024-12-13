import 'dart:async';

import 'package:flutter/material.dart';
import 'package:social/configuration/navigation/app_router_widget.dart';
import 'package:url_strategy/url_strategy.dart';

// Основная точка входа в приложение
void main() {
  // Использование runZonedGuarded для обработки ошибок, возникающих в зоне выполнения
  runZonedGuarded(
        () {
      // Установка стратегии отображения URL без хэша (#) в браузере
      setPathUrlStrategy();

      // Запуск приложения
      runApp(const MyApp());
    },
    // Обработчик ошибок, возникающих в зоне выполнения
        (error, stackTrace) {
      print(error); // Логирование ошибки в консоль
    },
  );
}

// Корневой виджет приложения
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Использование кастомного виджета для маршрутизации (навигации)
    return const AppRouterWidget();
  }
}
