import 'package:feature_wordlist/word_detail/word_detail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [WordDetailProvider]のProvider
final WordDetailProvider =
    StateNotifierProvider.autoDispose<WordDetailViewmodel, WordDetailState>(
  (ref) {
    return WordDetailViewmodelImpl(
      WordDetailState(
        isFavorite: false,
      ),
    );
  },
);

/// [WordDetailViewmodel]の具象クラス
class WordDetailViewmodelImpl extends WordDetailViewmodel {
  WordDetailViewmodelImpl(
    super.state,
  );
  @override
  Future<void> init(bool isFavorite) async {
    state = state.copyWith(isFavorite: isFavorite);
  }
}

/// [WordDetailState]を管理する抽象クラス
/// [isFavorite] でお気に入りの状態を管理
abstract class WordDetailViewmodel extends StateNotifier<WordDetailState> {
  WordDetailViewmodel(super.state);
  Future<void> init(bool isFavorite);
}
