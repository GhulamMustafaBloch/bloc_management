// ignore_for_file: prefer_const_constructors

import 'package:block_management/ui/bokking_app/bok_screens/next_screen.dart';
import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  // final List<String> labels = [
  //   'Confinement Centers',
  //   'Confinement Nanny',
  //   'Confinement Food',
  //   'Baby Care Training',
  //   'Lactation Specialist',
  //   'Massage',
  //   'Herbs',
  //   'Others'
  // ];

  // final List<IconData> icons = [
  //   Icons.home,
  //   Icons.baby_changing_station,
  //   Icons.food_bank,
  //   Icons.child_care,
  //   Icons.medical_services,
  //   Icons.spa,
  //   Icons.grass,
  //   Icons.more_horiz
  // ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  children: [
                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffd8ddf1),
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Icon(
                      Icons.home,
                      size: 38,
                      color: Colors.black,
                      )
                    )
                  ),
                  SizedBox(height: 5,),
                   Text(
                  "Confinement Centers",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  children: [
                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffd8ddf1),
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Icon(
                      Icons.baby_changing_station,
                      size: 38,
                      color: Colors.black,
                      )
                    )
                  ),
                  SizedBox(height: 5,),
                   Text(
                  "Confinement Nanny",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  children: [
                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffd8ddf1),
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Icon(
                      Icons.food_bank,
                      size: 38,
                      color: Colors.black,
                      )
                    )
                  ),
                  SizedBox(height: 5,),
                   Text(
                  "Confinement Food",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  children: [
                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffd8ddf1),
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Icon(
                      Icons.child_care,
                      size: 38,
                      color: Colors.black,
                      )
                    )
                  ),
                  SizedBox(height: 5,),
                   Text(
                  "Baby Care Training",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              
            ]
          ),
        ), 
        SizedBox(height: 6,),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  children: [
                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffd8ddf1),
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Icon(
                      Icons.medical_services,
                      size: 38,
                      color: Colors.black,
                      )
                    )
                  ),
                  SizedBox(height: 5,),
                   Text(
                  "Lactation Specialist",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  children: [
                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffd8ddf1),
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Icon(
                      Icons.spa,
                      size: 38,
                      color: Colors.black,
                      )
                    )
                  ),
                  SizedBox(height: 5,),
                   Text(
                  "Massage",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffd8ddf1),
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Icon(
                      Icons.grass,
                      size: 38,
                      color: Colors.black,
                      )
                    )
                  ),
                  SizedBox(height: 5,),
                   Text(
                  "Herbs",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                width: size.width*0.23,
                //  decoration: BoxDecoration(
                //     color: Colors.amber,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
                      },
                      child: Container(
                      width: 50,
                      height: 50,
                      // decoration: BoxDecoration(
                      // color: Color(0xffd8ddf1),
                      // borderRadius: BorderRadius.circular(8.0),
                      // ),
                      child: Center(child: Icon(
                        Icons.more_horiz,
                        size: 38,
                        )
                      )
                                        ),
                    ),
                  SizedBox(height: 5,),
                   Text(
                  "Others",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.0),
                ),
                  ]
                )
              ),
              
            ]
          ),
        )
      
      ]
    );
   }
}

//  return Expanded(
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 4,
//           childAspectRatio: 3/4,
//         ),
//         itemCount: labels.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 4,),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 index == 7 ?  GestureDetector(
//                    onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
//                   },
                //   child: Container(
                //     width: 60,
                //     height: 70,
                //     decoration: BoxDecoration(
                //     color: Colors.transparent,
                //     borderRadius: BorderRadius.circular(8.0),
                //     ),
                //     child: Center(child: Icon(
                //       icons[index],
                //   size: 38.0,
                //   color: Colors.blue,
                //     ))
                //   ),
                // )
//                 :
//                  Container(
//                   width: 60,
//                   height: 70,
//                   decoration: BoxDecoration(
//                   color: Color(0xffd4daf0),
//                   borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: Center(child: Icon(
//                     icons[index],
//                                    size: 38.0,
//                                    color: Colors.blue,
//                   ))
//                                    ),
                
//                SizedBox(height: 8.0),
//                 Text(
//                   labels[index],
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 12.0),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
  