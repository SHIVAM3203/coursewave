import 'package:flutter/material.dart';

class customAuthinput extends StatelessWidget {
  final String title;
  final String Semititle;
  final bool obscureText;
  final Icon? icon;
  final void Function() onclick;
  const customAuthinput(
      {super.key,
      required this.title,
      required this.Semititle,
      this.icon,
      required this.onclick,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    bool ontap = false;
    return Form(
      child: InkWell(
        onTap: () {
          ontap = true;
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x33000000),
                  offset: Offset(3, 4),
                  blurRadius: 5,
                ),
              ],
              border: Border.all(color: Colors.grey, width: 0.2),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10)),
          child: Stack(children: [
            Positioned(
              left: 0,
              top: -5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20)),
                    image: DecorationImage(
                        opacity: 01,
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/Ellipse 19.jpg',
                        ))),
              ),
            ),
            Positioned(
              right: 0,
              bottom: -3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15)),
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/Polygon 1.jpg',
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                  child: TextFormField(
                obscureText: obscureText,
                onTap: onclick,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  filled: false,
                  fillColor: Colors.white,
                  focusColor: const Color.fromARGB(255, 255, 255, 255),
                  labelText: title,
                  labelStyle: const TextStyle(color: Colors.black),
                  hintText: Semititle,
                ),
              )),
            ),
          ]),
        ),
      ),
    );
  }
}
