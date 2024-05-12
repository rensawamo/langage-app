// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../api/quiz_get_all/quiz_get_all_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizGetAllResponse _$QuizGetAllResponseFromJson(Map<String, dynamic> json) {
  return _QuizGetAllResponse.fromJson(json);
}

/// @nodoc
mixin _$QuizGetAllResponse {
  List<Quiz> get quizes => throw _privateConstructorUsedError;
  List<bool> get isFavorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizGetAllResponseCopyWith<QuizGetAllResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizGetAllResponseCopyWith<$Res> {
  factory $QuizGetAllResponseCopyWith(
          QuizGetAllResponse value, $Res Function(QuizGetAllResponse) then) =
      _$QuizGetAllResponseCopyWithImpl<$Res, QuizGetAllResponse>;
  @useResult
  $Res call({List<Quiz> quizes, List<bool> isFavorites});
}

/// @nodoc
class _$QuizGetAllResponseCopyWithImpl<$Res, $Val extends QuizGetAllResponse>
    implements $QuizGetAllResponseCopyWith<$Res> {
  _$QuizGetAllResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizes = null,
    Object? isFavorites = null,
  }) {
    return _then(_value.copyWith(
      quizes: null == quizes
          ? _value.quizes
          : quizes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      isFavorites: null == isFavorites
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizGetAllResponseImplCopyWith<$Res>
    implements $QuizGetAllResponseCopyWith<$Res> {
  factory _$$QuizGetAllResponseImplCopyWith(_$QuizGetAllResponseImpl value,
          $Res Function(_$QuizGetAllResponseImpl) then) =
      __$$QuizGetAllResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Quiz> quizes, List<bool> isFavorites});
}

/// @nodoc
class __$$QuizGetAllResponseImplCopyWithImpl<$Res>
    extends _$QuizGetAllResponseCopyWithImpl<$Res, _$QuizGetAllResponseImpl>
    implements _$$QuizGetAllResponseImplCopyWith<$Res> {
  __$$QuizGetAllResponseImplCopyWithImpl(_$QuizGetAllResponseImpl _value,
      $Res Function(_$QuizGetAllResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizes = null,
    Object? isFavorites = null,
  }) {
    return _then(_$QuizGetAllResponseImpl(
      quizes: null == quizes
          ? _value._quizes
          : quizes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      isFavorites: null == isFavorites
          ? _value._isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$QuizGetAllResponseImpl implements _QuizGetAllResponse {
  const _$QuizGetAllResponseImpl(
      {required final List<Quiz> quizes, required final List<bool> isFavorites})
      : _quizes = quizes,
        _isFavorites = isFavorites;

  factory _$QuizGetAllResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizGetAllResponseImplFromJson(json);

  final List<Quiz> _quizes;
  @override
  List<Quiz> get quizes {
    if (_quizes is EqualUnmodifiableListView) return _quizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizes);
  }

  final List<bool> _isFavorites;
  @override
  List<bool> get isFavorites {
    if (_isFavorites is EqualUnmodifiableListView) return _isFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isFavorites);
  }

  @override
  String toString() {
    return 'QuizGetAllResponse(quizes: $quizes, isFavorites: $isFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizGetAllResponseImpl &&
            const DeepCollectionEquality().equals(other._quizes, _quizes) &&
            const DeepCollectionEquality()
                .equals(other._isFavorites, _isFavorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizes),
      const DeepCollectionEquality().hash(_isFavorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizGetAllResponseImplCopyWith<_$QuizGetAllResponseImpl> get copyWith =>
      __$$QuizGetAllResponseImplCopyWithImpl<_$QuizGetAllResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizGetAllResponseImplToJson(
      this,
    );
  }
}

abstract class _QuizGetAllResponse implements QuizGetAllResponse {
  const factory _QuizGetAllResponse(
      {required final List<Quiz> quizes,
      required final List<bool> isFavorites}) = _$QuizGetAllResponseImpl;

  factory _QuizGetAllResponse.fromJson(Map<String, dynamic> json) =
      _$QuizGetAllResponseImpl.fromJson;

  @override
  List<Quiz> get quizes;
  @override
  List<bool> get isFavorites;
  @override
  @JsonKey(ignore: true)
  _$$QuizGetAllResponseImplCopyWith<_$QuizGetAllResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  String get text => throw _privateConstructorUsedError;
  List<Option> get options => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  Option? get selectedOption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {String text,
      List<Option> options,
      bool isLocked,
      Option? selectedOption});

  $OptionCopyWith<$Res>? get selectedOption;
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? options = null,
    Object? isLocked = null,
    Object? selectedOption = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOption: freezed == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as Option?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OptionCopyWith<$Res>? get selectedOption {
    if (_value.selectedOption == null) {
      return null;
    }

    return $OptionCopyWith<$Res>(_value.selectedOption!, (value) {
      return _then(_value.copyWith(selectedOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      List<Option> options,
      bool isLocked,
      Option? selectedOption});

  @override
  $OptionCopyWith<$Res>? get selectedOption;
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? options = null,
    Object? isLocked = null,
    Object? selectedOption = freezed,
  }) {
    return _then(_$QuizImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOption: freezed == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as Option?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizImpl implements _Quiz {
  const _$QuizImpl(
      {required this.text,
      required final List<Option> options,
      this.isLocked = false,
      this.selectedOption})
      : _options = options;

  factory _$QuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizImplFromJson(json);

  @override
  final String text;
  final List<Option> _options;
  @override
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey()
  final bool isLocked;
  @override
  final Option? selectedOption;

  @override
  String toString() {
    return 'Quiz(text: $text, options: $options, isLocked: $isLocked, selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text,
      const DeepCollectionEquality().hash(_options), isLocked, selectedOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
      {required final String text,
      required final List<Option> options,
      final bool isLocked,
      final Option? selectedOption}) = _$QuizImpl;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$QuizImpl.fromJson;

  @override
  String get text;
  @override
  List<Option> get options;
  @override
  bool get isLocked;
  @override
  Option? get selectedOption;
  @override
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  String get text => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call({String text, bool isCorrect});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionImplCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$OptionImplCopyWith(
          _$OptionImpl value, $Res Function(_$OptionImpl) then) =
      __$$OptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, bool isCorrect});
}

/// @nodoc
class __$$OptionImplCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$OptionImpl>
    implements _$$OptionImplCopyWith<$Res> {
  __$$OptionImplCopyWithImpl(
      _$OptionImpl _value, $Res Function(_$OptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_$OptionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionImpl implements _Option {
  const _$OptionImpl({required this.text, this.isCorrect = false});

  factory _$OptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionImplFromJson(json);

  @override
  final String text;
  @override
  @JsonKey()
  final bool isCorrect;

  @override
  String toString() {
    return 'Option(text: $text, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, isCorrect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      __$$OptionImplCopyWithImpl<_$OptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionImplToJson(
      this,
    );
  }
}

abstract class _Option implements Option {
  const factory _Option({required final String text, final bool isCorrect}) =
      _$OptionImpl;

  factory _Option.fromJson(Map<String, dynamic> json) = _$OptionImpl.fromJson;

  @override
  String get text;
  @override
  bool get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
