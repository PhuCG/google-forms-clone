import 'package:flutter/material.dart';

class ParagraphQuestion extends StatelessWidget {
  const ParagraphQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        "Văn bản trả lời dài",
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }
}
