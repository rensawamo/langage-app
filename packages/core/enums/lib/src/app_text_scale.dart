import 'package:core_enums/enums.dart';
import 'package:core_utility/utility.dart';


/// 文字サイズ種別
enum AppTextScale {
  xxl,
  xl,
  l,
  m,
  s,
  xs,
}

/// AppTextScaleの拡張クラス。Design Guideより数値を定義
extension AppTextScaleExtension on AppTextScale {
  /// フォントサイズを取得
  double size({AppTextSizeType? type}) {
    switch (type ?? AppSettingInfo().textSizeType) {
      // 普通
      case AppTextSizeType.middle:
        switch (this) {
          case AppTextScale.xxl:
            return 24;
          case AppTextScale.xl:
            return 20;
          case AppTextScale.l:
            return 16;
          case AppTextScale.m:
            return 14;
          case AppTextScale.s:
            return 12;
          case AppTextScale.xs:
            return 10;
        }

      // 大
      case AppTextSizeType.large:
        switch (this) {
          case AppTextScale.xxl:
            return 26;
          case AppTextScale.xl:
            return 22;
          case AppTextScale.l:
            return 18;
          case AppTextScale.m:
            return 16;
          case AppTextScale.s:
            return 13;
          case AppTextScale.xs:
            return 10;
        }

      // 特大
      case AppTextSizeType.exLarge:
        switch (this) {
          case AppTextScale.xxl:
            return 28;
          case AppTextScale.xl:
            return 24;
          case AppTextScale.l:
            return 20;
          case AppTextScale.m:
            return 18;
          case AppTextScale.s:
            return 14;
          case AppTextScale.xs:
            return 10;
        }
    }
  }

  /// テキスト行高を取得
  double lineHeight({AppTextSizeType? type}) {
    switch (type ?? AppSettingInfo().textSizeType) {
      // 普通
      case AppTextSizeType.middle:
        switch (this) {
          case AppTextScale.xxl:
            return 32;
          case AppTextScale.xl:
            return 27;
          case AppTextScale.l:
            return 22;
          case AppTextScale.m:
            return 19;
          case AppTextScale.s:
            return 17;
          case AppTextScale.xs:
            return 15;
        }

      // 大
      case AppTextSizeType.large:
        switch (this) {
          case AppTextScale.xxl:
            return 34;
          case AppTextScale.xl:
            return 29;
          case AppTextScale.l:
            return 24;
          case AppTextScale.m:
            return 22;
          case AppTextScale.s:
            return 18;
          case AppTextScale.xs:
            return 15;
        }

      // 特大
      case AppTextSizeType.exLarge:
        switch (this) {
          case AppTextScale.xxl:
            return 37;
          case AppTextScale.xl:
            return 32;
          case AppTextScale.l:
            return 27;
          case AppTextScale.m:
            return 24;
          case AppTextScale.s:
            return 19;
          case AppTextScale.xs:
            return 15;
        }
    }
  }
}
