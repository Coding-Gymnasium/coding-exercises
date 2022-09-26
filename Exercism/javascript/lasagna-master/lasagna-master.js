/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(time) {
  switch (true) {
    case time > 0:
      return "Not done, please wait.";
      break;
    case time === 0:
      return "Lasagna is done.";
      break;

    default:
      return (time ??= "You forgot to set the timer.");
      break;
  }
}

export function preparationTime(layers, time = 2) {
  return layers.length * time;
}

export function quantities(quantArr) {
  const quantities = {noodles: 0, sauce: 0}
  if (!quantArr.length) return quantities;
  for (const item of quantArr) {
    switch (true) {
      case item === 'noodles':
        quantities['noodles'] += 50 
        break;
      case item === 'sauce':
        quantities['sauce'] += 0.2 
        break;
    }
  }
  return quantities;
}
