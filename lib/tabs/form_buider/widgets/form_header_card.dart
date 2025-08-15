import 'package:flutter/material.dart';

class FormHeaderCard extends StatefulWidget {
  final Function(String) onTitleChanged;
  final Function(String) onDescriptionChanged;

  const FormHeaderCard({
    super.key,
    required this.onTitleChanged,
    required this.onDescriptionChanged,
  });

  @override
  State<FormHeaderCard> createState() => _FormHeaderCardState();
}

class _FormHeaderCardState extends State<FormHeaderCard> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: "Mẫu không có tiêu đề");
    _descriptionController = TextEditingController(text: "Mẫu không có mô tả");
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.purple[400]!, width: 8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Field
              TextField(
                controller: _titleController,
                onChanged: widget.onTitleChanged,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
                decoration: const InputDecoration(
                  hintText: "Tiêu đề biểu mẫu",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2),
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const SizedBox(height: 16),

              // Description Field
              TextField(
                controller: _descriptionController,
                onChanged: widget.onDescriptionChanged,
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  hintText: "Mô tả biểu mẫu",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
