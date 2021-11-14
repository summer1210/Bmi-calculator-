import 'package:flutter/material.dart';
import 'constants.dart';
import 'ReuseableCard.dart';
import 'BottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bminterpretation,
      required this.bmiresult,
      required this.resultText});
  final String bmiresult;
  final String bminterpretation;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleText,
                ),
                padding: EdgeInsets.all(25),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: kbackcolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kresultText,
                    ),
                    Text(bmiresult,
                        style: kBMITEXT, textAlign: TextAlign.center),
                    Text(bminterpretation,
                        style: kBodyTEXT, textAlign: TextAlign.center)
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
