import 'package:clay_containers/widgets/clay_container.dart';
import 'package:coursewave/model/course.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseView extends StatefulWidget {
  const CourseView(
      {super.key, required this.course, required this.onselectecourse});
  final Course course;
  final void Function(Course course) onselectecourse;
  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onselectecourse(widget.course);
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      widget.course.courseName,
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timelapse_outlined,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(child: Text(widget.course.duration)),
                  ],
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.46,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                widget.course.image,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class lesson extends StatefulWidget {
  final Course course;
  final void Function(Course course) onselectelesson;
  const lesson(
      {super.key, required this.course, required this.onselectelesson});

  @override
  State<lesson> createState() => _lessonState();
}

class _lessonState extends State<lesson> {
  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      spread: 2,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      borderRadius: 10,
      color: HexColor('DEDEDE'),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.course.courseName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                widget.onselectelesson(widget.course);
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
