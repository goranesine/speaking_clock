import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:clock_oleg/model/time_model.dart';

///APIS are part of the app that are calling external APIS.
///They can be network calls to other services, or calls to local storage
List<SingleChildWidget> time = [
  Provider<TimeModel>(
    create: (context) => TimeModel(),
    dispose: (context, TimeModel model) => model.dispose(),
    lazy: false, // to create them immediately
  ),
  StreamProvider<CurrentHourO>(
    initialData: CurrentHourO(hourNow: 0),
    create: (context) =>
        Provider.of<TimeModel>(context, listen: false).currentHourO$,
  ),
  StreamProvider<CurrentMinutesO>(
    initialData: CurrentMinutesO(minutesNow: 0),
    create: (context) =>
        Provider.of<TimeModel>(context, listen: false).currentMinutes$,
  )
];
