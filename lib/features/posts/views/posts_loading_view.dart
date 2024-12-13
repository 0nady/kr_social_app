import 'package:flutter/material.dart';

class PostsLoadingView extends StatelessWidget {
  const PostsLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
