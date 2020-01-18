import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:clock_oleg/model/audio_model.dart';
List<SingleChildWidget>  audio = [
  Provider<AudioModel>(
    create:  (context)=> AudioModel(),
    dispose: (context, AudioModel model)=>model.dispose(),
    lazy: false,
  ) ,

];


