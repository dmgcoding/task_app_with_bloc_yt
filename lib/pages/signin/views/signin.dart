import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';

import 'signin_page_body.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Signin();
  }
}

class _Signin extends StatelessWidget {
  const _Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBgImg(context),
          _buildBgOverlay(context),
          const SigninPageBody(),
        ],
      ),
    );
  }

  Container _buildBgOverlay(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      color: AppColors.black.withOpacity(0.5),
    );
  }

  SizedBox _buildBgImg(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Image.asset(
        'assets/imgs/splash/splash.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
