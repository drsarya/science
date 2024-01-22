// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:science/view/short_article.dart';

import '../data/article_model.dart';
import '../data/news_model.dart';
import 'detail_screen.dart';

class NewsScreen extends StatelessWidget {
  // Requiring the list of todos.
  NewsScreen({super.key});

  final List<News> todos = List.generate(
    20,
    (i) => News(
        "Dead ends with the tool Dead ends with the tool",
        "assets/images/image1.png",
        "22.01.2024"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //passing in the ListView.builder
        body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return Card(
                  // In many cases, the key isn't mandatory
                  key: ValueKey(todos[index].title),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Container(
                    width: 428,
                    height: 58,
                    child: Stack(
                      children: [
                        Container(
                          width: 470,
                          height: 60,
                          child: Stack(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 270),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF4E62EB),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  minimumSize: Size(80, 30),
                                  onPrimary: Colors.white,
                                  textStyle: TextStyle(fontSize: 16),
                                ),
                                child: const Text('Read'),
                              ),
                            ),
                          ]),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 66,
                            height: 37,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(todos[index].imagePath),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 99,
                          top: 10,
                          child: SizedBox(
                            width: 170,
                            height: 58,
                            child: Text(
                              todos[index].title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'News Cycle',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 40,
                          child: SizedBox(
                            width: 65,
                            height: 27,
                            child: Text(
                              '24.04',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'News Cycle',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            }));
  }
}
