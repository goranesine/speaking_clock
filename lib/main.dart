import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:clock_oleg/provider/provider_main.dart';
import 'package:clock_oleg/model/time_model.dart';
import 'package:clock_oleg/model/audio_model.dart';


void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
        home: Clock(),
      ),
    );
  }
}

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CurrentHourO>(
              builder: (context, hour, _) {
                return Text("Hour:" + hour.hourNow.toString());
              },
            ),Consumer<CurrentMinutesO>(
              builder: (context, minutes, _) {
                return Text("Minutes:" + minutes.minutesNow.toString());
              },
            ),
            Consumer<AudioModel>(
              builder: (context,data,_){
                return FloatingActionButton(onPressed: ()=> data.play(48));
              },
            )


          ],
        ),
      ),
    );
  }
}
