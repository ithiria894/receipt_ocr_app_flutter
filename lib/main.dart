import 'package:flutter/material.dart';

void main() {
  runApp(ReceiptOCRApp());
}

class ReceiptOCRApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipt OCR App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReceiptOCRScreen(),
    );
  }
}

class ReceiptOCRScreen extends StatefulWidget {
  @override
  _ReceiptOCRScreenState createState() => _ReceiptOCRScreenState();
}

class _ReceiptOCRScreenState extends State<ReceiptOCRScreen> {
  String imageUrl = ''; // Placeholder for image URL

  void _openCamera() {
    // Implement camera opening functionality
  }

  Future<void> _uploadImage() async {
    // Simulate image uploading functionality
    // Replace this with actual implementation to set imageUrl
    setState(() {
      imageUrl = 'https://via.placeholder.com/150'; // Example image URL
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt OCR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _openCamera,
              child: Text('Open Camera'),
            ),
            SizedBox(height: 20), // Add spacing between widgets
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Upload Image'),
            ),
            SizedBox(height: 20), // Add spacing between widgets
            imageUrl.isNotEmpty
                ? Image.network(imageUrl) // Display uploaded image
                : Container(), // Placeholder if no image uploaded
          ],
        ),
      ),
    );
  }
}
