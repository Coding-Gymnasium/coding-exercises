import java.util.stream.IntStream;

class BirdWatcher {
  private final int[] birdsPerDay;

  public BirdWatcher(int[] birdsPerDay) {
    this.birdsPerDay = birdsPerDay.clone();
  }

  public int[] getLastWeek() { return new int[] {0, 2, 5, 3, 7, 8, 4}; }

  public int getToday() { return birdsPerDay[birdsPerDay.length - 1]; }

  public void incrementTodaysCount() {
    birdsPerDay[birdsPerDay.length - 1] = getToday() + 1;
  }

  public boolean hasDayWithoutBirds() {
    return IntStream.of(birdsPerDay).anyMatch(x -> x == 0);
  }

  public int getCountForFirstDays(int numberOfDays) {
    int count = 0;
    for (int i = 0; i < numberOfDays; i++) {
      count += birdsPerDay[i];
    }
    return count;
  }

  public int getBusyDays() {
    throw new UnsupportedOperationException(
        "Please implement the BirdCount.getBusyDays() method");
  }
}
