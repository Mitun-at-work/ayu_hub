import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatefulWidget {
  final String bkName;

  const PdfViewer({
    super.key,
    required this.bkName,
  });

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  late PdfViewerController _pdfViewerController;
  late PdfTextSearchResult _searchResult;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    _searchResult = PdfTextSearchResult();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          widget.bkName,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              _searchResult = _pdfViewerController.searchText(
                'Science',
                // searchOption: TextSearchOption.dart,
              );

              if (_searchResult.hasResult) {
                setState(() {});
              } else {
                _searchResult.addListener(() {
                  if (_searchResult.hasResult) {
                    setState(() {});
                  }
                });
              }
            },
          ),
          Visibility(
            visible: _searchResult.hasResult,
            child: IconButton(
              icon: const Icon(
                Icons.clear,
              ),
              onPressed: () {
                setState(() {
                  _searchResult.clear();
                });
              },
            ),
          ),
          Visibility(
            visible: _searchResult.hasResult,
            child: IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_up,
              ),
              onPressed: () {
                _searchResult.previousInstance();
              },
            ),
          ),
          Visibility(
            visible: _searchResult.hasResult,
            child: IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_down,
              ),
              onPressed: () {
                _searchResult.nextInstance();
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SfPdfViewer.asset(
          'assets/pdf/The Magic of Ayurveda.pdf',
          controller: _pdfViewerController,
          currentSearchTextHighlightColor: Colors.yellow.withOpacity(0.6),
          otherSearchTextHighlightColor: Colors.yellow.withOpacity(0.3),
        ),
      ),
    );
  }
}
