import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class DateTimeScreen extends StatefulWidget {
  const DateTimeScreen({Key? key}) : super(key: key);

  @override
  State<DateTimeScreen> createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  DateTime date = DateTime.now().subtract(const Duration(hours: 24));
  changeLocal()async
  {
    await Jiffy.locale("ar");
  }
  @override
  void initState() {
    changeLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Date Time',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //لمعرفه تاريخ اليوم
            //print(DateTime.now());
            //لمعرفه السنه فقط
            //print(DateTime.now().year);
            //لمعرفه اليوم فقط
            //print(DateTime.now().weekday);
            //لمعرفه الشهر فقط
            //print(DateTime.now().month);
            //لاضافه عشرة ايام من تاريخ اليوم
            // print(
            //   DateTime.now().add(
            //     const Duration(
            //       days: 10,
            //     ),
            //   ),
            // );
            print(Jiffy(date).fromNow());
          },
          child: const Text(
            'Show Date Time',
          ),
        ),
      ),
    );
  }
}
