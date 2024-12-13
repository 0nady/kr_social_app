import 'package:social/features/posts/blocs/post_cubit/posts_states.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_states_extension/posts_states_map_extension.dart';

extension PostsStatesNextLoadingCheckExtension on PostsState {
  bool get canNextChunk {
    return map(
      empty: (_) => false,
      loading: (_) => false,
      error: (_) => false,
      nextLoading: (_) => false,
      loaded: (PostsLoadedState state) {
        return state.postsPreviewPager.data.length == state.postsPreviewPager.limit;
      },
    );
  }
}
