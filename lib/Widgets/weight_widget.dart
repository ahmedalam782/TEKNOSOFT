import 'package:bmi_calculator/components/number_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeightWidget extends StatelessWidget {
  final int weight;
  final Function(int) onChanged;

  const WeightWidget({
    super.key,
    required this.weight,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Weight(kg)',
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
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const Positioned(
                bottom: 40,
                child: RotatedBox(
                  quarterTurns: 45,
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Color(0xff2466CF),
                    size: 25,
                  ),
                ),
              ),
              NumberPickerComponent(
                height: weight,
                onChanged: onChanged,
                itemCount: 3,
                minValue: 40,
                maxValue: 200,
              ),
            ],
          ),
        )
      ],
    );
  }
}
