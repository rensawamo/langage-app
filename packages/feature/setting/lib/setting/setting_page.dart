import 'package:core_designsystem/designsystem.dart';
import 'package:core_ui/ui.dart';
import 'package:feature_setting/widget/setting_item.dart';
import 'package:feature_setting/widget/setting_switch_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Consumer(builder: (context, ref, child) {
      return AppBaseFrame(
        screenContext: context,
        hasPrevButton: false,
        title: AppLocalizations.of(context).settings,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: Image.asset(isDarkMode
                  ? 'assets/images/ko_national_dark.png'
                  : 'assets/images/ko_national_flag.png'),
            ),
            AppDriver(),
            SettingsItem(
                icon: Icons.web,
                title: AppLocalizations.of(context).web,
                onTap: () {
                  final url = Uri.parse(
                      'https://wonderful-flower-033138b00.5.azurestaticapps.net/');
                  launchUrl(url);
                }),
            AppDriver(),
            SettingsItem(
                icon: Icons.lock,
                title: AppLocalizations.of(context).privacyPolicy,
                onTap: () {
                  final url = Uri.parse(
                      'https://wonderful-flower-033138b00.5.azurestaticapps.net/privacypolicy');
                  launchUrl(url);
                }),
            SizedBox(height: 5),
            AppDriver(),
            SettingsSwitchTile(
              title: AppLocalizations.of(context).mode,
              icon: Icons.brightness_6,
            ),
          ],
        ),
      );
    });
  }
}
