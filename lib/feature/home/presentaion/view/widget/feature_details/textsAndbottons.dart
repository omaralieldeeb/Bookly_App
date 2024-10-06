import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextsAndBottoms extends StatelessWidget {
  final Books book;
  const TextsAndBottoms({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    String word = 'preview';
    return SizedBox(
            height: 50,
            width: 300,
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              )),
                          child: Center(
                              child: Text(
                            "19.99€",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ))),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: () {
                        if (book.volumeInfo?.previewLink == null) {
                          word = 'not available';
                        } else {
                          launchUrl(Uri.parse("${book.volumeInfo!.previewLink}"));
                        }
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEF8262),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              )),
                          child: Center(
                              child: Text(
                            "Free preview",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ))),
                    )),
              ],
            ),
          );
  }
}
