import 'package:flutter/material.dart';

class MusicItemTrait extends StatelessWidget {
  const MusicItemTrait({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(),
        Text(label),
      ],
    );
  }
}
