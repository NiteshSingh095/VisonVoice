import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {

  @override
  State<VideoCall> createState() => _VideoCallState();

}

class _VideoCallState extends State<VideoCall> {

  @override
  void initState() {
    initAgora();
    super.initState();
  }

   final AgoraClient client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: "a1fc268f099247e98c40562c275e8603",
        channelName: "test",
          tempToken:
              "007eJxTYFhoZa/qZHqi8vSXY8detPLydAbXKM5g3nb0dqX3TPvOLF4FhkTDtGQjM4s0A0tLIxPzVEuLZBMDUzOjZCNz01QLMwPjo+cFUxsCGRnk+twZGKEQxGdhKEktLmFgAADp6x2J",
          ),
      enabledPermission: [Permission.camera, Permission.microphone]);

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(client: client),
            AgoraVideoButtons(client: client)
          ],
        ),
      ),
    );
  }
}
