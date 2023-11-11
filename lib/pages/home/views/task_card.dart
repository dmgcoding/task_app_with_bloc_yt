import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';
import 'package:task_app/pages/edit_task/views/edit_task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.lightGrey.withOpacity(0.5),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.done,
              color: AppColors.blue,
            ),
          ),
          Expanded(
            child: Text(
              "Learn flutter clean code",
              style: AppTypoGraphy.getTextStyle(
                color: AppColors.black,
                weight: FontWeight.w400,
              ),
            ),
          ),
          // const SizedBox(width: 15),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (cxt) => const EditTaskPage(),
              ),
            ),
            icon: const Icon(
              Icons.edit,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: AppColors.red,
            ),
          ),
        ],
      ),
    );
  }
}
