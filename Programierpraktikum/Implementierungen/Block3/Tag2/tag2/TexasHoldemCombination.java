package tag2;

import tag2.tools.CardDeck52;

import java.util.*;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Stream;

public final class TexasHoldemCombination implements Comparable<TexasHoldemCombination> {
    public enum CombinationType {
        HighCard,
        OnePair,
        TwoPair,
        ThreeOfAKind,
        Straight,
        Flush,
        FullHouse,
        FourOfAKind,
        StraightFlush,
        RoyalFlush
    }

    CombinationType combinationType;
    List<CardDeck52.Card> combinationCards;

    // a)
    TexasHoldemCombination(List<CardDeck52.Card> tableCards, TexasHoldemHand hand) {

        Map<CardDeck52.Card.Sign, List<CardDeck52.Card>> checkSigns = new HashMap<>();
        Map<Integer, List<CardDeck52.Card>> checkValues = new HashMap<>();
        this.combinationType = CombinationType.HighCard; //Standartwert


        for (CardDeck52.Card card : tableCards) { //tablecards -> Maps
            checkSigns.putIfAbsent(card.sign, new ArrayList<>()); //erst Key auf leere Liste setzen
            checkValues.putIfAbsent(card.value, new ArrayList<>());
            checkSigns.get(card.sign).add(card);    //dann erst Liste füllen (sonst crash im System)
            checkValues.get(card.value).add(card);
        }
        for (CardDeck52.Card card : hand.get()) { //hand -> Maps
            checkSigns.putIfAbsent(card.sign, new ArrayList<>());
            checkValues.putIfAbsent(card.value, new ArrayList<>());
            checkSigns.get(card.sign).add(card);
            checkValues.get(card.value).add(card);
        }

        for (Integer key : checkValues.keySet()) {
            checkValues.get(key).sort(Comparator.reverseOrder()); //sodass Kreuz2->Pik2... in der Liste steht
        }

        ArrayList<CardDeck52.Card> cards = new ArrayList<>();//Liste mit allen Karten aufsteigend sortiert
        for (int card : checkValues.keySet()) {
            cards.addAll(checkValues.get(card));
        }
        cards.sort(Comparator.reverseOrder());

        //Flush Check
        for (CardDeck52.Card.Sign sign : checkSigns.keySet()) {
            if (checkSigns.get(sign).size() > 4) {  //check ob 5 von einer Farbe existieren
                ArrayList<CardDeck52.Card> flush = new ArrayList<>(checkSigns.get(sign));
                flush.sort(CardDeck52.Card::compareTo); //sortieren um gleich nach Reihenfolge zu schauen
                boolean consecutive = false;
                for (int i = 0; i < flush.size(); i++) {
                    if (flush.get(i).value == flush.get(i + 1).value - 1) {
                        consecutive = true;
                    } else {
                        if (flush.size() > 5) { //falls z.B 1,4,5,6,7,8 die 1 entfernen
                            flush.remove(i);
                            i--;
                        }
                        consecutive = false;
                        break;
                    }
                }
                if (consecutive) {
                    if (flush.get(4).value == 14) {
                        this.combinationType = CombinationType.RoyalFlush;
                        this.combinationCards = flush;
                        return;
                    } else if (this.combinationType.compareTo(CombinationType.StraightFlush) < 0) {
                        this.combinationType = CombinationType.StraightFlush;
                        this.combinationCards = flush;
                        return;
                    }
                } else {
                    if (this.combinationType.compareTo(CombinationType.Flush) < 0) {
                        this.combinationType = CombinationType.Flush;
                        if (checkSigns.get(sign).size() == 5) {
                            this.combinationCards = checkSigns.get(sign);
                            return;
                        } else {
                            ArrayList<CardDeck52.Card> temp = new ArrayList<CardDeck52.Card>(checkSigns.get(sign));
                            temp.sort(Comparator.reverseOrder()); //größtes zuerst
                            this.combinationCards = temp.subList(0, 5); //dann (größten) 5 ausgeben
                            return;
                        }
                    }
                }
            }
        }
        //Pairs Check
        Map<CombinationType, List<CardDeck52.Card>> checkPairs = new HashMap<>();
        for (Integer value : checkValues.keySet()) { //befüllen von Keys zu 4er,3er,2er paar
            if (checkValues.get(value).size() == 4) {
                checkPairs.put(CombinationType.FourOfAKind, checkValues.get(value));
            }
            if (checkValues.get(value).size() == 3) {
                checkPairs.putIfAbsent(CombinationType.ThreeOfAKind, new ArrayList<>());
                checkPairs.get(CombinationType.ThreeOfAKind).addAll(checkValues.get(value));
            }
            if (checkValues.get(value).size() == 2) {
                checkPairs.putIfAbsent(CombinationType.OnePair, new ArrayList<>());
                checkPairs.get(CombinationType.OnePair).addAll(checkValues.get(value));
            }
        }
        if (checkPairs.containsKey(CombinationType.OnePair)) { //verkettete suche ob Fullhouse, 2paar oder 1paar
            if (checkPairs.containsKey(CombinationType.ThreeOfAKind)) {
                if (this.combinationType.compareTo(CombinationType.FullHouse) < 0) {
                    this.combinationType = CombinationType.FullHouse;
                    List<CardDeck52.Card> fullHouse = new ArrayList<>();
                    fullHouse.addAll(checkPairs.get(CombinationType.OnePair));
                    fullHouse.addAll(checkPairs.get(CombinationType.ThreeOfAKind));
                    this.combinationCards = fullHouse;
                }
            } else if (checkPairs.get(CombinationType.OnePair).size() > 2) {
                if (this.combinationType.compareTo(CombinationType.TwoPair) < 0) {
                    this.combinationType = CombinationType.TwoPair;
                    int i = 0;
                    while (checkPairs.get(CombinationType.OnePair).size() < 5) {
                        if (cards.isEmpty()) {
                            break;
                        }
                        if (checkPairs.get(CombinationType.OnePair).contains(cards.get(i))) {
                            i++;
                        } else {
                            checkPairs.get(CombinationType.OnePair).add(cards.get(i));
                        }
                    }
                    this.combinationCards = checkPairs.get(CombinationType.OnePair);
                }
            } else {
                if (this.combinationType.compareTo(CombinationType.OnePair) < 0) {
                    this.combinationType = CombinationType.OnePair;
                    int i = 0;
                    while (checkPairs.get(CombinationType.OnePair).size() < 5) {
                        if (cards.isEmpty()) {
                            break;
                        }
                        if (checkPairs.get(CombinationType.OnePair).contains(cards.get(i))) {
                            i++;
                        } else {
                            checkPairs.get(CombinationType.OnePair).add(cards.get(i));
                        }
                    }
                    this.combinationCards = checkPairs.get(CombinationType.OnePair);
                }
            }
        }
        if (checkPairs.containsKey(CombinationType.ThreeOfAKind) && this.combinationType.compareTo(CombinationType.ThreeOfAKind) < 0) {
            this.combinationType = CombinationType.ThreeOfAKind;
            int i = 0;
            while (checkPairs.get(CombinationType.ThreeOfAKind).size() < 5) {
                if (cards.isEmpty()) {
                    break;
                }
                if (checkPairs.get(CombinationType.ThreeOfAKind).contains(cards.get(i))) {
                    i++;
                } else {
                    checkPairs.get(CombinationType.ThreeOfAKind).add(cards.get(i));
                }
            }
            this.combinationCards = checkPairs.get(CombinationType.ThreeOfAKind);
        }
        if (checkPairs.containsKey(CombinationType.FourOfAKind) && this.combinationType.compareTo(CombinationType.FourOfAKind) < 0) {
            this.combinationType = CombinationType.FourOfAKind;
            int i = 0;
            while (checkPairs.get(CombinationType.FourOfAKind).size() < 5) {
                if (cards.isEmpty()) {
                    break;
                }
                if (checkPairs.get(CombinationType.FourOfAKind).contains(cards.get(i))) {
                    i++;
                } else {
                    checkPairs.get(CombinationType.FourOfAKind).add(cards.get(i));
                }
            }
            this.combinationCards = checkPairs.get(CombinationType.FourOfAKind);
        }

        //Straight Check (ew)
        ArrayList<Integer> straight = new ArrayList<>(checkValues.keySet().stream().toList()); //gleiche Geschichte wie bei flush nur ohne farben
        boolean consecutive = false;
        if (straight.size() >= 5) {
            for (int i = 0; i < straight.size(); i++) {
                if (straight.get(i) == straight.get(i + 1) - 1) {
                    consecutive = true;
                } else {
                    if (straight.size() > 5) {
                        straight.remove(i);
                        i--;
                    }
                    consecutive = false;
                    break;
                }
            }
        }
        if (consecutive) {
            List<CardDeck52.Card> out = new ArrayList<>();
            for (Integer card : straight) {
                out.add(checkValues.get(card).get(0));
            }
            if (this.combinationType.compareTo(CombinationType.Straight) < 0) {
                this.combinationType = CombinationType.Straight;
                this.combinationCards = out;
            }
        }
        //Highcard check
        //bestimmen der Höchsten max 5 Karten durch sortieren;
        if (this.combinationType == CombinationType.HighCard) {
            if (cards.size() >= 5) {
                this.combinationCards = cards.subList(0, 5);
            } else {
                this.combinationCards = cards;
            }
        }
    }


