import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class hostel extends StatefulWidget {
  const hostel({super.key});

  @override
  State<hostel> createState() => _hostelState();
}

class _hostelState extends State<hostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.bed),
                      SizedBox(
                        width: 4,
                      ),
                      Text('4')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.bed),
                      SizedBox(
                        width: 4,
                      ),
                      Text('3')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.bed),
                      SizedBox(
                        width: 4,
                      ),
                      Text('2')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.bed),
                      SizedBox(
                        width: 4,
                      ),
                      Text('1')
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
                  children: [
            CarouselSlider(
                items: [
                    
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image:AssetImage('lib/assets/sky.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image:AssetImage('lib/assets/sky.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image:AssetImage('lib/assets/sky.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image:AssetImage('lib/assets/sky.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('lib/assets/sky.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            
            ],
                
              //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
            ),
                  ],
                ),
          ),
          
        ],
      ),
    );
  }
}
