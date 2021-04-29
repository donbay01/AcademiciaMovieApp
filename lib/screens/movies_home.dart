import 'package:academician_help/model/product.dart';
import 'package:flutter/material.dart';
import '../model/bottombar.dart';
import '../main.dart';
import '../model/productModel.dart';

class MovieHome extends StatelessWidget {

  List<ProductModel> cart = [];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CustomBottom(),
      body: GetBody(size: size),
    );
  }
}

class GetBody extends StatelessWidget {
  const GetBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/avatar.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.black.withOpacity(0),
                              Colors.black.withOpacity(0.85),
                            ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 15, bottom: 10, left: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.black,
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          Text(
                            'Info',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Top Deals',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DealWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Popular Movies',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  DealWidget(),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Coming Soon',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Text(
                        'Purchased',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Row(
                        children: [
                          Text(
                            'Genre',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          )
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

class DealWidget extends StatelessWidget {
  final ValueSetter valueSetter;
  const DealWidget({
    Key key, this.valueSetter,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(products.length, (index) {
            ProductModel myProducts = products[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                valueSetter(products[index]);
              },
              child: Container(
                margin: EdgeInsets.only(right: 8),
                width: 110,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(myProducts.image), fit: BoxFit.cover
                  ),

                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 5),
              child: Text('Price: \$' + myProducts.price,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
            ),

            Text('Rating: ' + myProducts.rating,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),

          ],
        );
      })),
    );
  }
}
