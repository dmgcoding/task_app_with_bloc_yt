import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';

class HomeStats extends StatelessWidget {
  const HomeStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildDoneStats(),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(child: _buildInProgressStat()),
            const SizedBox(width: 15),
            Expanded(child: _buildWatingStats()),
          ],
        ),
      ],
    );
  }

  Container _buildWatingStats() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.yellow,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "5",
              style: AppTypoGraphy.getTextStyle(
                color: AppColors.white,
              ),
            ),
            Text(
              "Waiting",
              style: AppTypoGraphy.getTextStyle(
                color: AppColors.white,
                weight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildInProgressStat() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.red,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "5",
              style: AppTypoGraphy.getTextStyle(
                color: AppColors.white,
              ),
            ),
            Text(
              "In progress",
              style: AppTypoGraphy.getTextStyle(
                color: AppColors.white,
                weight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDoneStats() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.blue,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "14",
              style: AppTypoGraphy.getTextStyle(
                color: AppColors.white,
              ),
            ),
            Text(
              "Done",
              style: AppTypoGraphy.getTextStyle(
                color: AppColors.white,
                weight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
