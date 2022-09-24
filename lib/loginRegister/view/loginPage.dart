import 'package:flutter/material.dart';
import 'package:login_system/utils/sharedPref.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 00,
        title: Text(
          'Loginpage',
          style: TextStyle(color: Color(0xff000000)),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.more_vert_rounded,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: Color(0xffffffff),backgroundImage: AssetImage('assets/12.png',),radius: 100,),
                SizedBox(height: 20,),
                TextField(
                  controller: txtusername,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Enter Username',
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
                    hintText: 'Enter Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    String username = txtusername.text;
                    String password = txtpassword.text;
                    String? SHPusername = await getusername();
                    String? SHPpassword = await getuserpwd();
                    if (username == SHPusername && password == SHPpassword) {
                      islogin(true);
                      Navigator.pushReplacementNamed(context, "home");
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color(0xfffa2626),
                            title: Text(
                              'Error! \n\nUsername or Password Not Found. Please Use Valid Username & Password',
                              style: TextStyle(
                                color: Color(0xff000000),
                              ),
                            ),
                            actions: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Text(
                                  'OK',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text("Don't Have Account ?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  child: Text('Create a one'),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
