import 'package:flutter/material.dart';

class FileListItem extends StatelessWidget {
  final String fileName;
  final double progress; // A value between 0.0 and 1.0
  final VoidCallback onClose;

  const FileListItem({
    Key? key,
    required this.fileName,
    required this.progress,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( vertical: 3),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Row(
        children: [
          // File name
          Expanded(
            child: Text(
              fileName,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          // Progress bar
          Expanded(
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.shade300,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(width: 8),
          // Close button
          IconButton(
            icon: const Icon(Icons.close, color: Colors.grey),
            onPressed: onClose,
            tooltip: 'Remove file',
          ),
        ],
      ),
    );
  }
}
