import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/data/sources/post_data_source/post_data_source.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_states.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_states_extension/posts_states_pager_getter_extension.dart';

class PostsCubit extends Cubit<PostsState> {
  final PostDataSource dataSource;

  var _page = 0;

  PostsCubit({
    required this.dataSource,
  }) : super(PostsLoadingState());

  Future<void> getFirstPostsChunk() async {
    _page = 0;

    emit(PostsLoadingState());

    try {
      final postsData = await dataSource.getPosts(page: _page++);

      if (postsData.data.isEmpty) {
        emit(PostsEmptyState());

        return;
      }

      emit(PostsLoadedState(postsData));
    } on Object {
      emit(PostsErrorState(
        message: 'Что-то пошло не так...',
      ));
    }
  }

  Future<void> getNextPostsChunk() async {
    final pager = state.pager;

    if (pager == null) {
      return;
    }

    emit(PostsNextLoadingState(postsPreviewPager: pager));

    try {
      final postsData = await dataSource.getPosts(page: _page++);

      emit(
        PostsLoadedState(
          postsData.copyWith(
            data: [
              ...pager.data,
              ...postsData.data,
            ],
          ),
        ),
      );
    } on Object {
      emit(PostsErrorState(
        message: 'Что-то пошло не так...',
      ));
    }
  }
}
