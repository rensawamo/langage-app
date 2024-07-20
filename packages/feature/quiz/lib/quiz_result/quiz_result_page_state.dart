import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_result_page_state.freezed.dart';

@freezed
class QuizResultPageState with _$QuizResultPageState {
  const factory QuizResultPageState({
    required List<bool> isFavorites,
    required List<String> scores,
    required bool isLoading
    }) =
      _QuizResultPageState;
}
