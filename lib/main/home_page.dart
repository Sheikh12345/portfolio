import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'mobile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rightMargin = 0.0;
  bool value = true;
  bool inbox, phone, location, fb, stack, link, github;

  final scrollDirection = Axis.vertical;
  AutoScrollController controller;
  @override
  void initState() {
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
    inbox = false;
    phone = false;
    location = false;
    fb = false;
    stack = false;
    link = false;
    github = false;
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        value = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 730) {
        return MobileView(constraints: constraints,);
      } else {
        return Scaffold(
            backgroundColor: Color(0xff100e17),
            appBar: AppBar(
              toolbarHeight: 95,
              centerTitle: true,
              backgroundColor: Color(0xff100e17),
              title: Container(
                constraints: BoxConstraints(maxWidth: 600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.scrollToIndex(0, preferPosition: AutoScrollPosition.begin);
                      },
                      hoverColor: Colors.blue,
                      onHover: (value) {

                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Home",
                              style: GoogleFonts.cabin(
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.scrollToIndex(1, preferPosition: AutoScrollPosition.begin);

                      },
                      hoverColor: Colors.blue,
                      onHover: (value) {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "About",
                              style: GoogleFonts.cabin(
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      onHover: (value) {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Skills",
                              style: GoogleFonts.cabin(
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      onHover: (value) {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Experience",
                              style: GoogleFonts.cabin(
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      onHover: (value) {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Projects",
                              style: GoogleFonts.cabin(
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      onHover: (value) {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Contact",
                              style: GoogleFonts.cabin(
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal:constraints.maxWidth<1300?constraints.maxWidth<880?10:30: 200,),
              alignment: Alignment.center,
              width: size.width,
              height: size.height,
              child: ListView(
                controller: controller,
                children: [

                  /// Home Section
                  AutoScrollTag(
                  key: ValueKey(0),
              controller: controller,
              index: 0,
              child:       Container(
                padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth<1500?constraints.maxWidth<880?10:60: 200),
                constraints: BoxConstraints(maxWidth: 200),
                margin: EdgeInsets.only(top: size.height * 0.2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            alignment: Alignment.center,
                            width: 120,
                            height: 35,
                            child: Text(
                              "Hello I'm",
                              style: GoogleFonts.cabin(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                )),
                          ),
                        ),
                        Container(
                            width: 280,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: 280,
                                    height: 80,
                                    child: Text("M. Kashif\n\n",
                                        style: GoogleFonts.lalezar(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100,
                                            fontSize: 70))),
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    width: 280,
                                    height: 50,
                                    child: Text("App Developer\n\n",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35,
                                        ))),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  width: 400,
                                  height: 30,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: Icon(
                                          Icons.email,
                                          color: inbox
                                              ? Colors.blue
                                              : Colors.white,
                                          size: 17,
                                        ),
                                        onTap: () {},
                                        onHover: (value) {
                                          setState(() {
                                            inbox = value;
                                          });
                                        },
                                      ),
                                      Text(
                                          "    muhammadkashif1330@gmail.com",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100,
                                            fontSize: 14,
                                          ))
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 280,
                                  height: 30,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Icon(Icons.call,
                                            color: phone
                                                ? Colors.blue
                                                : Colors.white,
                                            size: 17),
                                        onHover: (value) {
                                          setState(() {
                                            phone = value;
                                          });
                                        },
                                      ),
                                      Text("    +923238979555",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100,
                                            fontSize: 14,
                                          ))
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 280,
                                  height: 30,
                                  child: Row(
                                    children: [
                                      InkWell(
                                          onTap: () {},
                                          onHover: (value) {
                                            setState(() {
                                              location = value;
                                            });
                                          },
                                          child: Icon(Icons.location_on,
                                              color: location
                                                  ? Colors.blue
                                                  : Colors.white,
                                              size: 17)),
                                      Text(
                                          "    Gulshan-Ravi, Lahore, Pakistan",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100,
                                            fontSize: 14,
                                          ))
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  margin: EdgeInsets.only(top: 25),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        onHover: (value) {
                                          setState(() {
                                            fb = value;
                                          });
                                        },
                                        hoverColor: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          width: 33,
                                          height: 33,
                                          child: Image.asset(
                                              "images/${fb ? "fbblue.png" : "fbwhite.png"}"),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        onHover: (value) {
                                          setState(() {
                                            github = value;
                                          });
                                        },
                                        hoverColor: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          width: 33,
                                          height: 33,
                                          child: Image.asset(
                                              "images/${github ? "githubblue.png" : "githubwhite.png"}"),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        onHover: (value) {
                                          setState(() {
                                            link = value;
                                          });
                                        },
                                        hoverColor: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          child: Image.asset(
                                              "images/${link ? "linkedblue.png" : "linkedwhite.png"}"),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        onHover: (value) {
                                          setState(() {
                                            stack = value;
                                          });
                                        },
                                        hoverColor: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        child: Container(
                                          width: 33,
                                          height: 33,
                                          child: Image.asset(
                                              "images/${stack ? "stackblue.png" : "stackwhite.png"}"),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )

                          // Text(,),
                        ),
                      ],
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1, milliseconds: 500),
                      child: Stack(
                        children: [
                          Container(
                            width: 360,
                            height: 360,
                            constraints: BoxConstraints(
                              maxWidth: 360,
                              maxHeight: 360,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 20,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 20,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 20,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 20,
                                    ))),
                          ),
                          Positioned(
                            top: 16,
                            left: 16,
                            child: Container(
                              margin: EdgeInsets.all(0),
                              width: 330,
                              height: 330,
                              constraints: BoxConstraints(
                                maxWidth: 330,
                                maxHeight: 330,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff100e17),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "images/download.png")),
                                shape: BoxShape.circle,
                                border: Border(
                                    top: BorderSide(
                                      color: Color(0xff100e17),
                                      width: 20,
                                    ),
                                    bottom: BorderSide(
                                      color: Color(0xff100e17),
                                      width: 20,
                                    ),
                                    right: BorderSide(
                                      color: Color(0xff100e17),
                                      width: 20,
                                    ),
                                    left: BorderSide(
                                      color: Color(0xff100e17),
                                      width: 20,
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            width: 360,
                            height: 360,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border(
                                  top: BorderSide(
                                    color: Colors.black,
                                    width: 20,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 20,
                                  ),
                                  right: BorderSide(
                                    color: Colors.black,
                                    width: 20,
                                  ),
                                  left: BorderSide(
                                    color: Colors.black,
                                    width: 20,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              highlightColor: Colors.black.withOpacity(0.1),
            ),

                  ///About Section
                 AutoScrollTag(
                  key: ValueKey(1),
                 controller: controller,
                 index: 1,
                 child: Container(
                padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth<1500?constraints.maxWidth<880?0:10: 100,vertical: 220),
                margin: EdgeInsets.only(top: 80,left: 100,bottom: 100),
                constraints: BoxConstraints(maxWidth: 1100),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Image.asset("images/image.png"),
                        constraints: BoxConstraints(
                            maxWidth:
                            constraints.maxWidth > 900 ? 500 : 380),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 60),
                        constraints: BoxConstraints(maxWidth: 475),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About Me",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(

                              constraints: BoxConstraints(
                                  maxWidth:
                                  constraints.maxWidth > 1000
                                      ? 500
                                      : 300),
                              child: Text(
                                "Hello i'm Kashif, App Developer based on Lahore, I have rich experience in app design & development and customization. Also I am good at",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                width:   constraints.maxWidth > 1000
                                    ? 500
                                    : 300 ,
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [Container(
                                        constraints: BoxConstraints(
                                            maxWidth: 300
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SkillView(title: "Flutter",),
                                            SkillView(title: "Android",),
                                            SkillView(title: "Dart",),
                                            SkillView(title: "Java",),
                                          ],),
                                      ),
                                        constraints.maxWidth>1010?Container(
                                          margin: EdgeInsets.only(left: 15),
                                          constraints: BoxConstraints(
                                              maxWidth: 100
                                          ),
                                          child:  Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              SkillView(title: "Firebase",),


                                            ],),
                                        ):Container(),
                                      ],
                                    ),
                                    constraints.maxWidth<1010?Container(
                                      margin: EdgeInsets.only(top: 10),
                                      constraints: BoxConstraints(
                                          maxWidth: 300
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SkillView(title: "Firebase",),
                                          SkillView(title: "SQLite",),
                                          SkillView(title: "No SQL",),
                                        ],),
                                    ):Container(
                                      margin: EdgeInsets.only(top: 10),
                                      constraints: BoxConstraints(
                                          maxWidth: 300
                                      ),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SkillView(title: "SQLite",),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          SkillView(title: "No SQL",),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          SkillView(title: "Adobe XD",),

                                        ],),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    constraints.maxWidth<1010?SkillView(title: "Adobe XD",):Container(),
                                  ],
                                )

                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20,top: 30),
                              constraints:
                              BoxConstraints(maxWidth: 185),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                  BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 7),
                              child: InkWell(
                                onTap: (){
                                  print("kashif");
                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Download CV",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.file_download,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                 highlightColor: Colors.black.withOpacity(0.1),
                )




                ],
              )
            ));
      }
    });
  }
}

class SkillView extends StatelessWidget {
  const SkillView({Key key, this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$title",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border(
              left: BorderSide(color: Colors.blue, width: 1),
              top: BorderSide(color: Colors.blue, width: 1),
              bottom: BorderSide(color: Colors.blue, width: 1),
              right: BorderSide(color: Colors.blue, width: 1))),
    );
  }
}
