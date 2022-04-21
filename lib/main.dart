import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'helpers/routes.dart';
import 'helpers/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light
        )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      theme: ThemeData(
          scaffoldBackgroundColor: white,
          colorScheme: ColorScheme.fromSwatch().copyWith(primary: primaryColor, secondary: accentColor)
      ),
    );
  }
}
