import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:coursewave/model/course.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Coursedetails extends StatefulWidget {
  final Course course;
  const Coursedetails({super.key, required this.course});

  @override
  State<Coursedetails> createState() => _CoursedetailsState();
}

class _CoursedetailsState extends State<Coursedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(widget.course.image),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              textAlign: TextAlign.center,
              widget.course.courseName,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                textAlign: TextAlign.center,
                widget.course.description,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(221, 73, 72, 72),
                    ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ClayContainer(
                parentColor: Color.fromARGB(44, 208, 208, 208),
                emboss: false,
                curveType: CurveType.none,
                spread: 5,
                depth: 40,
                borderRadius: 12,
                height: 111,
                width: 111,
                color: Colors.white,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.course.theory,
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Theory",
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ClayContainer(
                parentColor: Color.fromARGB(44, 208, 208, 208),
                emboss: false,
                curveType: CurveType.none,
                spread: 5,
                depth: 40,
                borderRadius: 12,
                height: 111,
                width: 111,
                color: Colors.white,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.course.practical,
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "practical",
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
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
                      "start learning course ",
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
          ],
        ),
      ),
    );
  }
}
