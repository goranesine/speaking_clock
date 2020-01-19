import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import 'package:clock_oleg/provider/provider_main.dart';
import 'package:clock_oleg/model/time_model.dart';
import 'package:flutter/material.dart';

class AudioModel {
  final AudioPlayer myPlayer = AudioPlayer();
  play(int sampleId)  {
    switch(sampleId) {
      case 47: { startPlay("bass.wav"); }
      break;
    }
  }

  void startPlay(String sampleName) async{
    await AudioCache(prefix: "samples/").play(sampleName);
  }
  void dispose() {
    myPlayer.dispose();
  }
}
