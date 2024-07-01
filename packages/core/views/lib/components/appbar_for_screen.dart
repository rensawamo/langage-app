import 'package:core_constants/constants.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';

/// 画面用アプリバーを表示するWidget
class AppBarForScreen extends StatelessWidget implements PreferredSizeWidget {
  /// タイトルテキスト
  final String titleText;

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

  AppBarForScreen({
    super.key,
    this.titleText = '',
    required this.leftWidget,
    this.appbar,
    this.rightWidget,
    this.textType,
  });

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType;

  /// アプリバーの表示 非表示をきりかえたいときに定義する
  final PreferredSizeWidget? appbar;

  /// コンポーネントの高さを設定
  @override
  Size get preferredSize => const Size.fromHeight(56);

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    // appBarがSizedBoxのインスタンスかどうかをチェック
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      titleSpacing: 0,
      title: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 4,
            ),
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                leftWidget,
                Center(
                  child: _titleContents(context),
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
          ),
        ],
      ),
    );
  }

  /// 中央に表示するWidget
  Widget _titleContents(BuildContext context) {
    // タイトルテキストを表示する
    return AppText(
      text: titleText,
      style: AppTextStyles.caption(context),
      textAlign: TextAlign.center,
      maxLines: 1,
    );
  }
}
