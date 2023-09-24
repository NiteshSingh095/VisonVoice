import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinWithCode extends StatelessWidget {

  JoinWithCode({Key? key}) : super(key: key);

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // This button will navigate from this screen to home screen
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black87,),
            onPressed: () {
              Get.back();
            },
          ),
          // Other AppBar properties
        ),
        body: Column(
          children: [

            const SizedBox(height: 20,),

            // This widget is used for generating icon and adjusting it height
            Align(
              alignment: Alignment.center,
              child: Image.network("https://user-images.githubusercontent.com/67534990/127776450-6c7a9470-d4e2-4780-ab10-143f5f86a26e.png",
              fit: BoxFit.cover,
              height: 100,
            ),),

            // This widget is used to display text "Enter meeting code below"
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 20, right: 15, left: 15),
              child: Text("Enter meeting code below",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            ),

            // This widget is used to take input from user the code
            Container(
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200], // Grey background color
              ),
              child: TextField(
                controller: _controller,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: InputBorder.none, // Remove default border
                  hintText: 'Example: abc-def-ghi',
                ),
              ),
            ),

            // This button is used to join the meeting
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: (){

                },
                child: Text("Join"),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 40),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
