import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'movies_home.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Your Cart is Empty',style: TextStyle(color: Colors.white,fontSize: 20),)),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  onPressed: () {
                    launch('https://paystack.com/pay/f8rvxhrqbt');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Check Out',
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
    );
  }
}
