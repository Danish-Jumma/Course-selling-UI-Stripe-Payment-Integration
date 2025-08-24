import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:payment/utils/constant.dart';
import 'package:payment/view/course_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Stripe publishable key
  Stripe.publishableKey = StripeKeys.publishableKey;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stripe Courses',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CourseView(),
    );
  }
}
