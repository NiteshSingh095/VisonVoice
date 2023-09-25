import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinMeeting extends StatelessWidget {
  const JoinMeeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

          // This widget is used for generating icon and adjusting it height
          Align(
            alignment: Alignment.center,
            child: Image.network("https://user-images.githubusercontent.com/67534990/127776392-8ef4de2d-2fd8-4b5a-b98b-ea343b19c03e.png",
              fit: BoxFit.cover,
              height: 150,
            ),),

          // This widget is used to display text "Your meeting is ready"
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 20, right: 15, left: 15),
            child: Text("Your meeting is ready",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
          ),

          // This widget is used to display and
          Container(
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'bae86a0k',
                prefixIcon: InkWell(
                  onTap: (){},
                    child: const Icon(Icons.link, color: Colors.blue,),
                ), // Leading link icon
                suffixIcon: InkWell(
                  onTap: (){},
                    child: const Icon(Icons.copy, color: Colors.blue,),
                ), // Trailing copy icon
              ),
            ),
          ),

          // This widget will create divider between two buttons

          const Divider(thickness: 1, height: 50, indent: 40, endIndent: 40,),

          // This Button will be used to share invite link

          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20, top: 0),
            child: ElevatedButton.icon(
              onPressed: (){

              },
              icon: const Icon(Icons.arrow_drop_down),
              label: const Text("Share Invite"),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(320, 40),
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
              ),
            ),
          ),

          //  This Button will be used to start call

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton.icon(
              onPressed: (){

              },
              icon: const Icon(Icons.video_call),
              label: const Text("Start Call"),
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.indigo),
                  foregroundColor: Colors.indigo,
                  fixedSize: const Size(320, 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
