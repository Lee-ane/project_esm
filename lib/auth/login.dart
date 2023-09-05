import 'package:esm_project/components/buttons.dart';
import 'package:esm_project/components/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  String urlHead = '';

  Future<void> login() async {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            color: Colors.white,
            width: screenWidth,
            height: screenHeight,
            padding: EdgeInsets.all(screenWidth * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/login.jpg',
                  height: screenHeight * 0.3,
                  width: screenWidth,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: screenHeight * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: secondaryColor, width: 2),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: primaryColor, width: 2),
                          ),
                          labelText: 'Tên đăng nhập',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintStyle: TextStyle(
                              fontSize: screenWidth * 0.03, color: Colors.grey),
                        ),
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: isObscure,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: secondaryColor, width: 2),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: primaryColor, width: 2),
                          ),
                          suffixIcon: GestureDetector(
                              child: Icon(
                                isObscure
                                    ? Icons.visibility_off
                                    : Icons.remove_red_eye,
                                size: screenWidth * 0.05,
                              ),
                              onTap: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              }),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Mật khẩu',
                          hintStyle: TextStyle(
                              fontSize: screenWidth * 0.03, color: Colors.grey),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            child: Text(
                              'Quên mật khẩu?',
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            onPressed: () {}),
                      ),
                      LoginBtn(
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.05,
                          ),
                        ),
                        onPressed: () {
                          login();
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bạn chưa có tài khoản',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.038,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.025),
                          Text(
                            'Đăng ký ngay',
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.038,
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: Text(
                          'Hoặc đăng nhập với',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.038,
                          ),
                        ),
                      ),
                      LoginBtn(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                                size: screenWidth * 0.08,
                              ),
                              Text(
                                'Đăng nhập với Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.04),
                              ),
                              SizedBox(width: screenWidth * 0.08),
                            ]),
                        onPressed: () {},
                      ),
                      LoginBtn(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.white,
                                  size: screenWidth * 0.07,
                                ),
                                Text(
                                  'Đăng nhập với Google',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: screenWidth * 0.04),
                                ),
                                SizedBox(width: screenWidth * 0.08),
                              ]),
                          onPressed: () {}),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.blue,
                              size: screenWidth * 0.06,
                            ),
                            Text(
                              'Danh sách bệnh viện, phòng khám, nhà thuốc',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth * 0.038),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
