import 'package:flutter/material.dart';
import 'package:softwearsolution/company%20details.dart';
import 'package:softwearsolution/course.dart';
import 'package:softwearsolution/details.dart';
import 'package:carousel_slider/carousel_slider.dart';


// ignore: must_be_immutable
class homepage extends StatelessWidget {
  homepage({super.key});

  List catNames = [
    "PageFold LMS",
    "Cluster CRM",
    "Clique HR",
    "Medihub HMS",
    "RealValue PMS",
    "Leaderbord"
  ];
  List<Color> catColors = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFCF7F7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
  ];

  List<Icon> catIcons = [
    const Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.assignment,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 30,
    )
  ];

  List imgList = [
    "Mobile Application",
    "Chatbot",
    "internet of Things",
    "E-Commerce",
  ];
    List<String> products = [
    "images/logo1.png",
    "images/logo2.png",
    "images/logo3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(252, 1, 1, 12),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    'Hi programmer',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 9, bottom: 20),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search hear.......",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: catColors[index], shape: BoxShape.circle),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 248, 244, 244).withOpacity(0.7)),
                        )
                      ],
                    );
                  },
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600,color: Colors.white),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 245, 240, 245)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  coursescreen(imgList[index]),
                            ));
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 191, 172, 172)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                "images/${imgList[index]}.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              imgList[index],
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 246, 244, 244).withOpacity(0.6)),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                  const Padding(
                    padding: EdgeInsets.only(right: 280,top: 20,bottom:1),
                    child: Text(
                        " Clients",
                        style:
                            TextStyle(fontSize: 23, fontWeight: FontWeight.w600,color: Colors.white),
                      ),
                  ),
                          Container(
            height: 180,
          
            child: CarouselSlider(
                items: products
                    .map((e) => Container(
                          child: Center(
                            child: Image.asset(e),
                          ),
                        ))
                    .toList(), options:CarouselOptions(),)),
                    Row(
                      children: [
                        
                      ],
                    )
              ],
            ),
          )
        ]),
        
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 32,
            selectedItemColor: const Color.fromARGB(255, 199, 39, 145),
            selectedFontSize: 18,
            unselectedItemColor: Colors.grey,
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              // const BottomNavigationBarItem(
              //     icon: Icon(Icons.assignment), label: "Courses"),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.favorite), label: "Wishlist"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ],
              onTap: (index) {
    if (index == 0) {
      // Handle Home navigation if needed
    } else if (index == 1) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const details()),
      // );
    } 
    else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Account()),
      );
    }

           
           
  }
  ),
            

            
          

            );
  }
}
