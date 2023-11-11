import 'package:flutter/material.dart';
import 'package:task_app/global/widgets/primary_btn.dart';

import 'task_form_field.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AddTask();
  }
}

class _AddTask extends StatelessWidget {
  const _AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            const TaskInputField(),
            const SizedBox(height: 25),
            PrimaryBtn(
              text: 'Add Task',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
