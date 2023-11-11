import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';

class PwdInputField extends StatelessWidget {
  const PwdInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          hintStyle: AppTypoGraphy.getTextStyle(
            color: AppColors.lightGrey,
            fontSize: 18,
          ),
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.white,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.white,
            ),
          )),
    );
  }
}
