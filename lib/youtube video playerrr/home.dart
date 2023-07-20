import 'package:flutter/material.dart';
import 'package:my_video_player/youtube%20video%20playerrr/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Youtube player Demo")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              YoutubeVideo("https://www.youtube.com/watch?v=2sofDNM4Ymo"),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (ctx, i) {
                    return ListTile(
                      title: Text("Item $i"),
                    );
                  })
            ],
          ),
        ));
  }
}
