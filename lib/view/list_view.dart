// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:science/view/short_article.dart';

import '../data/article_model.dart';
import 'detail_screen.dart';

class TodosScreen extends StatelessWidget {
  // Requiring the list of todos.
  TodosScreen({super.key});

  final List<Article> todos = [
    Article(
        "Dead ends with the tool",
        "Puffins itch with sticks",
        "Based on materials from the press service of Moscow State University. M. V. Lomonosova.",
        "Photo: Druzhinin E.R.",
        "assets/images/image2.png",
        "Birds with tools will no longer surprise anyone. Not only the famous New Caledonian crows and parrots use a variety of twigs, sticks and twigs, but also tree finches, herons, and common vultures (these hit ostrich eggs with stones to break them) , and many others, but one thing that has never been seen with tools in their beaks is seabirds - which are thought to have too small a brain for this.\n\nHowever, a recent paper published in PNAS in which researchers from Oxford together with colleagues from Iceland write that puffins use tools. Several years ago, we accidentally noticed that a puffin took a twig in its beak and scratched its back with it. Subsequently, we managed to film another puffin on a video camera, which also scratched its chest with a stick. Puffins are not easy to observe, so, most likely, they use sticks more often, it s just that zoologists are not always able to notice this. The fact that both times were not an accident is evidenced by the fact that the puffins were from different colonies, located at a distance of 1700 km from each other. So perhaps tool use among birds is even more widespread than we think. At the same time, puffins remain the only ones whose manipulation of tools of labor is not associated with food. ",
        ["#birds", "#behavior", "#animals"],
        "01/22/2024"),
    Article(
        "Protective Pollen",
        "Three dozen genes were selected for vegetarianism, ",
        "Palaeontological Institute named after A.A. Borisyak RAS",
        "Photo: Udochkin E.M.",
        "assets/images/image1.png",
        "Birds with tools will no longer surprise anyone. Not only the famous New Caledonian crows and parrots use a variety of twigs, sticks and twigs, but also tree finches, herons, and common vultures (these hit ostrich eggs with stones to break them) , and many others, but one thing that has never been seen with tools in their beaks is seabirds - which are thought to have too small a brain for this.\n\nHowever, a recent paper published in PNAS in which researchers from Oxford together with colleagues from Iceland write that puffins use tools. Several years ago, we accidentally noticed that a puffin took a twig in its beak and scratched its back with it. Subsequently, we managed to film another puffin on a video camera, which also scratched its chest with a stick. Puffins are not easy to observe, so, most likely, they use sticks more often, it s just that zoologists are not always able to notice this.",
        ["#birds", "#behavior", "#animals"],
        "01/22/2024"),
    Article(
        "Genes of vegetarianism",
        "Puffins itch with sticks",
        "Based on materials from the press service of Moscow State University. M. V. Lomonosova.",
        "Photo: Druzhinin E.R.",
        "assets/images/image3.png",
        "Birds with tools will no longer surprise anyone. Not only the famous New Caledonian crows and parrots use a variety of twigs, sticks and twigs, but also tree finches, herons, and common vultures (these hit ostrich eggs with stones to break them) , and many others, but one thing that has never been seen with tools in their beaks is seabirds - which are thought to have too small a brain for this.\n\nHowever, a recent paper published in PNAS in which researchers from Oxford together with colleagues from Iceland write that puffins use tools. Several years ago, we accidentally noticed that a puffin took a twig in its beak and scratched its back with it. Subsequently, we managed to film another puffin on a video camera, which also scratched its chest with a stick. Puffins are not easy to observe, so, most likely, they use sticks more often, it s just that zoologists are not always able to notice this.",
        ["#birds", "#behavior", "#animals"],
        "01/22/2024"),
    Article(
        "The Weight of the Hole",
        "The black hole has been weighed in a new way",
        "Based on materials from the press service of M.V. Lomonosov Moscow State University.",
        "Photo: NASA/JPL-Caltech",
        "assets/images/image5.png",
        "Birds with tools will no longer surprise anyone and many others, but one thing that has never been seen with tools in their beaks is seabirds - which are thought to have too small a brain for this.\n\nHowever, a recent paper published in PNAS in which researchers from Oxford together with colleagues from Iceland write that puffins use tools. Several years ago, we accidentally noticed that a puffin took a twig in its beak and scratched its back with it. Subsequently, we managed to film another puffin on a video camera, which also scratched its chest with a stick. Puffins are not easy to observe, so, most likely, they use sticks more often, it s just that zoologists are not always able to notice this. The fact that both times were not an accident is evidenced by the fact that the puffins were from different colonies, located at a distance of 1700 km from each other. So perhaps tool use among birds is even more widespread than we think. At the same time, puffins remain the only ones whose manipulation of tools of labor is not associated with food. ",
        ["#birds", "#behavior", "#animals"],
        "01/22/2024"),
    Article(
        "Amoebic preferences",
        "Shell amoebas build relationships with mosses",
        "The work was carried out with the support of the Russian Science Foundation",
        "Photo: Chertoprud E. S.",
        "assets/images/image4.png",
        "Birds with tools will no longer surprise anyone. Recent paper published in PNAS in which researchers from Oxford together with colleagues from Iceland write that puffins use tools. Several years ago, we accidentally noticed that a puffin took a twig in its beak and scratched it back with it. Subsequently, we managed to film another puffin on a video camera, which also scratched its chest with a stick. Puffins are not easy to observe, so, most likely, they use sticks more often, it s just that zoologists are not always able to notice this. The fact that both times were not an accident is evidenced by the fact that the puffins were from different colonies, located at a distance of 1700 km from each other. So perhaps tool use among birds is even more widespread than we think. At the same time, puffins remain the only ones whose manipulation of tools of labor is not associated with food.",
        ["#birds", "#behavior", "#animals"],
        "01/22/2024"),
  ];

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
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),

                child: InkWell(
                  child: SizedBox(
                    width: 350,
                    height: 300,
                    child: Positioned(
                      left: 11,
                      top: 30,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 350,
                            height: 30,
                            child: Positioned(
                              left: 11,
                              child: Text(
                                todos[index].title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'News Cycle',
                                  fontWeight: FontWeight.w400,
                                  height: 2,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 30,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 11,
                                  top: 5,
                                  child: SizedBox(
                                    width: 147,
                                    height: 13.45,
                                    child: Text(
                                      todos[index].shortDescription,
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
                                  left: 3,
                                  top: 5,
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
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                            color: Color(0xFF4E62EB),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 460,
                            height: 180,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 428,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage(todos[index].imagePath),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 140,
                                  child: Container(
                                    width: 130,
                                    height: 30,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          child: SizedBox(
                                            width: 130,
                                            height: 20,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  color: Colors.white70),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 10,
                                          child: SizedBox(
                                            width: 135,
                                            height: 20,
                                            child: Text(
                                              todos[index].imageAuthor,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w300,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 470,
                            height: 45,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 270),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailScreen(
                                              article: todos[index]),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF4E62EB),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      minimumSize: Size(80, 30),
                                      onPrimary: Colors.white,
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    child: const Text('Read'),
                                  ),
                                ),
                                Positioned(
                                  left: 5,
                                  top: 10,
                                  child: SizedBox(
                                    width: 212,
                                    height: 30,
                                    child: Text(
                                      todos[index].createdBy,
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
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         DetailScreen(article: todos[index]),
                    //   ),
                    // );
                  },
                ),
              );
            }));
  }
}
