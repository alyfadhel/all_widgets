import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          onPressed: ()
          {
            var snackBar =  SnackBar(
                content: const Text(
                    'How Are you',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              duration: const Duration(
                minutes: 1,
              ),
              margin: const EdgeInsets.all(10.0),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.amber,
              action: SnackBarAction(
                  label: 'Close',
                  onPressed: ()
                  {
                    print('Close');
                  },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text(
              'Show SnackBar',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
