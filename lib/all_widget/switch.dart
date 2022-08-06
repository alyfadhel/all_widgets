import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
           [
            const Text(
              'Do you want open notification',
            ),
            Switch(
                value: value,
                onChanged: (val)
                {
                  setState(()
                  {
                    value = val;
                    print(value);
                  });
                },
            ),
          ],
        ),
      ),
    );
  }
}
