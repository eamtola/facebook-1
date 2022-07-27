import 'package:flutter/material.dart';

class PageView1 extends StatefulWidget {
  const PageView1({Key? key}) : super(key: key);

  @override
  State<PageView1> createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  final PageController controller = PageController();
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: PageView(
              padEnds: true,
              onPageChanged: (index) {
                setState(() {
                  currenIndex = index;
                });
              },
              controller: controller,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.withOpacity(0.1),
                  ),
                  child: Column(
                    children: [
                      const SafeArea(
                        child: Text(
                          "Furniture",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image(
                        image: const AssetImage("assets/sofa-1.png"),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.30,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.withOpacity(0.1),
                  ),
                  child: Column(
                    children: [
                      const SafeArea(
                        child: Text(
                          "Furniture",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image(
                        image: const AssetImage("assets/sofa-2.png"),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.30,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.withOpacity(0.1),
                  ),
                  child: Column(
                    children: [
                      const SafeArea(
                        child: Text(
                          "Furniture",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image(
                        image: const AssetImage("assets/sofa-3.png"),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currenIndex == index ? Colors.green : Colors.grey,
                  ),
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                children: [
                  const Text(
                    "Find the Best Furniture Style For You ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "There are many new outfits that make you cool ",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextButton(
                      onPressed: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                        child: Text(
                          "Get Start",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
