import 'package:flutter/material.dart';
import 'package:task_app/global/constants/app_colors.dart';
import 'package:task_app/global/typography/typography.dart';
import 'package:task_app/pages/add_task/views/add_task.dart';

import 'all_tasks_widget.dart';
import 'home_stats.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Home();
  }
}

class _Home extends StatelessWidget {
  const _Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            _buildTopRow(context),
            const SizedBox(height: 20),
            const HomeStats(),
            const SizedBox(height: 30),
            _buildAllTasksTitle(),
            const SizedBox(height: 20),
            const AllTasksWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Align _buildAllTasksTitle() {
    return Align(
      child: Text(
        "All Tasks",
        style: AppTypoGraphy.getTextStyle(
          color: AppColors.black,
          weight: FontWeight.bold,
        ),
      ),
    );
  }

  Row _buildTopRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (cxt) => const AddTaskPage(),
            ),
          ),
          icon: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        Text(
          "Tasks",
          style: AppTypoGraphy.getTextStyle(
            color: AppColors.black,
            weight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.logout_rounded,
            size: 30,
          ),
        ),
      ],
    );
  }
}
