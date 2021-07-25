import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// int x = 5;
// bool z = true;
// String y = "jgrieoger";

// x = 8;
//
// z = false;
// z = true;
//
// var y = "trt";


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  TextStyle textStyle= TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );
  TextStyle nameText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black
  );
  TextStyle labelText = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.purple
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body:CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0,
                floating: true,

                backgroundColor: Colors.white,
                title:Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment:Alignment.centerLeft ,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.withOpacity(0.1),
                        child: Icon(Icons.person,color: Colors.grey,),

                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text("Home",style: textStyle,)),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(Icons.image, color: Colors.black,size: 30,),

                            onPressed: (){

                            },
                        ),
                    )
                  ],
                ),
              ),
              SliverPadding(
                padding:EdgeInsets.only(top: 25) ,
              sliver:           SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("My Cart",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28),),
                ),
              )
                ,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 300,
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 230,

                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                color: Colors.white,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text("100200"),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 54),
                                        child: Icon(Icons.person,size: 45,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 230,

                              child: Card(

                                color: Colors.white,
                                child: Stack(
                                  children: [
                                    Container(
                                      child: Image.asset('assets/images/cat10.jpg',fit: BoxFit.fitHeight,),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('we334')
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 230,

                              child: Card(

                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ),
                            Container(
                              width: 230,

                              child: Card(

                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                            ),

                          ],
                      ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child:Padding(
                  padding: EdgeInsets.only(top:30,left: 15),
                  child: Text("heeee",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28)),

                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color:Colors.black)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                child:Icon(Icons.person),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Mary lar",style: nameText,),
                                  Text("Mar 7",style: labelText,),
                                ],
                              )
                      )],
                        ),
                      ),
                    );
                  },
                  childCount: 10,


              ),)


            ],
          ),//беск-монитор
        ),
      ),
    );
  }
}
