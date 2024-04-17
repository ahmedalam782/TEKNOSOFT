import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/gender_container.dart';

class GenderWidget extends StatelessWidget {
  final Function()? onTapMale;
  final Function()? onTapFemale;
  final bool isSelectedMale;
  final bool isSelectedFemale;

  const GenderWidget({
    super.key,
    this.onTapMale,
    this.onTapFemale,
    required this.isSelectedMale,
    required this.isSelectedFemale,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Gender',
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
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: GenderContainer(
                  onTap: onTapMale,
                  iconData: Icons.boy,
                  text: 'Male',
                  isSelected: isSelectedMale,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: GenderContainer(
                  onTap: onTapFemale,
                  iconData: Icons.woman,
                  text: 'Female',
                  isSelected: isSelectedFemale,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
