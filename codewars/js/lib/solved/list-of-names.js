const list = names => {
  const last = !names[0] ? '' : names.pop().name;
  const remainingNames = names
    .map(element => element.name)
    .join(', ');
  return names.length > 0 ? `${remainingNames} & ${last}` : `${last}`;
};

module.exports = list;
