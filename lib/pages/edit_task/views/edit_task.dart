import 'package:flutter/material.dart';
import 'package:task_app/global/widgets/primary_btn.dart';

import 'task_form_field.dart';

class EditTaskPage extends StatelessWidget {
  const EditTaskPage({super.key});

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
            _buildStatusDropdown(),
            const SizedBox(height: 50),
            PrimaryBtn(
              text: 'Save',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }

  DropdownButton<String> _buildStatusDropdown() {
    return DropdownButton<String>(
      isExpanded: true,
      value: null,
      hint: const Text("Select status"),
      items: ["waiting", "in progress", "completed"]
          .map((String e) =>
              DropdownMenuItem<String>(value: e, child: Text(e.toString())))
          .toList(),
      onChanged: (String? val) {},
    );
  }
}
