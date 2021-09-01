import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile",
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff03a9f4),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Text("Profile",style: TextStyle(fontSize: 35,letterSpacing: 1.5,color: Colors.white,fontWeight: FontWeight.w600
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                height:  MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/sample.jpeg'),
                    )
                ),
              ),
            ],
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10,270,10,0),
              child: ListView(
                children: [
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            labelText: 'FullName',
                            labelStyle: TextStyle(
                              fontSize: 21,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText:'Ayush Kumar',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black12,
                            )
                        )
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 21,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText:'xyz@gmail.com',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black12,
                            )
                        )
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            labelText: 'Height(cm)',
                            labelStyle: TextStyle(
                              fontSize: 21,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText:'175',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black12,
                            )
                        )
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 7),
                            labelText: 'Weight(Kg)',
                            labelStyle: TextStyle(
                              fontSize: 21,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText:'70',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black12,
                            )
                        )
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: deprecated_member_use
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 270,left: 170),
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: IconButton(icon: Icon(Icons.edit,color: Colors.white,),onPressed:(){},),
              )
          )
        ],
      ),
    );
  }
}
class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint()..color=Color(0xff03a9f4);
    Path path=Path()..relativeLineTo(0, 100)
      ..quadraticBezierTo(size.width/2, 225, size.width, 100)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;
}



