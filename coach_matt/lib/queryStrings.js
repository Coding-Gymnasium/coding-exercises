const parse = query => {
  // let's get started
  let parsed = {};
  if (query === '?') return parsed;

  let noQuestionMark = query.slice(1);
  let decoded = decodeURIComponent(noQuestionMark)

  let arr = decoded.split('&').map(el => el.split('='));
  // console.log(arr);


  for (let i = 0; i < arr.length; i++) {
    // check there is a value, if not default to true
    arr[i].length != 2 && (arr[i][1] = 'true');

    let key = arr[i][0];
    let value = arr[i][1];

    // check if key already exists
    if (key in parsed && Array.isArray(parsed[key])) {
      parsed[key] = [...parsed[key], value];
    } else if (key in parsed) {
      parsed[key] = [parsed[key], value];
    } else {
      parsed[key] = value;
    }
  }

  return parsed;
};

module.exports = parse;
