import 'package:core_enums/enums.dart';
import 'package:core_utility/utility.dart';
import 'package:core_views/data/app_text_span.dart';


import 'package:core_views/widgets/app_rich_text.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';

/// データがない場合の表示に利用するタイルWidget
class TileEmptyText extends StatelessWidget {
  /// コンストラクタ
  ///
  /// エンプティテキスト用のタイルの見出し[header]、詳細[detail]を表示する
  /// 表示する詳細リストとして[detailList]を表示する
  /// テキストサイズが固定の場合は[textType]で指定する
  
  const TileEmptyText({
    super.key,
    required this.header,
    this.detail,
    this.detailList,
    this.textType,
  
  });

  /// 見出し
  final String header;

  /// 詳細
  final String? detail;

  /// 詳細リスト
  final List<AppTextSpan>? detailList;

  /// 任意の文字サイズで固定する場合に定義する
  final AppTextSizeType? textType;
  

  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText(
            text: header,
            style: TextStyles.l(
              color: _defaultColor.color(),
              type: textType,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _detailWidget(),
        ],
      ),
    );
  }

  /// 表示する詳細テキスト
  Widget _detailWidget() {
    if (detailList == null) {
      // detailListが空の場合、AppTextを使用する
      return AppText(
        text: detail ?? '',
        style: TextStyles.m(
          color: _defaultColor.color(),
          type: textType,
        ),
      );
    } else {
      // detailListが空でない場合、AppRichTextを使用する
      return AppRichText(
        textList: detailList!,
        style: TextStyles.m(
          color: _defaultColor.color(),
          type: textType,
        ),
      );
    }
  }
}
