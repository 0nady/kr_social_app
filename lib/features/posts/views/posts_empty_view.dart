import 'package:flutter/material.dart';

class PostsEmptyView extends StatelessWidget {
  const PostsEmptyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Постов еще не загружено'),
    );
  }
}
