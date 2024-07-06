import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_detail_state.freezed.dart';

@freezed
class WordDetailState with _$WordDetailState {
  const factory WordDetailState({
    required bool isFavorite,
  }) = _WordDetailState;
}
