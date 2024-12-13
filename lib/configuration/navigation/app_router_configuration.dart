import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social/configuration/navigation/app_routes.dart';
import 'package:social/configuration/navigation/menu_shell_widget.dart';
import 'package:social/features/error_page/error_page.dart';
import 'package:social/features/posts/pages/posts_page.dart';
import 'package:social/features/search/pages/search_extra_result_page.dart';
import 'package:social/features/search/pages/search_page.dart';
import 'package:social/features/search/pages/search_result_page.dart';
import 'package:social/pages/login_page.dart';
import 'package:social/pages/register_page.dart';


// Абстрактный класс, отвечающий за конфигурацию маршрутов приложения
abstract class AppRouterConfiguration {
  // Создает и возвращает объект GoRouter для управления маршрутизацией
  static GoRouter createRouter() {
    return GoRouter(
      // Устанавливаем начальный маршрут приложения
      initialLocation: AppRoutes.root.path,
      // Указываем страницу, которая будет отображаться в случае ошибки
      errorBuilder: (context, state) => const ErrorPage(),
      // Основные маршруты приложения
      routes: [
        // Создаем маршруты с помощью StatefulShellRoute для поддержки вложенной навигации
        StatefulShellRoute.indexedStack(
          // Оборачиваем дочерние виджеты в MenuShellWidget
          builder: (context, state, child) => MenuShellWidget(child: child),
          branches: [
            // Первый раздел: маршруты для главной страницы
            StatefulShellBranch(
              routes: [
                GoRoute(
                  // Имя маршрута (используется для навигации)
                  name: AppRoutes.root.name,
                  // Путь маршрута
                  path: AppRoutes.root.path,
                  // Страница, отображаемая по этому маршруту
                  builder: (context, state) => const PostsPage(),
                ),
              ],
            ),
            // Второй раздел: маршруты для страницы поиска
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: AppRoutes.search.name,
                  path: AppRoutes.search.path,
                  builder: (context, state) => const SearchPage(),
                  // Вложенные маршруты для результатов поиска
                  routes: [
                    GoRoute(
                      name: AppRoutes.searchResult.name,
                      path: AppRoutes.searchResult.path,
                      // Передаем параметры из URI в страницу результатов поиска
                      builder: (context, state) => SearchResultPage(
                        query: state.uri.queryParameters['q']!,
                      ),
                    ),
                    GoRoute(
                      name: AppRoutes.searchExtraResult.name,
                      path: AppRoutes.searchExtraResult.path,
                      // Передаем дополнительные данные через state.extra
                      builder: (context, state) => SearchExtraResultPage(
                        extra: state.extra! as SearchExtra,
                      ),
                    ),
                  ],
                ),
              ],
            ),
// ЗДЕСЬ ПРОФИЛЬ
            // Третий раздел: маршруты для профиля
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: AppRoutes.profile.name,
                  path: AppRoutes.profile.path,
                  builder: (context, state) => LoginPage(),
                  // Вложенные маршруты для детальной информации профиля
                  routes: [
                    GoRoute(
                      name: AppRoutes.profileInfo.name,
                      path: AppRoutes.profileInfo.path,
                      // Пример страницы, отображающей параметр пути
                      builder: (context, state) => Scaffold(
                        body: Center(
                          child: Text(
                            '${state.pathParameters['id']}',
                            style: const TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                // Отдельный маршрут для регистрации
                GoRoute(
                  name: AppRoutes.register.name,
                  path: AppRoutes.register.path,
                  builder: (context, state) => RegisterPage(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
