import java.util.HashMap;

public class Blackjack {

  public int parseCard(String card) {
    HashMap<String, Integer> cards = new HashMap<String, Integer>();

    cards.put("ace", 11);
    cards.put("eight", 8);
    cards.put("two", 2);
    cards.put("nine", 9);
    cards.put("three", 3);
    cards.put("ten", 10);
    cards.put("four", 4);
    cards.put("jack", 10);
    cards.put("five", 5);
    cards.put("queen", 10);
    cards.put("six", 6);
    cards.put("king", 10);
    cards.put("seven", 7);
    cards.put("other", 0);

    return cards.get(card);
  }

  public boolean isBlackjack(String card1, String card2) {
    throw new UnsupportedOperationException(
        "Please implement the Blackjack.isBlackjack method");
  }

  public String largeHand(boolean isBlackjack, int dealerScore) {
    throw new UnsupportedOperationException(
        "Please implement the Blackjack.largeHand method");
  }

  public String smallHand(int handScore, int dealerScore) {
    throw new UnsupportedOperationException(
        "Please implement the Blackjack.smallHand method");
  }

  // FirstTurn returns the semi-optimal decision for the first turn, given the
  // cards of the player and the dealer. This function is already implemented
  // and does not need to be edited. It pulls the other functions together in a
  // complete decision tree for the first turn.
  public String firstTurn(String card1, String card2, String dealerCard) {
    int handScore = parseCard(card1) + parseCard(card2);
    int dealerScore = parseCard(dealerCard);

    if (20 < handScore) {
      return largeHand(isBlackjack(card1, card2), dealerScore);
    } else {
      return smallHand(handScore, dealerScore);
    }
  }
}
