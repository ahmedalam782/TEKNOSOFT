import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/person_model.dart';
import '../Models/result_model.dart';
import '../Widgets/container_result_widget.dart';
import '../Widgets/details_result_widget.dart';
import '../Widgets/result_widget.dart';

class ResultScreen extends StatelessWidget {
  final PersonModel model;
  final ResultModel resultModel;

  const ResultScreen({
    super.key,
    required this.model,
    required this.resultModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Back',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResultWidget(
            result: resultModel.result,
            status: resultModel.status,
          ),
          const Spacer(),
          DetailResultWidget(
            iconData: model.isMale ? Icons.boy : Icons.woman,
            gender: model.isMale ? 'Male' : 'Female',
            height: model.height,
            age: model.age,
            weight: model.weight,
          ),
          const Spacer(),
          ContainerResultWidget(
            range: resultModel.range,
            status: resultModel.status,
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
              onPressed: () => Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TRY AGAIN',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.refresh_sharp,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
