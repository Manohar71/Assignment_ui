import 'package:assignment_ui/collegeinfo.dart';
import 'package:flutter/material.dart';

class collegepage extends StatefulWidget {
  const collegepage({super.key});

  @override
  State<collegepage> createState() => _collegepageState();
}

class _collegepageState extends State<collegepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 3, 65, 115),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                        children: [
                          SizedBox(width: 8,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  labelText: 'Enter Name',
                                  labelStyle: const TextStyle(
                                      color: Color.fromARGB(255, 3, 65, 115),
                                      backgroundColor: Colors.transparent)
                                  // hintText: 'Enter Your Name'
                                  ),
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Material(
                              color: Colors.white,
                              shape: const CircleBorder(),
                              child: IconButton(
                                icon: const Icon(Icons.mic),
                                color: const Color.fromARGB(255, 3, 65, 115),
                                onPressed: () {},
                              )),
                        ],
                      ),
              ),
          ),
           SizedBox(
             height: 50,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListView(
                 //shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
      Container(
        child: OutlinedButton(
          child: Text('MVSH Engenering college',style: TextStyle(color: Colors.black)),
         style: OutlinedButton.styleFrom(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12)
           )
         ),
          onPressed: (){}
          ),
        ),
        SizedBox(width: 5,),
        Container(
        child: OutlinedButton(
          child: Text('MVSH Engenering college',style: TextStyle(color: Colors.black)),
         style: OutlinedButton.styleFrom(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12)
           )
         ),
          onPressed: (){}
          ),
        ),
         SizedBox(width: 5,),
         Container(
        child: OutlinedButton(
          child: Text('MVSH Engenering college',style: TextStyle(color: Colors.black)),
         style: OutlinedButton.styleFrom(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12)
           )
         ),
          onPressed: (){}
          ),
        ),
        
      ],
    ),
             ),
           ),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               child: Card(
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
               ),
               clipBehavior: Clip.antiAlias,
               color: Colors.white,
                 child: Column(
                   children: [
                     Stack(
                       children: [
                         Image.asset('lib/assets/sky.jpg',fit: BoxFit.fitHeight),
                         Padding(
                           padding: const EdgeInsets.all(13.0),
                           child: Row(
                             children: [
                                Material(
                            color: Colors.white,
                            shape: const CircleBorder(),
                            child: IconButton(
                              icon: const Icon(Icons.share),
                              color: const Color.fromARGB(255, 3, 65, 115),
                              onPressed: () {},
                            )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width/1.7,
                            ),
                            Material(
                            color: Colors.white,
                            shape: const CircleBorder(),
                            child: IconButton(
                              icon: const Icon(Icons.bookmark),
                              color: const Color.fromARGB(255, 3, 65, 115),
                              onPressed: () {},
                            )),
                             ],
                           ),
                         )
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Text('GHJK ingennering cololege'),
                               SizedBox(
                                width: MediaQuery.of(context).size.width/7.0,
                            ),
                               Container(
                                 height: 30,
                                 width: 60,
                                 decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 4, 167, 23),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Text('4.3',style: TextStyle(color: Colors.white),),
                      Icon(Icons.star_rounded,color: Colors.white,)
                    ],
                  ),
                               )
                             ],
                           ),
                           Row(
                             children: [
                               SizedBox(
                                 height: 80,
                                 width: 180,
                                 child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.',style: TextStyle(fontSize: 10),)),
                               SizedBox(
                                width: MediaQuery.of(context).size.width/12.0,
                            ),
                               ElevatedButton(
                        
                                 onPressed: (){}, 
                                 style: ButtonStyle(
                                   backgroundColor:  MaterialStateProperty.all(Color.fromARGB(255, 3, 65, 115)),
             
                                 ),
                               child:Text('Apply now') )
                             ],
                           ),
                           SizedBox(height: 5,),
                           Divider(
                             color: Colors.black,
                             ),
                             Row(
                               children:  [
                                 Icon(Icons.bookmark),
                                 SizedBox(
                                   width: 180,
                                  
                                 child :Text('Lorem ipsum dolor sit amet, consectetur adipiscing ',style: TextStyle(fontSize: 10),),),
                                 SizedBox(width: MediaQuery.of(context).size.width/9,),
                                 Icon(Icons.remove_red_eye),
                                 Text('468+')
                               ],
                             )
                         ],
                       ),
                     )
                   ],
                 ),
                 
               ),
               onTap: () {
                  Navigator.of(context).push(MaterialPageRoute( builder: (context) => collegeinfo()));
               },
             ),
           )
        ],
      ),
    );
  }
}
