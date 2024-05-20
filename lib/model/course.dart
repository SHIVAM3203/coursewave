class Course {
  String courseName;
  String instructor;
  String duration;
  String startDate;
  String endDate;
  int fee;
  int numSessions;
  String level;
  String description;
  String platform;
  String lesson1Name;
  String lesson1Introduction;
  String lesson2Name;
  String lesson2Introduction;
  String lesson3Name;
  String lesson3Introduction;
  String theory;
  String practical;
  String timeRequired;
  String image;

  Course({
    required this.courseName,
    required this.theory,
    required this.practical,
    required this.timeRequired,
    required this.instructor,
    required this.duration,
    required this.startDate,
    required this.endDate,
    required this.fee,
    required this.numSessions,
    required this.level,
    required this.description,
    required this.platform,
    required this.lesson1Name,
    required this.lesson1Introduction,
    required this.lesson2Name,
    required this.lesson2Introduction,
    required this.lesson3Name,
    required this.lesson3Introduction,
    required this.image,
  });
}
