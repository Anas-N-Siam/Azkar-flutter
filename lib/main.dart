import 'package:azkar/Screen/Auth/login_screen.dart';
import 'package:azkar/Screen/Auth/singup_screen.dart';
import 'package:azkar/Screen/Tasks/task_screen.dart';
import 'package:azkar/Screen/View/day_screen.dart';
import 'package:azkar/Screen/View/main_screen.dart';
import 'package:azkar/Screen/View/zkar_screen.dart';
import 'package:azkar/model/Task_Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/View/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { TaskData(); },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
          useMaterial3: true,
        ),
        initialRoute: "SplashScreen",
        routes: {
          'SplashScreen': (context) => const SplashScreen(),
          'LoginScreen':(context) => const LoginScreen(),
          'SignUp':(context) => const SingUpScreen(),
          'MainScreen':(context) => const MainScreen(),
          'ZkarScreen':(context) => const ZkarScreen(),
          'DayScreen':(context) => const DayZkarScreen(),
          'TaskScreen':(context) => const TaskScreen()
        },
      ),
    );
  }
}
