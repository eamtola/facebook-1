import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

import 'account.dart';
import 'group.dart';
import 'home.dart';
import 'more.dart';
import 'notifications.dart';
import 'watch.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  final controller = ScrollController();

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Scaffold(
      appBar: ScrollAppBar(
        elevation: 0,
        controller: controller,
        backgroundColor: Colors.transparent,
        title: Text(
          "Facebook",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue[800],
          ),
        ),
        actions: [
          Row(
            children: [
              _appBarAction(FontAwesomeIcons.magnifyingGlass),
              _appBarAction(FontAwesome5Brands.facebook_messenger),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            controller: tabController,
            labelPadding: const EdgeInsets.all(1),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey[700],
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video,
                  color: Colors.grey[700],
                ),
              ),
              Tab(
                icon: Icon(
                  MdiIcons.accountCircleOutline,
                  color: Colors.grey[700],
                ),
              ),
              Tab(
                icon: Icon(
                  MdiIcons.accountGroupOutline,
                  color: Colors.grey[700],
                ),
              ),
              Tab(
                icon: Icon(
                  MdiIcons.bellOutline,
                  color: Colors.grey[700],
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                SingleChildScrollView(
                  controller: controller,
                  child: Home(),
                ),
                Group(),
                Watch(),
                Account(),
                Notifications(),
                More(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBarAction(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.23),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
