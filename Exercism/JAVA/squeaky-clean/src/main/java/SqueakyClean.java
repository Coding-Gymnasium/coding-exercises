class SqueakyClean {
  static String clean(String identifier) {
    if (identifier.equals("")) {
      return identifier;
    }
    char[] stringArr = identifier.toCharArray();
    for (int i = 0; i < stringArr.length; i++) {
      if (stringArr[i] == ' ')
        stringArr[i] = '_';
    }
    String result = String.valueOf(stringArr);
    return result;
  }
}
