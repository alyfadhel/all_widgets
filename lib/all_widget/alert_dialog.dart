import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({Key? key}) : super(key: key);

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Title'),
                    content: const Text('Content Content Content'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            print('ok');
                          },
                          child: const Text('Ok'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            print('Cancel');
                          },
                          child: const Text('Cancel'),
                      ),
                    ],
                  );
                });
          },
          color: Colors.red,
          child: const Text(
            'Alert Dialog',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
