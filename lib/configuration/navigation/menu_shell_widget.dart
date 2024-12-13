import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social/configuration/navigation/app_routes.dart';

// Виджет для отображения оболочки с меню навигации
class MenuShellWidget extends StatelessWidget {
  // Список маршрутов для нижней навигации
  static const List<RouteInfo> _routes = [
    AppRoutes.root, // Главная страница
    AppRoutes.search, // Страница поиска
    AppRoutes.profile, // Страница профиля
  ];

  // Виджет, который будет отображаться внутри оболочки
  final StatefulNavigationShell child;

  const MenuShellWidget({
    required this.child, // Дочерний виджет
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Основной контент будет передан через child
      body: child,
      // Нижняя навигационная панель
      bottomNavigationBar: NavigationBar(
        // Устанавливаем текущий индекс выбранной страницы
        selectedIndex: child.currentIndex,
        // Обработчик для выбора новой вкладки
        onDestinationSelected: (int index) => context.goNamed(_routes[index].name), // Переход по выбранному маршруту
        // Определяем элементы навигации
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home), // Иконка для главной страницы
            label: 'Home', // Текст для главной страницы
          ),
          NavigationDestination(
            icon: Icon(Icons.search), // Иконка для страницы поиска
            label: 'Search', // Текст для страницы поиска
          ),
          NavigationDestination(
            icon: Icon(Icons.person), // Иконка для страницы профиля
            label: 'Profile', // Текст для страницы профиля
          ),
        ],
      ),
    );
  }
}
