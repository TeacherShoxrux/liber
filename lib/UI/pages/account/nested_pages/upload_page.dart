import 'package:flutter/material.dart';
import 'package:liber/UI/pages/account/widgets/file_item_widget.dart';

class UploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(14)
            ),
            width: 500,

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StepIndicator(step: 'FILES', isActive: true),
                    StepIndicator(step: 'CREATORS',isActive: true,),
                    StepIndicator(step: 'METADATA',isActive: true),
                    StepIndicator(step: 'PRICE',isActive: true),
                    StepIndicator(step: 'RIGHTS'),
                    StepIndicator(step: 'DISTRIBUTION'),
                  ],
                ),
                SizedBox(height: 40),
                // Upload Icon
                const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.cloud_upload, size: 100, color: Colors.grey),
                      SizedBox(height: 8),
                      Text('Upload Files (.epub or .docx)',
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
               Column(
                 children: [
                   FileListItem(fileName: 'your-file-here.PDF', progress: 0.3, onClose: () {  },),
                   FileListItem(fileName: 'your-file-here2.PDF', progress: 0.2, onClose: () {  },),
                   FileListItem(fileName: 'your-file-here3.PDF', progress: 1, onClose: () {  },),
                   FileListItem(fileName: 'your-file-here4.PDF', progress: 0.9, onClose: () {  },),
                   const SizedBox(height: 10),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       ElevatedButton(
                         onPressed: () {
                           // Save as Draft action
                         },
                         child: Text('SAVE AS DRAFT'),
                         style: ElevatedButton.styleFrom(
                           foregroundColor: Colors.black, backgroundColor: Colors.grey[300],
                         ),
                       ),
                       ElevatedButton(
                         onPressed: () {
                           // Publish action
                         },
                         child: Text('PUBLISH'),
                         style: ElevatedButton.styleFrom(
                           foregroundColor: Colors.white, backgroundColor: Colors.blue,
                         ),
                       ),
                     ],
                   ),
                 ],
               ),

              ],
            ),
          ),
        ),
      );
  }
}

class StepIndicator extends StatelessWidget {
  final String step;
  final bool isActive;

  StepIndicator({required this.step, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: isActive ? Colors.blue : Colors.grey[300],
          child: Text(
            '•',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 4),
        Text(
          step,
          style: TextStyle(
            fontSize: 12,
            color: isActive ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }
}
