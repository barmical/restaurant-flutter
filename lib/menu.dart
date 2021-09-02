import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekbartol/profile.dart';

class MainMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 30),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 70, left: 15),
                    child: Text(
                        'Find Your Best Meal Today',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat'
                        ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 140, left: 20, right: 20),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image.asset(
                        'images/welcome.png',
                        height: 400.0,
                        width: 400.0,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: Text("We are here to be your best assistant for finding meal for Breakfast, Lunch, even for Dinner! We serve our best food to our customer with amazing experience as we use Application based Technology to order our meal as you can dine-in, drive-thru, or even use a delivery service",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Montserrat'
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 100,
                margin: EdgeInsets.only(top: 20, right: 40),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ProfileMenu();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25),
                      )
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}