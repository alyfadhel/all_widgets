import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  List mobile = [
    {'name': 'S 20 ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 'S 21 ultra', 'screen': '6.5', 'cpu': '8 core'},
    {'name': 'S 10', 'screen': '6.2', 'cpu': '8 core'},
    {'name': 'note 20', 'screen': '6.6', 'cpu': '8 core'},
    {'name': 'Oneplus 7pro', 'screen': '6.6', 'cpu': '8 core'},
    {'name': 'Oneplus 7t', 'screen': '6.3', 'cpu': '8 core'},
    {'name': 'Oneplus 8t', 'screen': '6.3', 'cpu': '8 core'},
    {'name': 'Oneplus 8Pro', 'screen': '6.3', 'cpu': '8 core'},
    {'name': 'Oneplus 8t', 'screen': '6.3', 'cpu': '8 core'},
    {'name': 'Oneplus 10Pro', 'screen': '6.3', 'cpu': '8 core'},
    {'name': 'Oneplus 10t', 'screen': '6.3', 'cpu': '8 core'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index)
        {
          return ListTile(
            title: Text('Mobile: ${mobile[index]['name']}'),
            subtitle: Text('Screen: ${mobile[index]['screen']}'),
            trailing: Text('CPU: ${mobile[index]['cpu']}'),
          );
        },
        itemCount: mobile.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 20.0,
        ),
      ),
    );
  }
}
