import 'package:ChatScreen/Friends.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/12.jpeg'),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 35),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(top: 2.5, start: 37),
                    child: CircleAvatar(
                      child: Text('9'),
                      radius: 10,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
                backgroundColor: Color.fromARGB(50, 158, 158, 158),
                radius: 22,
                child: IconButton(
                    icon: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    onPressed: null)),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
                backgroundColor: Color.fromARGB(50, 158, 158, 158),
                radius: 22,
                child: IconButton(
                    icon: Icon(
                      Icons.edit_outlined,
                      color: Colors.black,
                    ),
                    onPressed: null)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                onPressed: () => Friends(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(50, 158, 158, 158),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 28, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => itemStory(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 8,
                  ),
                  itemCount: 10, //then equal list.length()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => itemChat(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 8,
                ),
                itemCount: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemStory() => Container(
        //margin: EdgeInsets.all(7),
        width: 70,
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/12.jpeg'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 50, start: 50),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            Text(
              'YOUSEF MOHAMMED',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
  Widget itemChat() => Row(
        children: [
          Container(
            //margin: EdgeInsets.all(7),
            width: 70,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/12.jpeg'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 50, start: 50),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'YOUSEF MOHAMED',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hi my name is yousef mohammed and iam from egypt',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    CircleAvatar(
                      radius: 3.5,
                      backgroundColor: Colors.teal,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '08:00 pm',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      );
}
