public class LogLevels {
    
    public static String message(String logLine) {
      String[] message = logLine.split(":");
      return message[message.length - 1].trim();
    }

    public static String logLevel(String logLine) {
        throw new UnsupportedOperationException("Please implement the (static) LogLine.logLevel() method");
    }

    public static String reformat(String logLine) {
        throw new UnsupportedOperationException("Please implement the (static) LogLine.reformat() method");
    }
}
