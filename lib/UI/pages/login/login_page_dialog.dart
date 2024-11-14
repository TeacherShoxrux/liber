import 'package:flutter/material.dart';

class PhoneNumberDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: 500,
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Greeting Text
              const Text(
                'Ассалому алайкум\nХуш келибсиз!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 44),

              // Mobile Number Input Field
              SizedBox(
                width: 340,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    prefixText: '+998 ',
                    labelText: 'Мобил рақам',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(height: 24),

              // Submit Button
              SizedBox(
                height: 50,
                width: 340,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the button press
                  },
                  child: Text('Кириш'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
