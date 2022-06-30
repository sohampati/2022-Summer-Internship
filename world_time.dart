
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime{

  String location = ""; // location name for the UI
  String time = ""; // the time in that location
  String flag = ""; // url for asset flag
  String url = ""; // location url for API endpoint
  late bool isDayTime;
  WorldTime({ required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      var response = await http.get(
          Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0, 3);
      //print(datetime);
      // print(offset.substring(1,3));
      //print(data);
      // print(response.body);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // set the time property
      isDayTime = now.hour > 6 && now.hour < 20;

      time = DateFormat.jm().format(now);

    }
    catch (e) {
print('Caught error: $e');
time = 'could not get time data';
    }
  }
}
