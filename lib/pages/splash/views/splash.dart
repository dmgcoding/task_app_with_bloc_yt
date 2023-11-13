import 'package:flutter/material.dart';
import 'package:task_app/pages/home/views/home.dart';
import 'package:task_app/pages/signin/views/signin.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Splash();
  }
}

class _Splash extends StatefulWidget {
  const _Splash({super.key});

  @override
  State<_Splash> createState() => _SplashState();
}

class _SplashState extends State<_Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), _routeUser);
  }

  void _routeUser() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (cxt) => const SigninPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Image.asset(
          'assets/imgs/splash/splash.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
