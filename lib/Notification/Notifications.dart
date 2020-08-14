import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 28,
              ),
              onPressed: () {}),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(104, 159, 57, 0.9),
          title: Text('Notification',
              style: TextStyle(
                fontSize: 18,
              )),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              height: 30,
              color: Colors.white,
              child: TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      text: 'Alerts',
                    ),
                    Tab(
                      text: 'Offers',
                    ),
                  ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text('No Alerts')),
          Center(child: Text('No Alerts')),
        ]),
      ),
    );
  }
}
