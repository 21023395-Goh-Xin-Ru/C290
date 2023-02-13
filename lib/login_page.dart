import 'package:flutter/material.dart';

void main() => runApp(login_page());

class login_page extends StatelessWidget {
  login_page({Key? key}) : super(key: key);

  // void loginUser(){
  //   print(userNameController.text);
  //   print(passwordController.text);
  //   print('login successful');
  //
  // }
  //
  // final userNameController = TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // initialise _isHidden to true
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    Text(
                      "Login Page",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Welcome back! Please login to your account.",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwBIMfPRyaC1BPy2tGmBXwwy5CKP4PFlgTFw&usqp=CAU',
                      height: 200,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    buildTextField("Email"),
                    SizedBox(
                      height: 20.0,
                    ),
                    buildTextField("Password"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end, // Right side
                        children: <Widget>[
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    buildButtonContainer(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(elevation: 2),
          onPressed: () {},
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
