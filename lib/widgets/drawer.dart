import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _imageUrl="https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.deepPurple
                ),
                accountName: Text("Abdul HAfeez",style: TextStyle(
                    color: Colors.white
                ),),
                accountEmail: Text("AbdulHAfeez@gmail.com",style: TextStyle(
                    color: Colors.white
                ),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(_imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Home",style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Home",style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
