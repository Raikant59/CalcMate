import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();

  var output="";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E2C), // Unique color for the AppBar
        leading: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Image.asset('assets/images/budget.png'),
        ),
        title: Text(
          'Smart Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0, // Disable the default elevation
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Curved bottom edge
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0), // Adjust the size of the shadow
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Shadow color
                  offset: Offset(0, 4), // Position of the shadow
                  blurRadius: 8.0, // Blur radius for smooth shadow
                ),
              ],
            ),
          ),
        ),
      ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.28,
                ),
                Container(
                  color: Colors.red,
                  width: size.width,
                  height: size.height*0.60,
                  child: Column(
                    children: [
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Container(
                              color: Colors.blue,
                              width: size.width*0.25,
                              child: ,
                            ),
                            Container(color: Colors.white,width: size.width*0.25,),
                            Container(color: Colors.black,width: size.width*0.25,),
                            Container(color: Colors.orange,width: size.width*0.25,),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            Container(color: Colors.orange,width: size.width*0.25,),
                            Container(color: Colors.black,width: size.width*0.25,),
                            Container(color: Colors.blue,width: size.width*0.25,),
                            Container(color: Colors.white,width: size.width*0.25,),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(color: Colors.blue,width: size.width*0.25,),
                            Container(color: Colors.white,width: size.width*0.25,),
                            Container(color: Colors.black,width: size.width*0.25,),
                            Container(color: Colors.orange,width: size.width*0.25,),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            Container(color: Colors.orange,width: size.width*0.25,),
                            Container(color: Colors.black,width: size.width*0.25,),
                            Container(color: Colors.blue,width: size.width*0.25,),
                            Container(color: Colors.white,width: size.width*0.25,),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Container(color: Colors.blue,width: size.width*0.25,),
                            Container(color: Colors.white,width: size.width*0.25,),
                            Container(color: Colors.black,width: size.width*0.25,),
                            Container(color: Colors.orange,width: size.width*0.25,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
