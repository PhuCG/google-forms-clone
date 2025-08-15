import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../provider/state/question_state.dart';

class MultipleChoiceQuestion extends StatefulWidget {
  final QuestionState question;
  final Map<int, TextEditingController> optionControllers;
  final Function(int) onAddOption;
  final Function(int, int) onRemoveOption;
  final Function(int, int, String) onUpdateOption;
  final Function(int) onAddOtherOption;

  const MultipleChoiceQuestion({
    super.key,
    required this.question,
    required this.optionControllers,
    required this.onAddOption,
    required this.onRemoveOption,
    required this.onUpdateOption,
    required this.onAddOtherOption,
  });

  @override
  State<MultipleChoiceQuestion> createState() => _MultipleChoiceQuestionState();
}

class _MultipleChoiceQuestionState extends State<MultipleChoiceQuestion> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.question.options.asMap().entries.map((entry) {
          final index = entry.key;
          final option = entry.value;
          final isOtherOption = option == "Khác...";

          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Radio<String>(
                  value: option,
                  groupValue: null,
                  onChanged: (value) {},
                ),
                Expanded(
                  child:
                      isOtherOption
                          ? Text(
                            "Khác...",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          )
                          : TextField(
                            controller: widget.optionControllers[index],
                            onChanged:
                                (value) => widget.onUpdateOption(
                                  widget.question.id,
                                  index,
                                  value,
                                ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                ),
                if (_canRemoveOption(widget.question, index))
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.grey, size: 18),
                    onPressed:
                        () => widget.onRemoveOption(widget.question.id, index),
                    constraints: const BoxConstraints(
                      minWidth: 24,
                      minHeight: 24,
                    ),
                    padding: EdgeInsets.zero,
                    splashRadius: 16,
                  ),
              ],
            ),
          );
        }),

        // Combined Add Options Widget
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              Radio<String>(value: "", groupValue: null, onChanged: (value) {}),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.blue, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Thêm tùy chọn",
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap =
                                  () => widget.onAddOption(widget.question.id),
                      ),
                      const TextSpan(
                        text: " hoặc ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      if (!widget.question.options.contains("Khác..."))
                        TextSpan(
                          text: "thêm 'Câu trả lời khác'",
                          style: const TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap =
                                    () => widget.onAddOtherOption(
                                      widget.question.id,
                                    ),
                        )
                      else
                        const TextSpan(
                          text: "thêm 'Câu trả lời khác'",
                          style: TextStyle(color: Colors.grey),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  bool _canRemoveOption(QuestionState question, int optionIndex) {
    final option = question.options[optionIndex];

    // Nếu là option "Khác...", luôn cho phép xóa
    if (option == "Khác...") {
      return true;
    }

    // Với option thường, chỉ cho phép xóa nếu còn nhiều hơn 1 option thường
    final regularOptions =
        question.options.where((opt) => opt != "Khác...").toList();
    return regularOptions.length > 1;
  }
}
