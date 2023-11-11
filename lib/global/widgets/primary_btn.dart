import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Align(
          child: Text(
            text,
            style: AppTypoGraphy.getTextStyle(
              weight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
