import 'package:core_enums/enums.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite_state.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite_viewmodel.dart';
import 'package:core_views/views.dart';
import 'package:core_views/widgets/app_base_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Provider
final QuizFavoriteProvider = StateNotifierProvider.autoDispose<
    QuizeFavoriteViewmodelInterface, QuizFavoriteState>(
  (ref) {
    return QuizeFavoriteViewmodel(
      QuizFavoriteState(
        texts: [],
        scrollController: ScrollController(),
        selectValue: QuizTopicType.word,
      ),
      QuizFavoriteDao(),
    );
  },
);

/// Quiz の 問題を表示する画面
class QuizFavorite extends StatelessWidget {
  QuizFavorite({
    Key? key,
    required this.dropDownMenu,
  }) : super(key: key);

  /// ドロップダウンメニュー
  final Map<String, QuizTopicType> dropDownMenu;

  /// 初期化処理
  void init(BuildContext context, WidgetRef ref) async {
    final vm = ref.watch(QuizFavoriteProvider.notifier);

    // アプリケーションの種別
    vm.appInstallType = AppSettingInfo().appInstallType;

    // インジケータ表示
    vm.showIndicator = () {
      AppIndicator.show(context);
    };
    // viewmodel側にインジケータ破棄処理をセット
    vm.hideIndicator = () {
      AppIndicator.hide(context);
    };

    // 初期設定
    await vm.init();
    vm.getFavorites(QuizTopicType.word);
  }

  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      return AppBaseFrame(
          screenContext: screenContext,
          hasPrevButton: false,
          shouldRemoveFocus: true,
          backOnTap: () {
            Navigator.pop(context);
          },
          title: 'お気に入り',
          initFrame: (context, ref) {
            // 初期化処理
            init(context, ref);
          },
          body: Column(
            children: [_dropDown(), Expanded(child: _list(ref))],
          ));
    });
  }

  Widget _dropDown() {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(QuizFavoriteProvider.notifier);

      return DropdownButton<String>(
        value: dropDownMenu.keys.first,
        items: dropDownMenu.keys
            .map((String key) => DropdownMenuItem<String>(
                  value: key,
                  child: Text(key),
                ))
            .toList(),
        onChanged: (key) {
          if (key != null) {
            state.getFavorites(dropDownMenu[key]!);
          }
        },
      );
    });
  }

  Widget _empty() {
    return Center(
      child: Text('お気に入りはありません'),
    );
  }

  /// お気に入りリストのウィジェット
  Widget _list(WidgetRef ref) {
    final state = ref.watch(QuizFavoriteProvider);
    return state.texts.isEmpty
        ? _empty()
        : ListView.builder(
            controller: state.scrollController,
            itemCount: state.texts.length,
            itemBuilder: (context, index) => _tile(context, state.texts[index]),
          );
  }

  /// リストアイテム
  Widget _tile(BuildContext context, String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!, width: 1.0),
        ),
      ),
      child: ListTile(
        title: Text(text),
        trailing: IconButton(
          icon: Icon(Icons.volume_up),
          onPressed: () => FlutterTts().speak(text),
        ),
      ),
    );
  }
}
