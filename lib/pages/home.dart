
import "package:flutter/material.dart";

import 'package:only_believe/pages/cantiques_inspires.dart';
import 'package:only_believe/pages/crois_seulement.dart';
import 'package:only_believe/pages/nyimbozao.dart';
import 'package:only_believe/pages/only_believe.dart';
import 'bible_schedule/bible_schedule_models.dart';
import 'bible_schedule/schedule_date_list.dart';


class Home extends StatefulWidget {
  const Home({Key key,}) : super(key: key);

  @override  
  _CustomHome createState() => _CustomHome();

}

class _CustomHome extends State<Home> {
    
    @override 
    Widget build(BuildContext context) {
      // Deviding screen into two part
      
      final double _height = MediaQuery.of(context).size.height;
      final double _width = MediaQuery.of(context).size.width;
      return Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
                Container(
                  color: Colors.white,
                  height: _height / 2.8,
                  width: _width,
                  // contents in top widget
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 2.0, left: 2.0, top: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TopContent(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

               Container(
                 
                 height:  _height / 1.558,
                 child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child:  Container( 
                    height: _height / 1.558,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.blueGrey,
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(80.0),
                      ) 
                    ),
                    // contents in bottom content
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column( 
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  // Divider(color: Colors.blueGrey,),
                                  // Divider(color: Colors.blueGrey,),
                                  Divider(color: Colors.teal,),
                                  Divider(color: Colors.teal,),

                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 0.0, ),
                                          child: FlatButton(
                                            child:Text(
                                              "Cantiques Inspirés",
                                              style: TextStyle(
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                ),
                                              textAlign: TextAlign.right,
                                            ),
                                             onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => CantiqueInspires()),
                                              );
                                            }
                                          ),
                                        ),
                                        SizedBox(width: 10.0,),

                                        Padding(
                                          padding: EdgeInsets.only(right: 20.0),
                                          child: IconButton(
                                            icon: Icon(Icons.arrow_forward_ios),
                                            color: Colors.white,
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => CantiqueInspires()),
                                              );
                                            }
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Divider(color: Colors.white,),

                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 0.0, ),
                                          child: FlatButton(
                                            child:  Text(
                                             "Crois seulement",
                                             style: TextStyle(
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              ),
                                            textAlign: TextAlign.right,
                                           ),

                                           onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => CroisSeulement()),
                                              );
                                            },

                                          )
                                         
                                          ,
                                        ),
                                        SizedBox(width: 10.0,),

                                        Padding(
                                          padding: EdgeInsets.only(right:20.0),
                                          child: IconButton(
                                            icon: Icon(Icons.arrow_forward_ios),
                                            color: Colors.white,
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => CroisSeulement()),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  
                                  Divider(color: Colors.white,),

                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 0.0, ),
                                          child: FlatButton(
                                            child:Text(
                                              "Nyimbo za okovu",
                                              style: TextStyle(
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                ),
                                              textAlign: TextAlign.right,
                                            ),
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => NyimboZaoKovu()),
                                              );
                                            }

                                          ),
                                        ),
                                        SizedBox(width: 10.0,),

                                        Padding(
                                          padding: EdgeInsets.only(right:20.0),
                                          child: IconButton(
                                            icon: Icon(Icons.arrow_forward_ios),
                                            color: Colors.white,
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => NyimboZaoKovu()),
                                              );
                                            }
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Divider(color: Colors.white,),

                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 0.0, ),
                                          child: FlatButton( 
                                            child:Text(
                                              "Only Believe",
                                              style: TextStyle(
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                ),
                                              textAlign: TextAlign.right,
                                            ),
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => OnlyBelieve()),
                                              );
                                            }
                                            
                                          ),
                                        ),
                                        SizedBox(width: 10.0,),

                                        Padding(
                                          padding: EdgeInsets.only(right:20.0),
                                          child: IconButton(
                                            icon: Icon(Icons.arrow_forward_ios),
                                            color: Colors.white,
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: 
                                                  (context) => OnlyBelieve()),
                                              );
                                            }
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                // Divider(color: Colors.blueGrey),
                                // Divider(color: Colors.blueGrey),
                                // Divider(color: Colors.blueGrey),
                                //  Padding(
                                //     padding: EdgeInsets.only(top: 20,left: 10.0),
                                //     child: IconButton(
                                //       icon: Icon(Icons.settings_applications,),
                                //       color: Colors.white,
                                //       iconSize: 40.0, 
                                //       onPressed: (){},
                                //     ),
                                //   )
                                ],
                              )

                            ],
                          )
                        )
                      ],
                    ),
                  ),
                 ),
               )
            ],
          )
        ),

        // bottomNavigationBar: BottomAppBar(
        //   color: Colors.teal.shade100,
        //   shape: CircularNotchedRectangle(),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: <Widget>[
        //       Text( 
        //         'nanKim', 
        //         style: TextStyle(
        //           fontSize: 20.0,
        //           fontWeight: FontWeight.normal,
        //           color: Colors.black54,
        //           fontFamily: 'Montserrat',
        //           ),
        //         textAlign: TextAlign.right,
        //       )
        //     ],
        //   ),
        // ),

        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.info_outline),
          backgroundColor: Colors.blue.shade200,
          onPressed: (){},
        ),
      );
    }
}


class TopContent extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    YearChecker _dbBibleSchedule = new YearChecker();
    final double _width = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Row(
            children: <Widget>[
                Container(
                  width: _width/4.3,
                  height: 150.0,
                  padding: EdgeInsets.all(8.0),
                  // elevation: 8.0,
                  // color: Colors.white,
                  // margin: EdgeInsets.all(8.0),
                  // shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
                  child: Card(
                    elevation: 0.0,
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
                    color: Colors.white,
                    // shape: OutlineInputBorder(
                    //   borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(30.0),
                    //     bottomRight: Radius.circular(300.0),
                    //     ),
                      
                    //   borderSide: BorderSide(color: Colors.blue),
                      
                    //   ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                      Text(
                        '${_dbBibleSchedule.checkNonLeap()[1]}',
                        textAlign: TextAlign.center,
                        textWidthBasis: TextWidthBasis.parent,
                        style: TextStyle( 
                          fontSize: 40.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        '${_dbBibleSchedule.checkNonLeap()[0]}',
                        textAlign: TextAlign.center,
                        style: TextStyle( 
                          fontSize: 20.0,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ),

              Container(
                color: Colors.white,
                padding: EdgeInsets.all(0.0),
                width: 210.0,
                height: 150.0,
                child: Card(
                  elevation: 0.0,
                  color: Colors.white,
                  borderOnForeground: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                          '${_dbBibleSchedule.checkNonLeap()[2]}',
                          textAlign: TextAlign.center,
                          style: TextStyle( 
                          fontSize: 30.0,
                          color: Colors.blueGrey,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                  )
                )
              )
            ]
          ),

          Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(60.0),
              ) 
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                      'Lecture du jour',
                      textAlign: TextAlign.center,
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.title.copyWith(color: Colors.grey),
                    ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScheduleDateList()
                        )
                      );
                    },
                  )
                ),

                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: (){},
                ),
                
              ],
            )
          ),
          
        ],
      )
    );
  }

}