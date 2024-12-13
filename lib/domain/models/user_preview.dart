import 'package:equatable/equatable.dart';

// Класс для представления предварительной информации о пользователе
// Содержит данные, такие как имя, фамилия и изображение профиля.
class UserPreview extends Equatable {
  // Уникальный идентификатор пользователя
  final String id;
  // Титул пользователя (например, Mr., Dr.)
  final String title;
  // Имя пользователя
  final String firstName;
  // Фамилия пользователя
  final String lastName;
  // Ссылка на изображение профиля пользователя
  final String picture;

  // Конструктор класса с обязательными параметрами
  const UserPreview({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
  });

  @override
  // Устанавливаем свойство stringify в true, чтобы при сравнении объектов
  // результат вывода также включал в себя строковое представление объекта
  bool get stringify => true;

  @override
  // Переопределяем метод для сравнения объектов UserPreview на основе всех полей
  List<Object?> get props {
    return [
      id, // Сравниваем id пользователя
      title, // Сравниваем титул пользователя
      firstName, // Сравниваем имя пользователя
      lastName, // Сравниваем фамилию пользователя
      picture, // Сравниваем изображение профиля
    ];
  }
}
