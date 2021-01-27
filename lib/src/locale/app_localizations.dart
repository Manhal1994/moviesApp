import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mymovies/src/di/di.dart';

class AppLocalizations{
 final Locale locale ;
 static LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();
 AppLocalizations(this.locale);

static AppLocalizations of(BuildContext context){
 return Localizations.of<AppLocalizations>(context, AppLocalizations);
}
Map<String,String> localizedString;

Future<bool> load() async {
 String jsonString =  await  rootBundle.loadString("assets/lang/${locale.languageCode}.json");
 Map<String,dynamic> jsonMap = json.decode(jsonString);
   localizedString = jsonMap.map((key, value) {
      return MapEntry(
          key, value.toString().replaceAll(r"\'", "'").replaceAll(r"\t", " "));
    }); return true;

}
String translate(String key){
 return  localizedString[key];
}
}
class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations>{
  const _AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
  
    return ['en','ar'].contains(locale.languageCode);
    }
  
    @override
    Future<AppLocalizations> load(Locale locale) async {
        AppLocalizations localizations =  AppLocalizations(locale);
        await localizations.load();
        return localizations;
  
    }
  
    @override
    bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>false;
  
}