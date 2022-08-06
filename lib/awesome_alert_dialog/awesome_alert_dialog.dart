
import 'package:flutter/material.dart';

class AwesomeAlertDialogScreen extends StatelessWidget {
  const AwesomeAlertDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Awesome Alert Dialog'
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.red,
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
            onPressed: ()
            {
              // AwesomeDialog(
              //   context: context,
              //   dialogType: DialogType.WARNING,
              //   animType: AnimType.BOTTOMSLIDE,
              //   title: 'Dialog Title',
              //   desc: 'Dialog description here.............',
              //   btnCancelOnPress: () {},
              //   btnOkOnPress: () {},
              // ).show();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                    Icons.crisis_alert_sharp,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Alert Dialog',
                ),
              ],
            ),
        ),
      ),
    );
  }
}
