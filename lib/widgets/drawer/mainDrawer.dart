import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
        child: Column(
          children: <Widget>[
            Container(
              // height: 80.0,
              margin: EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/img/avatar_img.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Linn',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),
                      ),
                      Text('012345678')
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}
