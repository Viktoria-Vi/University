import java.util.Calendar;
import java.util.Date;

public class Library {
    public final String name;
    public Date lastEdited;
    private DVD[] dvd;


    public Library(String name, DVD[] dvd) {
        this.name = name;
        this.lastEdited = new Date();
        this.dvd = dvd;
    }

    void addDVD(DVD newDVD) {
        DVD[] temp = new DVD[dvd.length + 1];
        System.arraycopy(dvd, 0, temp, 0, dvd.length);
        temp[dvd.length] = newDVD;
        lastEdited = new Date();
        dvd = temp;
    }

    void removeDVD(String title) {
        int hits = 0;
        for (DVD dvd : dvd) {
            if (title.equals(dvd.title)) {
                dvd.title = "entfernt";
                hits++;
            }
        }
        DVD[] temp = new DVD[dvd.length - hits];
        for (int i = 0; i < dvd.length; i++) {
            if (!"entfernt".equals(dvd[i].title)) {
                temp[i] = dvd[i];
            }
        }
        if (temp.length < dvd.length) {
            lastEdited = new Date();
            dvd = temp;
        } else {
            System.out.println("No matching DVD found");
        }
    }

    boolean doIOwn(DVD thisDVD) {
        for (DVD dvd : dvd) {
            if (dvd == thisDVD) {
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        Library Lieblingsfilme = new Library("Lieblingsfilme", new DVD[0]);
        DVD Buried = new DVD("Buried", "01", new Director("Rodrigo", "Cortes",
                new Date(1973, Calendar.MARCH, 31)),
                new Actor[]{new Actor("Ryan", "Reynolds", new Date(1976, Calendar.OCTOBER, 23))});
        DVD TheTelephone = new DVD("Buried", "01", new Director("Rodrigo", "Cortes",
                new Date(1973, Calendar.MARCH, 31)),
                new Actor[]{new Actor("Ryan", "Reynolds", new Date(1976, Calendar.OCTOBER, 23))});
        DVD Castaway = new DVD("Castaway", "03", new Director("Robert", "Zemeckis",
                new Date(1951, Calendar.MAY, 14)),
                new Actor[]{new Actor("Tom", " Hanks", new Date(1956, Calendar.JULY, 9))});
        DVD SecretHonor = new DVD("Secret Honor", "04", new Director("Robert", " Altman",
                new Date(1925, Calendar.FEBRUARY, 20)),
                new Actor[]{new Actor("Philip", " Baker Hall", new Date(1931, Calendar.SEPTEMBER, 10))});
        DVD SwimmingToCambodia = new DVD("Swimming to Cambodia", "05", new Director("Jonathan", " Demme",
                new Date(1944, Calendar.FEBRUARY, 22)),
                new Actor[]{new Actor("Spalding", " Gray", new Date(1944, Calendar.FEBRUARY, 1944))});
        Lieblingsfilme.addDVD(Buried);
        Lieblingsfilme.addDVD(TheTelephone);
        Lieblingsfilme.addDVD(Castaway);
        Lieblingsfilme.addDVD(SecretHonor);
        Lieblingsfilme.addDVD(SwimmingToCambodia);
        Lieblingsfilme.removeDVD("Swimming to Cambodia");
        Lieblingsfilme.removeDVD("Secret Honor");
        Lieblingsfilme.doIOwn(Buried);
        Lieblingsfilme.doIOwn(SecretHonor);
    }
}

class DVD {
    public String title;
    private final String ISBN;
    private final Director director;
    private final Actor[] headliner;

    public DVD(String title, String ISBN, Director director, Actor[] headliner) {
        this.title = title;
        this.ISBN = ISBN; //Filme haben keine ISBN(Internationale Standard BUCH Nummer) lol
        this.director = director;
        this.headliner = headliner;
    }

    public String getTitle() {
        return title;
    }

    public String getISBN() {
        return ISBN;
    }

    public Director getDirector() {
        return director;
    }

    public Actor[] getHeadliner() {
        return headliner;
    }
}

class Actor {
    private String name;
    private String surname;
    private final Date birthDate;

    public Actor(String name, String surname, Date birthDate) {
        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public Date getBirthDate() {
        return birthDate;
    }
}

class Director {
    private String name;
    private String surname;
    private final Date birthDate;

    public Director(String name, String surname, Date birthDate) {
        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public Date getBirthDate() {
        return birthDate;
    }
}
