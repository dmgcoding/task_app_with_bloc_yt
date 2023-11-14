import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/lc.dart';
import 'package:task_app/pages/home/views/home.dart';
import 'package:task_app/pages/signup/blocs/basic_auth/basic_auth_bloc.dart';
import 'package:task_app/pages/signup/blocs/google_auth/google_auth_bloc.dart';

import 'signup_page_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BasicAuthBloc(lc()),
        ),
        BlocProvider(
          create: (context) => GoogleAuthBloc(lc()),
        )
      ],
      child: const _Signin(),
    );
  }
}

class _Signin extends StatelessWidget {
  const _Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<GoogleAuthBloc, GoogleAuthState>(
        listener: (context, state) {
          if (state is GoogleAuthSuccess) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (cxt) => const HomePage(),
                ),
                (route) => false);
          }
        },
        child: Stack(
          children: [
            _buildBgImg(context),
            _buildBgOverlay(context),
            const SignupPageBody(),
          ],
        ),
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
