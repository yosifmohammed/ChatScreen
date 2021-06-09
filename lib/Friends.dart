import 'package:flutter/material.dart';

// ignore: camel_case_types
class friendsModelData {
  int num;
  String name;
  String phone;

  friendsModelData(
      {@required this.num, @required this.name, @required this.phone});
}

// ignore: must_be_immutable
class Friends extends StatelessWidget {
  List<friendsModelData> dataModel = [
    friendsModelData(num: 1, name: 'Yousef Mohammed', phone: '+020115656789'),
    friendsModelData(num: 2, name: 'Ahmed Mohammed', phone: '+020121566789'),
    friendsModelData(
        num: 3, name: 'Mohammed Mohammed', phone: '+0254413456789'),
    friendsModelData(num: 4, name: 'Salem Mohammed', phone: '+020123256789'),
    friendsModelData(num: 5, name: 'Ismail Mohammed', phone: '+0201221356789'),
    friendsModelData(num: 6, name: 'Go Mohammed', phone: '+0201234562458'),
    friendsModelData(num: 7, name: 'Yousef Mohammed', phone: '+020115656789'),
    friendsModelData(num: 8, name: 'Ahmed Mohammed', phone: '+020121566789'),
    friendsModelData(
        num: 9, name: 'Mohammed Mohammed', phone: '+0254413456789'),
    friendsModelData(num: 10, name: 'Salem Mohammed', phone: '+020123256789'),
    friendsModelData(num: 11, name: 'Ismail Mohammed', phone: '+0201221356789'),
    friendsModelData(num: 12, name: 'Go Mohammed', phone: '+0201234562458'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(60, 158, 158, 158),
        elevation: 0,
        title: Text(
          'Friends',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        leading: Icon(
          Icons.supervised_user_circle,
          color: Colors.indigoAccent,
          size: 40,
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => friendsItem(dataModel[index]),
        separatorBuilder: (context, index) => separatedItem(),
        itemCount: dataModel.length,
      ),
    );
  }

  Widget friendsItem(friendsModelData users) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.indigoAccent,
              child: Text(
                '${users.num}',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${users.name}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${users.phone}',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ],
      );

  Widget separatedItem() => Padding(
        padding: EdgeInsetsDirectional.only(start: 50),
        child: Container(
          width: double.infinity,
          height: 1,
          color: Color.fromARGB(60, 158, 158, 158),
        ),
      );
}
