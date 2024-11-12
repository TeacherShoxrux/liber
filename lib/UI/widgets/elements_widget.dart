import 'package:flutter/material.dart';
import '../horizontal_scroll_behavoir.dart';

class ElementsWidget extends StatelessWidget {
  const ElementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text("Ruknlar",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 160,
            width: double.infinity,
            child: ScrollConfiguration(
                behavior: HorizontalScrollBehavior(),
                child: Container(
                  height: 48,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  color: Colors.white,
                  child: Center(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: ListView.builder(
                          itemCount: 150,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (c, i) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7),
                                width: 200,
                                height: 140,
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,colorFilter:
                                    ColorFilter.mode(
                                      Colors.black45, // Adjust opacity for darkness level
                                      BlendMode.darken,
                                    ),
                                        image: NetworkImage(
                                            "https://picsum.photos/200/300"))),
                            child:
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 8.0),
                                      child: Text("Бизнес ва психология",
                                        style: TextStyle(
                                        color: Colors.white,
                                          fontWeight: FontWeight.bold,

                                      ),),
                                    ))

                              ),
                      
                      ),
                    ),
                  ),
                ))


            ,
          ),
        ],
      ),
    );
  }
}
