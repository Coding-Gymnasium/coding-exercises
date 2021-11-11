function GooseFilter(birds) {
  var geese = ['African', 'Roman Tufted', 'Toulouse', 'Pilgrim', 'Steinbacher'];
  return (notGeeseArr = birds.filter((bird) => !geese.includes(bird)));
}

module.exports = GooseFilter;
