import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'home_page.dart';

class MobileView extends StatefulWidget {
  final constraints;
  const MobileView({Key key, this.constraints}) : super(key: key);

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  double rightMargin = 0.0;
  bool value = true;
  bool inbox, phone, location,fb,stack,link,github;
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
    fb =false;
    stack=false;
    link=false;
    github=false;
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
         return Scaffold(
           key: _globalKey,
        backgroundColor: Color(0xff100e17),
        drawer: Drawer(
          child: Container(
            width: 50,
            height: size.height,
            child: Column(

              children: [
                SizedBox(
                  height: 100,
                ),
              ListTile(
                onTap: (){
                  controller.scrollToIndex(0, preferPosition: AutoScrollPosition.begin);

                },
                title: Text("Home"),
              ),
                ListTile(
                  onTap: (){
                    controller.scrollToIndex(1, preferPosition: AutoScrollPosition.begin);

                  },
                  title: Text("About"),
                ),
                ListTile(
                  title: Text("Home"),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff100e17),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: (){
              _globalKey.currentState.openDrawer();
            },
          ),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: ListView(
 controller: controller,
            children: [
              AutoScrollTag(
              key: ValueKey(0),
          controller: controller,
          index: 0,
          child:     /// Home
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      right: value ? 0.0 : 40,
                      bottom: 40,
                      left: 45),
                  child: Stack(
                    children: [
                      Container(
                        width: 355,
                        height: 355,
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
                            maxWidth: 340,
                            maxHeight: 340,
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
                        width: 365,
                        height: 365,
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
                InkWell(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 180),
                    alignment: Alignment.center,
                    width: 120,
                    height: 35,
                    child: Text(
                      "Hello I'm",
                      style: GoogleFonts.cabin(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
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
                    width: 500,
                    height: 80,
                    child: Text("M. Kashif\n\n",
                      style: GoogleFonts.lalezar(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 70),textAlign: TextAlign.center,)),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 500,
                    height: 50,
                    child: Text("App Developer\n\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 35,
                        ),textAlign: TextAlign.center)),

                /// Contact info
                Container(
                  width: size.width,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 110,vertical: 5),
                        width: 280,
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
                            Text("    muhammadkashif1330@gmail.com",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 14,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 110,vertical: 5),

                        width: 280,
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
                        margin: EdgeInsets.symmetric(horizontal: 110,vertical: 5),
                        width: 280,
                        child: Row(
                          children: [
                            InkWell(
                                onTap:(){

                                },
                                onHover: (value) {
                                  setState(() {
                                    location = value;
                                  });
                                },
                                child: Icon(Icons.location_on,
                                    color:location?Colors.blue: Colors.white,
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
                    ],
                  ),
                ),

                /// Social
                Container(
                  width: 200,
                  margin: EdgeInsets.only(top: 2,left: 100,right: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap:(){
                        },
                        onHover: (value){
                          setState(() {
                            fb= value;
                          });
                        },
                        hoverColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(5),

                          width: 33,
                          height:33,
                          child: Image.asset("images/${fb?"fbblue.png":"fbwhite.png"}"),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                        },
                        onHover: (value){
                          setState(() {
                            github= value;
                          });
                        },
                        hoverColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          width: 33,
                          height:33,
                          child: Image.asset("images/${github?"githubblue.png":"githubwhite.png"}"),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                        },
                        onHover: (value){
                          setState(() {
                            link= value;
                          });
                        },
                        hoverColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 35,
                          height:35,
                          child: Image.asset("images/${link?"linkedblue.png":"linkedwhite.png"}"),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                        },
                        onHover: (value){
                          setState(() {
                            stack = value;
                          });
                        },
                        hoverColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 33,
                          height:33,
                          child: Image.asset("images/${stack?"stackblue.png":"stackwhite.png"}"),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          highlightColor: Colors.black.withOpacity(0.1),
        ),
           AutoScrollTag(
             key: ValueKey(1),
             controller: controller,
             index: 1,
             child:       Container(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   Container(

                     margin: EdgeInsets.only(top: 140),
                     child: Image.asset("images/image.png"),
                     constraints: BoxConstraints(
                         maxWidth:450),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   /// About me
                   Text(
                     "About Me",
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 35,
                         fontWeight: FontWeight.w800),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   /// Text About me
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 20),
                     width: 1000,
                     child: Text(
                       "Hello i'm Kashif, App Developer based on Lahore, I have rich experience in app design & development and customization. Also I am good at",
                       style: TextStyle(
                           fontSize: 15,
                           height: 1.5,
                           fontWeight: FontWeight.w500,
                           color: Colors.white),textAlign: TextAlign.center,
                     ),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 60),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         SkillView(title:"Flutter" ,),
                         SkillView(title:"Android" ,),
                         SkillView(title:"Dart" ,),
                         SkillView(title:"Java" ,),
                         SkillView(title:"SQLite" ,),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SkillView(title:"SQLite" ,),
                       SizedBox(
                         width: 15,
                       ),
                       SkillView(title:"Firebase" ,),
                       SizedBox(
                         width: 15,
                       ),
                       SkillView(title:"Adobe XD" ,),
                     ],
                   ),

                   Container(
                     padding:EdgeInsets.symmetric(vertical: 7),
                     margin: EdgeInsets.only(top: 30,left: 120,right: 110),
                     constraints:
                     BoxConstraints(maxWidth: 200),
                     decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius:
                         BorderRadius.circular(20)),
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
                   ),
                   SizedBox(
                     height: 200,
                   ),
                 ],
               ),
             ),
             highlightColor: Colors.black.withOpacity(0.1),
           ),
             ///About

            ],
          ),
        ));
  }
}
