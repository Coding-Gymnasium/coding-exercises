https://mod4.turing.io/lessons/cs/recursion.html

let numbers = [1, 2, 3, 4];

console.log("hello world")

const getSum = nums => {
//base case
    if (!nums.length){
      return 0;
    }
// get closer to base case
    let firstNumber = nums.shift();
    return firstNumber + getSum(nums);
}
console.log(getSum(numbers)); //10

//Exercise 1
//In mathematics, the factorial of a non-negative integer is the product of all positive integers less than or equal to n. For example, the factorial of 5 is 120.
// 5 x 4 x 3 x 2 x 1 = 120
//Write a recursive function that calculates the factorial of a number.


// console.log(findFactorial(5));

// Exercise 2
// create a function which takes a string of characters and
// recursively calls itself to reverse the string

// e.g.

const reverse = string => {
    let reversed = [];
    for (i = 0; i < string.length; i++){
        reversed.push(string.shift());
    }
    console.log(reversed);
}
let reversedString = reverse('Ariel')
console.log(reversedString); // leirA

