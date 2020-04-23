import 'package:flutter/material.dart';

class GorBeranda extends StatefulWidget {
  GorBeranda({Key key}) : super(key: key);

  @override
  _GorBerandaState createState() => _GorBerandaState();
}

class _GorBerandaState extends State<GorBeranda> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Discussions",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                Expanded(
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
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
                                      child: Image.asset(
                                          "assets/images/user5.png"),
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
                                              color: Colors.white,
                                              fontSize: 13),
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
                                      child: Image.asset(
                                          "assets/images/user1.png"),
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
                                              color: Colors.white,
                                              fontSize: 13),
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
                                      child: Image.asset(
                                          "assets/images/user2.png"),
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
                                              color: Colors.white,
                                              fontSize: 13),
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
                              color: Colors.pinkAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 200.0,
                          decoration: new BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 200.0,
                          decoration: new BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ],
                    ),
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
