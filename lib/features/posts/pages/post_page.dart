import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:social/features/posts/widgets/post_preview_card.dart';
import 'package:social/data/sources/post_data_source/post_data_source.dart';

// Экран, отображающий список постов
class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  // Источник данных для постов
  late PostDataSource postDataSource;

  @override
  void initState() {
    super.initState();

    // Настройки для клиента Dio с указанием базового URL и заголовков
    final baseOption = BaseOptions(
      baseUrl: 'https://dummyapi.io/data/v1/', // Базовый URL API
      headers: {'app-id': '652a56c27041f5843719941b'}, // Заголовок с API-ключом
    );

    // Создание экземпляра Dio для выполнения HTTP-запросов
    final dio = Dio(baseOption);

    // Инициализация источника данных с использованием Dio
    postDataSource = PostDataSource(dio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Отображение данных с использованием FutureBuilder
      body: FutureBuilder(
        // Запрос постов с помощью источника данных
        future: postDataSource.getPosts(page: 10), // Загрузка постов (10-я страница)
        builder: (context, snapshot) {
          // Получение данных из результата Future
          final data = snapshot.data;

          // Если данные успешно загружены
          if (data != null) {
            final posts = data.data; // Список постов

            // Отображение постов в виде списка с прокруткой
            return CustomScrollView(
              slivers: [
                // Список с разделителями между элементами
                SliverList.separated(
                  itemCount: posts.length, // Количество постов
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16), // Отступы
                    child: PostPreviewCard(
                      post: posts[index], // Виджет превью поста
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                  const SizedBox(height: 16), // Отступ между элементами
                ),
                // Кнопка для загрузки дополнительных постов
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16), // Отступы вокруг кнопки
                    child: FilledButton(
                      onPressed: () {}, // Обработчик нажатия (здесь не реализован)
                      child: const Text('Загрузить еще'),
                    ),
                  ),
                )
              ],
            );
          }

          // Если при загрузке произошла ошибка
          final error = snapshot.error;
          if (error != null) {
            return Center(
              child: Text('$error'), // Отображение текста ошибки
            );
          }

          // Отображение индикатора загрузки до получения данных
          return const Center(
            child: CircularProgressIndicator(), // Круговой индикатор
          );
        },
      ),
    );
  }
}
