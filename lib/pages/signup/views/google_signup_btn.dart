import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';
import 'package:task_app/pages/signup/blocs/google_auth/google_auth_bloc.dart';

class GoogleSignupBtn extends StatelessWidget {
  const GoogleSignupBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<GoogleAuthBloc>().add(SigninEvent()),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: BlocBuilder<GoogleAuthBloc, GoogleAuthState>(
          builder: (context, state) {
            if (state is GoogleAuthPending) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign up With Google',
                    style: AppTypoGraphy.getTextStyle(weight: FontWeight.w500),
                  ),
                  const CircularProgressIndicator(),
                ],
              );
            }
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign up With Google',
                  style: AppTypoGraphy.getTextStyle(weight: FontWeight.w500),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
