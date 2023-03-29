import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String title;
  final bool active;
  const ItemCategory({Key? key, required this.title, this.active = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: active? Theme.of(context).primaryColor: Colors.transparent,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Center(
        child: Text(title, style: TextStyle(
          color: active? Colors.white: Colors.grey.shade400,
          fontWeight: active? null: FontWeight.bold,
          letterSpacing: 1
        ),)
      ),
    );
  }
}
