public class CarsAssemble {

  public double productionRatePerHour(double speed) {
    final double MEAN_SPEED = 221.0 * speed;
    if (speed <= 4) {
      return MEAN_SPEED;
    } else if (speed >= 5 && speed <= 8) {
      return MEAN_SPEED * 0.9;
    } else if (speed == 9) {
      return MEAN_SPEED * 0.8;
    } else if (speed == 10) {
      return MEAN_SPEED * 0.77;
    } else {
      return 0.0;
    }
  }

  public int workingItemsPerMinute(int speed) {
    throw new UnsupportedOperationException("Please implement the CarsAssemble.workingItemsPerMinute() method");
  }
}
