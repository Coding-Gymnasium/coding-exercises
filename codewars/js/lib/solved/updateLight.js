function updateLight(current) {
  nextLight = { green: 'yellow', yellow: 'red', red: 'green' };
  return nextLight[current];
}

module.exports = updateLight;
// https://www.codewars.com/kata/58649884a1659ed6cb000072/train/javascript
