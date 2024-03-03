import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Text('Hello'),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg',
            height: 20,
            width: 20,),
          decoration: BoxDecoration(
            color: Colors.white, // Change the background color to white
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 40,
            child: SvgPicture.asset('assets/icons/dots.svg',
              height: 5,
              width: 5,),
            decoration: BoxDecoration(
              color: Colors.white, // Change the background color to white
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        )
        ]
    );
  }

}