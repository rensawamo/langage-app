import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/setting/setting_page_data.dart';
import 'package:flutter/material.dart';



class SettingRootPage extends StatelessWidget {
  const SettingRootPage({Key? key}) : super(key: key);

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
              SettingsTile(
                title: 'Appearance',
                subtitle: 'Make Ziar\'App yours',
                icon: Icons.palette,
              ),
              SettingsTile(
                title: 'Privacy',
                subtitle: 'Lock Ziar\'App to improve your privacy',
                icon: Icons.fingerprint,
              ),
              SettingsSwitchTile(
                title: 'Dark mode',
                subtitle: 'Automatic',
                icon: Icons.brightness_6,
              ),
              SettingsTile(
                title: 'About',
                subtitle: 'Learn more about Ziar\'App',
                icon: Icons.info,
              ),
              SettingsTile(
                title: 'Send Feedback',
                subtitle: 'Let us know how we can make Ziar\'app better',
                icon: Icons.feedback,
              ),
            ],
          ),
          SettingsSection(
            title: 'Account',
            children: [
              SettingsTile(
                title: 'Sign Out',
                icon: Icons.exit_to_app,
                onTap: () {
                  SettingPageData().go(context);
                },
              ),
              const SettingsTile(
                title: 'Change email',
                icon: Icons.email,
              ),
              const SettingsTile(
                title: 'Delete account',
                icon: Icons.delete,
                iconColor: Colors.red,
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

class SettingsTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final Color? iconColor;
  // tap event
  final void Function()? onTap;

  const SettingsTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.icon,
    this.iconColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      leading: Icon(icon, color: iconColor ?? Colors.black),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}

class SettingsSwitchTile extends StatefulWidget {
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

class _SettingsSwitchTileState extends State<SettingsSwitchTile> {
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