const peopleWithAgeDrink = require('../lib/drink_about');

  test('It receives age, and return what they drink', () => {
    expect(peopleWithAgeDrink(22)).toBe('drink whisky');
    expect(peopleWithAgeDrink(21)).toBe('drink whisky');
    expect(peopleWithAgeDrink(20)).toBe('drink beer');
    expect(peopleWithAgeDrink(18)).toBe('drink beer');
    expect(peopleWithAgeDrink(17)).toBe('drink coke');
    expect(peopleWithAgeDrink(15)).toBe('drink coke');
    expect(peopleWithAgeDrink(14)).toBe('drink coke');
    expect(peopleWithAgeDrink(13)).toBe('drink toddy');
    expect(peopleWithAgeDrink(0)).toBe('drink toddy');
  });

