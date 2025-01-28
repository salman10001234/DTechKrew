import 'package:flutter/material.dart';

import 'screens/about.dart';
import 'screens/casestudy.dart';
import 'screens/contactus.dart';
import 'screens/expertise.dart';
import 'screens/hiredev.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DTechKrew',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabBarScreen(),
    );
  }
}

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}
class _TabBarScreenState extends State<TabBarScreen> {
  int _currentTabIndex = 0;
  Widget _dropdownContent = Container();

  // Create a GlobalKey for each tab
  final GlobalKey _expertiseKey = GlobalKey();
  final GlobalKey _hireDevKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(195, 227, 250, 1), // Light blue
                  Color.fromRGBO(231, 199, 205, 1), // Light pink
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                children: [
                  Image.network(
                    'assets/logo.png',
                    height: 40,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      child: TabBar(
                        isScrollable: true,
                        indicator: BoxDecoration(),
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(child: _responsiveTabText('Home', screenWidth, false, context, null)),
                          Tab(child: _responsiveTabText('About', screenWidth, false, context, null)),
                          Tab(
                            child: _responsiveTabText(
                                'Expertise', screenWidth, true, context, _expertiseKey),
                          ),
                          Tab(
                            child: _responsiveTabText(
                                'Hire Developers', screenWidth, true, context, _hireDevKey),
                          ),
                          Tab(child: _responsiveTabText('Case Studies', screenWidth, false, context, null)),
                          Tab(child: _responsiveTabText('Contact Us', screenWidth, false, context, null)),
                        ],
                        onTap: (index) {
                          setState(() {
                            _currentTabIndex = index;
                            _dropdownContent = Container(); // Clear dropdown content
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: IndexedStack(
          index: _currentTabIndex,
          children: [
            HomeScreen(),
            AboutScreen(),
            _dropdownContent, // Content of Expertise dropdown
            _dropdownContent, // Content of Hire Developers dropdown
            CaseStudiesScreen(),
            ContactUsScreen(),
          ],
        ),
      ),
    );
  }

  Widget _responsiveTabText(String text, double screenWidth, bool hasDropdown, BuildContext context,
      GlobalKey? key) {
    double spacing = screenWidth > 1000 ? 40.0 : 5.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spacing),
      child: GestureDetector(
        key: key, // Assign the GlobalKey if provided
        onTap: () {
          if (hasDropdown) {
            _showPopupMenu(context, text, key); // Pass the GlobalKey for positioning
          } else {
            int tabIndex = _getTabIndex(text);
            setState(() {
              _currentTabIndex = tabIndex;
              _dropdownContent = Container();
            });
          }
        },
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            hasDropdown
                ? Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context, String tabName, GlobalKey? key) {
    if (key == null) return; // Ensure the key is not null

    // Get the position of the tab using its GlobalKey
    final RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;

    // Define menu items for the popup menu
    List<Map<String, dynamic>> menuItems = tabName == "Expertise"
        ? [
            {"title": "Mobile App Development", "screen": ExpertiseScreen()},
            {"title": "Web Development", "screen": ExpertiseScreen()},
            {"title": "Data Science & Ai Development", "screen": ExpertiseScreen()},
            {"title": "UX/UI Consulting", "screen": ExpertiseScreen()},
            {"title": "Cutom Software Development", "screen": ExpertiseScreen()},
          ]
        : [
            {"title": "Hire UI/UX Designer", "screen": HireDevelopersScreen()},
            {"title": "Hire Mobile App Developers", "screen": HireDevelopersScreen()},
            {"title": "Hire ios Devlopers", "screen": HireDevelopersScreen()},
            {"title": "Hire Android Developers", "screen": HireDevelopersScreen()},
            {"title": "Hire Data Scientist", "screen": HireDevelopersScreen()},
          ];

    // Show the popup menu at the calculated position
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx, // X position of the tab
        offset.dy + size.height, // Y position below the tab
        offset.dx + size.width, // Right side of the tab
        0, // Bottom of the screen
      ),
      items: menuItems.map((item) {
        return PopupMenuItem<Map<String, dynamic>>(
          value: item,
          
          child: Text(
            item["title"],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold), // Bold text
          ),
        );
      }).toList(),
    ).then((selectedItem) {
      if (selectedItem != null) {
        setState(() {
          _dropdownContent = selectedItem["screen"];
          _currentTabIndex = tabName == "Expertise" ? 2 : 3;
        });
      }
    });
  }

  int _getTabIndex(String tabName) {
    switch (tabName) {
      case "Home":
        return 0;
      case "About":
        return 1;
      case "Case Studies":
        return 4;
      case "Contact Us":
        return 5;
      default:
        return 0;
    }
  }
}
