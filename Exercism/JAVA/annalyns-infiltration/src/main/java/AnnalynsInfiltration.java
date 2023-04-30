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
    /**
     * the prisoner can be signalled using bird sounds if the prisoner is awake
     * and the archer is sleeping, as archers are trained in bird signaling, so
     * they could intercept the message.
     */

    return !archerIsAwake && prisonerIsAwake;
  }

  public static boolean canFreePrisoner(boolean knightIsAwake,
                                        boolean archerIsAwake,
                                        boolean prisonerIsAwake,
                                        boolean petDogIsPresent) {
    /**
     * Annalyn can try sneaking into the camp to free the prisoner. This is a
     * risky thing to do and can only succeed in one of two ways:
     * 1. If Annalyn has her pet dog with her she can rescue the prisoner if the
     *archer is asleep. The knight is scared of the dog and the archer will not
     *have time to get ready before Annalyn and the prisoner can escape.
     * 2. If Annalyn does not have her dog then she and the prisoner must be
     *very sneaky! Annalyn can free the prisoner if the prisoner is awake and
     *the knight and archer are both sleeping, but if the prisoner is sleeping
     *they can't be rescued: the prisoner would be startled by Annalyn's sudden
     *appearance and wake up the knight and archer.
     **/

    return (petDogIsPresent && !archerIsAwake) ||
        (!petDogIsPresent && prisonerIsAwake && !knightIsAwake &&
         !archerIsAwake);
  }
}
