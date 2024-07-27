import 'package:feature_wordlist/word_detail/word_detail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [WordDetailProvider]のProvider
final wordDetailProvider =
    StateNotifierProvider.autoDispose<WordDetailViewmodel, WordDetailState>(
  (ref) {
    return WordDetailViewmodel(
      WordDetailState(
        isFavorite: false,
      ),
    );
  },
);

/// [WordDetailViewmodel]の具象クラス
class WordDetailViewmodel extends StateNotifier<WordDetailState> {
  WordDetailViewmodel(WordDetailState state) : super(state);

  Future<void> init(bool isFavorite) async {
    state = state.copyWith(isFavorite: isFavorite);
  }
}
