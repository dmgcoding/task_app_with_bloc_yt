import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';
import 'package:task_app/global/widgets/primary_btn.dart';
import 'package:task_app/pages/signup/views/signup.dart';

import 'email_input_field.dart';
import 'google_login_btn.dart';
import 'pwd_input_field.dart';

class SigninPageBody extends StatelessWidget {
  const SigninPageBody({
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
            const GoogleLoginBtn(),
            const SizedBox(height: 20),
            _buildOrText(),
            const SizedBox(height: 20),
            const EmailInputField(),
            const SizedBox(height: 20),
            const PwdInputField(),
            const SizedBox(height: 40),
            PrimaryBtn(
              text: 'Log In',
              ontap: () {},
            ),
            const SizedBox(height: 20),
            _buildSignupText(context),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildSignupText(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (cxt) => const SignUpPage(),
        ),
      ),
      child: Align(
        child: Text(
          "Don't have an account? Sign up.",
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
