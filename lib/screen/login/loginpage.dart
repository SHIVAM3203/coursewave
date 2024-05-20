import 'package:coursewave/screen/login/comman/customAuthinput.dart';
import 'package:coursewave/screen/mainpage/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('171717'),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/Group.png',
                      ),
                      fit: BoxFit.fill),
                ),
                child: Center(
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Group 16.jpg'),
                        )),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      customAuthinput(
                        title: 'Email',
                        Semititle: 'shivam1234@gmail.com',
                        onclick: () {},
                        obscureText: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      customAuthinput(
                        title: 'Password',
                        Semititle: 'Enter your password',
                        onclick: () {},
                        obscureText: true,
                        icon: const Icon(Icons.visibility_off_outlined),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const MainScreen(),
                              ));
                        },
                        child: Container(
                          height: 64,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('don`t have any account ?'),
                          TextButton(
                              onPressed: () {}, child: const Text('Sign Up'))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
