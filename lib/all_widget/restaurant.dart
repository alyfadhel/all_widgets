import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget{
  const Restaurant({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: const BoxDecoration(
                color: Colors.blue,
                boxShadow:
                [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 2.5,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                    'Strawberry Pav1ona Recipe',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              child: const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  )
              ),
              child: Column(
                children:
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children:
                        const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Text(
                        '17 review',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:
                      [
                        Expanded(
                          child: Column(
                            children:
                            const [
                              Icon(
                                Icons.restaurant_rounded,
                                size: 40.0,
                                color: Colors.green,
                              ),
                              Text(
                                'Feed',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                '2-4',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children:
                            const [
                              Icon(
                                Icons.category,
                                size: 40.0,
                                color: Colors.green,
                              ),
                              Text(
                                'Feed',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                '2-4',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children:
                            const [
                              Icon(
                                Icons.emoji_food_beverage,
                                size: 40.0,
                                color: Colors.green,
                              ),
                              Text(
                                'Feed',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                '2-4',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}