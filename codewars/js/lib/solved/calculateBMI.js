function bmi(weight, height) {
  const calcBMI = weight/(height ** 2);
    return (calcBMI <= 18.5 && 'Underweight' || calcBMI <= 25 && 'Normal' || calcBMI <= 30 && 'Overweight' || 'Obese');
  
  // Code below passes:
  // example 2:
  // return calcBMI <= 18.5 ? 'Underweight' : calcBMI <= 25 ? 'Normal' : calcBMI <= 30 ? 'Overweight' : 'Obese';
  // example 1:
  // if(calcBMI <= 18.5) {
  //   return "Underweight";
  // } else if(calcBMI <= 25.0) {
  //   return 'Normal';
  // } else if(calcBMI <= 30.0) {
  //   return 'Overweight';
  // } else {
  //   return 'Obese';
  // }
}

module.exports = bmi;

// Write function bmi that calculates body mass index (bmi = weight / height2).

// if bmi <= 18.5 return "Underweight"
// 
// if bmi <= 25.0 return "Normal"
// 
// if bmi <= 30.0 return "Overweight"
// 
// if bmi > 30 return "Obese"
