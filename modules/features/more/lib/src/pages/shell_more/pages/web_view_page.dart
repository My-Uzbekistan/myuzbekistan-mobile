import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String? title;
  final String? actionUrl;
  const WebViewPage({super.key,this.title,this.actionUrl});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  late final WebViewController _controller;
  bool _isLoading = true; // loading holatini kuzatib borish

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.actionUrl??""))
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            _isLoading = true; // sahifa yuklana boshlasa, loading true bo‘ladi
          });
        },
        onPageFinished: (url) {
          setState(() {
            _isLoading = false; // sahifa yuklangandan so‘ng, loading false bo‘ladi
          });
        },
      ));
  }
  @override
  Widget build(BuildContext context) {
    _controller. setBackgroundColor(context.appColors.background.background);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title??""),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading) // Agar sahifa yuklanayotgan bo‘lsa, indikatorni ko‘rsatamiz
            const Center(
              child: LoadingIndicator(),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }
}
