import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_statemanagements/enums/theme_enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeProvider = StateNotifierProvider<ThemeProvider, ThemeEnums>(
  (_)=> ThemeProvider()
);

class ThemeProvider extends StateNotifier<ThemeEnums> {
  final prefsKey = "isDarkMode";

  ThemeProvider(): super(ThemeEnums.light){
    _loadTheme();
  }

  Future<void> _loadTheme() async{
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool('isDarkMode') ?? false;
    state = isDarkMode ? ThemeEnums.dark : ThemeEnums.light;
  }

  Future<void> toggleTheme() async{
    final prefs = await SharedPreferences.getInstance();
    if (state == ThemeEnums.light) {
      state = ThemeEnums.dark;
      prefs.setBool(prefsKey, true);
    } else {
      state = ThemeEnums.light;
      prefs.setBool(prefsKey, false);
    }
  }
}