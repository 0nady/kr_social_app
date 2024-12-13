import 'package:flutter/material.dart';

class PostsErrorView extends StatelessWidget {
  final String message;

  const PostsErrorView({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
