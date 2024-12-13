import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/data/sources/post_data_source/post_data_source.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_cubit.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_states.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_states_extension/posts_states_map_extension.dart';
import 'package:social/features/posts/views/posts_empty_view.dart';
import 'package:social/features/posts/views/posts_error_view.dart';
import 'package:social/features/posts/views/posts_loaded_view.dart';
import 'package:social/features/posts/views/posts_loading_view.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  late final PostDataSource postDataSource;
  late final PostsCubit postsCubit;
  late final ScrollController pageScrollController;

  @override
  void initState() {
    super.initState();

    final baseOption = BaseOptions(
      baseUrl: 'https://dummyapi.io/data/v1/',
      headers: {'app-id': '652a56c27041f5843719941b'},
    );

    final dio = Dio(baseOption);

    postDataSource = PostDataSource(dio);

    postsCubit = PostsCubit(dataSource: postDataSource)..getFirstPostsChunk();

    pageScrollController = ScrollController()..addListener(_onChangeScroll);
  }

  @override
  void dispose() {
    pageScrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocBuilder<PostsCubit, PostsState>(
          bloc: postsCubit,
          builder: (context, state) => state.map(
            empty: (state) => const PostsEmptyView(),
            loading: (state) => const PostsLoadingView(),
            loaded: (state) => PostsLoadedView(
              posts: state.postsPreviewPager.data,
              pageScrollController: pageScrollController,
            ),
            nextLoading: (state) => PostsLoadedView(
              posts: state.postsPreviewPager.data,
              pageScrollController: pageScrollController,
            ),
            error: (state) => PostsErrorView(message: state.message),
          ),
        ),
      ),
    );
  }

  void _onChangeScroll() {
    if (pageScrollController.offset > pageScrollController.position.maxScrollExtent - 200) {
      postsCubit.getNextPostsChunk();
    }
  }
}
