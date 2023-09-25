import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision_voice/Screens/JoinWithCode.dart';

import 'JoinMeeting.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Vision~Voice"),
          centerTitle: true,
        ),
        body: Column(
            children: <Widget>[

              // This Button will be used to create the new meeting

              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20, top: 30),
                child: ElevatedButton.icon(
                  onPressed: (){
                    Get.to(const JoinMeeting());
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("New Meeting"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(320, 40),
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                ),
              ),

            // This widget will create divider between two buttons

              const Divider(thickness: 1, height: 40, indent: 40, endIndent: 40,),

            //  This Button will be used to join the already created meeting

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton.icon(
                  onPressed: (){
                    Get.to(JoinWithCode());
                  },
                  icon: const Icon(Icons.margin),
                  label: const Text("Join with a code"),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.indigo),
                      foregroundColor: Colors.indigo,
                      fixedSize: const Size(320, 40),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                  ),
                ),
              ),

            // The sized box will create sufficient space between those two parts : outlined button and image
              const SizedBox(height: 60,),

            //  Now this contianer will be used to add image and the image will be network image

              Padding(
                padding: const EdgeInsets.all(15.0),
                  child: Image.network("https://user-images.githubusercontent.com/67534990/127524449-fa11a8eb-473a-4443-962a-07a3e41c71c0.png"),

              )
            ],
          ),
      ),
    );
  }
}
