// import 'package:animated_list_view_scroll/animated_list_view_scroll.dart';
// import 'package:app_sobat/views/beranda_appbar.dart';
import 'package:flutter/material.dart';
// import 'package:app_sobat/utils_preferences.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  // _getAccessToken() async {
  //   var accessTok = await Utility.getTokenAccessPreferences();
  //   print('access_token');
  //   print(accessTok);
  // }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        // appBar: SobatAppBar(),
        body: new Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFF)),
          child: new Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: new Column(
              children: <Widget>[
                // Container(
                //   alignment: Alignment.topLeft,
                //   child: Text(
                //     "Hallooo Erba,",
                //     style: TextStyle(
                //         fontSize: 35,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.blueAccent),
                //   ),
                // ),
                // Container(
                //   alignment: Alignment.topLeft,
                //   child: Text(
                //     "Welcome Back !",
                //     style: TextStyle(
                //         fontSize: 35,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.greenAccent),
                //   ),
                // ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Your Group",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                            height: 200.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(bottom: 60),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.transparent,
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/images/user1.png"),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(
                                        2.0), // borde width
                                    decoration: new BoxDecoration(
                                      color: const Color(
                                          0xFF487af4), // border color
                                      shape: BoxShape.circle,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(top: 60),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.transparent,
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/images/user2.png"),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(
                                        2.0), // borde width
                                    decoration: new BoxDecoration(
                                      color: const Color(
                                          0xFF487af4), // border color
                                      shape: BoxShape.circle,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(bottom: 60),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.transparent,
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/images/user3.jpeg"),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(
                                        2.0), // borde width
                                    decoration: new BoxDecoration(
                                      color: const Color(
                                          0xFF487af4), // border color
                                      shape: BoxShape.circle,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(top: 60),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.transparent,
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/images/user4.png"),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(
                                        2.0), // borde width
                                    decoration: new BoxDecoration(
                                      color: const Color(
                                          0xFF487af4), // border color
                                      shape: BoxShape.circle,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(bottom: 60),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.transparent,
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/images/user5.png"),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(
                                        2.0), // borde width
                                    decoration: new BoxDecoration(
                                      color: const Color(
                                          0xFF487af4), // border color
                                      shape: BoxShape.circle,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(top: 60),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.transparent,
                                      child: ClipOval(
                                        child: Image.asset(
                                            "assets/images/user1.png"),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(
                                        2.0), // borde width
                                    decoration: new BoxDecoration(
                                      color: const Color(
                                          0xFF487af4), // border color
                                      shape: BoxShape.circle,
                                    )),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  alignment: Alignment.topLeft,
                  // margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Top Discussions",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  height: 370.0,
                  // color: Colors.red,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        // margin: EdgeInsets.only(top: 10),
                        height: 200.0,
                        decoration: new BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                    child:
                                        Image.asset("assets/images/user5.png"),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding: new EdgeInsets.only(
                                      right: 13.0, left: 5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "Seluruh Turnamen Bergengsi diundur bla blabalabalb ab",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                        ),
                                      ),
                                      Text(
                                        "15/04/2020",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "Dikarenakan virus corona yang sedang melanda seluruh negeri, seluruh turnamen terpaksa diliburkan untuk sementara",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          maxLines: 3,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // _lights = true;
                                              // submitLogin();
                                            });
                                          },
                                          child: Container(
                                            width: 150,
                                            height: 50,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 50),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Open",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 200.0,
                        decoration: new BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                    child:
                                        Image.asset("assets/images/user1.png"),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding: new EdgeInsets.only(
                                      right: 13.0, left: 5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "Gak Main Badminton sangat tidak asik",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                        ),
                                      ),
                                      Text(
                                        "15/04/2020",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "Udah 3 minggu gak main badminton",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          maxLines: 3,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // _lights = true;
                                              // submitLogin();
                                            });
                                          },
                                          child: Container(
                                            width: 150,
                                            height: 50,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 50),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Open",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 200.0,
                        decoration: new BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                    child:
                                        Image.asset("assets/images/user2.png"),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding: new EdgeInsets.only(
                                      right: 13.0, left: 5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "Seluruh Turnamen Bergengsi diundur bla blabalabalb ab",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                        ),
                                      ),
                                      Text(
                                        "15/04/2020",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "Dikarenakan virus corona yang sedang melanda seluruh negeri, seluruh turnamen terpaksa diliburkan untuk sementara",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                          maxLines: 3,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // _lights = true;
                                              // submitLogin();
                                            });
                                          },
                                          child: Container(
                                            width: 150,
                                            height: 50,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 50),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Open",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 10),
                      //   height: 200.0,
                      //   decoration: new BoxDecoration(
                      //       color: Colors.pinkAccent,
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(20))),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 10),
                      //   height: 200.0,
                      //   decoration: new BoxDecoration(
                      //       color: Colors.blueAccent,
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(20))),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 10),
                      //   height: 200.0,
                      //   decoration: new BoxDecoration(
                      //       color: Colors.greenAccent,
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(20))),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
