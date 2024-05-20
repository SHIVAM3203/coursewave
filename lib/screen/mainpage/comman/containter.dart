import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomContainter extends StatelessWidget {
  CustomContainter(
      {super.key,
      this.secondtext,
      required this.text,
      required this.onselectcourse});
  final String text;
  late String? secondtext;
  final void Function() onselectcourse;

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      spread: 2,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      borderRadius: 10,
      color: HexColor('DEDEDE'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    secondtext.toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ]),
            Spacer(),
            GestureDetector(
              onTap: () {
                onselectcourse;
              },
              child: Icon(
                Icons.play_circle_fill,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
