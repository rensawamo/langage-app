import 'package:core_designsystem/designsystem.dart';

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
  });

  /// 見出し
  final String header;

  /// 詳細
  final String? detail;

  /// 詳細リスト
  final List<AppTextSpan>? detailList;

  /// Widget生成
  @override
  Widget build(BuildContext context) {
    return Container(
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
            style: AppTextStyles.caption(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _detailWidget(context),
        ],
      ),
    );
  }

  /// 表示する詳細テキスト
  Widget _detailWidget(BuildContext context) {
    if (detailList == null) {
      // detailListが空の場合、AppTextを使用する
      return AppText(
        text: detail ?? '',
        style: AppTextStyles.caption(context),
      );
    } else {
      // detailListが空でない場合、AppRichTextを使用する
      return AppRichText(
        textList: detailList!,
        style: AppTextStyles.caption(context),
      );
    }
  }
}
