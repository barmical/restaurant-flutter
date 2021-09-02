import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyekbartol/cart.dart';
import 'package:proyekbartol/city.dart';
import 'package:proyekbartol/count.dart';
import 'package:proyekbartol/assets.dart';

class CityDetail extends StatelessWidget {

  final Restaurant restaurant;
  CityDetail({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image.asset(
                        'images/detail.png',
                        height: 350.0,
                        width: 350.0,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.redAccent, Colors.orange])
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      restaurant.location,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'Rating : ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          restaurant.rating,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                          "Chef's Recommendation",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w300
                          )
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:
                          restaurant.imageChef.map((e) {
                            return Padding(
                              padding: EdgeInsets.only(top: 1),
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                width: 210,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Color.fromRGBO(252, 246, 221, 100), Colors.white])
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          e,
                                          height: 175.0,
                                          width: 175.0,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 6,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 40,
                                          child: CountNumber(),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 30,
                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return CartMenu();
                                              }));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.orangeAccent,
                                                shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(10),
                                                )
                                            ),
                                            child: Text(
                                              'Buy Now',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                          "Most Popular",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w300
                          )
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:
                        restaurant.imagePeople.map((e) {
                          return Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 210,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Color.fromRGBO(252, 246, 221, 100), Colors.white])
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        e,
                                        height: 175.0,
                                        width: 175.0,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 6,
                                          blurRadius: 7,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 40,
                                        child: CountNumber(),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 30,
                                        child: ElevatedButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return CartMenu();
                                            }));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.orangeAccent,
                                              shape: new RoundedRectangleBorder(
                                                borderRadius: new BorderRadius.circular(10),
                                              )
                                          ),
                                          child: Text(
                                            'Buy Now',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: 20, right: 10),
          height: 50,
          width: 50,
          child: FloatingActionButton(
            backgroundColor: Colors.yellow,
            child: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CityMenu();
              }));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop
    );
  }
}
