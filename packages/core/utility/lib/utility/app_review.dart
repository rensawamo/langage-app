import 'dart:io';

import 'package:core_foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

/// [AppInstallType]に応じて、Storeのレビュー画面を開く
/// utility class
class DrawerHelper {
  static final InAppReview _inAppReview = InAppReview.instance;

  static const String _defaultUrlAppStore =
      'https://apps.apple.com/jp/app/韓国語初級/id6503278804';
  static const String _defaultUrlPlayStore = '未対応';

  static void launchStoreReview(BuildContext context,
      {String? appStoreUrl, String? playStoreUrl}) async {
    final String urlAppStore = appStoreUrl ?? _defaultUrlAppStore;
    final String urlPlayStore = playStoreUrl ?? _defaultUrlPlayStore;

    try {
      if (await _inAppReview.isAvailable()) {
        _inAppReview.requestReview();
      } else {
        final url = Platform.isIOS ? urlAppStore : urlPlayStore;

        if (!await launchUrl(Uri.parse(url))) {
          throw 'Cannot launch the store URL';
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('レビューを開くことができませんでした')),
      );
    }
  }
}
