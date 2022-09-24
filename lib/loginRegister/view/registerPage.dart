import 'package:flutter/material.dart';
import 'package:login_system/utils/sharedPref.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

TextEditingController txtusername = TextEditingController();
TextEditingController txtpassword = TextEditingController();

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 00,
        title: Text(
          'Registerpage',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: Color(0xffffffff),backgroundImage: AssetImage('assets/15.jpg'),radius: 100,),
                SizedBox(height: 20,),
                TextField(
                  controller: txtusername,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Create Username',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtpassword,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Create Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    createUserSHP(txtusername.text, txtpassword.text);
                    Navigator.pop(context);
                  },
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff000000)),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                  child: Text('Already a account Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
