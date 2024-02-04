import 'package:flutter/material.dart';
import 'package:softwearsolution/discription.dart';
import 'package:softwearsolution/vidio.dart';

class coursescreen extends StatefulWidget {
  // const coursescreen({super.key});
  String img;
  coursescreen(this.img);

  @override
  State<coursescreen> createState() => _coursescreenState();
}

class _coursescreenState extends State<coursescreen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color.fromARGB(255, 238, 6, 241),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("images/${widget.img}.png"))),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        shape: BoxShape.circle),
                    child:
                     Icon(
                      Icons.play_arrow_rounded,
                      color: Color.fromARGB(255, 236, 9, 217),
                      size: 45,
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text("${widget.img}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 5,
            ),
            Text("Our Development Process",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.7))),
            SizedBox(
              height: 5,
            ),
            Text(" Vidios",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5))),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideosSection
                        ? const Color.fromARGB(255, 171, 8, 200)
                        : Colors.purpleAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideosSection = true;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        child: Text(
                          "Vidios",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideosSection
                        ? const Color.fromARGB(255, 184, 7, 215)
                        : Colors.purpleAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideosSection = false;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        child: Text(
                          "Describes",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            isVideosSection ? vidioSection() :DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
