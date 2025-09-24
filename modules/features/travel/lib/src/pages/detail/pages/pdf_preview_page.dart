import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfPreviewPage extends StatefulWidget {
  final String? title;
  final String? pdfUrl;

  const PdfPreviewPage({super.key, this.title, this.pdfUrl});

  @override
  State<PdfPreviewPage> createState() => _PdfPreviewPageState();
}

class _PdfPreviewPageState extends State<PdfPreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title??""),
        ),
        body: (widget.pdfUrl ?? "").isNotEmpty
            ? SfPdfViewer(

                source: URLPDFSource(widget.pdfUrl!),
              )
            : SizedBox());
  }
}
