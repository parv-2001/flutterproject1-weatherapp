import 'package:flutter/material.dart';
import 'package:flutter_application_3/worker/worker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late String city = "indore";
  late String temp;
  late String hum;
  late String air_speed;
  late String des;
  late String main;
  late String icon;

  void startApp(String city) async {
    worker instance = worker(location: city);
    await instance.getData();
    temp = instance.temp;
    hum = instance.humidity;
    air_speed = instance.air_speed;
    des = instance.description;
    main = instance.main;
    icon = instance.icon;
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        "temp_value": temp,
        "hum_value": hum,
        "air_speed_value": air_speed,
        "des_value": des,
        "main_value": main,
        "icon_value": icon,
        "city_value": city,
      });
    });
  }

  @override
  void initState() {
    super.initState();
    //startApp();
  }

  @override
  Widget build(BuildContext context) {
    Map search =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    if (search.isNotEmpty) {
      city = search['searchText'];
    }
    startApp(city);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/weather_logo-removebg-preview.png",
              height: 200,
              width: 200,
            ),
            const Text(
              "Mausam App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "made by PARV",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SpinKitWave(
              color: Colors.blue,
              size: 40.0,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue.shade100,
    );
  }
}
