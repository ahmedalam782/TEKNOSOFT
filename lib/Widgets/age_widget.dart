import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeWidget extends StatelessWidget {
  final int age;
  final Function()? onPressedAdd;
  final Function()? onPressedMin;

  const AgeWidget({
    super.key,
    required this.age,
    this.onPressedAdd,
    this.onPressedMin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Age',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onPressedMin,
                icon: const Icon(Icons.remove),
              ),
              Text(
                '$age',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: onPressedAdd,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        )
      ],
    );
  }
}
