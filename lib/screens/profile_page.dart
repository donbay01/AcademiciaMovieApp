import 'package:flutter/material.dart';

import 'movies_home.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/aqua.png'),
                    radius: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email address',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  onPressed: () {
                    return Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieHome()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


