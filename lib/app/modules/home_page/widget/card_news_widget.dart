import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';

class CardNewsWidget extends StatelessWidget {
  const CardNewsWidget(
      {Key? key,
      required this.id,
      required this.title,
      required this.description})
      : super(key: key);

  final String id, title, description;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAIL_NEWS),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          color: Color(0xFF985555),
        ),
        child: Container(
          height: 138,
          width: 300,
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(description,
                style: TextStyle( fontSize: 14),)
            ],
          ),
        ),
      ),
    );
  }
}
