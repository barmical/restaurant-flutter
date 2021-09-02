import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekbartol/city.dart';
import 'package:proyekbartol/menu.dart';

class ProfileMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, left: 20),
                child: Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                  ),
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                child: Image.asset(
                  'images/profile.png',
                  height: 230.0,
                  width: 230.0,
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'First Name',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide(width: 1, color: Colors.yellow)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            labelText: 'Last Name',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide(width: 1, color: Colors.yellow)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Username',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide(width: 1, color: Colors.yellow)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'E-Mail',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide(width: 1, color: Colors.yellow)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Password',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide(width: 1, color: Colors.yellow)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              labelText: 'Confirm Password',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide(width: 1, color: Colors.yellow)
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return CityMenu();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.yellow,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(25),
                              )
                          ),
                          child:
                          Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.orange
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
                return MainMenu();
              }));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop
    );
  }
}
