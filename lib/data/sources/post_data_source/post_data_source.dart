import 'package:dio/dio.dart';
import 'package:social/data/sources/post_data_source/mappers/response_mapper.dart';
import 'package:social/data/sources/post_data_source/models/response_dto.dart';
import 'package:social/domain/models/pager.dart';
import 'package:social/domain/models/post_preview.dart';

class PostDataSource { // Класс, отвечающий за взаимодействие с API для получения данных о постах
  final Dio _dio; // Экземпляр Dio для выполнения HTTP-запросов

  const PostDataSource(this._dio); // Конструктор, принимающий Dio как зависимость для дальнейшего использования

  Future<Pager<PostPreview>> getPosts({ // Асинхронный метод для получения постов с поддержкой пагинации
    int? page, // Номер страницы для запроса (опциональный)
    int? limit, // Лимит количества постов на странице (опциональный)
  }) async {
    final response = await _dio.get( // Выполнение GET-запроса к API для получения списка постов
      '/post', // URL-эндпоинт, к которому будет выполнен запрос
      queryParameters: {
        // Добавление параметров запроса, если они указаны
        if (page != null) 'page': page, // Если указан параметр `page`, добавляем его в запрос
        if (limit != null) 'limit': limit, // Если указан параметр `limit`, добавляем его в запрос
      },
    );

    return ResponseDto.fromJson(response.data).toEntity(); // Преобразование ответа из формата JSON в объект `ResponseDto` и его конвертация в доменную сущность
  }
}
