import 'package:flutter/material.dart';
import 'package:task_app/global/typography/typography.dart';
import 'package:task_app/lc.dart';
import 'package:task_app/pages/splash/views/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppTypoGraphy().loadFonts();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task app',
      home: SplashPage(),
    );
  }
}
