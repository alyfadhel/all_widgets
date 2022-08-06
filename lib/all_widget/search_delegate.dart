import 'package:flutter/material.dart';

class SearchDelegateScreen extends StatefulWidget {
  const SearchDelegateScreen({Key? key}) : super(key: key);

  @override
  State<SearchDelegateScreen> createState() => _SearchDelegateScreenState();
}

class _SearchDelegateScreenState extends State<SearchDelegateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomePage',
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchData());
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchData extends SearchDelegate {
  List names = [
    'Ahmed',
    'Mohammed',
    'Ali',
    'Amgad',
    'Ashraf',
    'Wael',
    'Bassem',
    'Basel',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterNames =
        names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: ()
          {
            query = query == ''? names[index] : filterNames[index];
            showResults(context);
          },
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: query == ''
                ? Text(
                    '${names[index]}',
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  )
                : Text('${filterNames[index]}'),
          ),
        );
      },
      itemCount: query == '' ? names.length : filterNames.length,
    );
  }
}
