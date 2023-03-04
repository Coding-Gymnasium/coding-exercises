// @ts-check

/**
 * Double every card in the deck.
 *
 * @param {number[]} deck
 *
 * @returns {number[]} deck with every card doubled
 */
export function seeingDouble(deck) {
  return deck.map((element) => element * 2);
}

/**
 *  Creates triplicates of every 3 found in the deck.
 *
 * @param {number[]} deck
 *
 * @returns {number[]} deck with triplicate 3s
 */
export function threeOfEachThree(deck) {
  if (deck.length === 0 || !deck.includes(3)) return deck;

  const threesArr = [3, 3, 3];
  const modifiedArr = new Array();

  deck.forEach((element) => {
    if (element === 3) {
      modifiedArr.push(...threesArr);
    } else {
      modifiedArr.push(element);
    }
  });

  return modifiedArr;
}

/**
 * Extracts the middle two cards from a deck.
 * Assumes a deck is always 10 cards.
 *
 * @param {number[]} deck of 10 cards
 *
 * @returns {number[]} deck with only two middle cards
 */
export function middleTwo(deck) {
  return deck.reduce((accumulator, currentValue) => {
    if (deck.indexOf(currentValue) === 4 || deck.indexOf(currentValue) === 5) {
      accumulator.push(currentValue);
    }
    return accumulator;
  }, []);
}

/**
 * Moves the outside two cards to the middle.
 *
 * @param {number[]} deck with even number of cards
 *
 * @returns {number[]} transformed deck
 */

export function sandwichTrick(deck) {
  if (deck.length === 2) return deck.reverse();

  const newArr = [...deck];

  const midCardsArr = [];
  midCardsArr.push(newArr.pop());
  midCardsArr.push(newArr.shift());

  const insertionIndex = newArr.length / 2;
  newArr.splice(insertionIndex, 0, ...midCardsArr);
  return newArr;
}

/**
 * Removes every card from the deck except 2s.
 *
 * @param {number[]} deck
 *
 * @returns {number[]} deck with only 2s
 */
export function twoIsSpecial(deck) {
 return deck.filter(element => element === 2); 
}

/**
 * Returns a perfectly order deck from lowest to highest.
 *
 * @param {number[]} deck shuffled deck
 *
 * @returns {number[]} ordered deck
 */
export function perfectlyOrdered(deck) {
  throw new Error("Implement the perfectlyOrdered function");
}

/**
 * Reorders the deck so that the top card ends up at the bottom.
 *
 * @param {number[]} deck
 *
 * @returns {number[]} reordered deck
 */
export function reorder(deck) {
  throw new Error("Implement the reorder function");
}
