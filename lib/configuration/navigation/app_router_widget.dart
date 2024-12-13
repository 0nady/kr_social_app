import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social/configuration/navigation/app_router_configuration.dart';

// Главный виджет приложения, который настраивает маршрутизацию
class AppRouterWidget extends StatefulWidget {
  const AppRouterWidget({super.key});


  @override
  State<AppRouterWidget> createState() => _AppRouterWidgetState();
}

class _AppRouterWidgetState extends State<AppRouterWidget> {
  // Переменная для хранения конфигурации маршрутов
  late final GoRouter _routerConfig;

  @override
  void initState() {
    super.initState();
    // Инициализируем маршруты при создании состояния виджета
    _routerConfig = AppRouterConfiguration.createRouter();
  }

  @override
  Widget build(BuildContext context) {
    // Создаем приложение с маршрутизацией
    return MaterialApp.router(
      // Устанавливаем конфигурацию маршрутизатора
      routerConfig: _routerConfig,
      // Указываем название приложения
      title: 'Flutter Demo',
      // Применяем тему приложения
      theme: ThemeData(
        // Настраиваем цветовую схему с использованием базового цвета
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Включаем использование Material Design 3
        useMaterial3: true,
      ),
    );
  }
}
