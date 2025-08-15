import 'package:flutter/material.dart';

class AddQuestionButtons extends StatelessWidget {
  final VoidCallback onAddQuestion;
  final VoidCallback onSaveForm;

  const AddQuestionButtons({
    super.key,
    required this.onAddQuestion,
    required this.onSaveForm,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: onAddQuestion,
          icon: const Icon(Icons.radio_button_checked),
          label: const Text("Thêm câu hỏi"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black87,
            elevation: 1,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton.icon(
          onPressed: onSaveForm,
          icon: const Icon(Icons.save),
          label: const Text("Lưu form"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 1,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
      ],
    );
  }
}
