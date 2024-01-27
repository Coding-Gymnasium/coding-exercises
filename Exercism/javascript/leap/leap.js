// A leap year (in the Gregorian calendar) occurs:
// In every year that is evenly divisible by 4.
// Unless the year is evenly divisible by 100, in which case it's only a leap year if the year is also evenly divisible by 400.

export const isLeap = (year) => {
  const leapYear = year % 4 === 0 && year % 100 !== 0;
  const leapYear400 = year % 100 === 0 && year % 400 === 0;
  return leapYear || leapYear400;
};
