import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  const CategoryItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
         
            backgroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        child: Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
