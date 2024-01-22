import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../data/article_model.dart';

class ShortArticleCard extends StatelessWidget {
  const ShortArticleCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        body: Column(children: [
          SizedBox(
            width: 365,
            height: 50,
            child: Positioned(
              left: 11,
              top: 30,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'News Cycle',
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
            ),
          ),

        ]));
  }
}
