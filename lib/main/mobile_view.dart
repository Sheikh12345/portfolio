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
             // backgroundColor: Colors.white,
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


              /// mobile view Home section
              AutoScrollTag(
              key: ValueKey(0),
          controller: controller,
          index: 0,
          child:Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                 alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Positioned(
                        top: size.width>500?15:size.width*0.03,
                        left: size.width>500?14:size.width*0.03,
                        child: Container(
                          width: size.width*0.7,
                          height: size.width*0.7,
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
                        width: size.width*0.74,
                        height: size.width*0.74,
                        constraints: BoxConstraints(
                          maxHeight: 365,
                          maxWidth: 365
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
                              )),
                        ),
                      )
                    ],
                  ),
                ),


                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: size.height*0.1),
                    alignment: Alignment.center,
                    width: size.width*0.28,
                    height: size.height*0.05,
                    constraints: BoxConstraints(
                      maxWidth: 120,
                      maxHeight: 35
                    ),
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
                    width: size.width,
                    height: size.height*0.18,
                   constraints: BoxConstraints(
                     maxHeight: 80,
                     maxWidth: 500
                   ),
                    child: Text("M. Kashif\n\n",
                      style: GoogleFonts.lalezar(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize:size.width>428?70:size.width*0.17),textAlign: TextAlign.center,)),
                Container(
                    margin: EdgeInsets.only(top: size.height*0.01),
                    width: 500,
                    height: 50,
                    child: Text("App Developer\n\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize:size.width>428?35:size.width*0.08,
                        ),textAlign: TextAlign.center)),

                /// Contact info
                Container(
                  alignment: Alignment.center,
                  width:size.width>650?300:size.width<600?size.width<478?size.width*0.9:size.width*0.5:size.width*0.4,
                  height: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 7),
                        alignment: Alignment.center,
                        width:size.width<370?size.width*0.67: size.width*0.67,
                        child: Row(
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.email,
                                color: inbox
                                    ? Colors.blue
                                    : Colors.white,
                                size: size.width>368?17:size.width*0.06,
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
                                  fontSize:size.width>368?14:size.width*0.037,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        alignment: Alignment.center,
                        width: size.width*0.65,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.call,
                                  color: phone
                                      ? Colors.blue
                                      : Colors.white,
                                  size: size.width>368?17:size.width*0.06),
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
                                  fontSize: size.width>368?14:size.width*0.037,
                                ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        alignment: Alignment.center,
                        width: size.width*0.65,
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
                                    size: size.width>368?17:size.width*0.06)),
                            Text(
                                "    Gulshan-Ravi, Lahore, Pakistan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontSize: size.width>368?14:size.width*0.037,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// Social
                Container(
                  width: size.width*0.5,
                  constraints: BoxConstraints(
                    maxWidth: 200
                  ),
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
             child:Container(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     width: size.width*0.8,
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
                         fontSize:size.width>368?35:size.width*0.09,
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
                     child: Wrap(
                       children: [
                         SkillView(title:"Flutter" ,),
                         SkillView(title:"Android" ,),
                         SkillView(title:"Dart" ,),
                         SkillView(title:"Java" ,),
                         SkillView(title:"SQLite" ,),
                         SkillView(title:"NoLite" ,),
                         SkillView(title:"Firebase" ,),
                         SkillView(title:"Adobe XD" ,),

                       ],
                     ),
                   ),
                   SizedBox(
                     height: 15,
                   ),

                   Container(
                     padding:EdgeInsets.symmetric(vertical: 7),
                     constraints:
                     BoxConstraints(maxWidth: 200),
                     width:size.width>368? 200:size.width*0.5,
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
                                 fontSize:size.width>368? 17:size.width*0.05),
                           ),
                           SizedBox(
                             width: 5,
                           ),
                           Icon(
                             Icons.file_download,
                             color: Colors.white,
                             size: size.width>368? 20:size.width*0.05,
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
              Container(
                margin: EdgeInsets.only(top: 50,),
                constraints: BoxConstraints(maxWidth: 1100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("What I do",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w800),)
                    ,SizedBox(
                      height: 50,
                    ),
                   Wrap(
                     children: [
                     Container(
                       padding: EdgeInsets.all(15),
                       margin: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                           color: Color(0xff1e1e25)
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(children: [
                             Container(
                               width:30,
                               height: 30,
                               child: Image.asset("images/uidesign.png"),

                               margin: EdgeInsets.only(bottom: 20),
                             )
                           ],),

                           Text("UI Design",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w800),),
                           SizedBox(
                             height: 15,
                           ),Container(

                               constraints: BoxConstraints(
                                   maxWidth: 350
                               ),
                               child: Text("User interface (UI) design is the process designers use to build interfaces in software or computerized devices, focusing on looks or style. Designers aim to create interfaces which users find easy to use and pleasurable.",style: TextStyle(fontSize: 15,color: Colors.white),))
                         ],
                       ),
                     ),
                     Container(
                       padding: EdgeInsets.all(15),
                       margin: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                           color: Color(0xff1e1e25)
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(children: [
                             Container(
                               width:35,
                               height: 35,
                               child: Image.asset("images/web.png"),

                               margin: EdgeInsets.only(bottom: 20),
                             )
                           ],),
                           Text("Web Development",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w800),),
                           SizedBox(
                             height: 17,
                           ),
                           Container(
                               constraints: BoxConstraints(
                                   maxWidth: 350
                               ),
                               child: Text("Web development is the building of websites; it's the work that happens behind the scenes to make a website look great, work fast and perform well with a seamless user experience using Google's flutter SDK.",style: TextStyle(fontSize: 15,color: Colors.white),))
                         ],
                       ),
                     ),
                     Container(
                       padding: EdgeInsets.all(15),
                       margin: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                           color: Color(0xff1e1e25)
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 width:35,
                                 height: 35,
                                 child: Image.asset("images/android.png"),

                                 margin: EdgeInsets.only(bottom: 20),

                               ),
                               Container(
                                 width:35,
                                 height: 30,
                                 child: Image.asset("images/apple.png",scale: 6,),


                               )
                             ],),
                           Text("App Development",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w800),),
                           SizedBox(
                             height: 17,
                           ),                                   Container(
                               constraints: BoxConstraints(
                                   maxWidth: 350
                               ),
                               child: Text("Flutter is Google's open source technology for creating mobile, desktop, and web apps with a single codebase. Unlike other popular solutions, Flutter is not a framework or library; it's a complete SDK – software development kit",style: TextStyle(fontSize: 15,color: Colors.white),))
                         ],
                       ),
                     ),
                   ],)

                  ],
                ),
              )
            ],
          ),
        ));
  }
}
