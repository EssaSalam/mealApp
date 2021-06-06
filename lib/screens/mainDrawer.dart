import 'package:flutter/material.dart';

import 'FilterScreen.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);
Widget buildListTile(String title,IconData icon,Function tapHandler){
  return ListTile(
    leading: Icon(icon,size: 26,),
    title: Text(title,style: TextStyle(fontSize: 24,fontFamily: 'RobotoCondensed',fontWeight:FontWeight.bold),),
    onTap: tapHandler,
  );
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            alignment: Alignment.centerLeft ,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
            child: Text('Cooking Up!',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).primaryColor,
            ),),
          ),
          SizedBox(height: 20,),
          buildListTile('Meal', Icons.restaurant, (){Navigator.of(context).pushReplacementNamed('/');}),
          buildListTile('Filters', Icons.settings, (){Navigator.of(context).pushReplacementNamed(FilterScreen.routName);}),
        ],
      ),
    );
  }
}
