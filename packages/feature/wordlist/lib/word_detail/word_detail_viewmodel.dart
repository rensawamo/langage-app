
import 'package:feature_wordlist/word_detail/word_detail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 出題単語一覧 Viewmodel
class WordDetailViewmodel extends WordDetailViewmodelInterface {
  /// コンストラクタ

  WordDetailViewmodel(
    super.state,
  );

  /// 初期設定
  @override
  Future<void> init(bool isFavorite) async {

    // お気に入りの初期設定
    state = state.copyWith(isFavorite: isFavorite);
  }

}

abstract class WordDetailViewmodelInterface
    extends StateNotifier<WordDetailState> {
  WordDetailViewmodelInterface(super.state);

  Future<void> init(bool isFavorite);

}
