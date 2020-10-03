import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/models/call_model.dart';
import 'package:flutterwhatsapp/models/chat_model.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: callDummyData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  callDummyData[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {})
                // new Text(
                //   dummyData[i].time,
                //   style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                // ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                callDummyData[i].date + ", " + callDummyData[i].time,
                style: new TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
