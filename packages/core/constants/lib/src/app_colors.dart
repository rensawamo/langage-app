// import 'package:core_enums/enums.dart';
// import 'package:core_utility/utility.dart';

// import 'package:flutter/material.dart';

// ///アプリケーションカラーの定数クラス

// class AppColors {
//   static AppInstallType _appInstallType = AppSettingInfo().appInstallType;

//   // Red Palette
//   static const Color red100 = Color(0xFFFF0000);
//   static const Color red87 = Color(0xDEFF0000);
//   static const Color red60 = Color(0x99FF0000);
//   static const Color red38 = Color(0x61FF0000);

//   static Color getColor(AppColorType type) {
//     switch (type) {
//       case AppColorType.defaultColor:
//         switch (ThemeMode) {
//           case ThemeMode.light:
//             return Colors.black;
//           case ThemeMode.dark:
//             return Colors.white;
//           case ThemeMode.system:
//             return Colors.transparent; // または、適切なデフォルトの色
//         }
//       case AppColorType.reverseColor:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xFF000000);
//           case ThemeMode.dark:
//             return Colors.white;
//           case ThemeMode.system:
//             return Colors.transparent; // ま // または、適切なデフォルトの色
//         }

//       // アプリのバーの色
//       case AppColorType.appbar:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xffEDA276);
//           case ThemeMode.dark:
//             return const Color(0xFF000000);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       case AppColorType.indicator:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xffEDA276);
//           case ThemeMode.dark:
//             return Colors.grey;
//           case ThemeMode.system:
//             return Colors.transparent; // ま // または、適切なデフォルトの色
//         }

//       // ヘッダーのテキストの色
//       case AppColorType.headerText:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color(0xffE67636);
//           case ThemeMode.dark:
//             return const Color(0xFF000000);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       // バックグラウンドの色
//       case AppColorType.background:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xffF7EBE1);
//           case ThemeMode.dark:
//             return const Color(0xFF000000);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }
//       // クイズタイルの色
//       case AppColorType.quizTile:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xffEDA276);

//           case ThemeMode.dark:
//             return const Color(0xff808080);

//           case ThemeMode.system:
//             return const Color(0xFF0000FF);
//         }

//       // 影の色
//       case AppColorType.shadow:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color(0xFF3A5160).withOpacity(0.2);
//           case ThemeMode.dark:
//             return Color(0xFF3A5160).withOpacity(0.2);
//           case ThemeMode.system:
//             return Color(0xFF3A5160).withOpacity(0.2);
//         }

//       // タイトル文字の色
//       case AppColorType.titleCharacter:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color.fromARGB(255, 6, 6, 7);
//           case ThemeMode.dark:
//             return const Color(0xFF0000FF);
//           case ThemeMode.system:
//             return const Color(0xFF0000FF);
//         }

//       // ページのタイトルの色
//       case AppColorType.pageTitle:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xffEDA276);
//           case ThemeMode.dark:
//             return const Color(0xffEDA276);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       // クイズの次へのボタンの色
//       case AppColorType.nextButton:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color(0xff132137);
//           case ThemeMode.dark:
//             return const Color(0xff008000);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       // 問題に正解した時の色
//       case AppColorType.collectAnswer:
//         return Color.fromARGB(255, 192, 62, 62);

//       // 問題に不正解した時の色
//       case AppColorType.wrongAnswer:
//         return Color.fromARGB(255, 62, 62, 192);

//       case AppColorType.progress:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xffEDA276);
//           case ThemeMode.dark:
//             return Color(0xff808080);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       case AppColorType.effectColor:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color.fromARGB(255, 220, 147, 104);
//           case ThemeMode.dark:
//             return Color(0xff808080);

//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }
//       case AppColorType.question15:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color.fromARGB(255, 177, 235, 232);
//           case ThemeMode.dark:
//             return Color(0xff808080);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }
//       case AppColorType.question15Icon:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xFF0000FF);
//           case ThemeMode.dark:
//             return Color.fromARGB(255, 177, 235, 232);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }

//       case AppColorType.question30:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color.fromARGB(255, 204, 243, 146);
//           case ThemeMode.dark:
//             return Color(0xff808080);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }
//       case AppColorType.question30Icon:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xFF006400);
//           case ThemeMode.dark:
//             return const Color(0xFFADFF2F);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }

//       case AppColorType.question50:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xFFFFB6C1);
//           case ThemeMode.dark:
//             return Color(0xff808080);

