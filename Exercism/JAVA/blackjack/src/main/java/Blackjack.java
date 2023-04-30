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
        //  Blackjack (two cards that sum up to a value of 21)
        return parseCard(card1) + parseCard(card2) == 21;
    }

    /**
     * Category: Large Hand
     * If you have a pair of aces you must always split them.
     * <p>
     * If you have a Blackjack (two cards that sum up to a value of 21), and
     * the dealer does not have an ace, a figure or a ten then you
     * automatically win.
     * <p>
     * If the dealer does have any of those cards then
     * you'll have to stand and wait for the reveal of the other card.
     */

    public String largeHand(boolean isBlackjack, int dealerScore) {
        if (isBlackjack && !(dealerScore >= 10)) {
            return "W";
        } else if (!isBlackjack) {
            return "P";
        } else {
            return "S";
        }
    }

    /**
     * Category: Small Hand
     * If your cards sum up to 17 or higher you should always stand.
     * If your cards sum up to 11 or lower you should always hit.
     * If your cards sum up to a value within the range [12, 16] you should
     * always stand unless the dealer has a 7 or higher, in which case you
     * should always hit.
     */

    public String smallHand(int handScore, int dealerScore) {
        boolean range = handScore >= 12 && handScore <= 16;

        if (handScore >= 17 || range && dealerScore < 7) {
            return "S";
        } else {
            return "H";
        }
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
