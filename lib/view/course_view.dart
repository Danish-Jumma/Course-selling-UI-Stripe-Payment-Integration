import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment/controller/course_controller.dart';
import 'package:payment/controller/payment_controller.dart';
import '../widgets/course_card.dart';

class CourseView extends StatelessWidget {
  CourseView({super.key});

  final PaymentController controller = Get.put(PaymentController());
  final CourseController courseController = Get.put(CourseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses")),
      body: ListView.builder(
        itemCount: courseController.courses.length,

        itemBuilder: (context, index) {
          var course = courseController.courses;
          return CourseCard(course: course[index]);
        },
      ),
    );
  }
}
