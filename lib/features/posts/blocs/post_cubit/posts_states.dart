import 'package:social/domain/models/pager.dart';
import 'package:social/domain/models/post_preview.dart';

sealed class PostsState {}

class PostsLoadingState extends PostsState {}

class PostsEmptyState extends PostsState {}

class PostsLoadedState extends PostsState {
  final Pager<PostPreview> postsPreviewPager;

  PostsLoadedState(this.postsPreviewPager);
}

class PostsNextLoadingState extends PostsState {
  final Pager<PostPreview> postsPreviewPager;

  PostsNextLoadingState({required this.postsPreviewPager});
}

class PostsErrorState extends PostsState {
  final String message;

  PostsErrorState({required this.message});
}

