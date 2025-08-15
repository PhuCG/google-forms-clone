import 'package:flutter/material.dart';
import '../provider/state/question_state.dart';

class QuestionBottomBar extends StatelessWidget {
  final QuestionState question;
  final VoidCallback onRemoveQuestion;
  final VoidCallback onToggleRequired;

  const QuestionBottomBar({
    super.key,
    required this.question,
    required this.onRemoveQuestion,
    required this.onToggleRequired,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.delete, size: 24),
          onPressed: onRemoveQuestion,
          tooltip: 'Xóa câu hỏi',
        ),

        const Spacer(),

        // Required Toggle
        Row(
          children: [
            const Text(
              'Bắt buộc',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(width: 8),
            Transform.scale(
              scale: 0.8,
              child: Switch(
                value: question.isRequired,
                onChanged: (value) => onToggleRequired(),
                activeColor: Colors.blue,
              ),
            ),
          ],
        ),

        const SizedBox(width: 8),

        // More Options Menu - Removed since question type change is now in the label
      ],
    );
  }
}
