import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {

  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool usa = false;
  bool sa = false;
  bool sy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.all(
          10.0,
        ),
        child: Column(
          children:
           [
            const Text(
                'Choose Counter',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Row(
              children: [
                const Text(
                  'USA',
                ),
                Checkbox(
                    value: usa,
                    onChanged: (val)
                    {
                      setState(()
                      {
                        usa = val!;
                      });
                    },
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'KSA',
                ),
                Checkbox(
                    value: sa,
                    onChanged: (val)
                    {
                      setState(()
                      {
                        sa = val!;
                      });
                    },
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Syria',
                ),
                Checkbox(
                    value: sy,
                    onChanged: (val)
                    {
                      setState(()
                      {
                        sy = val!;
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
