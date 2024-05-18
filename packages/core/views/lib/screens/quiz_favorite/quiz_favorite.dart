import 'package:core_enums/enums.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_views/extension/view+extention.dart';
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
        quizzes: [],
        answers: [],
        isFavorites: [],
        scrollController: ScrollController(),
        selectValue: QuizTopicType.word,
        speak: (String text) {
          FlutterTts().speak(text);
        },
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
    vm.flutterTts = FlutterTts();

    // 初期設定
    await vm.init();
    vm.getFavorites(QuizTopicType.word);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return AppBaseFrame(
          screenContext: context,
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
            children: [_dropDown(), Expanded(child: _table())],
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

  Widget _table() {
    return Consumer(builder: (context, ref, child) {
      List<String> quizzes = ref.watch(QuizFavoriteProvider).quizzes;
      List<String> answers = ref.watch(QuizFavoriteProvider).answers;
      List<bool> isFavorites = ref.watch(QuizFavoriteProvider).isFavorites;
      Function speak = ref.read(QuizFavoriteProvider).speak;

      return Center(
        
          child: Container(
        width: context.mediaQueryWidth * 0.9,

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // 垂直方向のスクロールを有効にする
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: _buildCell('Quiz'),
                  ),
                  TableCell(child: _buildCell('Score')),
                  TableCell(child: _buildCell('Voice')),
                  TableCell(child: _buildCell('Star')),
                ],
              ),
              ...List.generate(
                  quizzes.length,
                  (index) => TableRow(
                        children: [
                          TableCell(
                              child: _buildSubtitleCell(quizzes[index], index)),
                          TableCell(
                              child: _buildSubtitleCell(quizzes[index], index)),
                          TableCell(
                              child: _buildVoiceCell(index, quizzes, speak)),
                          TableCell(
                              child: _buildFavoriteCell(index, isFavorites)),
                        ],
                      )),
            ],
          ),
        ),
      ));
    });
  }

  Widget _buildVoiceCell(
    int index,
    List<String> quizzes,
    Function speak,
  ) =>
      Container(
        height: 65,
        color: index % 2 == 0 ? Colors.white : Colors.grey[200],
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.blue),
          onPressed: () => speak(quizzes[index]),
        ),
      );

  Widget _buildFavoriteCell(int index, List<bool> isFavorites) => Container(
        height: 65,
        color: index % 2 == 0 ? Colors.white : Colors.grey[200],
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Icon(
          isFavorites[index] ? Icons.star : Icons.star_border,
          color: Colors.yellow[700],
        ),
        // onPressed: () async => {
        //   setState(() => isFavorites[index] = !isFavorites[index]),
        //   isFavorites[index]
        //       ? await QuizFavoriteSql.delete(widget.quizes[index].text,
        //           widget.topicType.name, widget.installtype.name)
        //       : await QuizFavoriteSql.insert(widget.quizes[index].text,
        //           widget.topicType.name, widget.installtype.name),
        // },
      );

  Widget _buildCell(String text) => Container(
        height: 58,
        padding:
            const EdgeInsets.only(top: 15, bottom: 10, left: 22, right: 22),
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(color: Colors.white), textAlign: TextAlign.left),
      );

  Widget _buildSubtitleCell(String text, int index) => Container(
        height: 65,
        padding: const EdgeInsets.all(8),
        color: index % 2 == 0 ? Colors.white : Colors.grey[200],
        alignment: Alignment.center,
        child: Text(text, style: TextStyle(color: Colors.black)),
      );
}
