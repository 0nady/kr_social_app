import 'package:social/domain/models/pager.dart';
import 'package:social/domain/models/post_preview.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_states.dart';
import 'package:social/features/posts/blocs/post_cubit/posts_states_extension/posts_states_map_extension.dart';

extension PostsStatesNextLoadingCheckExtension on PostsState {
  Pager<PostPreview>? get pager {
    return map(
      empty: (_) => null,
      loading: (_) => null,
      error: (_) => null,
      nextLoading: (_) => null,
      loaded: (PostsLoadedState state) {
        if (state.postsPreviewPager.data.length == state.postsPreviewPager.limit) {
          return state.postsPreviewPager;
        }

        return null;
      },
    );
  }
}
