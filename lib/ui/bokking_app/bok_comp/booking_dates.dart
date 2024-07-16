// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BookingDates extends StatefulWidget {
  const BookingDates({super.key});

  @override
  State<BookingDates> createState() => _BookingDatesState();
}

class _BookingDatesState extends State<BookingDates> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
        elevation: 5,
        color: Color(0xffffffff),
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column( children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Booking Dates",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 3),
                  width: size.width*0.5,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      )
                    )
                  ),
                  child: Row(
                    children: [
                      GestureDetector(child: Icon(Icons.calendar_month)),
                      SizedBox(width: 10),
                      Text("Wed 1 jun 2022", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ]
                  )
                ),
                Container(
                  width: size.width*0.28,
                  margin: EdgeInsets.only(left: 20, ),
                  padding: EdgeInsets.only(bottom: 4),
                   decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        
                      )
                    )
                  ),
                  child: Text("28 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Container(
                  width: size.width*0.5,
                  margin: EdgeInsets.only(left: 20, ),
                    child: Text("End Tue 28 jun 2022", style: TextStyle(
                      fontSize: 13, 
                      fontWeight: FontWeight.w400
                      ),
                    )),
                  Text("May 06 days", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                ]
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
               decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        
                      )
                    )
                  ),
              child: Row(
                children: [
                  Icon(Icons.tune_outlined),
                  SizedBox(width: 10),
                  Text("Filters", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
                ]
              )
            ),
            
            SizedBox(
              height: 10,
            ),
            Container(
               decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        
                      )
                    )
                  ),
              child: Row(
                children: [
                  Icon(Icons.person_2_rounded),
                  SizedBox(width: 10),
                  Text("Personallty Match", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
                ]
              )
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width*0.7,
              child: ElevatedButton(
                onPressed: () {}, 
                child: Text("Search", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color(0xff4c168e),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                )
              )
            )
          ]),
        ));
  }
}
