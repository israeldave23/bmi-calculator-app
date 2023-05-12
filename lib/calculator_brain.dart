import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.weight,
    required this.height,
  });

  final int height;
  final int weight;

  double _bmi = 0.0;

  // Define lists of tips for each category
  List<String> overweightTips = [
    'Incorporate a variety of fruits, vegetables, whole grains, lean proteins, and healthy fats into your diet.',
    'Limit your intake of processed and sugary foods, and instead choose whole foods whenever possible.',
    'Engage in regular physical activity, such as brisk walking, jogging, cycling, or swimming, for at least 150 minutes per week.',
    'Aim to get at least 7 hours of sleep per night to support healthy metabolism and reduce stress.',
    'Practice stress-management techniques, such as deep breathing, meditation, or yoga, to reduce emotional eating and promote relaxation.',
    'Consult with a healthcare professional for guidance and support if necessary.'
  ];

  List<String> underweightTips = [
    'Make sure you are eating enough calories to meet your body\'s needs. This may involve increasing your portion sizes or eating more frequent meals throughout the day.',
    'Focus on nutrient-dense foods that are high in calories and essential nutrients, such as nuts, seeds, avocados, and healthy oils.',
    'Incorporate resistance training exercises into your routine to build muscle mass and increase overall strength.',
    'Consult with a healthcare professional if you have any underlying health conditions that may be contributing to your low weight, or if you are having difficulty gaining weight.'
  ];

  List<String> normalTips = [
    'Continue to maintain a balanced and nutritious diet that includes a variety of whole foods.',
    'Engage in regular physical activity, such as cardio and strength training exercises, to maintain a healthy weight and promote overall health.',
    'Practice stress-management techniques to reduce emotional eating and promote relaxation.',
    'Aim to get enough sleep each night to support healthy metabolism and reduce stress.',
    'Consider consulting with a healthcare professional for guidance and support if you have specific health goals or concerns.'
  ];

  void calculateFirst() {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() {
    // calculateFirst();
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      int overweightIndex = Random().nextInt(overweightTips.length);
      return overweightTips[overweightIndex].toString();
    } else if (_bmi >= 18.5) {
      int normalIndex = Random().nextInt(normalTips.length);
      return normalTips[normalIndex].toString();
    } else {
      int underweightIndex = Random().nextInt(underweightTips.length);
      return underweightTips[underweightIndex].toString();
    }
  }

  // void checkBMI() {
  //   if (_bmi >= 25) {
  //     result = ("Overweight");
  //   } else if (_bmi >= 18.5) {
  //     result = ("Normal");
  //   } else {
  //     result = ("Underweight");
  //   }
  // }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
