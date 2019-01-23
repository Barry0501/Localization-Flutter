import 'package:flutter/material.dart';

class LanguageSelectorPage extends StatefulWidget {
  _LanguageSelectorPageState createState() => _LanguageSelectorPageState();
}

class _LanguageSelectorPageState extends State<LanguageSelectorPage> {
  final List<String> languagesList = ["English", "Vietnamese"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //AppTranslations.of(context).text("tab_notifications"),
          "Select Language"
        ),
      ),
      body: _buildListLanguages(),
    );
  }

  _buildListLanguages() {
    return ListView.builder(
      itemCount: languagesList.length,
      itemBuilder: (context, index) {
        return _buildLanguageItem(languagesList[index]);
      },
    );
  }

  _buildLanguageItem(String language) {
    return InkWell(
      onTap: () {
        print(language);
        //application.onLocaleChanged(Locale(languagesMap[language]));
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            language,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}