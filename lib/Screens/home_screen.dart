import 'package:bmi_calculator/Models/person_model.dart';
import 'package:bmi_calculator/Screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/result_model.dart';
import '../Widgets/age_widget.dart';
import '../Widgets/gender_widget.dart';
import '../Widgets/height_widget.dart';
import '../Widgets/weight_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PersonModel personModel =
      PersonModel(height: 164, weight: 52, age: 22, isMale: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'BMI Calculator',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          GenderWidget(
            isSelectedMale: personModel.isMale,
            isSelectedFemale: personModel.isMale ? false : true,
            onTapMale: () {
              setState(() {
                personModel.isMale = true;
              });
            },
            onTapFemale: () {
              setState(() {
                personModel.isMale = false;
              });
            },
          ),
          const Spacer(),
          HeightWidget(
            height: personModel.height,
            onChanged: (height) {
              setState(() {
                personModel.height = height;
              });
            },
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: AgeWidget(
                    age: personModel.age,
                    onPressedAdd: () {
                      setState(() {
                        personModel.age++;
                      });
                    },
                    onPressedMin: () {
                      if (personModel.age != 2) {
                        setState(() {
                          personModel.age--;
                        });
                      }
                    },
                  ),
                ),
                Expanded(
                  child: WeightWidget(
                    weight: personModel.weight,
                    onChanged: (weight) {
                      setState(() {
                        personModel.weight = weight;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: MaterialButton(
              height: 60,
              minWidth: double.infinity,
              textColor: Colors.white,
              color: const Color(0xff2466CF),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onPressed: () {
                double result = (personModel.weight) /
                    ((personModel.height / 100) * (personModel.height / 100));
                ResultModel resultModel = ResultModel(result: result);
                resultModel.assignStatus();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ResultScreen(
                            model: personModel, resultModel: resultModel)));
              },
              child: Text(
                'CALCULATE BMI',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
