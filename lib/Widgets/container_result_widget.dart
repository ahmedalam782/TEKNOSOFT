import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerResultWidget extends StatelessWidget {
  final String range;
  final String status;

  const ContainerResultWidget({
    super.key,
    required this.range,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              // style: const TextStyle(height: 1),
              children: [
                TextSpan(
                  text: 'A BMI of  ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextSpan(
                  text: range,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2466CF),
                    ),
                  ),
                ),
                TextSpan(
                  text: ' indicates that your weight is in the ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextSpan(
                  text: status,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2466CF),
                    ),
                  ),
                ),
                TextSpan(
                  text: ' for person in your height.',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            " Maintaining a healthy weight reduce the risk of diseases associated with overweight and obesity. ",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
