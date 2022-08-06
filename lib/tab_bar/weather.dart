import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'Weather Screen',
        style: Theme.of(context).textTheme.headline5!.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
