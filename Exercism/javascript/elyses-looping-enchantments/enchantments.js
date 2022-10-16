// @ts-check

/**
 * Determine how many cards of a certain type there are in the deck
 *
 * @param {number[]} stack
 * @param {number} card
 *
 * @returns {number} number of cards of a single type there are in the deck
 */
export function cardTypeCheck(stack, card) {
  let matching_count = 0;

  stack.forEach((element) => {
    if (element === card) matching_count++;
  });

  return matching_count;
}

/**
 * Determine how many cards are odd or even
 *
 * @param {number[]} stack
 * @param {boolean} type the type of value to check for - odd or even
 * @returns {number} number of cards that are either odd or even (depending on `type`)
 */
export function determineOddEvenCards(stack, type) {
  let odds = 0;
  let evens = 0;

  for (const card of stack) {
    card % 2 === 0 ? evens++ : odds++;
  }

  if (type) {
    return evens;
  } else {
    return odds;
  }
}
