import 'package:freezed_annotation/freezed_annotation.dart';
part 'quiz_result_table_page_state.freezed.dart';

@freezed
class QuizResultTablePageState with _$QuizResultTablePageState {
  const factory QuizResultTablePageState({
    required List<bool> isFavorites,
  }) = _QuizResultTablePageState;
}
