import 'package:assignment_ui/hostel.dart';
import 'package:flutter/material.dart';

class collegeinfo extends StatefulWidget {
  const collegeinfo({super.key});

  @override
  State<collegeinfo> createState() => _collegeinfoState();
}

class _collegeinfoState extends State<collegeinfo>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: const Color.fromARGB(255, 3, 65, 115),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    Material(
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: const Color.fromARGB(255, 3, 65, 115),
                          onPressed: () {},
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.6,
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
          Image(image: AssetImage('lib/assets/sky.jpg',),height: 150,width: MediaQuery.of(context).size.width*2,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.5,
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.'))
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                                   height: 65,
                                   width: 50,
                                   decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 4, 167, 23),
                      borderRadius: BorderRadius.all(
                          Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(width: 8,),
                          Text('4.3',style: TextStyle(color: Colors.white , fontSize: 15),),
                          SizedBox(height: 3,),
                          Icon(Icons.star_rounded,color: Colors.white,)
                        ],
                      ),
                    ),
                                 )
            ]
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: TabBar(
              isScrollable: true,
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'About',
                  ),
                  Tab(
                    text: 'Hostel Facility',
                  ),
                  Tab(
                    text: 'Q&A',
                  ),
                  Tab(
                    text: 'Events',
                  ),
                ]),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
            height: 300,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      padding: const EdgeInsets.all(8),
                      children: [
                        Text('Descrption',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        SizedBox(
                          width: 600,
                          height: 120,
                          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.')
                          ),
                        Text('Location',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        ClipRRect(
                          
  borderRadius: BorderRadius.circular(20), // Image border
  child: SizedBox.fromSize(
    size: Size.fromRadius(48), // Image radius
    child: Image.asset('lib/assets/sky.jpg', fit: BoxFit.cover),
  ),
),
                         SizedBox(height: 15,),
                         Text('Student review',style: TextStyle(fontWeight: FontWeight.bold),),
                         Row(children: [
                           Image(image: AssetImage('lib/assets/sky.jpg'),height: 80,width: 30,)
                         ],),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                             shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(15.0),  
          ),elevation: 10,  
                          child :Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                 Text('Arun Sai',style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(
                                    width: double.maxFinite,
                                    height : 100,
                                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.')),
                                    Row(
                                      children: [
                                        Icon(Icons.star_rounded),
                                        Icon(Icons.star_rounded),
                                        Icon(Icons.star_rounded),
                                        Icon(Icons.star_rounded),
                                        Icon(Icons.star_half_rounded)
                                      ],
                                    )
                              ],
                            ),
                          )
                          ),
                        )
                        
                      ],
                    ),
                                 hostel()
                                 , Text('hii'), Text('hii')]
                    ),
            ),
          ),
           Align(
      alignment: Alignment.bottomCenter,
      child:  Container(
              margin: EdgeInsets.all(6),
              child: TextButton(
                child: Text('Apply'),
                style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor:  Color.fromARGB(255, 3, 65, 115),
      onSurface: Colors.grey,
    ),
                onPressed: () {},
              ),
            ),
    ),
       
        ],
      ),
    );
  }
}
