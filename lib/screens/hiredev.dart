import 'package:flutter/material.dart';

class HireDevelopersScreen extends StatefulWidget {
  @override
  State<HireDevelopersScreen> createState() => _HireDevelopersScreenState();
}

class _HireDevelopersScreenState extends State<HireDevelopersScreen> {
  List trustimages = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/12.png",
    "assets/6.png",
    "assets/7.png",
    "assets/8.png",
    "assets/9.png",
    "assets/10.png",
    "assets/11.png",
    "assets/12.png",
  ];
  List titles1 = [
    "Blood Donation Advocacy:",
    "Stands with Ukraine:",
    "Employee Learning Initiatives:",
    "Community Engagement:",
    "Human Rights and Labor Practices:",
    "Volunteering Commitment:"
  ];
  List titles2 = [
    "Defining needs and requirements:",
    "Talent Sourcing",
    "Employee Learning Initiatives:",
    "Interviewing and Selection:",
    "Job Offering:",
    "Onboarding:"
  ];
  List details1 = [
    "We actively engage in blood donation drives, emphasizing\n the significance of this vital contribution. Many of our team\nmembers are dedicated, regular donors, playing a part in\nsupporting the health and welfare of our local and global\ncommunities.",
    "Supporting Our Armed Forces: We proudly \nsupport our armed forces by donating funds and \nresources to meet their essential needs and \ninitiatives, ensuring they receive the best possible \nassistance.",
    "Investing in our workforce's growth, we provide diverse\n learning programs, including skill enhancement workshops\n and educational sponsorships. This empowers our team to\n excel both personally and professionally.",
    "We enrich our local communities through \noutreach programs, supporting local events, \nsponsoring educational initiatives, and \nvolunteering our time. Our commitment is to \nmake a positive impact and strengthen our connections close to home.",
    "We uphold human rights and fair labor practices, ensuring a \nrespectful and equitable workplace. Our inclusive policies \npromote equal opportunities, fostering a culture of respect, \ndignity, and continuous growth for all individuals.",
    "Embracing the spirit of giving back, we actively \nencourage and facilitate volunteering among our \nteam members. From helping at local shelters to \nparticipating in environmental clean-ups or \nmentoring youth, we believe in the \ntransformative power of volunteering."
  ];
  List details2 = [
    "Defining the necessary skills, qualifications, and criteria needed for a candidate to excel in a specific role.",
    "Proactively sourcing and pinpointing potential candidates using a variety of recruitment channels and job platforms.",
    "We prioritize the growth and development of our workforce by offering a variety of learning opportunities. From professional skill-building workshops to educational sponsorships, we empower our team members to succeed both personally and professionally.",
    "Conducting interviews and assessments to evaluate candidates and ensure the best fit for the position.",
    "Extending a job offer to the selected candidate and moving forward with the employment process.",
    "Onboarding the new hire and supporting their smooth integration into the DTechKrew team."
  ];
  ScrollController scroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(195, 227, 250, 1), // rgba(195, 227, 250, 1)
                Color.fromRGBO(231, 199, 205, 1), // rgba(231, 199, 205, 1)
              ],
            ),
          ),
          child: SingleChildScrollView(controller: scroller,
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
                          "Mobile App development",
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: 73,
                              fontWeight: FontWeight.bold),
                        ),

                        Text(
                          "Software",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 0, 102, 1),
                              fontSize: 73,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Development Company",
                          style: TextStyle(
                              color: Colors.white,
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
                        Container(
                          height: 350,
                          width: screenWidth / 2.8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network("assets/google.png"),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Average Refral Rating 4.9/5",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "4.9",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.network("assets/star.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.network("assets/star.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.network("assets/star.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.network("assets/star.png"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.network("assets/star.png"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
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
                      "Who",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Trust Us",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 102, 1),
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 600,
                  width: screenWidth / 1.1,
                  child: GridView.builder(
                    controller: scroller,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 210,
                      crossAxisCount: 6,
                    ),
                    itemCount: trustimages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(trustimages[index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Corporate Social",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Responsibility",
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
                Container(
                  height: 500,
                  width: screenWidth / 1.2,
                  child: GridView.builder(controller: scroller,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: 290),
                    itemCount: titles1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  titles1[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  details1[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Recruitement",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Stages",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 0, 102, 1),
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "Our recruitment process takes 2-3 weeks on average, ensuring quick onboarding. Filling \npositions typically takes 5-6 weeks.",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  height: 500,
                  width: screenWidth / 1.2,
                  child: GridView.builder(controller: scroller,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: 240),
                    itemCount: titles2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  titles2[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  details2[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("assets/isl.png"),
                            Image.network("assets/lahore.png"),
                            Image.network("assets/okara.png")
                          ],
                        )
                      ],
                    ),
                    Container(height: 400, child: Image.network("assets/map.png"))
                  ],
                ),
                 SizedBox(
                  height:120,
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
      ),
    );
  }
}
