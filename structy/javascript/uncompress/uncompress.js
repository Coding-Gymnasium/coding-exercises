const uncompress = (s) => {
  let expandedStr = []
  let multiplierArr = [+s[0]];
  let multiplier = 1;
  
  let isNaN = (maybeNaN) => maybeNaN!=maybeNaN;
  
  for (i = 1; i < s.length; i++){
    element = s[i];
    
    if ( typeof +element === 'number' && !isNaN(+element) ) {
      multiplierArr.push(+element);
    } else {
        multiplier = +multiplierArr.join('');
      
        for (j = 0; j < multiplier; j++) expandedStr.push(element); 
      
        multiplierArr = []
    }
  } 
  return expandedStr.join('');
};

module.exports = uncompress;
