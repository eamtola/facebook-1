import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidesigns/facebook_clone/Data/data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: SizedBox(
            height: 94,
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "assets/photo_2022-07-17_15-15-41.jpg",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'What\'s on you mind?',
                          labelStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          AntDesign.camera,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 24,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.photo_camera_back_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Photo',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 24,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Ionicons.location,
                          color: Colors.pink,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Check In',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          height: 100,
          child: ListView.builder(
            itemCount: Data.dataList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => personCard(index: index),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          height: 250,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Data.dataList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => storyCard(index: index),
          ),
        ),
        Container(
          // padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: Data.dataList.length,
            itemBuilder: (context, index) => post(index: index),
          ),
        ),
      ],
    );
  }

  Widget post({required int index}) {
    return Data.dataList[index].isCreate
        ? Container()
        : Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(Data.dataList[index].imgPath),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Data.dataList[index].userName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    Data.dataList[index].hour,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.public,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey[700],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Image.asset(Data.dataList[index].postImage),
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesome.thumbs_up,
                            color: Colors.blue[700],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '10M',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            '10M Comments',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '10M Shares',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Icon(FontAwesomeIcons.thumbsUp),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Like'),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: const [
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Comment'),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: const [
                          Icon(FontAwesomeIcons.share),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Share'),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          );
  }

  Widget storyCard({required int index}) {
    return Data.dataList[index].isCreate
        ? Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.3),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage(Data.dataList[index].imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const Text(
                        'Create a\nStory',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 120,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(Data.dataList[index].postImage),
                    fit: BoxFit.cover),
                color: Colors.blue,
              ),
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent
                        ],
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: CircleAvatar(
                      child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(Data.dataList[index].imgPath),
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Text(
                      Data.dataList[index].userName,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          );
  }

  Widget personCard({required int index}) {
    return Data.dataList[index].isCreate
        ? Center(
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.lightBlue.withOpacity(0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    AntDesign.camera,
                    color: Colors.purple[900],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Create\nRoom',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue[900]),
                  )
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  Data.dataList[index].imgPath,
                ),
              ),
            ),
          );
  }
}
