const filterList = list => {
  return list.filter(element => Number.isSafeInteger(element));
};

module.exports = filterList;
