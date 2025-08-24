import 'package:payment/model/course_model.dart';

class CourseController {
  final List<CourseModel> courses = [
    CourseModel(
      id: "1",
      title: "Flutter Development",
      description: "Learn Flutter from zero to hero and build mobile apps.",
      imageUrl:
          "https://www.webmediatricks.com/uploaded_files/product/1703844467.jpg",
      price: 99.9,
    ),
    CourseModel(
      id: "2",
      title: "React Native Masterclass",
      description: "Master React Native and create cross-platform apps.",
      imageUrl:
          "https://i0.wp.com/www.quytech.com/blog/wp-content/uploads/2023/11/Top-20-React-Native-App-Development-Companies.webp?fit=1437%2C871&ssl=1",
      price: 149.9,
    ),
    CourseModel(
      id: "3",
      title: "UI/UX Design",
      description: "Learn UI/UX design principles and create stunning apps.",
      imageUrl:
          "https://media.licdn.com/dms/image/v2/D5612AQHjMDvCmU8X0A/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1711109035426?e=2147483647&v=beta&t=PGqVAK3juhLwsN_JhDg9oNhrqwOKvGlZmvn8-vqWiW8",
      price: 79.9,
    ),
  ];
}
