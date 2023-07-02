**1. Aufgabe**

a)

Lieferant(<u>Name</u>, PLZ, Ort, Straße, Hausnummer);

Teile(<u>Teilnummer, Auftragsnummer</u>, Name, Beschreibung, Preis);

Auftrag(<u>Auftragsnummer, Teilnummer,</u> Personalnummer, Kundennummer, Datum);

Mitarbeiter(<u>Personalnummer</u>, Name);

Kunde(<u>Kundennummer</u>, Name, Telefonnummer);

b)

Energieversorger(<u>Name, Anschrift</u>);

Mieter(<u>Name</u>)

Betriebskostenabrechnung(<u>E-Name,Anschrift,M-Name,Abrechnungszeitraum</u>);

Rechnungsbetrag(<u>E-Name,Anschrift,M-Name,Abrechnungszeitraum, Kostenstelle,</u> Betrag) 

**2. Aufgabe**

_ER-Stil_ 

Person(<u>Name,Adresse</u>,Alter);

Sportler(<u>Name, Adresse</u>, Siege);

Musiker(<u>Name, Adresse</u>, Auftritte);

Fußballer(<u>Name, Adresse</u>, Position);

Judoka(<u>Name, Adresse</u>, Gürtel);

Es werden zwei Anfragen benötigt, einmal Sportler um alle Sportler zu erhalten und dann Person um nach dem Alter zu filtern.

_OO-Stil_

Person(<u>Name,Adresse</u>,Alter);

PersonSportler(<u>Name, Adresse</u>, Alter, Siege);

PersonSportlerFußballer(<u>Name, Adresse</u>, Alter, Siege, Position);

PersonSportlerJudoka(<u>Name, Adresse</u>, Alter, Siege, Gürtel);

PersonSportlerFußballerJudoka(<u>Name, Adresse</u>, Alter, Siege, Position, Gürtel);

PersonMusiker(<u>Name, Adresse</u>, Alter, Auftritte);

PersonSportlerMusiker(<u>Name, Adresse</u>, Alter, Siege, Auftritte);

PersonSportlerFußballerMusiker(<u>Name, Adresse</u>, Alter, Siege, Position,Auftritte);

PersonSportlerJudokaMusiker(<u>Name, Adresse</u>, Alter, Siege, Gürtel,Auftritte);

PersonSportlerFußballerJudokaMusiker(<u>Name, Adresse</u>, Alter, Siege, Position, Gürtel, Auftritte);

Es wird nur eine Anfrage benötigt PersonSportler.

_Null-Stil_

Person(<u>Name, Adresse</u>, Alter, Siege, Position, Gürtel, Auftritte);

Es wird ebenfalls nur eine Anfrage benötigt, Person.

**3. Aufgabe**

a) 

{Punkte} -> {Note}; Klausurpunte bestimmen idr. die Klausurnote
{Note} -> {Bestanden}; Die Klausurnote bestimmt die Leistung der Klausur und damit das (nicht- ) bestehen
{Matrikelnummer} -> {StudentName}; Jeder Student wird eindeutig durch die Matrikel Nummer bestimmt
{Vorlesung,Semester} -> {Dozent}; Ein die Leitung der Klausur kann eindeutig durch VL und Semester bestimmt werden



b)

| A    | B    | C    | D    |
| ---- | ---- | ---- | ---- |
| 0    | 1    | 2    | 0    |
| 0    | 2    | 3    | 0    |

{A} -> {B} ist nicht gegeben, da die Werte 0 in {A} jeweils ein verschiedenes Ergebnis in {B} ergeben. Da {A} für für beide Wertepaare in {B,C} 0 ergibt, ist die Relation auch hier nicht funktional.

**4. Aufgabe**

a)

Als einelementige Mengen kommt {A}, da nur A auf keiner Rechten Seite Vorkommt. Die Hüllte von {A} ist {A}<sup>+</sup>. {A} bestimmt demnach nicht alle Attribute funktional.

Zweielementige Mengen wären {A,B},{A,C},{A,D},{A,E}. 
{A,E} kommt nicht in folge, da E auf keiner rechten Seite steht.

Ist {A,B} ein Schlüssel? 
{A,B} --> ({A,B} -> {C}) --> {A,B,C} --> ({C} -> {D}) --> {A,B,C,D} --> ({D} -> {E}) --> {A,B,C,D,E}
{A,B} bestimmt alle Attribute funktional, {A,B} ist ein Schlüssel

Ist {A,C} ein Schlüssel?
{A,C} --> ({C} -> {D}) --> {A,C,D} --> ({D} -> {B}, {D} -> {E} ) --> {A,B,C,D,E}
{A,C} bestimmt alle Attribute funktional, {A,C} ist ein Schlüssel

Ist {A,D} ein Schlüssel?
{A,D} --> ({D} -> {E}, {D} -> {B}) --> {A,B,D,E} --> ({A,B} -> {C}) --> {A,B,C,D,E}
{A,D} bestimmt alle Attribute funktional, {A,D} ist ein Schlüssel

b)

Schritt 1: Die Schlüssel wurden in a) schon Bestimmt.

Schritt 2: {A,B} -> {C,D,E}; {C} -> {B,D,E}; {D} -> {B,E};

Schritt 3: R(<u>A,B</u>,C,D,E)

{C} -> {B,D,E}
R~1~(<u>A,C</u>); R~2~(<u>C</u>,B,D,E)

{D} -> {B,E}
R~2.1~(<u>C,D</u>); R~2.2~(<u>D</u>,B,E)

Die BCNF besteht aus R~1~,R~2~,R~2.1~ und R~2.2~
