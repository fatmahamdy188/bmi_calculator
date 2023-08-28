import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double _value = 40.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white ,
        title:Container(
          width: 2000,
          alignment: Alignment.center,
          child:Text("Result",style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 35,
              color: Colors.purple[900])),
        ) ,

      ),
      body:Container(
        alignment: Alignment.center,
        child:Container(
          padding: EdgeInsets.all(30),
          width: 360,
          height: 750,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(15),
            color: Colors.indigo[50],
          ),
          child: Column(
            children: [
              //SizedBox(height: 70,),
              Text("Your BMI is",style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 30,
                  color: Colors.purple[900])),
              SizedBox(height: 30,),
              Text("25.0",style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 100,
                  color: Colors.deepPurple[800])),
              SizedBox(height: 10,),
              Text("kg/m2",style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple[900])),
              SizedBox(height: 15,),
              Stack(
                  alignment: Alignment.center,
                  children:[
                    Container(padding: EdgeInsets.all(30),
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30),
                        color: Colors.white70,
                      ),
                    ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your weight is",style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.purple[900])),
                    SizedBox(width: 20,),
                    Text("Normal",style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple[900])),
                  ],
                ),]
              ),


            ],
          ),
        ),

      )


    );
  }
}
