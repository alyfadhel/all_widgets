import 'package:all_widgets/tab_bar/arts.dart';
import 'package:all_widgets/tab_bar/business.dart';
import 'package:all_widgets/tab_bar/polictical.dart';
import 'package:all_widgets/tab_bar/science.dart';
import 'package:all_widgets/tab_bar/sports.dart';
import 'package:all_widgets/tab_bar/weather.dart';
import 'package:flutter/material.dart';

class TabBarTabsScreen extends StatefulWidget {
  const TabBarTabsScreen({Key? key}) : super(key: key);

  @override
  State<TabBarTabsScreen> createState() => _TabBarTabsScreenState();
}

class _TabBarTabsScreenState extends State<TabBarTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
          bottom:  const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.business,
                ),
                text: 'Business',
              ),
              Tab(
                icon: Icon(
                  Icons.sports,
                ),
                text: 'Sports',
              ),
              Tab(
                icon: Icon(
                  Icons.science_outlined,
                ),
                text: 'Science',
              ),
              Tab(
                icon: Icon(
                  Icons.grain,
                ),
                text: 'Weather',
              ),
              Tab(
                icon: Icon(
                  Icons.local_police,
                ),
                text: 'Political',
              ),
              Tab(
                icon: Icon(
                  Icons.article_outlined,
                ),
                text: 'Art',
              ),
            ],
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.blue,
              child: const BusinessScreen(),
            ),
            Container(
              color: Colors.red,
              child: const SportsScreen(),
            ),
            Container(
              color: Colors.amber,
              child: const ScienceScreen(),
            ),
            Container(
              color: Colors.purple,
              child: const WeatherScreen(),
            ),
            Container(
              color: Colors.deepOrange,
              child: const PoliticalScreen(),
            ),
            Container(
              color: Colors.teal,
              child: const ArtsScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
