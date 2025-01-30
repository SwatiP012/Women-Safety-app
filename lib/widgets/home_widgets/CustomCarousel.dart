import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safety_app/utils/quotes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  void navigateToRoute(BuildContext context, Widget route){
    Navigator.push(context, CupertinoPageRoute(builder: (context) => route));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: List.generate(
            imageSliders.length,
                (index) => Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage(imageSliders[index],
                          ))),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [Colors.black.withOpacity(0.5),
                        Colors.transparent]),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8, left: 8),
                          child: Text(articleTitle[index],
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.05),),
                        ),
                      ),
                    ),
                  ),
                ),
                ))

      ),
    );
  }
}
