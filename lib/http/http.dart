import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpScreen extends StatefulWidget {
  const HttpScreen({Key? key}) : super(key: key);

  @override
  State<HttpScreen> createState() => _HttpScreenState();
}

List post = [];
class _HttpScreenState extends State<HttpScreen> {

  Future getPost()async{
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts?id=27&userId=3');
    var response = await http.get(url);
    var responseBody= jsonDecode(response.body);
    setState(() {
      post.addAll(responseBody);
    });
    print(post);
  }
  @override
  void initState() {
    getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HTTP',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index)
            {
              return Text('${post[index]['body']}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),);
            },
            separatorBuilder: (context, index) => Divider(
              height: 20,
              color: Colors.grey[350],
            ),
            itemCount: post.length,
        ),
        ),
    );
  }
}
