import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('tr', ''),
        Locale('en', ''),
      ],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      home: displaySplashImage
          ? Container(
              color: Colors.transparent,
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/splash.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : AnasayfaWidget(),
    );
  }
}
