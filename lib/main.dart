import 'package:custom_bottom_bar_flutter/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //* enter full screen mode
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stacky Nav Bar Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(canvasColor: const Color(0xffEEE2F0)),
        home: const HomeScreen());
  }
}
