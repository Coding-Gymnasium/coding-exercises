// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */

export function timeToMixJuice(name) {
  switch (name){
    case 'Pure Strawberry Joy':
      return 0.5;
      break;
    case 'Energizer':
    case 'Green Garden':
      return 1.5;
      break;
    case 'Tropical Island':
      return 3;
      break;
    case 'All or Nothing':
      return 5;
      break;
    default:
      return 2.5;
  }
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  const limesYield = {
    small: 6,
    medium: 8,
    large: 10
  };
  let limesCount = 0;
  let wedges = 0;
  
  // for (let i = 0; i < limes.length; i++) {
  //     while (wedges < wedgesNeeded) {
  //       limesCount++;
  //       wedges += limesYield[limes[i]];
  //       break;
  //     };
  // };

  // for (let [i, lime] of limes.entries()) {
  //   while (wedges < wedgesNeeded) {
  //     limesCount++;
  //     wedges += limesYield[limes[i]];
  //     break;
  //   };

  for (let lime of limes) {
    while (wedges < wedgesNeeded) {
      limesCount++;
      wedges += limesYield[lime];
      break;
    };
  };
  
  return limesCount;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  throw new Error('Please implement the remainingOrders function');
}
