import 'package:flutter/material.dart';
import 'package:localization_flutter/setting_language_page.dart';

class SettingIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _iconTapped(context);
      },
      icon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
    );
  }

  _iconTapped(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LanguageSelectorPage(),
      ),
    );
  }
}
