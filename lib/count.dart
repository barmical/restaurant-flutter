import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekbartol/assets.dart';

class CountNumber extends StatefulWidget {
  const CountNumber({Key? key}) : super(key: key);

  @override
  _CountNumberState createState() => _CountNumberState();
}

class _CountNumberState extends State<CountNumber> {

  int _counter = 0;

  increment(){
    setState(() {
      _counter++;
    });
  }

  decrement(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: increment,
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.add),
                  heroTag: 'btn1',
                  tooltip: 'Increment',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 20,
              height: 20,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: decrement, backgroundColor: Colors.yellow,
                  child: Icon(Icons.remove),
                  heroTag: 'btn2',
                  tooltip: 'Decrement',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            )
          ],
        ),
      );
  }
}
