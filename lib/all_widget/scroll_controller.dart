import 'package:flutter/material.dart';

class ScrollControllerScreen extends StatefulWidget {
  const ScrollControllerScreen({Key? key}) : super(key: key);

  @override
  State<ScrollControllerScreen> createState() => _ScrollControllerScreenState();
}

class _ScrollControllerScreenState extends State<ScrollControllerScreen> {
  var sc = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomePage',
        ),
      ),
      body: ListView(
        controller: sc,
        children: [
          ElevatedButton(
            onPressed: ()
            {
              sc.animateTo(
                sc.position.maxScrollExtent,
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            child: const Text(
                'Down Scroll',
            ),
          ),
          ...List.generate(
            10,
            (index) => Container(
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              height: 100.0,
              color: index.isEven ? Colors.blue : Colors.red,
              child: Text(
                index.toString(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: ()
            {
              sc.animateTo(
                  sc.position.minScrollExtent,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            child: const Text(
              'Up Scroll',
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    sc.addListener(() {
      print(sc.offset.toString());
    });
    super.initState();
  }
}
