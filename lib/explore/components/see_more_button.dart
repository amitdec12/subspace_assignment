import 'package:flutter/material.dart';


class SeeMoreButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTapping;
  const SeeMoreButton({
    Key? key,
    required this.icon,
    required this.onTapping,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade800,
      radius: 20,
      child: CircleAvatar(
        backgroundColor: Colors.indigo,
        radius: 18,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            icon,
            size: 18,
          ),
          color: Colors.white,
          onPressed: onTapping,
        ),
      ),
    );
  }
}