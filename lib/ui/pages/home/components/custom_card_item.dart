
import 'package:flutter/material.dart';

import '../../../../shared/theme/theme.dart';

class CustomCardItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomCardItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.only(
        left: 16.0,
      ),
    
      child: Row(
        children: [
          Icon(
            icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
