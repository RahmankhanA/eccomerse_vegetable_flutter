import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      const ClipRRect(
                        child:CircleAvatar(),
                        

                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Good Morning",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("Praveen Kumar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
                        ],
                      )
                    ],
                  ),
                  Card(
                    elevation: 8,
                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                    child: SizedBox(
                      width: size.width*0.43,
                      height: size.height*0.07,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(
                            Icons.location_on,
                            color: Colors.greenAccent,
                            size: 35,
                          ),
                          Text("My Home",
                          style: TextStyle(fontSize: 20),),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
