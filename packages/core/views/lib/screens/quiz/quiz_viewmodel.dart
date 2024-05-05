import 'package:core_views/screens/quiz/quiz_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// E201.受診予約一覧 Viewmodel
class QuizViewmodel extends QuizViewmodelInterface {
  /// コンストラクタ
  ///
  /// [state]で初期状態をセット
  /// [dao]API Modelクラス AppointmentGetListAllをセット
  QuizViewmodel(super.state, this.dao);

  /// 受診予約一覧取得（過去分含む）　Modelクラス
  final AppointmentGetListAllDaoInterface dao;

  /// 初期設定
  ///
  @override
  Future<void> init() async {}

  /// 受診予約一覧取得
  ///
  /// [completed]で完了時の処理を設定.
  /// 続きを取得の場合は[continuation]をtrueに設定する.
  @override
  Future<void> getNotification({bool continuation = false}) async {
    // ロード中なら何もしない
    if (isLoading) {
      return;
    }

    // ロード中に設定
    isLoading = true;

    // インジケータ表示
    showIndicator();

    // パラメータ生成
    final request = AppointmentGetListAllRequest(
        hospitalResourceName: hospitalResourceName,
        userResourceName: userResourceName,
        pageSize: pageSize,
        pageToken: continuation ? token : null);

    // ここで data から quizeを取得する
    dao.request(
      apiClient,
      request: request,
      succeed: (res, header) {
        // リストに返却値を追加する
        final list = [...state.Quiz];
        for (var info in res.appointment) {
          list.add(AppointmentInfo(
            appointmentResourceName: info.appointmentResourceName,
            dateAndTimeFormatText:
                DateFormatUtility.dateTimeFromDateTimeSeconds(info.startTime),
            dateAndTimeText: DateFormatUtility.dateHyphen(info.startTime),
            departmentName: info.departmentName,
            isCancel: AppointmentStatus.getByValue(info.status) ==
                AppointmentStatus.appointmentStatusCancel,
            read: Read.getBoolByValue(info.read),
          ));
        }
        // stateに設定
        state = state.copyWith(quizs: list);

        // ロード完了
        isLoading = false;

        // インジケータ破棄
        hideIndicator();
      },
      error: (e) {
        // ロード完了
        isLoading = false;

        // インジケータ破棄
        hideIndicator();

        // エラー処理呼び出し
      },
    );
  }

  /// 一覧クリア
  ///
  /// 一覧に表示している受診予約情報をクリアする.
  @override
  void clearList() {
    state = state.copyWith(quizs: []);
  }
}

/// E201.受診予約一覧 Viewmodel インターフェース
abstract class QuizViewmodelInterface extends StateNotifier<QuizState> {
  QuizViewmodelInterface(super.state);

  /// APIエラー管理クラス

  /// インジケータ表示メソッド
  late Function showIndicator;

  /// インジケータ破棄メソッド
  late Function hideIndicator;

  /// ページサイズ(固定)
  final int pageSize = 50;

  /// ロード中か
  bool isLoading = false;

  /// 病院リソース名
  String hospitalResourceName = '';

  /// 利用者ユーザーリソース名
  String userResourceName = '';

  Future<void> init();
  Future<void> getNotification({bool continuation = false});
  void clearList();
}
