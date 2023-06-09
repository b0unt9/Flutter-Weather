import 'package:flutter/material.dart';
import 'package:flutter_weather/data/my_location.dart';
import 'package:flutter_weather/data/network.dart';
import 'package:flutter_weather/screens/weather_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late double latitude3;
  late double longitude3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;
    print(latitude3);
    print(longitude3);

    Network network = Network(
        'https://weather.owob.workers.dev/weather/$latitude3/$longitude3',
        'https://weather.owob.workers.dev/air_pollution/$latitude3/$longitude3');
    var weatherData = await network.getJsonData();
    var airData = await network.getAirData();

    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return WeatherScreen(
          parseWeatherData: weatherData,
          parseAirPollution: airData,
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
