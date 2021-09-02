import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekbartol/city.dart';

class CartMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/cart.png',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Your Transaction is Completed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 40, left: 110),
                width: 170,
                height: 60,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CityMenu();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      )
                  ),
                  child: Text(
                    'Back to Main Menu',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
