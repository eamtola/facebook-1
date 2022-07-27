import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              _builldAppBar(),
              _buildTitle(),
              _buildTextFeild(),
              const SizedBox(
                height: 10,
              ),
              _buildSortFilter(),
              const SizedBox(
                height: 10,
              ),
              buildContainer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            label: 'home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            label: 'home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.bellOutline,
              color: Colors.white,
            ),
            label: 'home',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  _builldAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const Card(
          child: Icon(
        Icons.filter_list_sharp,
        color: Colors.black,
      )),
      actions: const <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/photo_2022-07-17_15-15-41.jpg"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildTitle() {
    return Title(
        color: Colors.black,
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Choose\nYour Product",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }

  _buildTextFeild() {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.filter_alt_off),
        )
      ],
    );
  }

  _buildSortFilter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text(
            'All',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 40,
          height: 40,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Chair',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          width: 60,
          height: 40,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Table',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          width: 60,
          height: 40,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Remcoment',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          width: 100,
          height: 40,
        )
      ],
    );
  }

  buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 180,
                  height: 250,
                ),
                Positioned(
                  bottom: 80,
                  left: 10,
                  child: Container(
                    width: 150,
                    height: 100,
                    child: const Image(
                      image: AssetImage(
                        "assets/1.png",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 210,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.favorite,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Laounge",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Chair"),
                      Text(
                        "\$245.00",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.add_box_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 180,
                  height: 250,
                ),
                Positioned(
                  bottom: 80,
                  left: 10,
                  child: Container(
                    width: 150,
                    height: 100,
                    child: const Image(
                      image: AssetImage(
                        "assets/2.png",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 210,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Laounge",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Chair"),
                      Text(
                        "\$245.00",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.add_box_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 180,
                  height: 300,
                ),
                Positioned(
                  bottom: 100,
                  left: 10,
                  child: Container(
                    width: 150,
                    height: 100,
                    child: const Image(
                      image: AssetImage(
                        "assets/sofa-2.png",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 250,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Grounde",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Chair"),
                      Text(
                        "\$300.00",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.add_box_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 180,
                  height: 300,
                ),
                Positioned(
                  bottom: 120,
                  left: 10,
                  child: Container(
                    width: 150,
                    height: 100,
                    child: const Image(
                      image: AssetImage(
                        "assets/sofa-1.png",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 250,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Laounge",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Chair"),
                      Text(
                        "245",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 140,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.add_box_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
