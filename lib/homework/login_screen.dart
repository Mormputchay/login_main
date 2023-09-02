import 'package:flutter/material.dart';
import 'package:login_main/homework/home_screen.dart';
import 'package:login_main/homework/round_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  FocusNode fieldemail = FocusNode();
  FocusNode fieldpassword = FocusNode();
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          key: _formfield,
          child: Column(
            children: [
              Container(
                width: media.width,
                height: media.height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/logo.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: media.width * 0.25),
              Column(
                children: [
                  RoundField(
                    focusNode: fieldemail,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(fieldpassword);
                    },
                    placeholder: "Email",
                    controller: txtEmail,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                      bool emailValid =
                          RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);
                      if (!emailValid) {
                        return "Enter Valid Email";
                      }
                    },
                    icon: Icons.email,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundField(
                    focusNode: fieldpassword,
                    placeholder: "Password",
                    controller: txtPassword,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.key_sharp,
                    obscureText: isShow,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      } else if (txtPassword.text.length < 6) {
                        return "Password length Should not be more than 6 characters";
                      }
                    },
                    right: IconButton(
                      onPressed: () {
                        setState(() {
                          isShow = !isShow;
                        });
                      },
                      icon: Icon(
                        isShow ? Icons.visibility_off : Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: MaterialButton(
                      minWidth: double.maxFinite,
                      height: 55,
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {
                        if (_formfield.currentState!.validate()) {
                          print("Success");
                          txtEmail.clear();
                          txtPassword.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "FORGET PASSWORD?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Do n't have an account?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
