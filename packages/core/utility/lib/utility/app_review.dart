import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerHelper {
  static final InAppReview _inAppReview = InAppReview.instance;

  // URLを定数化
  static const String _urlAppStore = 'https://apps.apple.com/jp/app/%E9%9F%93%E5%9B%BD%E8%AA%9E%E5%88%9D%E7%B4%9A/id6503278804';
  static const String _urlPlayStore = 'PlayStoreURL';

  static void launchStoreReview(BuildContext context) async {
    try {
      if (await _inAppReview.isAvailable()) {
        _inAppReview.requestReview();
      } else {
        final url = Platform.isIOS ? _urlAppStore : _urlPlayStore;

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
