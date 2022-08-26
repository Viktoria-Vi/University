package tag2;

import tag2.tools.CardDeck52;

import java.util.List;

public class TexasHoldemHand {
	CardDeck52.Card card1;
	CardDeck52.Card card2;

	public final CardDeck52.Card[] get() {
		return new CardDeck52.Card[] { this.card1, this.card2 };
	}

	public TexasHoldemCombination eval(List<CardDeck52.Card> table) {
		return new TexasHoldemCombination(table, this);
	}

	public void clearCards() {
		this.card1 = null;
		this.card2 = null;
	}

	public void takeDeal(CardDeck52.Card card) {
		if(this.card1 == null)
			this.card1 = card;
		else if(this.card1.value > card.value) {
			CardDeck52.Card tempSwap = this.card1;
			this.card1 = card;
			this.card2 = tempSwap;
		}
		else
			this.card2 = card;
	}

	@Override
	public final String toString() {
		return "[" + this.card1 + ", " + this.card2 + "]";
	}
}