    // b)
    @Override
    public final int compareTo(TexasHoldemCombination that) { // unter der annahme das die combination paar nur aus 2 und nicht aus 5 karten besteht(also wie hier im code beschrieben)
        if (this.combinationType.compareTo(that.combinationType) < 0) {
            return -1;
        }
        if (this.combinationType.compareTo(that.combinationType) > 0) {
            return 1;
        }

        if (combinationType.equals(CombinationType.OnePair)) {
            if (this.combinationCards.get(0).value == that.combinationCards.get(0).value) {
                if (this.combinationCards.get(2).value == that.combinationCards.get(2).value) {
                    if (this.combinationCards.get(3).value == that.combinationCards.get(3).value) {
                        return this.combinationCards.get(4).compareTo(that.combinationCards.get(4)) > 0 ? 1 : -1;
                    }
                    return this.combinationCards.get(3).compareTo(that.combinationCards.get(3)) > 0 ? 1 : -1;
                }
                return this.combinationCards.get(2).compareTo(that.combinationCards.get(2)) > 0 ? 1 : -1;
            }
            return this.combinationCards.get(0).compareTo(that.combinationCards.get(0)) > 0 ? 1 : -1;
        }
        if (this.combinationType.equals(CombinationType.TwoPair)) {
            if (this.combinationCards.get(0).value == that.combinationCards.get(0).value) {
                if (this.combinationCards.get(2).value == that.combinationCards.get(2).value) {
                    return this.combinationCards.get(4).compareTo(that.combinationCards.get(4)) > 0 ? 1 : -1;
                }
                return this.combinationCards.get(2).compareTo(that.combinationCards.get(2)) > 0 ? 1 : -1;
            }
            return this.combinationCards.get(0).compareTo(that.combinationCards.get(0)) > 0 ? 1 : -1;
        }
        if (this.combinationType.equals(CombinationType.ThreeOfAKind)) {
            if (this.combinationCards.get(0).value == that.combinationCards.get(0).value) {
                if (this.combinationCards.get(3).value == that.combinationCards.get(3).value) {
                    return this.combinationCards.get(4).compareTo(that.combinationCards.get(4)) > 0 ? 1 : -1;
                }
                return this.combinationCards.get(3).compareTo(that.combinationCards.get(3)) > 0 ? 1 : -1;
            }
            return this.combinationCards.get(0).compareTo(that.combinationCards.get(0)) > 0 ? 1 : -1;
        }
        if (this.combinationType.equals(CombinationType.FourOfAKind)) {
            if (this.combinationCards.get(0).value == that.combinationCards.get(0).value) {
                return this.combinationCards.get(4).compareTo(that.combinationCards.get(4)) > 0 ? 1 : -1;
            }
            return this.combinationCards.get(0).compareTo(that.combinationCards.get(0)) > 0 ? 1 : -1;
        } else {
            that.combinationCards.sort(Comparator.reverseOrder());
            this.combinationCards.sort(Comparator.reverseOrder());
            for (int i = 0; i < that.combinationCards.size(); i++) {
                if (this.combinationCards.get(i).compareTo(that.combinationCards.get(i)) < 0) {
                    return -1;
                }
                if (this.combinationCards.get(i).compareTo(that.combinationCards.get(i)) > 0) {
                    return 1;
                }
            }
        }
        return 0;
    }


