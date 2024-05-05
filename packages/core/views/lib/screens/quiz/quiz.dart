import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider
final appointmentListProvider = StateNotifierProvider.autoDispose<
    AppointmentListViewmodelInterface, AppointmentListState>(
  (ref) {
    return AppointmentListViewmodel(
      AppointmentListState(
        appointmentList: [],
        scrollController: ScrollController(),
      ),
      ApiClient(),
      AppointmentGetListAllDao(),
    );
  },
);

/// E201.受診予約一覧
///
/// 受診予約の履歴をリストで表示する画面.
/// [hospitalResourceName]は病院リソース名.
class AppointmentList extends StatelessWidget {
  const AppointmentList({
    super.key,
    required this.hospitalResourceName,
    required this.userResourceName,
  });

  /// 病院リソース名
  final String hospitalResourceName;

  /// 利用者ユーザーリソース名
  final String userResourceName;

  /// Widget生成
  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      return AppBaseFrame(
          screenContext: screenContext,
          hasPrevButton: true,
          shouldRemoveFocus: true,
          title: '受診予約一覧',
          initFrame: (context, ref) {
            // 初期化処理
            init(context, ref);
          },
          backOnTap: () {
            // 前画面へ戻る
            Navigator.pop(context);
          },
          body: Column(
            children: [
              Expanded(
                  child: (ref
                          .watch(appointmentListProvider)
                          .appointmentList
                          .isEmpty)
                      ? _empty()
                      : _list())
            ],
          ));
    });
  }

  /// 初期化処理
  void init(BuildContext context, WidgetRef ref) async {
    final vm = ref.watch(appointmentListProvider.notifier);

    // 前画面から受け取る病院リソース名をviewmodelにセット
    vm.hospitalResourceName = hospitalResourceName;
    vm.userResourceName = userResourceName;

    //共通エラーダイアログ情報をセット
    vm.errorDialogManage = ErrorDialogManage(
        context: context,
        apiClient: ApiClient(),
        dao: ApplicationVersionCheckDao());

    // viewmodel側にインジケータ表示処理をセット
    vm.showIndicator = () {
      AppIndicator.show(context);
    };

    // viewmodel側にインジケータ破棄処理をセット
    vm.hideIndicator = () {
      AppIndicator.hide(context);
    };

    // 初期設定
    await vm.init();
    // 受診予約一覧取得
    vm.getNotification();
  }

  /// 受診予約なし時の場合のテキスト
  Widget _empty() {
    return const TileEmptyText(
      header: '予定はありません。',
      detail: '病院から受診予約の情報が連携されるとここに受診予約の予定が表示され、詳細画面から予約内容の確認やメモの登録を行えます。',
    );
  }

  /// 受診予約一覧
  Widget _list() {
    return Consumer(builder: (context, ref, child) {
      final list = ref.watch(appointmentListProvider).appointmentList;
      return ListView.builder(
          shrinkWrap: true,
          controller: ref.watch(appointmentListProvider).scrollController,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return _cell(context, list[index], index);
          });
    });
  }

  /// 受診予約セル
  Widget _cell(BuildContext context, AppointmentInfo info, int index) {
    return Consumer(
      builder: (context, ref, child) {
        return ActionTilePlanAndNotificationDoubleTile(
          dateAndTimeText: info.dateAndTimeFormatText,
          title: info.departmentName,
          isPinned: false,
          isCircle: !info.read,
          tag: _tag(info),
          onTap: () {
            // E101.受診予約詳細へ遷移
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (c) => AppointmentDetail(
                      appointmentResourceName: info.appointmentResourceName)),
            ).then((value) {
              // リストクリア
              ref.watch(appointmentListProvider.notifier).clearList();
              // 一覧取得
              ref.watch(appointmentListProvider.notifier).getNotification();
            });
          },
        );
      },
    );
  }

  /// タグ
  AppRoundedTag? _tag(AppointmentInfo info) {
    var today = DateTime.now();
    var tomorrow = today.add(const Duration(days: 1));
    if (info.isCancel) {
      // 予約キャンセルになっている場合
      return const AppRoundedTag.cancel();
    }
    if (info.dateAndTimeText == DateFormatExtension.hyphen().format(tomorrow)) {
      // 予約日の前日中の場合
      return const AppRoundedTag.tomorrow();
    }
    if (info.dateAndTimeText == DateFormatExtension.hyphen().format(today)) {
      // 予約日の当日中の場合
      return const AppRoundedTag.today();
    }
    return null;
  }
}
