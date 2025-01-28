import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<String> images = [
    "assets/pic4.png",
    "assets/pic5.png",
    "assets/pic6.png",
    "assets/pic4.png",
    "assets/pic5.png",
    "assets/pic6.png",
  ];
  final List<String> images1 = [
    "assets/mess1.png",
    "assets/mess2.png",
    "assets/mess1.png",
    "assets/mess2.png",
    "assets/mess1.png",
    "assets/mess2.png",
    "assets/mess1.png",
    "assets/mess2.png",
    "assets/mess1.png",
    "assets/mess2.png",
  ];
  final List<String> images2 = [
    "assets/mess3.png",
    "assets/mess4.png",
    "assets/mess3.png",
    "assets/mess4.png",
    "assets/mess3.png",
    "assets/mess4.png",
    "assets/mess3.png",
    "assets/mess4.png",
    "assets/mess3.png",
    "assets/mess4.png",
  ];
  double currentPage = 1;
  late AnimationController _controller;
  late Animation<double> _animation;
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();
  late Timer _timer1;
  late Timer _timer2;

  @override
  void initState() {
    super.initState();
    _startAutoScroll(_scrollController1, images1.length);
    _startAutoScroll(_scrollController2, images2.length, reverse: true);
     _startAutoScroll(_scrollController3,1000);

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Duration of one animation cycle
    )..repeat(); // Repeat the animation indefinitely

    // Define the animation to go from 0 to 1
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void _startAutoScroll(ScrollController controller, int itemCount,
      {bool reverse = false}) {
    const double scrollSpeed = 6.0; // Pixels to scroll per tick
    const Duration scrollInterval =
        Duration(milliseconds: 50); // Time between ticks

    _timer1 = Timer.periodic(scrollInterval, (timer) {
      if (controller.hasClients) {
        final double maxScrollExtent = controller.position.maxScrollExtent;
        final double currentPosition = controller.offset;

        if (!reverse) {
          // Scroll forward
          if (currentPosition < maxScrollExtent) {
            controller.jumpTo(currentPosition + scrollSpeed);
          } else {
            controller.jumpTo(0); // Reset to the beginning
          }
        } else {
          // Scroll backward (reverse)
          if (currentPosition > 0) {
            controller.jumpTo(currentPosition - scrollSpeed);
          } else {
            controller.jumpTo(maxScrollExtent); // Reset to the end
          }
        }
      }
    });
  }

  @override
  void dispose() {
    _timer1.cancel(); // Cancel the timers
    _timer2.cancel();
    _scrollController1.dispose();
    _scrollController2.dispose();
    _controller
        .dispose(); // Dispose of the controller when the widget is destroyed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(195, 227, 250, 1), // rgba(195, 227, 250, 1)
            Color.fromRGBO(231, 199, 205, 1), // rgba(231, 199, 205, 1)
          ],
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Software",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 73,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Development Company",
                style: TextStyle(
                    color: Color.fromRGBO(255, 0, 102, 1),
                    fontSize: 73,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "At DTechKrew, we specialize in crafting innovative software solutions tailored to meet the unique needs of \n your business. Our team of expert developers and designers is dedicated to transforming your ideas into\n cutting-edge applications that drive growth and efficiency.",
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Image.network(
                  "assets/pic1.png",
                  fit: BoxFit.fill,
                ),
                width: screenWidth / 1.7,
                height: 500,
              ),
              SizedBox(
                height: 120,
              ),
              Image.network("assets/text1.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "12 — SaaS companies we’ve helped in the past 24 months.\n Our holistic process takes care of discovery, branding,\n design, and development.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: screenWidth / 1.1,
                    height: 500,
                    child: Image.network(
                      "assets/cont1.png",
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 30),
                child: Container(
                    width: screenWidth / 1.06,
                    height: 500,
                    child: Image.network(
                      "assets/cont2.png",
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: screenWidth / 1.1,
                    height: 500,
                    child: Image.network(
                      "assets/cont3.png",
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Our",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Team",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 0, 102, 1),
                        fontSize: 70,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
           
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue\n interdum ligula a dignissim. Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Sed lobortis orci elementum egestas lobortis.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(
                                  239, 175, 188, 1), // rgba(195, 227, 250, 1)
                              Color.fromRGBO(
                                  195, 227, 250, 1), // rgba(231, 199, 205, 1)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 300,
                      )
                    ],
                  ),
                  Container(
                    height: 500,
                    width: screenWidth / 1.1,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 400,
                                child: Image.network(
                                  "assets/ceo.png",
                                  fit: BoxFit.cover,
                                )),
                            Text(
                                "Meet our talented CEO & Co-Founder, leading innovation\n and excellence at Dtechkrew."),
                          ],
                        ),
                        SizedBox(
                          width: screenWidth / 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Meet",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " Our Expertise",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 0, 102, 1),
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                                "Meet the experts at Dtechkrew, where innovation and expertise drive exceptional results. Our team\n combines years of experience with cutting-edge technology to deliver top-tier solutions. From AI\n to app development, we’re here to turn your ideas into reality"),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 260,
                                    width: screenWidth / 5,
                                    child: Image.network(
                                      "assets/proman.png",
                                      fit: BoxFit.contain,
                                    )),
                                SizedBox(
                                  width: screenWidth / 10,
                                ),
                                Container(
                                    width: screenWidth / 5,
                                    height: 260,
                                    child: Image.network(
                                      "assets/exp3.png",
                                      fit: BoxFit.contain,
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                    "Meet our Project Manager, expertly guiding \nteams to deliver projects on time, within scope,\n and beyond expectations"),
                                SizedBox(
                                  width: screenWidth / 20,
                                ),
                                Text(
                                    "Meet our Senior Developer, crafting robust and \nscalable solutions with advanced coding \nexpertise and innovative problem-solving")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.transparent,
                        height: 200,
                      ),
                      Container(
                        height: 250,
                        color: Color.fromRGBO(232, 198, 215, 1),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 400,
                        child: Column(
                          children: [
                            Container(
                                height: 300,
                                child: Image.network(
                                  "assets/expert1.png",
                                  fit: BoxFit.cover,
                                )),
                            Text(
                              "Muhammad\n Raheem",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Product Manager",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        child: Column(
                          children: [
                            Container(
                                height: 300,
                                child: Image.network(
                                  "assets/expert2.png",
                                  fit: BoxFit.cover,
                                )),
                            Text(
                              "Muhammad\n Ramzan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Senior UI/UX designer",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        child: Column(
                          children: [
                            Container(
                                height: 300,
                                child: Image.network(
                                  "assets/expert3.png",
                                  fit: BoxFit.cover,
                                )),
                            Text(
                              "Ali \n Hassan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Buissness Development",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        child: Column(
                          children: [
                            Container(
                                height: 300,
                                child: Image.network(
                                  "assets/expert4.png",
                                  fit: BoxFit.cover,
                                )),
                            Text(
                              "Anum Noor",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Data Science Project Manager",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                width: screenWidth / 1.05,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " Us",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 0, 102, 1),
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                   
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue\n interdum ligula a dignissim. Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Sed lobortis orci elementum egestas lobortis.",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth / 1.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Our Company",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "How We Can Help You",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'DTechKrew is a dynamic software solutions\n company dedicated to empowering\n businesses worldwide.',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'With innovative technology, we transform\n challenges into lasting value, operational \nefficiency, and revenue growth.',
                                  style: TextStyle(fontSize: 30),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Our tailored engineering services and \nadvanced solutions drive business success,\n enabling our clients to thrive in a rapidly \nevolving digital landscape.',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 400,
                            width: screenWidth / 4,
                            child: Image.network(
                              "assets/pic2.png",
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Column(
                children: [
                  Text(
                    "Testimonials That",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Speak To",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Our Result",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 0, 102, 1),
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue\n interdum ligula a dignissim. Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Sed lobortis orci elementum egestas lobortis.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 300,
                child: PageView.builder(
                  itemCount: images.length,
                  controller:
                      PageController(viewportFraction: 0.4, initialPage: 1),
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index.toDouble();
                    });
                  },
                  itemBuilder: (context, index) {
                    final isCurrentPage = index == currentPage.round();
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                      margin: EdgeInsets.symmetric(
                          horizontal: 10, vertical: isCurrentPage ? 10 : 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: isCurrentPage
                            ? [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 20),
                                  blurRadius: 10,
                                ),
                              ]
                            : [],
                        image: DecorationImage(
                          image: NetworkImage(
                            images[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 250,
                color: Color.fromRGBO(255, 181, 202, 1),
                child: ListView.builder(
                  controller: _scrollController1, // Attach the ScrollController
                  scrollDirection: Axis.horizontal,
                  itemCount: images1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Image.network(
                          images1[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 250,
                color: Color.fromRGBO(255, 181, 202, 1),
                child: ListView.builder(
                  controller: _scrollController2, // Attach the ScrollController
                  scrollDirection: Axis.horizontal,
                 
                  itemCount: images2.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Image.network(
                          images2[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                color: Color.fromRGBO(255, 181, 202, 1),
                child: ListView.builder(
                  controller: _scrollController3, // Attach the ScrollController
                  scrollDirection: Axis.horizontal,
                  reverse: true, // Scroll in the opposite direction
                  itemCount: 1000,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,width: screenWidth,
                        child: Image.network(
                          "assets/animation.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Stack(
              //   children: [
              //     Container(
              //       width: double.infinity,
              //       height: 150, // Set the height of the container
              //       color: Color.fromRGBO(
              //           255, 181, 202, 1), // Background color of the container
              //     ),
              //     AnimatedBuilder(
              //       animation: _animation,
              //       builder: (context, child) {
              //         // Use the animation value to calculate the position of the image
              //         double position =
              //             _animation.value * MediaQuery.of(context).size.width;

              //         return Positioned(
              //           left:
              //               position, // Image position based on animation value
              //           // Fixed vertical position
              //           child: child!,
              //         );
              //       },
              //       child: Container(
              //         height: 150,
              //         width: screenWidth,
              //         child: Image.network(
              //           'assets/animation.png',
              //           fit: BoxFit.fill, // Replace with your image path
              //           width: 100, // Width of the image
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              SizedBox(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Our",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Clients",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 0, 102, 1),
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "See what our customer say about us",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              Image.network("assets/pic7.png"),
              SizedBox(
                height: 80,
              ),
              Container(height: 400, child: Image.network("assets/pic3.png")),
              SizedBox(
                height: 80,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Staff",
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 60,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     Text(
              //       " Augmentation",
              //       style: TextStyle(
              //           color: Color.fromRGBO(255, 0, 102, 1),
              //           fontSize: 60,
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),

              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 30),
                child: Container(
                    width: screenWidth / 1.06,
                    height: 500,
                    child: Image.network(
                      "assets/cont5.png",
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: screenWidth / 6,
                        height: 500,
                        child: Image.network(
                          "assets/cont6.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXPERTIES",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Ui/Ux Design",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Machine Learning Development",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Mobile App Development",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Web Development",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SERVICES",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Staff Augmentation",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Dedicated Development Team",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Custom Software Development",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Digital Product Design",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "PROGRAMING LANGUAGE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "PHP",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Node.js",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Swift",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "WordPress",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DESIGN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "Design Office",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        "TECHNOLOGIES",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "HHire Java  Developers",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Hire React  Developers",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Hire Python  Developers",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Hire  Angular Developers",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Hire React Native  Developers",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Hire  Vue.js Developers",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
