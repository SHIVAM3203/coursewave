import 'package:clay_containers/widgets/clay_container.dart';
import 'package:coursewave/dummydata/dummyCourse.dart';
import 'package:coursewave/model/course.dart';
import 'package:coursewave/screen/details/coursedetails.dart';
import 'package:coursewave/screen/mainpage/comman/containter.dart';
import 'package:coursewave/screen/mainpage/comman/courseview.dart';
import 'package:coursewave/screen/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final AutoScrollController _scrollController = AutoScrollController();
  final AutoScrollController _lessonController = AutoScrollController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FFFFFF'),
      appBar: AppBar(backgroundColor: HexColor('1E1E1E'), actions: [
        SizedBox(
          width: 20,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(17),
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(builder: (ctx) {
              return Profile();
            }));
          },
          child: CircleAvatar(
            radius: 17,
            backgroundColor: HexColor('D9D9D9'),
            child: Center(
              child: Text(
                'E',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ]),
      body: Container(
          child: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: HexColor('1E1E1E')),
              ),
            ),
            Positioned(
              top: 10,
              left: 20,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: HexColor('FFFFFF'),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      controller: _scrollController,
                      itemCount: EducationCourses.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final List<Course> course = EducationCourses;

                        return AutoScrollTag(
                          key: ValueKey(index),
                          controller: _scrollController,
                          index: index,
                          child: CourseView(
                              course: course[index],
                              onselectecourse: (Course selectedcourse) {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => Coursedetails(
                                        course: course[index],
                                      ),
                                    ));
                              }),
                        );
                      },
                    )),
              ),
            ),
            Positioned(
              top: 250,
              child: Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      setState(() {
                        _currentIndex = (_currentIndex - 1) %
                            EducationCourses
                                .length; // decrement index and wrap around
                      });
                      _scrollToIndex(_currentIndex);
                    },
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Icon(Icons.arrow_back_sharp), Text('Prev')],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      setState(() {
                        _currentIndex = (_currentIndex + 1) %
                            EducationCourses
                                .length; // Increment index and wrap around
                      });
                      _scrollToIndex(_currentIndex);
                    },
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_forward_outlined),
                            Text('Next')
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 370,
              child: Container(
                child: Column(
                  children: [
                    ClayContainer(
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
                              "Start learning course ",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('demo lessons',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomContainter(
                      text: 'Introduction fo Atoms ',
                      onselectcourse: () {},
                      secondtext: 'Learn about the fundamental building',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomContainter(
                      text: 'Chemical Bonding',
                      onselectcourse: () {},
                      secondtext: 'types of chemical bonds.',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomContainter(
                      text: 'States of Matter',
                      onselectcourse: () {},
                      secondtext: 'Explore the different states of matter ',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  Future<void> _scrollToIndex(int index) async {
    await _scrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
      duration: Duration(seconds: 1),
    );
    _scrollController.highlight(index);
  }

  Future<void> _scrolleToIndex(int index) async {
    await _lessonController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
      duration: Duration(seconds: 1),
    );
    _lessonController.highlight(index);
  }
}
