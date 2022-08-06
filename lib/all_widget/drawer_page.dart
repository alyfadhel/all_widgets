import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DrawerPageScreen extends StatefulWidget {
  const DrawerPageScreen({Key? key}) : super(key: key);

  @override
  State<DrawerPageScreen> createState() => _DrawerPageScreenState();
}

class _DrawerPageScreenState extends State<DrawerPageScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.red,
              ),
              accountName: Text(
                'Ali Fadel Hassan',
              ),
              accountEmail: Text('alyfadel67@gmail.com'),
            ),
            ListTile(
              title: const Text('HomePage'),
              leading: const Icon(
                Icons.home,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Help'),
              leading: const Icon(
                Icons.help_outline,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(
                Icons.center_focus_strong_outlined,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(
                Icons.logout_outlined,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerScrimColor: Colors.transparent,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
              onPressed: ()
              {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Text(
                  'Open Drawer',
              ),
          ),
        ),
      ),
    );
  }
}
