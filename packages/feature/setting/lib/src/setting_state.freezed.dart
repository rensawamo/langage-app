// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingState {
  bool get pushNotificationEnabled => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  AppTextSizeType get textSize => throw _privateConstructorUsedError;
  AppInstallType get appInstallType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {bool pushNotificationEnabled,
      ThemeMode themeMode,
      AppTextSizeType textSize,
      AppInstallType appInstallType});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotificationEnabled = null,
    Object? themeMode = null,
    Object? textSize = null,
    Object? appInstallType = null,
  }) {
    return _then(_value.copyWith(
      pushNotificationEnabled: null == pushNotificationEnabled
          ? _value.pushNotificationEnabled
          : pushNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      textSize: null == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as AppTextSizeType,
      appInstallType: null == appInstallType
          ? _value.appInstallType
          : appInstallType // ignore: cast_nullable_to_non_nullable
              as AppInstallType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool pushNotificationEnabled,
      ThemeMode themeMode,
      AppTextSizeType textSize,
      AppInstallType appInstallType});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotificationEnabled = null,
    Object? themeMode = null,
    Object? textSize = null,
    Object? appInstallType = null,
  }) {
    return _then(_$SettingStateImpl(
      pushNotificationEnabled: null == pushNotificationEnabled
          ? _value.pushNotificationEnabled
          : pushNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      textSize: null == textSize
          ? _value.textSize
          : textSize // ignore: cast_nullable_to_non_nullable
              as AppTextSizeType,
      appInstallType: null == appInstallType
          ? _value.appInstallType
          : appInstallType // ignore: cast_nullable_to_non_nullable
              as AppInstallType,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {required this.pushNotificationEnabled,
      required this.themeMode,
      required this.textSize,
      required this.appInstallType});

  @override
  final bool pushNotificationEnabled;
  @override
  final ThemeMode themeMode;
  @override
  final AppTextSizeType textSize;
  @override
  final AppInstallType appInstallType;

  @override
  String toString() {
    return 'SettingState(pushNotificationEnabled: $pushNotificationEnabled, themeMode: $themeMode, textSize: $textSize, appInstallType: $appInstallType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(
                    other.pushNotificationEnabled, pushNotificationEnabled) ||
                other.pushNotificationEnabled == pushNotificationEnabled) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.textSize, textSize) ||
                other.textSize == textSize) &&
            (identical(other.appInstallType, appInstallType) ||
                other.appInstallType == appInstallType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pushNotificationEnabled,
      themeMode, textSize, appInstallType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {required final bool pushNotificationEnabled,
      required final ThemeMode themeMode,
      required final AppTextSizeType textSize,
      required final AppInstallType appInstallType}) = _$SettingStateImpl;

  @override
  bool get pushNotificationEnabled;
  @override
  ThemeMode get themeMode;
  @override
  AppTextSizeType get textSize;
  @override
  AppInstallType get appInstallType;
  @override
  @JsonKey(ignore: true)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
