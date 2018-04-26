class courseselect{
  static List<String> times = <String>["Morning","Afternoon","Evening"];

  String time = times.elementAt(0);

  Map<String,bool> CourseList = new Map<String,bool>();

  courseselect(){
    CourseList.putIfAbsent("1", () => false);
    CourseList.putIfAbsent("2", () => false);
    CourseList.putIfAbsent("3", () => false);
    CourseList.putIfAbsent("4", () => false);
    CourseList.putIfAbsent("5", () => false);
    CourseList.putIfAbsent("6", () => false);
    CourseList.putIfAbsent("7", () => false);
    CourseList.putIfAbsent("8", () => false);
    CourseList.putIfAbsent("9", () => false);
    CourseList.putIfAbsent("10", () => false);
    CourseList.putIfAbsent("11", () => false);
    CourseList.putIfAbsent("12", () => false);
    CourseList.putIfAbsent("13", () => false);
    CourseList.putIfAbsent("14", () => false);
    CourseList.putIfAbsent("15", () => false);
  }
}