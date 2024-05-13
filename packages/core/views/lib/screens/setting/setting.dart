import 'package:core_enums/enums.dart';
import 'package:core_views/components/actiontile_font_size_big_tile.dart';
import 'package:core_views/components/actiontile_font_size_extra_big_tile.dart';
import 'package:core_views/components/actiontile_font_size_normal_tile.dart';
import 'package:core_views/components/actiontile_single_radio_tile.dart';
import 'package:core_views/components/tile_section_header.dart';
import 'package:core_views/screens/setting/setting_state.dart';
import 'package:core_views/screens/setting/setting_viewmodel.dart';
import 'package:core_views/utility/app_system_info.dart';
import 'package:core_views/widgets/app_base_frame.dart';
import 'package:core_views/widgets/app_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider
final settingProvider =
    StateNotifierProvider.autoDispose<SettingViewmodelInterface, SettingState>(
  (ref) {
    return SettingViewmodel(
      const SettingState(
        pushNotificationEnabled: false,
        themeMode: ThemeMode.light,
        textSize: AppTextSizeType.middle,
        appInstallType: AppInstallType.none,
      ),
      AppSystemInfo(),
    );
  },
);

class Setting extends StatelessWidget {
  /// コンストラクタ
  Setting({super.key});

  /// Widget生成
  @override
  Widget build(BuildContext screenContext) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(settingProvider);
        return PopScope(
          canPop: false, // 戻るキーの動作で戻ることを一旦防ぐ

          child: AppBaseFrame(
            hasPrevButton: false,
            screenContext: screenContext,
            initFrame: (_, __) {
              final vm = ref.watch(settingProvider.notifier);
              // 復帰完了時コールバックをセット
              // vm.compResume = () => PushTransitionManager().checkTransition();
              ref.read(settingProvider.notifier).init();
            },
            title: '設定',
            textType: state.textSize,
            mode: state.themeMode,
            body: _mainBody(),
          ),
        );
      },
    );
  }

  Widget _mainBody() {
    return Consumer(builder: (context, ref, child) {
      final mode = ref.watch(settingProvider).themeMode;
      final textType = ref.watch(settingProvider).textSize;
      return SingleChildScrollView(
        child: Column(
          children: [
            _divider(),
            TileSectionHeader(
              text: '明るさ設定',
              mode: mode,
              textType: textType,
            ),
            _appearanceTiles(),
            _divider(),
            TileSectionHeader(
              text: '文字サイズ設定',
              mode: mode,
              textType: textType,
            ),
            _fontSizeTiles(),
          ],
        ),
      );
    });
  }

  /// ディバイダー
  Widget _divider() {
    return const AppDivider(
      leftIndent: 16,
      rightIndent: 16,
    );
  }

  /// 明るさ設定タイル
  Widget _appearanceTiles() {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(settingProvider);
      return Column(children: [
        ActionTileSingleRadioTile(
            mode: state.themeMode,
            itemText: '明るい外観',
            textType: state.textSize,
            onTap: (value) {
              // thememode変更
              ref.watch(settingProvider.notifier).changeThemeMode(value);
            },
            groupValue: ref.watch(settingProvider).themeMode,
            radioValue: ThemeMode.light),
        ActionTileSingleRadioTile(
            itemText: '暗い外観',
            mode: state.themeMode,
            textType: state.textSize,
            onTap: (value) {
              // thememode変更
              ref.watch(settingProvider.notifier).changeThemeMode(value);
            },
            groupValue: ref.watch(settingProvider).themeMode,
            radioValue: ThemeMode.dark),
      ]);
    });
  }

  /// 文字サイズ設定タイル
  Widget _fontSizeTiles() {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(settingProvider);
      return Column(children: [
        ActiontileFontSizeNormalTile(
            mode: state.themeMode,
            textType: AppTextSizeType.middle,
            mainText: '文字サイズ：普通',
            subText: '標準の文字サイズです。',
            onTap: (value) {
              // 文字サイズ変更
              ref.watch(settingProvider.notifier).changeTextSize(value);
            },
            groupValue: ref.watch(settingProvider).textSize,
            radioValue: AppTextSizeType.middle),
        ActiontileFontSizeBigTile(
            mode: state.themeMode,
            textType: AppTextSizeType.large,
            mainText: '文字サイズ：大',
            subText: '一回り大きな文字サイズです。',
            onTap: (value) {
              // 文字サイズ変更
              ref.watch(settingProvider.notifier).changeTextSize(value);
            },
            groupValue: ref.watch(settingProvider).textSize,
            radioValue: AppTextSizeType.large),
        ActiontileFontSizeExtraBigTile(
            mode: state.themeMode,
            textType: AppTextSizeType.exLarge,
            mainText: '文字サイズ：特大',
            subText: '一番大きな文字サイズです。',
            onTap: (value) {
              // 文字サイズ変更
              ref.watch(settingProvider.notifier).changeTextSize(value);
            },
            groupValue: ref.watch(settingProvider).textSize,
            radioValue: AppTextSizeType.exLarge),
      ]);
    });
  }
}
