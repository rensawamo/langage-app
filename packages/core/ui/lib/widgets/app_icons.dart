// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../generated/flutter_gen/assets.gen.dart';

// ////アプリ専用アイコンWidget。
// ///こちらで用意するSVG画像と標準のアイコンデータ両方の利用に対応するために利用
// ///
// /// Iconsの指定方法: Icons.XXXXX
// /// Assets.imagesの指定方法: Assets.images.XXXXX
// class AppIcon extends SizedBox {
//   AppIcon({
//     super.key,
//     required double size,
//     Color? color,
//     dynamic icon,
//   }) : super(
//           height: size,
//           width: size,
//           child: (() {
//             switch (icon.runtimeType) {
//               case const (IconData):
//                 return Icon(icon, color: color, size: size);
//               case const (SvgGenImage):
//                 return icon.svg(color: color, width: size, height: size);
//               case const (AssetGenImage):
//                 // png,jpgは色指定して利用しない想定
//                 return icon.image(width: size, height: size);
//               case const (String):
//                 final url = Uri.parse(icon);
//                 // 拡張子をチェック
//                 final ext = url.path.split('/').last.split('.').last;
//                 if (ext == 'svg') {
//                   // SVG画像の場合はSvgPictureを使用
//                   SvgPicture.network(icon, width: size, height: size);
//                 } else {
//                   return Image.network(
//                     icon,
//                     width: size,
//                     height: size,
//                     errorBuilder: (context, object, stack) {
//                       // URLが正しくない場合は空のSizedBoxを表示
//                       return SizedBox.square(dimension: size);
//                     },
//                   );
//                 }

//                 return SvgPicture.network(icon);
//               default:
//                 // 想定されるタイプがない場合は指定されたサイズの空SizedBoxを返す
//                 SizedBox.square(dimension: size);
//             }
//           })(),
//         );
// }
