import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/constants/my_theme_data.dart';
import 'package:rickandmorty/enums/theme_enums.dart';
import 'package:rickandmorty/screens/splash_screen.dart';
import 'package:rickandmorty/service/init_getit.dart';
import 'package:rickandmorty/service/navigation_service.dart';
import 'package:rickandmorty/view_model/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  setUpLocator();
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Rick and Morty Characters',
      theme: themeState == ThemeEnums.dark 
          ? MyThemeData.darkTheme 
          : MyThemeData.lightTheme,
      home: const SplashScreen(),
    );
  }
}