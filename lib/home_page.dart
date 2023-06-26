import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const TabBar(labelColor: Colors.blue, tabs: <Tab>[
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ]),
              Expanded(
                  child: TabBarView(
                      children: List.generate(
                          3,
                          (index) => ListView.builder(
                              itemCount: 10,
                              itemBuilder: (_, index) => SizedBox(
                                    height: 300,
                                    child: InAppWebView(
                                      initialData: InAppWebViewInitialData(
                                          data: index % 2 == 0
                                              ? '<blockquote class="twitter-tweet"><p lang="en" dir="ltr">✨💻 Congratulations to <a href="https://twitter.com/Dominus_Kelvin?ref_src=twsrc%5Etfw">@Dominus_Kelvin</a>, for his amazing <a href="https://twitter.com/hashtag/GoogleDevLibrary?src=hash&amp;ref_src=twsrc%5Etfw">#GoogleDevLibrary</a> contributions in Flutter!<br><br>Read his article on the magic of Future.wait() in Dart ⬇️ <a href="https://t.co/yMgZDywS4M">https://t.co/yMgZDywS4M</a></p>&mdash; Google for Developers (@googledevs) <a href="https://twitter.com/googledevs/status/1668694728999575561?ref_src=twsrc%5Etfw">June 13, 2023</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>'
                                              : '<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Tag along with <a href="https://twitter.com/KhanhNwin?ref_src=twsrc%5Etfw">@KhanhNwin</a> at I/O Connect Miami! 🌴<br><br>More <a href="https://twitter.com/hashtag/GoogleIO?src=hash&amp;ref_src=twsrc%5Etfw">#GoogleIO</a> events → <a href="https://t.co/Zk0QmU5i0q">https://t.co/Zk0QmU5i0q</a> <a href="https://t.co/CUmFYLH12Z">pic.twitter.com/CUmFYLH12Z</a></p>&mdash; Flutter (@FlutterDev) <a href="https://twitter.com/FlutterDev/status/1672303704467185665?ref_src=twsrc%5Etfw">June 23, 2023</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>'),
                                    ),
                                  )))))
            ],
          )),
    );
  }
}
