import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}
int? aage;
String? gender;
int? wweight;
int? mmeters;
int? CCm;
class _Screen1State extends State<Screen1> {
  int get initialLabelIndex => 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white ,
        title:Container(
          width: 2000,
          alignment: Alignment.center,
          child:Text("BMI CALCULATOR",style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 25,
              color: Colors.purple[900])),
        ) ,

      ),
      body:
      ListView(
        children: [
          firstContainer(age: "20",weight:"60"),
          secondContainer(meters: "1",Cm: "57"),
          thirdContainer(),
          forthWidget()
      ]),


    );
  }
  Widget forthWidget(){
    return Padding(
      padding: const EdgeInsets.only(top: 5,right: 20,left: 20,bottom: 15),
      child: Stack(
          alignment: Alignment.center,
          children:[
            Container(padding: EdgeInsets.all(30),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(30),
                color: Colors.purple[900],
              ),
            ),
            TextButton(onPressed: onPressed(

            ),
              child:
              Text("CALCULATE",style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 25,
                  color: Colors.indigo[50])),
            ),
          ]),
    );
  }
  Widget thirdContainer(){
   return Padding(
     padding: const EdgeInsets.only(top: 5,right: 20,left: 20,bottom: 15),
     child: Container(
       padding: EdgeInsets.all(30),
       width: 360,
       height: 200,
       decoration: BoxDecoration(
         borderRadius:BorderRadius.circular(15),
         color: Colors.indigo[50],
       ),
       child: Column(
         children: [
           Text("Gender",style:TextStyle(
               fontWeight:FontWeight.bold,
               fontSize: 25,
               color: Colors.purple[900])),
           SizedBox(height: 20,),
           Row(children: [
             Text("I am",style:TextStyle(
                 fontWeight:FontWeight.bold,
                 fontSize: 60,
                 color: Colors.purple[900])),
             SizedBox(width: 20,),
             ToggleSwitch(
               minWidth: 86.0,
               cornerRadius: 20.0,
               activeBgColors: [[Colors.blueAccent!], [Colors.blueAccent!]],
               activeFgColor: Colors.white,
               inactiveBgColor: Colors.grey,
               inactiveFgColor: Colors.white,
               initialLabelIndex: 1,
               totalSwitches: 2,
               labels: ['Male', 'Female'],
               radiusStyle: true,
               onToggle: (index) {
                 print('switched to: $index');
                 if(initialLabelIndex==1){
                   gender="Male";
                 }
                 else{gender="Female";}

               },
             ),

           ],
           )

         ],
       ),
     ),
   );
}
  Widget secondContainer({required String meters,required String Cm}){
    return Padding(
      padding: const EdgeInsets.only(top: 5,right: 20,left: 20,bottom: 15),
      child: Container(
        padding: EdgeInsets.all(30),
        width: 360,
        height: 230,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          color: Colors.indigo[50],
        ),
        child:
        Column(
          children: [
            Text("Highet",style:TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 25,
                color: Colors.purple[900])),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  width: 131,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color: Colors.black12,
                  ),
                  child: Row(
                    children: [
                      Text(meters,style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 50,
                          color: Colors.purple[900])),
                      SizedBox(width: 20,),

                      Text("m",style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple[900])),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  width: 160,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color: Colors.black12,
                  ),
                  child: Row(
                    children: [
                      Text(Cm,style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 50,
                          color: Colors.purple[900])),
                      SizedBox(width: 5,),
                      Text("  cm",style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple[900])),
                    ],
                  ),
                ),
              ],
            )
          ],

        )
        ,
      ),
    );
  }

  Widget firstContainer({ required String age, required String weight}){
    return Padding(
      padding: const EdgeInsets.only(top: 5,right: 20,left: 20,bottom: 15),
      child: Row(
        //mainAxisAlignment:MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 240,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(15),
              color: Colors.indigo[50],
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text("Age (In Year)",style:TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 22,
                    color: Colors.purple[900])),
                SizedBox(height: 10),
                Text(age,style:TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 75,
                    color: Colors.purple[900])),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black12,
                          child: Icon(Icons.minimize_outlined, color:Colors.purple[900] ,size: 40,weight:500),
                        ),
                      ),
                      SizedBox(width:43),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black12,
                        child: Icon(Icons.add_outlined, color:Colors.purple[900] ,size: 40,weight:500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 180,
            height: 240,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(15),
              color: Colors.indigo[50],
            ),
            child:Column(
              children: [
                SizedBox(height: 30),
                Text("Weight (Kg)",style:TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 22,
                    color: Colors.purple[900])),
                SizedBox(height: 10),
                Text(weight,style:TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 75,
                    color: Colors.purple[900])),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black12,
                          child: Icon(Icons.minimize_outlined, color:Colors.purple[900] ,size: 40,weight:500),
                        ),
                      ),
                      SizedBox(width:43),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black12,
                        child: Icon(Icons.add_outlined, color:Colors.purple[900] ,size: 40,weight:500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),

    );
  }
  onPressed(){print("ji");}
}
