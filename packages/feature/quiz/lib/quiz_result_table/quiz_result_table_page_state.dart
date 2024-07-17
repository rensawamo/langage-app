import 'package:freezed_annotation/freezed_annotation.dart';
part 'quiz_result_table_page_state.freezed.dart';

@freezed
class QuizResultTablePageState with _$QuizResultTablePageState {
  /// コンストラクタ
  ///
  /// [Quiz]
  const factory QuizResultTablePageState({
    required List<bool> isFavorites,
    required Function speak,
  }) = _QuizResultTablePageState;
}
