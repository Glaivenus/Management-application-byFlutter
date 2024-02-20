import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DocumentsPage extends StatelessWidget {
  final List<Map<String, dynamic>> files = [
    {"name": "CNY Greetings1.png", "path": "ample/CNY Greetings1.png", "type": "image"},
    {"name": "CNY Greetings2.png", "path": "sample/CNY Greetings2.png", "type": "image"},
    {"name": "CNY Greetings3.png", "path": "sample/CNY Greetings3.png", "type": "image"},
    {"name": "trbg.png", "path": "images/trbg.png", "type": "image"},
    {"name": "dictionary.pdf", "path": "sample/dictionary.pdf", "type": "pdf"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: files.length,
          itemBuilder: (context, index) {
            var file = files[index];
            IconData icon = Icons.insert_drive_file; // Default icon

            switch (file["type"]) {
              case "image":
                icon = Icons.image;
                break;
              case "pdf":
                icon = Icons.picture_as_pdf;
                break;
              default:
                icon = Icons.insert_drive_file;
            }

            return Card(
              child: ListTile(
                leading: Icon(icon),
                title: Text(file["name"]),
                onTap: () => _openFile(context, file),
              ),
            );
          },
        ),
      ),
    );
  }

  void _openFile(BuildContext context, Map<String, dynamic> file) async {
    if (file["type"] == "image") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImagePreview(filePath: file["path"]),
        ),
      );
    } else if (file["type"] == "pdf") {
      final path = await _prepareFile(file["path"]);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PDFViewerPage(filePath: path),
        ),
      );
    }
  }

  Future<String> _prepareFile(String assetPath) async {
    final byteData = await rootBundle.load(assetPath);
    final file = File('${(await getTemporaryDirectory()).path}/temp.pdf');
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    return file.path;
  }
}

class ImagePreview extends StatelessWidget {
  final String filePath;

  ImagePreview({required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Preview')),
      body: Center(child: Image.asset(filePath)),
    );
  }
}

class PDFViewerPage extends StatelessWidget {
  final String filePath;

  PDFViewerPage({required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PDF Preview')),
      body: PDFView(
        filePath: filePath,
      ),
    );
  }
}
