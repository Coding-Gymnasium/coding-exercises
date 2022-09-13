const parse = query => {
  // let's get started

  let noQuestionMark = query.slice(1)

  let arr = noQuestionMark.split('&').map(el => el.split('='))

  let parsed = {};

  for (let i = 0; i < arr.length; i++) {
      !arr[i][1] && (arr[i][1] = 'true')
      parsed[arr[i][0]] = arr[i][1]
  }
  console.log(parsed)

  return parsed
}

console.log(
  parse('?foo=one&bar=two&baz=three'),
  { foo: 'one', bar: 'two', baz: 'three' }
);

module.exports = parse;
