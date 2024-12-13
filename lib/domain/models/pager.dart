import 'package:equatable/equatable.dart';


// Класс для представления информации о пагинации
// Параметризуется типом данных [T], которые будут храниться на странице
class Pager<T> extends Equatable {
  // Список данных, которые содержатся на текущей странице
  final List<T> data;
  // Общее количество доступных элементов
  final int total;
  // Номер текущей страницы
  final int page;
  // Лимит — количество элементов на странице
  final int limit;

  // Конструктор класса с обязательными параметрами
  const Pager({
    required this.data,
    required this.total,
    required this.page,
    required this.limit,
  });

  @override
  // Переопределяем метод для сравнения объектов Pager на основе всех полей
  List<Object?> get props {
    return [
      data, // Сравниваем данные
      total, // Сравниваем общее количество
      page, // Сравниваем номер страницы
      limit, // Сравниваем лимит
    ];
  }

  // Метод для создания копии текущего объекта Pager с возможностью изменения некоторых полей
  Pager<T> copyWith({
    List<T>? data, // Новый список данных (если не передан, используется старый)
    int? total, // Новое общее количество (если не передано, используется старое)
    int? page, // Новый номер страницы (если не передан, используется старый)
    int? limit, // Новый лимит (если не передан, используется старый)
  }) {
    return Pager(
      data: data??this.data, // Если данные не переданы, используем старые
      total: total ?? this.total, // Если total не передано, используем старое
      page: page ?? this.page, // Если page не передан, используем старое
      limit: limit ?? this.limit, // Если limit не передан, используем старый
    );
  }
}
