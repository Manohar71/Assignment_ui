import 'package:assignment_ui/collegepage.dart';
import 'package:flutter/material.dart';

class homeui extends StatefulWidget {
  const homeui({super.key});

  @override
  State<homeui> createState() => _homeuiState();
}

class _homeuiState extends State<homeui> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 65, 115),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: const [
                    Text(
                      'Find your own way',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'search in 600 colleges around',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
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
                     SizedBox(
                      width: MediaQuery.of(context).size.width/10
                      ,
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
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(children: [
          InkWell(
            child: Container(
              height: 180.0,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),

                image: DecorationImage(
                  image: AssetImage('lib/assets/sky.jpg'),
                  fit: BoxFit.fill,
                ),
                // shape: BoxShape.circle,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Container(
                height: 180.0,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 55, 58, 60),
                    Color.fromARGB(148, 52, 57, 60),
                    Color.fromARGB(29, 106, 111, 114)
                  ]),
                )),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Sort by',style: TextStyle(fontSize:20),),
                          Divider(
                            color: Colors.black
                          ),
                          ListTile(
                            leading: new Icon(Icons.school),
                            title: new Text('Bachelor of technology'),
                            onTap: () { Navigator.of(context).push(MaterialPageRoute( builder: (context) => collegepage()));},
                          ),
                          ListTile(
                            leading: new Icon(Icons.music_note),
                            title: new Text('Bachelor of Arcitecture'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: new Icon(Icons.videocam),
                            title: new Text(' pharmacy'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: new Icon(Icons.share),
                            title: new Text('law'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Colleges',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Search through thousands of \naccredited colleges and universities\nonline to find the right one for you.\nApply in 3 min, and connect with your\nfuture.',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),

        ])
      ],
    );
  }
}
