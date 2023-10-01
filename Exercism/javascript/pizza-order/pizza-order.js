/// <reference path="./global.d.ts" />
//
// @ts-check

const itemsPrice = {
  Margherita: 7,
  Caprese: 9,
  Formaggio: 10,
  ExtraSauce: 1,
  ExtraToppings: 2,
};

/**
 * Determine the prize of the pizza given the pizza and optional extras
 *
 * @param {Pizza} pizza name of the pizza to be made
 * @param {Extra[]} extras list of extras
 *
 * @returns {number} the price of the pizza
 */
export function pizzaPrice(pizza, ...extras) {
  return itemsPrice[pizza] + getAddOnsTotal([...extras]);
}

function getAddOnsTotal(extras) {
  const addOns = extras.map((e) => itemsPrice[e]);
  return addOns.reduce((accumulator, current) => {
    return accumulator + current;
  }, 0);
}

/**
 * Calculate the prize of the total order, given individual orders
 *
 * @param {PizzaOrder[]} pizzaOrders a list of pizza orders
 * @returns {number} the price of the total order
 */
export function orderPrice(pizzaOrders) {
  throw new Error("Please implement the orderPrice function");
}
