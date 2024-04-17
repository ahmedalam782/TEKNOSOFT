import 'package:bmi_calculator/components/height_items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/number_picker.dart';

class HeightWidget extends StatelessWidget {
  final int height;
  final Function(int) onChanged;

  const HeightWidget({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          Text(
            'Height (cm)',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
                children: [
                  NumberPickerComponent(
                    height: height,
                    onChanged: onChanged,
                    minValue: 100,
                    maxValue: 230,
                  ),
                  const HeightItem(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
