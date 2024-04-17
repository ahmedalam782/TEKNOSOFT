import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    super.key,
    required this.model,
    required this.text,
  });

  final int model;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          '$model',
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
        Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
