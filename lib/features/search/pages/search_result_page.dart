import 'dart:io';
import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  final String query;
  // Переменная для хранения строки запроса, которая передается в конструктор

  const SearchResultPage({
    required this.query,
    super.key,
  });
  // Конструктор класса SearchResultPage, требующий строку запроса в качестве параметра

  int get topSnackbarOffset {
    try {
      if (Platform.isIOS) {
        return 140; // Для iOS устанавливается смещение верхнего SnackBar
      }

      if (Platform.isAndroid) {
        return 200; // Для Android устанавливается другое смещение верхнего SnackBar
      }

      return 200; // Для других платформ используется значение по умолчанию

    } on Object {
      return 200; // В случае ошибки возвращается значение по умолчанию
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchResultPage'),
        // Заголовок для страницы
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // Колонки с минимальной высотой
          children: [
            Text(query),
            // Отображение переданного запроса на экране
            FilledButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => const ModalDialog(),
                // Открытие модального окна при нажатии на кнопку
              ),
              child: const Text('Modal dialog'),
              // Текст кнопки для открытия модального окна
            ),
            FilledButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                showDragHandle: true,
                isDismissible: false,
                builder: (context) => const BottomSheetContent(),
                // Открытие модального нижнего окна при нажатии на кнопку
              ),
              child: const Text('Modal bottom sheet'),
              // Текст кнопки для открытия модального нижнего окна
            ),
            FilledButton(
              onPressed: () => showBottomSheet(
                context: context,
                showDragHandle: true,
                builder: (context) => const BottomSheetContent(),
                // Открытие обычного нижнего окна при нажатии на кнопку
              ),
              child: const Text('Modal bottom sheet'),
              // Текст кнопки для открытия обычного нижнего окна
            ),
            FilledButton(
              onPressed: () {
                final snackBar = SnackBar(
                  behavior: SnackBarBehavior.floating,
                  // Настройка поведения SnackBar — оно будет "плавать"
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.sizeOf(context).height - topSnackbarOffset,
                    // Вычисление отступа для SnackBar, чтобы он не перекрывал важные элементы на экране
                    left: 16,
                    right: 16,
                  ),
                  content: Text('Some text'),
                  // Контент SnackBar
                );

                ScaffoldMessenger.of(context)
                  ..clearSnackBars()
                // Очищает все текущие SnackBar
                  ..showSnackBar(snackBar);
                // Отображает SnackBar
              },
              child: const Text('Show snackbar'),
              // Текст кнопки для отображения SnackBar
            ),
          ],
        ),
      ),
    );
  }
}

class ModalDialog extends StatelessWidget {
  const ModalDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Hello!'),
          // Текстовое сообщение в диалоговом окне
          FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            // Закрытие диалогового окна при нажатии на кнопку
            child: const Text('Close'),
            // Текст кнопки для закрытия диалогового окна
          ),
        ],
      ),
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      // Устанавливает ширину нижнего окна на всю ширину экрана
      height: 100,
      // Устанавливает высоту нижнего окна
      child: Placeholder(),
      // Вставка заглушки, которая может быть заменена на фактический контент
    );
  }
}
