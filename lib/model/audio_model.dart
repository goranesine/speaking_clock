import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import 'package:clock_oleg/provider/provider_main.dart';
import 'package:clock_oleg/model/time_model.dart';


class AudioModel {
//  var _hour = Provider<int>.value(value: CurrentHourO().hourNow);
 // var _minutes = Provider<int>.value(value: CurrentMinutesO().minutesNow);
  AudioPlayer myPlayer = AudioPlayer();
 // Timer timer;

  AudioModel() {

   // timer = Timer.periodic(Duration(seconds: 10), (timer) => play());

  }

  play() async {
await AudioCache(prefix: "samples/").play("bass.wav");
  }

  void dispose() {
 //   timer.cancel();

  }
}
