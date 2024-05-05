import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';

/// 画面用アプリバーを表示するWidget
class AppBarForScreen extends StatelessWidget implements PreferredSizeWidget {
  /// タイトルテキスト
  final String titleText;

  /// タイトルロゴ
  final dynamic titleLogo;

  /// 左側に表示するWidget
  final Widget leftWidget;

  /// 右側に表示するリストWidget
  final List<Widget>? rightWidget;

  /// コンストラクタ
  ///
  /// タイトルテキストとして[titleText]を表示する
  /// タイトルロゴとして[titleLogo]を表示する
  /// 左側のWidgetとして[leftWidget]を表示する
  /// 右側のリストWidgetとして[rightWidget]を表示する
  /// テキストサイズが固定の場合は[textType]で指定する
  /// テーマモードが固定の場合は[mode]で指定する
  AppBarForScreen({
    super.key,
    this.titleText = '',
    this.titleLogo,
    required this.leftWidget,
    this.rightWidget,
    this.textType,
    this.mode,
  });

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType;

  /// テーマを固定したい場合に指定する
  final ThemeMode? mode;

  /// ステータス・アプリバーの背景色
  final _colorSet1 = const AppColorSet(
    light: AppColors.neutral_100_100,
    dark: AppColors.neutral_15_100,
  );

  /// タイトルテキストの色
  final _colorSet2 = const AppColorSet(
    light: AppColors.neutral_10_100,
    dark: AppColors.neutral_95_100,
  );

  /// 下線の色
  final _colorSet3 = const AppColorSet(
    light: AppColors.neutral_70_100,
    dark: AppColors.neutral_30_100,
  );

  /// コンポーネントの高さを設定
  @override
  Size get preferredSize => const Size.fromHeight(56);

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      titleSpacing: 0,
      backgroundColor: _colorSet1.color(mode),
      title: Column(
        children: [
          Container(
            color: _colorSet1.color(mode),
            width: MediaQuery.of(context).size.width,
            height: 56,
            padding: titleLogo != null
                ? const EdgeInsets.all(4)
                : const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 4,
                  ),
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                leftWidget,
                Center(
                  child: Text("dummy"),
                ),
                if (rightWidget != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: rightWidget!,
                  ),
              ],
            ),
          ),
          Divider(
            height: 0,
            thickness: 0.5,
            color: _colorSet3.color(mode),
          ),
        ],
      ),
    );
  }
}
