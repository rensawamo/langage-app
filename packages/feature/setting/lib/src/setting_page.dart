import 'package:core_designsystem/provider/theme_color_provider.dart';
import 'package:core_designsystem/provider/theme_text_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const SettingsSection(
            title: 'General',
            children: [
              SettingsSwitchTile(
                title: 'Dark mode',
                subtitle: 'Automatic',
                icon: Icons.brightness_6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const SettingsSection({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ...children,
        const SizedBox(height: 16),
      ],
    );
  }
}

class SettingsSwitchTile extends ConsumerStatefulWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  const SettingsSwitchTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.icon,
  }) : super(key: key);
  @override
  _SettingsSwitchTileState createState() => _SettingsSwitchTileState();
}

class _SettingsSwitchTileState extends ConsumerState<SettingsSwitchTile> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      leading: Icon(widget.icon),
      title: Text(widget.title),
      subtitle: widget.subtitle != null ? Text(widget.subtitle!) : null,
      trailing: Switch(
        value: _value,
        onChanged: (bool newValue) {
          setState(() {
            _value = newValue;
            //set
            final themeNotifier = ref.read(themeNotifierProvider.notifier);
            final textScalerNotifier = ref.read(textScalerProvider.notifier);

            themeNotifier.toggleTheme();
            textScalerNotifier.toggleScale();
          });
        },
      ),
    );
  }
}

class SomeOtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Some Other Page'),
      ),
      body: Center(
        child: const Text('This is another page.'),
      ),
    );
  }
}
