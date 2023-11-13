import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';
import 'package:task_app/global/widgets/primary_btn.dart';
import 'package:task_app/pages/signin/views/signin.dart';
import 'package:task_app/pages/signup/blocs/basic_auth/basic_auth_bloc.dart';

import 'email_input_field.dart';
import 'google_signup_btn.dart';
import 'pwd_input_field.dart';

class SignupPageBody extends StatelessWidget {
  const SignupPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const Spacer(),
            const GoogleSignupBtn(),
            const SizedBox(height: 20),
            _buildOrText(),
            const SizedBox(height: 20),
            const EmailInputField(),
            const SizedBox(height: 20),
            const PwdInputField(),
            const SizedBox(height: 40),
            PrimaryBtn(
              text: 'Sign Up',
              ontap: () => context.read<BasicAuthBloc>().add(FormSubmit()),
            ),
            const SizedBox(height: 20),
            _buildSigninText(context),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildSigninText(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (cxt) => const SigninPage(),
        ),
      ),
      child: Align(
        child: Text(
          "Already have an account? Sign in.",
          style: AppTypoGraphy.getTextStyle(
            color: AppColors.lightGrey,
          ),
        ),
      ),
    );
  }

  Align _buildOrText() {
    return Align(
      child: Text(
        'Or',
        style: AppTypoGraphy.getTextStyle(
          color: AppColors.lightGrey,
          weight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