//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }
//       case AppColorType.question50Icon:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xFFFF1493);
//           case ThemeMode.dark:
//             return const Color(0xFFFFB6C1);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }

//       case AppColorType.favorite:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color.fromARGB(255, 241, 209, 144);
//           case ThemeMode.dark:
//             return Color(0xff808080);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }
//       case AppColorType.favoriteIcon:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xFFA52A2A);
//           case ThemeMode.dark:
//             return Color.fromARGB(255, 241, 209, 144);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }

//       case AppColorType.greeting:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color(0xFFBAC48F);
//           case ThemeMode.dark:
//             return Color(0xff808080);
//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }
//       case AppColorType.greetingIcon:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color.fromARGB(255, 46, 51, 21);

//           case ThemeMode.dark:
//             return Color(0xFFBAC48F);

//           case ThemeMode.system:
//             return const Color(0xFFE0F2F1);
//         }

//       case AppColorType.cellTitle:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color(0xffECBCA1);
//           case ThemeMode.dark:
//             return const Color(0xff008000);
//           case ThemeMode.system:
//             return Color(0xffECBCA1);
//         }

//       case AppColorType.cellOdd:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xFFFFFFFF);
//           case ThemeMode.dark:
//             return Color.fromARGB(255, 65, 60, 60);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       case AppColorType.cellEven:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xffEEEEEE);
//           case ThemeMode.dark:
//             return const Color(0xff808080);
//           case ThemeMode.system:
//             return const Color(0xff808080);
//         }

//       // radio ボタンが on の時
//       case AppColorType.radioOn:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return Color(0xffE67636);
//           case ThemeMode.dark:
//             return const Color(0xff008000);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       // radio ボタンが off の時
//       case AppColorType.radioOff:
//         switch (AppSettingInfo().themeMode) {
//           case ThemeMode.light:
//             return const Color(0xff5c5e5e);
//           case ThemeMode.dark:
//             return Color(0xffaaacac);
//           case ThemeMode.system:
//             return const Color(0xffEDA276);
//         }

//       default:
//         throw Exception("Unsupported AppInstallType: $_appInstallType");
//     }
//   }

//   // 青色パレット
//   static const Color blue_100 = Color(0xFF0000FF);
//   static const Color blue_87 = Color(0xDE0000FF);
//   static const Color blue_60 = Color(0x990000FF);
//   static const Color blue_38 = Color(0x610000FF);
//   static const Color blue_10 = Color(0x1A0000FF);

//   // 黄色パレット
//   static const Color yellow_100 = Color(0xFFFFFF00);
//   static const Color yellow_87 = Color(0xDEFFFF00);
//   static const Color yellow_60 = Color(0x99FFFF00);
//   static const Color yellow_38 = Color(0x61FFFF00);
//   static const Color yellow_10 = Color(0x1AFFFF00);

//   // 緑色パレット
//   static const Color green_100 = Color(0xFF008000);
//   static const Color green_87 = Color(0xDE008000);
//   static const Color green_60 = Color(0x99008000);
//   static const Color green_38 = Color(0x61008000);
//   static const Color green_10 = Color(0x1A008000);

//   // 黄緑色パレット
//   static const Color lime_100 = Color(0xFF00FF00);
//   static const Color lime_87 = Color(0xDE00FF00);
//   static const Color lime_60 = Color(0x9900FF00);
//   static const Color lime_38 = Color(0x6100FF00);
//   static const Color lime_10 = Color(0x1A00FF00);

//   // オレンジ色パレット
//   static const Color orange_100 = Color(0xFFFFA500);
//   static const Color orange_87 = Color(0xDEFFA500);
//   static const Color orange_60 = Color(0x99FFA500);
//   static const Color orange_38 = Color(0x61FFA500);
//   static const Color orange_10 = Color(0x1AFFF500);
//   static const Color orenge_0 = Color(0xffF7EBE1);
//   // グレー色パレット
//   static const Color gray_100 = Color(0xFF808080);
//   static const Color gray_87 = Color(0xDE808080);
//   static const Color gray_60 = Color(0x99808080);
//   static const Color gray_38 = Color(0x61808080);
//   static const Color gray_10 = Color(0x1A808080);

//   // 紫色パレット
//   static const Color purple_100 = Color(0xFF800080);
//   static const Color purple_87 = Color(0xDE800080);
//   static const Color purple_60 = Color(0x99800080);
//   static const Color purple_38 = Color(0x61800080);
//   static const Color purple_10 = Color(0x1A800080);
// }
