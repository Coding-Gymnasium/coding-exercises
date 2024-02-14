public class CarsAssemble {

  public double productionRatePerHour(double speed) {
    final double MEAN_SPEED = find_speed(speed);
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
    return (int) (Math.floor(productionRatePerHour(speed) / 60));
  }

  private double find_speed(double speed) {
    return 221 * speed;
  }
}
