import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    ScrollController scroller = ScrollController();
    TextEditingController messagecontroller = TextEditingController();
    TextEditingController namecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    return Center(
      child: SingleChildScrollView(
        controller: scroller,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(195, 227, 250, 1), // rgba(195, 227, 250, 1)
                Color.fromRGBO(231, 199, 205, 1), // rgba(231, 199, 205, 1)
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.network("assets/aboutback.png"),
                  Column(
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(
                            color: Color.fromRGBO(255, 0, 102, 1),
                            fontSize: 73,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "DTechKrew combines cutting-edge technology with deep industry expertise to deliver\n impactful, scalable results.",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 400,
                                child: TextField(
                                  controller: namecontroller,
                                  decoration: InputDecoration(
                                    hintText: "Full name",
                                    hintStyle: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 24), // Hint text color
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .white), // Bottom border color
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white,
                                          width:
                                              2.0), // Focused bottom border color
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .white), // Default bottom border color
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                child: TextField(
                                  controller: emailcontroller,
                                  decoration: InputDecoration(
                                    hintText: "E-mail",
                                    hintStyle: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 24,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .white), // Bottom border color
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white,
                                          width:
                                              2.0), // Focused bottom border color
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .white), // Default bottom border color
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 300,
                                child: TextField(
                                  controller: messagecontroller,
                                  decoration: InputDecoration(
                                    hintText: "Message",
                                    hintStyle: TextStyle(
                                        color: Colors.white54, fontSize: 24),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .white), // Bottom border color
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white,
                                          width:
                                              2.0), // Focused bottom border color
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .white), // Default bottom border color
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Contact",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "info@dtechkrew.io",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                  ),
                                ),
                                Text(
                                  "Based in",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Punjab, Pakistan.\nChicago, USA.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("assets/send.png"),
                          SizedBox(width: 20,),
                          Container(width: 250,
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network("assets/facebook.png"),
                                Image.network("assets/insta.png"),
                                Image.network("assets/link.png"),
                              ],
                            ),
                          ),
                           SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),

                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 0, 102, 1),
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " With Us",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Start with us today—fill out the form, and our sales team will help tailor the perfect\n solution for you.",
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70,
              ),
              Image.network("assets/buton.png"),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 350,
                    width: screenWidth / 4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "INNOVATIVE",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 0, 102, 1),
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "SOLUTIONS",
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 0, 102, 1),
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " FOR",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "Buissnes",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Growth",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    width: screenWidth / 1.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DTechKrew is a dynamic software solutions company\ndedicated to empowering businesses worldwide.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "With innovative technology, we transform challenges into\nlasting value, operational efficiency, and revenue growth.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Our tailored engineering services and advanced solutions drive\nbusiness success, enabling our clients to thrive in a rapidly\n evolving digital landscape.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Team That makes",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Every Thing Possible",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 0, 102, 1),
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Image.network("assets/team.png"),
              SizedBox(
                height: 80,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                            "Our international offices work in unison to serve clients\n across the globe, ensuring seamless collaboration \nacross regions and time zones to deliver tailored \nsupport and solutions that meet each client’s specific \nrequirements."),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("assets/punjab.png"),
                          Image.network("assets/chicago.png"),
                        ],
                      )
                    ],
                  ),
                  Container(height: 400, child: Image.network("assets/map.png"))
                ],
              ),
              SizedBox(
                height: 120,
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
