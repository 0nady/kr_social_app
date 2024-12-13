import 'package:equatable/equatable.dart';
import 'package:social/domain/models/user_preview.dart';

// Класс для представления превью поста
// Содержит информацию о посте, таком как текст, изображение, количество лайков и т.д.
class PostPreview extends Equatable {
  // Уникальный идентификатор поста
  final String id;
  // Текст поста
  final String text;
  // Изображение, связанное с постом (URL или путь)
  final String image;
  // Количество лайков на посте
  final int likes;
  // Список тегов, связанных с постом
  final List<String> tags;
  // Дата и время публикации поста
  final DateTime publishDate;
  // Владелец поста (пользователь, который его опубликовал)
  final UserPreview owner;

  // Конструктор класса с обязательными параметрами
  const PostPreview({
    required this.id,
    required this.text,
    required this.image,
    required this.likes,
    required this.tags,
    required this.publishDate,
    required this.owner,
  });

  @override
  // Устанавливаем свойство stringify в true, чтобы при сравнении объектов
  // результат вывода также включал в себя строковое представление объекта
  bool get stringify => true;

  @override
  // Переопределяем метод для сравнения объектов PostPreview на основе всех полей
  List<Object?> get props {
    return [
      id, // Сравниваем id
      text, // Сравниваем текст
      image, // Сравниваем изображение
      likes, // Сравниваем количество лайков
      tags, // Сравниваем список тегов
      publishDate, // Сравниваем дату публикации
      owner, // Сравниваем владельца поста
    ];
  }
}
