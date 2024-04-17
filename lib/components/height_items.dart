import 'package:flutter/material.dart';

class HeightItem extends StatelessWidget {
  const HeightItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          7,
          (index) => Container(
            color: index == 3 ? Colors.blue : Colors.grey,
            width: index == 3 ? 3 : 2,
            height: index == 3 ? 70 : 45,
          ),
        ),
      ),
    );
  }
}
