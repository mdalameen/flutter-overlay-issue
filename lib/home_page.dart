import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            elevation: 0,
          ),
          body: Column(
            children: [
              Container(
                color: Colors.blue,
                child: const TabBar(tabs: <Tab>[
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ]),
              ),
              Expanded(
                  child: TabBarView(
                      children: List.generate(
                          3,
                          (index) => ListView.builder(
                              itemCount: 10,
                              itemBuilder: (_, index) => SizedBox(
                                    height: 300,
                                    child: index % 2 == 0
                                        ? Container(
                                            color: Colors.yellow,
                                          )
                                        : const AppWebViewWidget(),
                                  )))))
            ],
          ),
        ));
  }
}

class AppWebViewWidget extends StatefulWidget {
  const AppWebViewWidget({super.key});

  @override
  State<AppWebViewWidget> createState() => _AppWebViewWidgetState();
}

class _AppWebViewWidgetState extends State<AppWebViewWidget> {
  late WebViewController _controller;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          'https://twitter.com/FlutterDev/status/1665750338626830342'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _controller,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
