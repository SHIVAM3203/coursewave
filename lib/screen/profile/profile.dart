import 'package:coursewave/screen/profile/comman/customFiled.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: HexColor('1E1E1E'),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/man.jpg')),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.1),
                              offset: Offset(-2, -2),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              offset: Offset(2, 2),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              offset: Offset(0, 0),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                          ],
                          color: HexColor('FFFFFF'),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(20, 20))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Eric Manasse',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ))),
                  SizedBox(
                    height: 5,
                  ),
                  Text('eric.manssee@gmail.com',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: const Color.fromARGB(255, 224, 224, 224),
                        fontSize: 14,
                      ))),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor('1E1E1E')),
                      color: HexColor('1E1E1E'),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(0))),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.height * 0.072,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(70))),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      CustomFiled(
                          iconslast: Icons.arrow_forward_ios,
                          icons: Icons.person_add_alt_outlined,
                          text: 'Edit My Profile'),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFiled(
                          icons: Icons.book_online_outlined,
                          text: ' My Course'),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFiled(
                          iconslast: Icons.arrow_forward_ios,
                          icons: Icons.border_outer,
                          text: 'My Learning'),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFiled(
                          iconslast: Icons.arrow_forward_ios,
                          icons: Icons.settings,
                          text: 'Settings'),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.63,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  width: 0.4),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x33000000),
                                  offset: Offset(3, 4),
                                  blurRadius: 5,
                                ),
                              ],
                              color: HexColor('1E1E1E'),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Subscribe Plan',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
