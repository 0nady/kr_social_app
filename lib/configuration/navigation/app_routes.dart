// Тип для описания информации о маршруте: имя и путь маршрута
typedef RouteInfo = ({String name, String path});

// Абстрактный класс для хранения информации о маршрутах приложения
abstract class AppRoutes {
  // Определение постоянных маршрутов с их именами и путями
  static const RouteInfo root = (name: 'root', path: '/root'); // Главная страница
  static const RouteInfo profile = (name: 'profile', path: '/profile'); // Страница профиля
  static const RouteInfo search = (name: 'search', path: '/search'); // Страница поиска
  static const RouteInfo searchResult = (name: 'searchResult', path: 'result'); // Страница результатов поиска
  static const RouteInfo searchExtraResult = (name: 'searchExtraResult', path: 'extra-result'); // Страница дополнительных результатов поиска
  static const RouteInfo profileInfo = (name: 'profileInfo', path: ':id'); // Страница с информацией о профиле (использует параметр id)
  static const RouteInfo register = (name: 'register', path: '/register'); // Страница регистрации

}
