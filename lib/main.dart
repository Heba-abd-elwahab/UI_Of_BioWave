import 'package:flutter/material.dart';
import 'package:ui_of_biowave/utilites.dart' as UI;

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: authScreen(),
    );
  }
}
class authScreen extends StatefulWidget {
  @override
  _authScreenState createState() => _authScreenState();
}
class _authScreenState extends State<authScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UI.InsertImage('assets/images/auth.png',(MediaQuery.of(context).size.width)*0.02,(MediaQuery.of(context).size.height)*0.05,(MediaQuery.of(context).size.width)*0.02,0,context),
          Padding(
            padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*0.002,right:85,bottom:10),
            child: const Text("Start a new experience !",
              style: TextStyle(color: UI.HeaderFontSize,fontSize: 24,fontFamily: 'Roboto',fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding:EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.048,0,85,8),
            child: const Text("Hurry up & sign up because there is an easier life you’re missing.",
              style: TextStyle(color: UI.BodyFontSize,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 65, 5, 15),
            child: SizedBox(
              width:MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.058,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Log in'),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(color:Color.fromRGBO(255, 255, 255, 1),fontSize:16,fontWeight: FontWeight.w600),
                  primary:UI.MainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // <-- Radius
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.058,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Register',style: TextStyle(color: UI.MainColor,fontSize:16,fontWeight: FontWeight.w600),),
                style: ElevatedButton.styleFrom(
                  primary:Color.fromRGBO(255, 255, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: UI.MainColor)
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
