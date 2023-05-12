import 'package:bmi_calculator_dave/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/calculate_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.resultText,
    required this.bmiText,
    required this.interpretationText,
  });

  final String resultText;
  final String bmiText;
  final String interpretationText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "The result:",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  //  BMI text
                  Text(
                    bmiText,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretationText,
                    style: kBMIInterpretationTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CalculateButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: "CALCULATE AGAIN",
          )
        ],
      ),
    );
  }
}
