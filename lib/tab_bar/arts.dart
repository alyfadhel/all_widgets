import 'package:flutter/material.dart';

class ArtsScreen extends StatelessWidget {
  const ArtsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'Arts Screen',
        style: Theme.of(context).textTheme.headline5!.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
