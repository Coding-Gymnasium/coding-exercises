class AnnalynsInfiltration {
  public static boolean canFastAttack(boolean knightIsAwake) {
    // a fast attack can be made if the knight is sleeping, as it takes time for
    // him to get his armor on, so he will be vulnerable.
    return !knightIsAwake;
  }

  public static boolean canSpy(boolean knightIsAwake, boolean archerIsAwake,
                               boolean prisonerIsAwake) {
        // the group can be spied upon if at least one of them is awake.
        // Otherwise, spying is a waste of time
        return knightIsAwake || archerIsAwake || prisonerIsAwake;
  }

  public static boolean canSignalPrisoner(boolean archerIsAwake,
                                          boolean prisonerIsAwake) {
        throw new UnsupportedOperationException(
            "Please implement the (static) AnnalynsInfiltration.canSignalPrisoner() method");
  }

  public static boolean canFreePrisoner(boolean knightIsAwake,
                                        boolean archerIsAwake,
                                        boolean prisonerIsAwake,
                                        boolean petDogIsPresent) {
        throw new UnsupportedOperationException(
            "Please implement the (static) AnnalynsInfiltration.canFreePrisoner() method");
  }
}
