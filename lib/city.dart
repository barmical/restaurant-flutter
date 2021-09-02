import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekbartol/city_detail.dart';
import 'package:proyekbartol/profile.dart';
import 'package:proyekbartol/assets.dart';

class CityMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 20),
            child: Text(
              'Find Nearby Location',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Garamond'
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
              ),
              itemBuilder: (context, index){
                final Restaurant restaurant = restaurantlList[index];
                return SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  restaurant.imageClip,
                                  height: 180.0,
                                  width: 180.0,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(height: 60),
                                  Align(
                                      alignment: Alignment.bottomCenter
                                  ),
                                  Container(
                                    child: Text(
                                        restaurant.name,
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Garamond',
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return CityDetail(restaurant: restaurant);
                                        }));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.black.withOpacity(0.05),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(25),
                                          )
                                      ),
                                      child: Text(
                                        'See More',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.yellow
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                );
              },
              itemCount: restaurantlList.length,
            )),
          SizedBox(height: 30),
        ],
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
                return ProfileMenu();
              }));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop
    );
  }
}
