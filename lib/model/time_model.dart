import 'dart:async';
import 'package:rxdart/subjects.dart';
import 'package:flutter/foundation.dart';

class TimeModel {
  Timer timer;
  BehaviorSubject<CurrentHourO> currentHourO$ =
  BehaviorSubject<CurrentHourO>();
  BehaviorSubject<CurrentMinutesO> currentMinutes$ =
      BehaviorSubject<CurrentMinutesO>();

  TimeModel(){

    timer = Timer.periodic(Duration(seconds: 10), (timer) => _updateTime());

  }

  _updateTime(){
    currentHourO$.add(CurrentHourO(hourNow: DateTime.now().hour));
    currentMinutes$.add(CurrentMinutesO(minutesNow: DateTime.now().minute));

  }

  void dispose() {
    timer.cancel();
    currentHourO$.close();
    currentMinutes$.close();
  }
}

class CurrentHourO {
  final int hourNow;

  const CurrentHourO({@required this.hourNow}):assert(hourNow != null);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentHourO &&
          runtimeType == other.runtimeType &&
          hourNow == other.hourNow;

  @override
  int get hashCode => hourNow.hashCode;
}

class CurrentMinutesO {
  final int minutesNow;

  CurrentMinutesO({@required this.minutesNow}):assert(minutesNow != null) ;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentMinutesO &&
          runtimeType == other.runtimeType &&
          minutesNow == other.minutesNow;

  @override
  int get hashCode => minutesNow.hashCode;
}
