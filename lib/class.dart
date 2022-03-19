import 'package:bank/secondpage.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';
import 'secondpage.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

@override
class _BMIState extends State<BMI> {
  String email = 'email';
  String password = 'password';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('image/abc.jpg'),
          )),
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'SB',
                    style: kSecondText,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 3)),
              ),
              Text(
                'Standard Bank',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ]),
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(children: [
                    customTextField(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'You@example.com',
                      labelText: 'Email Address',
                    ),
                    SizedBox(height: 20),
                    customTextField(
                      hintText: 'Password',
                      labelText: 'Password',
                    ),

                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Iconfile(
                    //           icon: Icons.pregnant_woman_outlined,
                    //           name: 'Email/AcctNo/UserID')
                    //     ],
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //           child: Iconfile(
                    //               icon: FontAwesomeIcons.key, name: 'Password')),
                    //     ],
                    //   ),
                  ]),
                ),
                //Padding(
                //  padding: EdgeInsets.all(1.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.purple[200])),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Input();
                    }));
                  },
                ),

                Text(
                  'Don\'t have an account? Sign up',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                    child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Standard Bank',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '          Making your dreams come true',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

TextField customTextField({
  TextInputType keyboardType = TextInputType.text,
  String hintText = '',
  String labelText = '',
  // validator,
}) {
  return TextField(
    keyboardType: keyboardType,
    decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
    ),
  );
}
