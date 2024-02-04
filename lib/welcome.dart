import 'package:flutter/material.dart';
import 'package:softwearsolution/homescreen.dart';
// import 'package:flutter/rendering.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(color: Colors.white),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
color: Color.fromARGB(255, 18, 18, 18),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70))),
                child: Center(
                  child: Image.asset(
                    "images/important-types-of-software.jpg",
                    scale: 0.8,
                  ),
                ),
              ),
            ],
          ),    Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              padding: EdgeInsets.only(top: 40, bottom: 70),
              decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 18, 18, 18),

                  ),),),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.666,
              padding: EdgeInsets.only(top: 40, bottom: 70),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 249, 248, 248),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(70))),
              child: Column(
                children: [
                  Text(
                    "EyeT Innovation Software Solution",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        wordSpacing: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Your technological partner in business growth",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17, color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.6)),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Material(
                    color: Color.fromARGB(255, 9, 9, 9),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical:15,horizontal: 80),
                        child: Text(
                          "Click Me",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
    ),
    );
  }
}
