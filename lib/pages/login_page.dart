import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../configuration/navigation/app_routes.dart';

// Страница входа в приложение
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Контроллеры для полей ввода имени пользователя и пароля
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.deepPurpleAccent, Colors.blueGrey],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(), // Основное содержимое страницы
      ),
    );
  }

  // Главная часть страницы с элементами интерфейса
  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
            _extraText(),
            const SizedBox(height: 10),
            _registerBtn(),
          ],
        ),
      ),
    );
  }

  // Кнопка для перехода на страницу регистрации
  Widget _registerBtn() {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).go(AppRoutes.register.path);
      },
      child: const Text(
        "Create a new account",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  // Виджет иконки пользователя
  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 120,
      ),
    );
  }

  // Поле ввода текста
  Widget _inputField(String hintText, TextEditingController controller, {isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white),
    );
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  // Кнопка входа в систему.
  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        // Логирование данных из полей ввода
        debugPrint("Username: " + usernameController.text);
        debugPrint("Password: " + passwordController.text);
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: Color.fromARGB(255, 228, 226, 226),
        foregroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  // Дополнительный текст для напоминания
  Widget _extraText() {
    return const Text(
      "Can't access your account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}