    // c)
    public static Stream<TexasHoldemCombination> generate() {
        TexasHoldemCombination out = new TexasHoldemCombination(null,null);
        return Stream.iterate(out,(i) -> {
            CardDeck52 deck = new CardDeck52();
            boolean hasTable = Math.random() >= 0.5;
            List<CardDeck52.Card> tableCards = hasTable? deck.deal(ThreadLocalRandom.current().nextInt(3, 5 + 1)) : Collections.emptyList();
            TexasHoldemHand hand = new TexasHoldemHand();
            hand.takeDeal(deck.deal());
            hand.takeDeal(deck.deal());

            return new TexasHoldemCombination(tableCards,hand);
        } );
    }

    public static void main(String[] args) {
        CardDeck52 deck = new CardDeck52();
        boolean hasTable = true;//Math.random() >= 0.5;
        List<CardDeck52.Card> tableCards = hasTable ?
                deck.deal(ThreadLocalRandom.current().nextInt(3, 5 + 1)) :
                Collections.emptyList();

        TexasHoldemHand hand = new TexasHoldemHand();
        TexasHoldemHand hand2 = new TexasHoldemHand();
        hand.takeDeal(deck.deal());
        hand2.takeDeal(deck.deal());
        hand.takeDeal(deck.deal());
        hand2.takeDeal(deck.deal());

        Stream.of(hand.eval(tableCards), hand2.eval(tableCards))
                .sorted(Comparator.reverseOrder())
                .forEach(combination -> System.out.println(
                        "CombinationType: " + combination.combinationType +
                                ", CombinationCards: " + combination.combinationCards));

        TexasHoldemCombination combination = hand.eval(tableCards);
        System.out.println("Table Cards (" + tableCards.size() + "): " + tableCards);
        System.out.println("Hand: " + Arrays.toString(hand.get()));
        System.out.println("Combination (" + combination.combinationCards.size() + "): " + combination.combinationType + " -> " + combination.combinationCards);
        System.out.println(hand.eval(tableCards).compareTo(hand2.eval(tableCards)) > 0 ? "Win" : "Loss");
    }
}
