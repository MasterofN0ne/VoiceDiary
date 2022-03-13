import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Voice Diary"),
            backgroundColor: const Color(0xFF762E75),
          ),
          body: ListView(
            children: const [
              DiaryWidget(),
              Padding(padding: EdgeInsets.all(10.0)),
              DiaryWidget(),
              Padding(padding: EdgeInsets.all(10.0)),
              DiaryWidget(),
              Padding(padding: EdgeInsets.all(10.0)),
              DiaryWidget(),
              Padding(padding: EdgeInsets.all(10.0)),
              DiaryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class DiaryWidget extends StatelessWidget {
  const DiaryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 360,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Colors.orange,
      ),
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.only(left: 20.0)),
          const Image(
            image: AssetImage(
                '/Users/user/AndroidStudioProjects/voice_diary/images/music_img.jpeg'),
            height: 100,
            width: 100,
          ),
          const Padding(padding: EdgeInsets.only(right: 50.0)),
          Column(
            children: const [
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Text("Folder Name"),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text("Date"),
            ],
          ),
        ],
      ),
    );
  }
}
