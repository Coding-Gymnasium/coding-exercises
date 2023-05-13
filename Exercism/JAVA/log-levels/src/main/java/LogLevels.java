public class LogLevels {
    
    public static String message(String logLine) {
      String[] splitLogLine = logLine.split(":");
      return splitLogLine[splitLogLine.length - 1].trim();
    }

    public static String logLevel(String logLine) {
        String logLevel = logLine.split(":")[0].toLowerCase();
        return logLevel.replace("[", "").replace("]", "");
    }

    public static String reformat(String logLine) {
        throw new UnsupportedOperationException("Please implement the (static) LogLine.reformat() method");
    }
}
