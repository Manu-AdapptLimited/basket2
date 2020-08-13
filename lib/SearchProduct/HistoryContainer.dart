import 'package:flutter/material.dart';

class HistoryContainer extends StatefulWidget {
  @override
  _HistoryContainerState createState() => _HistoryContainerState();
}

class _HistoryContainerState extends State<HistoryContainer> {
  List todos = List();

  @override
  void initState() {
    super.initState();
    todos.add('red chilly whole');
    todos.add('hing');
    todos.add('jowar flour');
    todos.add('eggs');
    todos.add('aamchoor');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 40,
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'History',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      'Clear',
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 2),
                    height: 50,
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          todos[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.grey[400],
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
