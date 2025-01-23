import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void playmusic(String name) {
  final player = AudioPlayer();
  final play = player.setAsset('assets/$name');
  player.play();
}

Expanded mybotton(String musicName, String musicNum, Color col) {
  return Expanded(
    child: ElevatedButton(
        onPressed: () {
          playmusic(musicNum);
        },
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.music_note,
              size: 35,
              color: col,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              musicName,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: col,
              ),
            ),
          ],
        )),
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[700],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'نغمات',
            style: TextStyle(
                color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mybotton('music-1', 'music-1.mp3', Colors.red),
            SizedBox(
              height: 5,
            ),
            mybotton('music-2', 'music-2.mp3', Colors.brown),
            SizedBox(
              height: 5,
            ),
            mybotton('music-3', 'music-3.mp3', Colors.lightBlue),
            SizedBox(
              height: 5,
            ),
            mybotton('music-4', 'music-4.mp3', Colors.deepOrangeAccent),
            SizedBox(
              height: 5,
            ),
            mybotton('music-5', 'music-5.mp3', Colors.greenAccent),
            SizedBox(
              height: 5,
            ),
            mybotton('music-6', 'music-6.mp3', Colors.yellow),
            SizedBox(
              height: 5,
            ),
            mybotton('music-7', 'music-7.mp3', Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}//from chatGPT
/*
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

final AudioPlayer player = AudioPlayer(); // مشغل صوت عالمي

Future<void> playMusic(String name) async {
  try {
    await player.stop(); // إيقاف الصوت الجاري تشغيله
    await player.setAsset('assets/$name'); // إعداد المسار الجديد
    await player.play(); // تشغيل الصوت
  } catch (e) {
    print("Error playing music: $e");
  }
}

Expanded myButton(String musicName, String musicNum, Color col) {
  return Expanded(
    child: ElevatedButton(
      onPressed: () {
        playMusic(musicNum); // استدعاء تشغيل الصوت مع المسار
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.music_note,
            size: 35,
            color: col,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            musicName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: col,
            ),
          ),
        ],
      ),
    ),
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[700],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'نغمات',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton('الموسيقى 1', 'music-1.mp3', Colors.red),
            SizedBox(height: 5),
            myButton('الموسيقى 2', 'music-2.mp3', Colors.brown),
            SizedBox(height: 5),
            myButton('الموسيقى 3', 'music-3.mp3', Colors.lightBlue),
            SizedBox(height: 5),
            myButton('الموسيقى 4', 'music-4.mp3', Colors.deepOrangeAccent),
            SizedBox(height: 5),
            myButton('الموسيقى 5', 'music-5.mp3', Colors.greenAccent),
            SizedBox(height: 5),
            myButton('الموسيقى 6', 'music-6.mp3', Colors.yellow),
            SizedBox(height: 5),
            myButton('الموسيقى 7', 'music-7.mp3', Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}

*/

