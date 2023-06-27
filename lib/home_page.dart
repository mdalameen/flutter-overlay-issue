import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
                                        : InAppWebView(
                                            initialData: InAppWebViewInitialData(
                                                data:
                                                    '<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Tag along with <a href="https://twitter.com/KhanhNwin?ref_src=twsrc%5Etfw">@KhanhNwin</a> at I/O Connect Miami! 🌴<br><br>More <a href="https://twitter.com/hashtag/GoogleIO?src=hash&amp;ref_src=twsrc%5Etfw">#GoogleIO</a> events → <a href="https://t.co/Zk0QmU5i0q">https://t.co/Zk0QmU5i0q</a> <a href="https://t.co/CUmFYLH12Z">pic.twitter.com/CUmFYLH12Z</a></p>&mdash; Flutter (@FlutterDev) <a href="https://twitter.com/FlutterDev/status/1672303704467185665?ref_src=twsrc%5Etfw">June 23, 2023</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>'),
                                          ),
                                  )))))
            ],
          ),
        ));
  }
}
