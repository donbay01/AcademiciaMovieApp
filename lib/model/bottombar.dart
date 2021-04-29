import 'package:academician_help/screens/cart_page.dart';
import 'package:academician_help/screens/profile_page.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 80,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {}),
                SizedBox(height: 5,),
                Text('Home', style: TextStyle(color: Colors.white),)
              ],
            ),
            Column(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserProfile()),
                      );
                    }),
                SizedBox(height: 5,),
                Text('Profile', style: TextStyle(color: Colors.white),)
              ],
            ),
            Column(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {}),
                SizedBox(height: 5,),
                Text('Search', style: TextStyle(color: Colors.white),)
              ],
            ),
            Column(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                         MaterialPageRoute(builder: (context) => MyCart()),
                           );
                    }),
                SizedBox(height: 5,),
                Text('Cart', style: TextStyle(color: Colors.white),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
