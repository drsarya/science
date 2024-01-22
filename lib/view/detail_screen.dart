import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../data/article_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {

    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          leading: BackButton(color: Color(0xFF4E62EB)),
          centerTitle: true,
          title: Text(
            article.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'News Cycle',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: Column(children: [
          Expanded(
            //T
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  width: 350,
                  height: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11,
                        top: 15,
                        child: SizedBox(
                          width: 147,
                          height: 13.45,
                          child: Text(
                            article.shortDescription,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 15,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(1.57),
                          child: Container(
                            width: 17.59,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFD7FC3A),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Container(
                    width: 428,
                    height: 287,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(article.imagePath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 365,
                  height: 50,
                  child: Positioned(
                    left: 11,
                    top: 30,
                    child: Text(
                      article.imageAuthor,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'News Cycle',
                        fontWeight: FontWeight.w400,
                        height: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 223,
                  height: 22,
                  child: Text(
                    article.hashtags.join(" "),
                    style: TextStyle(
                      color: Color(0xFF4E62EB),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                    ),
                  ),
                ),
                Container(
                  width: 378,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFD7FC3A),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(article.description),
                )
              ]),
            ),
          )
        ]));
  }
}
