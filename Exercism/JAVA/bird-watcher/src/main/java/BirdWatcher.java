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
    int adjustedDayCount =
        numberOfDays > birdsPerDay.length ? birdsPerDay.length : numberOfDays;
    for (int i = 0; i < adjustedDayCount; i++) {
      count += birdsPerDay[i];
    }
    return count;
  }

  public int getBusyDays() {
    int count = 0;
    for (int day : birdsPerDay) {
      if (day >= 5)
        count++;
    }
    return count;
  }
}
