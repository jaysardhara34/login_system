import 'package:flutter/material.dart';
import 'package:login_system/loginRegister/provider/loginProvider.dart';
import 'package:login_system/loginRegister/view/registerPage.dart';
import 'package:login_system/utils/sharedPref.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<LoginProvider>(context,listen: false).getuser();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 00,
          title: Text(
            'Homepage',
            style: TextStyle(color: Color(0xff000000)),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hey ${Provider.of<LoginProvider>(context,listen: true).value} Welcome To our App',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 030,
                ),
                Text(
                  'This is our First attempt to loginsystem via shared prefrences',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(backgroundColor: Color(0xffffffff),backgroundImage: AssetImage('assets/111.jpg',),radius: 100,),
                SizedBox(height: 50,),
                Text(
                  'You Logged in Successfully',
                  style: TextStyle(fontSize: 20, color: Color(0xff7dd72f)),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Now please Click this button to Logout.',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    cleanSHP();
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff000000)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
