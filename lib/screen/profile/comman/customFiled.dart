import 'package:flutter/material.dart';

class CustomFiled extends StatelessWidget {
  const CustomFiled(
      {super.key, required this.icons, this.iconslast, required this.text});
  final IconData icons;
  final IconData? iconslast;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 236, 236, 236), width: 0.4),
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              offset: Offset(3, 4),
              blurRadius: 5,
            ),
          ],
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icons,
            size: 24,
          ),
          SizedBox(
            width: 010,
          ),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(
            iconslast,
            size: 24,
          ),
        ],
      ),
    );
  }
}
