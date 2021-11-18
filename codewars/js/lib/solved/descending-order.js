const descendingOrder = n => {
  const arr = n.toString().split('').reverse();
  const reversed = arr.sort(function (a, b) {
    return b - a;
  });
  return Number(reversed.join(''));
};

module.exports = descendingOrder;
