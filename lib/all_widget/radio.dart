import 'dart:ffi';

import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  String? country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:
          [
            const Text(
              'Choose Country',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Row(
              children:
              [
                const Text(
                  'USA  ',
                ),
                Radio(
                  value: 'usa',
                  groupValue: country,
                  onChanged: (val)
                  {
                    setState(()
                    {
                      country = val.toString();
                    });
                  },
                ),
              ],
            ),
            Row(
              children:
              [
                const Text(
                  'Egypt',
                ),
                Radio(
                  value: 'eg',
                  groupValue: country,
                  onChanged: (val)
                  {
                    setState(()
                    {
                      country = val.toString();
                    });
                  },
                ),
              ],
            ),
            Row(
              children:
              [
                const Text(
                  'KSA  ',
                ),
                Radio(
                  value: 'ksa',
                  groupValue: country,
                  onChanged: (val)
                  {
                    setState(()
                    {
                      country = val.toString();
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
