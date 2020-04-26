import 'package:app_sobat/api/login_api.dart';
// import 'package:app_sobat/api/repository/login_api_repository.dart';
import 'package:app_sobat/fade_animation.dart';
import 'package:app_sobat/landing_page.dart';
// import 'package:app_sobat/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'utils_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _storage = FlutterSecureStorage();
  final formControllerEmail = TextEditingController();
  final formControllerPassword = TextEditingController();

  navigatorToLandingPage() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
      return new LandingPage();
    }));
  }

  // submitLogin() {
  //   print(formControllerEmail.text);
  //   print(formControllerPassword.text);
  //   String email = formControllerEmail.text.toString();
  //   String password = formControllerPassword.text.toString();
  //   // Data dataLogin = Data(email: email, password: password);
  //   _apiLoginRepository.postLoginApi(email, password);
  // }

  @override
  void dispose() {
    formControllerEmail.dispose();
    formControllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue[900],
          Colors.blue[800],
          Colors.blue[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FadeAnimation(
                        1,
                        Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                      FadeAnimation(
                        1,
                        Image.asset(
                          "assets/images/logobadminton.png",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1.3,
                    Text(
                      "Selamat Datang, Sobat",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(30, 144, 255, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 30))
                            ]),
                        child: Column(
                          children: <Widget>[
                            FormBuilder(
                              child: Column(
                                children: <Widget>[
                                  FormBuilderTextField(
                                    attribute: "username",
                                    controller: formControllerEmail,
                                    decoration:
                                        InputDecoration(labelText: "Username"),
                                  ),
                                  FormBuilderTextField(
                                    attribute: "password",
                                    controller: formControllerPassword,
                                    decoration:
                                        InputDecoration(labelText: "Password"),
                                  ),
                                ],
                              ),
                            )
                            // Container(
                            //   decoration: BoxDecoration(
                            //     border: Border(
                            //         bottom:
                            //             BorderSide(color: Colors.grey[200])),
                            //   ),
                            //   child: TextField(
                            //     decoration: InputDecoration(
                            //       hintText: "Email or Phone Number",
                            //       hintStyle: TextStyle(color: Colors.grey),
                            //       border: InputBorder.none,
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     border: Border(
                            //         bottom:
                            //             BorderSide(color: Colors.grey[200])),
                            //   ),
                            //   child: TextField(
                            //     decoration: InputDecoration(
                            //       hintText: "Password",
                            //       hintStyle: TextStyle(color: Colors.grey),
                            //       border: InputBorder.none,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      FadeAnimation(
                        1.6,
                        new Container(
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    // _lights = true;
                                    // submitLogin();
                                  });
                                  var res = await loginUser(
                                      formControllerEmail.text.toString(),
                                      formControllerPassword.text.toString());
                                  print("HEAHEA");
                                  print(res['token_access']);
                                  Utility.saveTokenAccessPreferences(res['token_access']);
                                  navigatorToLandingPage();
                                },
                                child: Container(
                                  width: 300,
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue[900],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        1.8,
                        Text(
                          "Continue with Social Media",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FadeAnimation(
                              2,
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Text(
                                    "Facebook",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: FadeAnimation(
                              2.2,
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red[700],
                                ),
                                child: Center(
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
