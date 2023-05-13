public class LogLevels {
    
    public static String message(String logLine) {
      String[] splitLogLine = splitString(logLine);
      return splitLogLine[splitLogLine.length - 1].trim();
    }

    public static String logLevel(String logLine) {
        String logLevel = splitString(logLine)[0].toLowerCase();
        return logLevel.replace("[", "").replace("]", "");
    }

    public static String reformat(String logLine) {
        String[] splitLogLine = splitString(logLine);
        String level = splitLogLine[0].replace("[", "(").replace("]", ")").toLowerCase();
        String message = splitLogLine[splitLogLine.length - 1].trim();
        return message + " " + level;
    }

    public static String[] splitString(String string) {
       return string.split(":");
    }
}
