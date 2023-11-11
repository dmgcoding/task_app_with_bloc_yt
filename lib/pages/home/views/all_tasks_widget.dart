import 'package:flutter/material.dart';

import 'task_card.dart';

class AllTasksWidget extends StatelessWidget {
  const AllTasksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TaskCard(),
        TaskCard(),
        TaskCard(),
        TaskCard(),
        TaskCard(),
        TaskCard(),
      ],
    );
  }
}
