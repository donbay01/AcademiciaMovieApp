import 'package:academician_help/screens/movies_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.6],
                  colors: [
                    Colors.black54,
                    Colors.black87,
                  ]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text('THE MOVIES',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Column(
                  children: [
                    TextFormField(
                      // controller: emailEditingController,
                      validator: (val) =>
                      val.isEmpty ? 'Enter an email' : null,
                      //  onSaved: (val) => email = val,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        labelText: 'Email Address*',
                        hintText: 'Enter your email address',
                        prefixIcon: Icon(Icons.email),
                        fillColor: Colors.grey[100],
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextFormField(
                      // controller: passwordEditingController,
                      // obscureText: _obscureText,
                      validator: (val) =>
                      val.length < 6 ? 'Password too Short' : null,
                      // onSaved: (val) => password = val,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        labelText: 'Password*',
                        hintText: 'Enter your Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            //  _toggle();
                          },
                          icon: Icon(Icons.remove_red_eye),
                        ),
                        fillColor: Colors.grey[100],
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MovieHome()));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  25, 15, 25, 15),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  // fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              return Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => MovieHome()));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'REGISTER',
                                style: TextStyle(
                                  //fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                       // return Navigator.push(
                           // context,
                         //   MaterialPageRoute(
                             //   builder: (context) =>
                                  //  ForgotPassword()));
                      },
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                            MediaQuery.of(context).size.height *
                                0.02,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  '- Or Connect With -',
                  style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // return Navigator.push(context,
                        //  MaterialPageRoute(builder: (context) => DashBoardScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                                size: 15,
                              ),
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                color: Colors.black,
                                //fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //return Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => DashBoardScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                FontAwesomeIcons.facebook,
                                size: 15,
                              ),
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                //fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DON'T HAVE AN ACCOUNT?",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {
                         // return Navigator.of(context).push(_createRoute());
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}


Route _createRoute() {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 400),
    //pageBuilder: (context, animation, secondaryAnimation) => Register(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}