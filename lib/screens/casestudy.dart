import 'package:flutter/material.dart';

class CaseStudiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController scroller = ScrollController();
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(195, 227, 250, 1), // rgba(195, 227, 250, 1)
                Color.fromRGBO(231, 199, 205, 1), // rgba(231, 199, 205, 1)
              ],
            ),
          ),
          child: SingleChildScrollView(
              controller: scroller,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network("assets/caseback.png"),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Our ",
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 0, 102, 1),
                                    fontSize: 73,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " Work",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 73,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Bring your dream project to life with DTechKrew smart home solution development services. We have experience\n building all kinds of software: switch controls, door contacts, motion & light sensors, intelligent thermostats, security\n cameras, smart locks, and more. Let’s team up now!",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 50,
                      width: screenWidth,
                      child: Image.network("assets/casetext.png")),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: screenWidth / 1.1,
                        height: 500,
                        child: Image.network(
                          "assets/case1.png",
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
                          "assets/case2.png",
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
                          "assets/case3.png",
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
                          "assets/case4.png",
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
                          "assets/case5.png",
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
                          "assets/case6.png",
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
                          "assets/case7.png",
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
                          "assets/case8.png",
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
                          "assets/case9.png",
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
                          "assets/case10.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                 
                   SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Container(
                    width: screenWidth / 1.1,
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
              )),
        ),
      ),
    );
  }
}
