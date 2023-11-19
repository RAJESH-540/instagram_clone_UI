import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'data.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.transparent,
         title:  const Text("Instagram", style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/heart.png", height: 25,width: 25,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/msgner.png",height: 25,width: 25,),
                const SizedBox(width: 10,),

              ],
            ),

          ],
       ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(
             height: 100,
             child: ListView.builder(
               itemCount: instaData.length,
                scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index){
               return  Padding(
                 padding: EdgeInsets.all(4.0),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         CircleAvatar(
                             radius: 30,
                             backgroundImage:  NetworkImage(
                               "${instaData[index]["url"]}",
                               // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLAYPHRgwxNtR2cuhtSrSW77T28hLBxNvItu-FCTd6Pa6xjH2X_plGi162FrqQ6FbF7A&usqp=CAU",

                             )

                         ),
                         Text(
                           "${instaData[index]["Name"]}",
                         )
                       ],
                     )
                   ],
                 ),
               );
             }),
           ),
          const SizedBox(height: 8,),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                 itemCount: instaData.length,
                  itemBuilder: (context, index){
                  return  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                 CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    "${instaData[index]["url"]}",
                                      // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLAYPHRgwxNtR2cuhtSrSW77T28hLBxNvItu-FCTd6Pa6xjH2X_plGi162FrqQ6FbF7A&usqp=CAU"),
                                )),
                                  const SizedBox(width: 5,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${instaData[index]["Name"]}",
                                      style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text(
                                       "${instaData[index]["song"]}",
                                         // "Name of song",
                                       style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.more_vert),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          ("${instaData[index]["url"]}"),
                          // "https://media.istockphoto.com/id/1303206644/photo/portrait-of-smiling-caucasian-man-pose-in-office.jpg?s=612x612&w=0&k=20&c=7lpbx5jEVQkdG0iA9UvsEUmeu7oed2A3suvMwMPAeIs=",
                          fit: BoxFit.fill, ),
                      ),
                      const SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/heart.png", height: 25,width: 25,),
                                const SizedBox(width: 15,),
                                Image.asset("assets/images/comments.png", height: 25,width: 25,),
                                // const Icon(Icons.chat_bubble_outline_outlined),
                                const SizedBox(width: 15,),
                                Image.asset("assets/images/share.png", height: 25,width: 25,),
                                // const Icon(Icons.share_sharp)
                              ],),
                            Icon(Icons.bookmark_border_outlined)
                          ],),
                      ),
                      const SizedBox(height: 8,),
                       Row(
                         children: [
                            SizedBox(width: 5,),
                           Text(" 5860 Likes  ", style: TextStyle(fontWeight: FontWeight.bold),),

                           // Text("formals")
                         ],
                       ),
                      const SizedBox(height: 8,),
                    ],
                  );
                }),
            ),
          )




        ],
      ),
    );
  }
}
