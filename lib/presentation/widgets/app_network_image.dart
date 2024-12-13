// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';

// Виджет для отображения изображения из сети с настраиваемыми параметрами.
class AppNetworkImage extends StatelessWidget {
  // Размер изображения (если указано, используется как ширина и высота).
  final double? size;

  // Ширина изображения (приоритетнее, чем `size`).
  final double? width;

  // Высота изображения (приоритетнее, чем `size`).
  final double? height;

  // Режим отображения изображения (например, заполнение или обрезка).
  final BoxFit? boxFit;

  // URL изображения.
  final String url;

  // Конструктор виджета. URL обязателен, остальные параметры опциональны.
  const AppNetworkImage({
    required this.url, // URL изображения обязательно передается.
    this.boxFit, // Настраиваемый режим отображения (по умолчанию - null).
    this.size, // Если указано, задает одинаковую ширину и высоту.
    this.width, // Настраиваемая ширина (приоритетнее, чем `size`).
    this.height, // Настраиваемая высота (приоритетнее, чем `size`).
    super.key, // Ключ для идентификации виджета.
  });

  @override
  Widget build(BuildContext context) {
    // Возвращает виджет для отображения изображения из сети.
    return Image.network(
      url, // URL, по которому загружается изображение.
      width: width ?? size, // Используется указанная ширина или значение `size`.
      height: height ?? size, // Используется указанная высота или значение `size`.
      fit: boxFit, // Режим отображения изображения.
    );
  }
}

