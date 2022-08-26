package tag2.tools;

public class CardDeck52 extends BasicDeck<CardDeck52.Card> {
    private static final int CARDS_COUNT            		= 52;

    public static class Card implements Comparable<Card> {
        public enum Sign {
            Hearts,
            Diamonds,
            Spades,
            Clubs
        }

        private static final int MIN_CARD_VALUE			= 2;
        private static final int MAX_CARD_VALUE         = 14;
        
        private static final int TWO					= MIN_CARD_VALUE;
        private static final int THREE					= 3;
        private static final int FOUR 					= 4;
        private static final int FIVE					= 5;
        private static final int JACK					= 11;
        private static final int QUEEN					= 12;
        private static final int KING					= 13;
        private static final int ACE					= MAX_CARD_VALUE;

        private static final Sign[] signs 				= Sign.values();

        public final int value;
        public final Sign sign;

        public Card(int value, Sign sign) {
            this.value = value;
            this.sign = sign;
        }

        @Override
        public final int compareTo(Card that) {
            return this.value - that.value;
        }
        
        @Override
        public final String toString() {
            String signStr = "(" + this.sign.name() + ")";
            return switch (this.value) {
                case JACK -> "Jack" + signStr;
                case QUEEN -> "Queen" + signStr;
                case KING -> "King" + signStr;
                case ACE -> "Ace" + signStr;
                default -> this.value + signStr;
            };
        }

        public final boolean isTwo() {
            return this.value == TWO;
        }

        public final boolean isThree() {
            return this.value == THREE;
        }

        public final boolean isFour() {
            return this.value == FOUR;
        }

        public final boolean isFive() {
            return this.value == FIVE;
        }

        public final boolean isAce() {
            return this.value == ACE;
        }
        
        public final boolean inLineAsc(Card card) {
        	return this.value - card.value == -1;
        }
        
        public final boolean inLineDesc(Card card) {
        	return this.value - card.value == 1;
        }
    }

    public CardDeck52() {
        super(CARDS_COUNT);

        for(int cardvalue = Card.MIN_CARD_VALUE; cardvalue <= Card.MAX_CARD_VALUE; cardvalue++)
        	for(Card.Sign sign : Card.signs)
                super.push(new Card(cardvalue, sign));

        super.shuffle();
    }
}
