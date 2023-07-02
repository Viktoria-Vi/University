--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Ubuntu 10.7-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.7 (Ubuntu 10.7-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.actor (
    id integer NOT NULL,
    name character varying(127),
    movie_id character varying(127),
    role character varying(127),
    "position" integer
);


--
-- Name: actress; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.actress (
    id integer NOT NULL,
    name character varying(127),
    movie_id character varying(127),
    role character varying(127),
    "position" integer
);


--
-- Name: genre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    movie_id character varying(127),
    genre character varying(127)
);


--
-- Name: movie; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.movie (
    mid character varying(127) NOT NULL,
    title character varying(127),
    year integer
);


--
-- Name: producer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.producer (
    id integer NOT NULL,
    name character varying(127),
    movie_id character varying(127),
    role character varying(127)
);


--
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.actor (id, name, movie_id, role, "position") FROM stdin;
6456914	Takei, George	General Hospital	Diem (1985)	5
6457004	Takenaka, Naoto	Ijô no hitobito: Densetsuno nijino sankyôdai (1993)		1
6457367	Tal, Erez	Kasefet, Ha-	Host	1
6457422	Talamo, Adonios	General Hospital	Morgan Stone Corinthos [#1] (2003-2004)	-1
6457432	Talamo, Isador	General Hospital	Morgan Stone Corinthos [#1] (2003-2004)	-1
6459487	Tamele	Premiere (1936)	5. Autor	-1
6459856	Tammi, Tom	Edge of Night, The	Logan 'Swifty' Swift #2 (1984)	11
6460061	Tamura, Takahiro	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Mr. Nozu	3
6460705	Tanaka, Nobuo (I)	Kôsoku sentai Tâborenjâ	Narrator	-1
6460742	Tanaka, Russ	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Ambulance Attendant	37
6461804	Tannen, Charles (I)	Tall, Dark and Handsome (1941)		-1
6461957	Tannen, William (I)	Grand Central Murder (1942)	Second Railroad Yardman	-1
6462022	Tannen, William (I)	Respect the Law (1941)	Mark, Terriss's Associate	-1
6462247	Tanner, Richard	General Hospital	Mark Cerullo (1994)	5
6462542	Tanzini, Philip	General Hospital	Jeremy Hewitt Logan (1978-1982)	5
6463523	Tardiff, Jamie	Pick-up, The (1999)	Country Lady	4
6463726	Taris, Jacques	Point douloureux, Le (1979)	L'homme Parking	13
6464632	Tasche, Christian	Tatort - Willkommen in Köln (1997) (TV)	Staatsanwalt von Prinz	8
6465079	Tata, Joe E.	General Hospital	Rudy King (1987)	5
6465690	Tataryn, Sean	Boys of St. Vincent, The (1992) (TV)	Boy of St. Vincent	21
6466348	Tavbe, Finn	Ta' det som en mand, frue! (1975)		40
6467150	Taylor, Brian (VI)	General Hospital	Chemist	5
6467280	Taylor, Charles (IV)	Edge of Night, The	George Murray (1956)	11
6468319	Taylor, Frank Hoyt	Bobby Jones, Stroke of Genius (2004)	Reporter	-1
6468488	Taylor, Henry (I)	Big Idea, The (1934)	Radio Rogue Imitating Bing Crosby	-1
6470281	Taylor, Tommy	Harvest (1953) (TV)	Kip	11
6470326	Taylor, Vaughn (I)	Harvest (1953) (TV)	Gramps	4
6471566	Tebar, Óscar	Trois couronnes du matelot, Les (1983)		-1
6472122	Tedeschi, Tony	Terminal Case of Love (1998) (V)		-1
6472211	Tedlie, Dan	Egoists, The (2003)	Max Tripp	6
6472579	Teixeira, Carlos José	Amants du Tage, Les (1955)		7
6472806	Tejada, Manuel (I)	Verano azul	Agustín	10
5490980	Jovicic, Dragan	Koze		1
6479176	Testa, Eugenio	Familia Vila, La (1950)	Don Cosme	-1
6479283	Testi, Fabio	Revolver: Calling the Shots (2002) (V)	Himself	-1
6478113	Tew, Archie	General Hospital	Dr, Mayhew	-1
6478211	Teynac, Maurice	Illusion in Moll (1952)	Night Club Singer Herr Gidou	4
6478751	Thane, Gibson	Dame von Paris, Die (1927)		-1
6479557	Thauvette, Guy	Sous les draps, les étoiles (1989)		-1
6479888	Thein, Ulrich	Traum des Hauptmann Loy, Der (1961)	Eddy Sharp	3
6480118	Theodore, Robert (I)	Highway 61 (1991)	Rock Band Manager	28
6480154	Theoharous, Theodore	Edge of Night, The	Hospital Intern (1966)	11
6480490	Thiam, Xavier	Don Juan (1998)	La Ramée	15
6480714	Thicke, Alan	Anarchy TV (1997)	Reverend Wright	7
6480997	Thieme, Thomas	Tatort - Willkommen in Köln (1997) (TV)	Busch	4
6481032	Thierry, Lucas	Parfois trop d'amour (1992)		-1
6481066	Thies, Udo	Tatort - Kindstod (2001) (TV)	Sozialarbeiter	15
6481292	Thimig, Hermann	Tänzer meiner Frau, Der (1925)	Der Diener	7
6481362	Thinnes, Roy	General Hospital	Dr. Phil Brewer #1 (1963-1966) (original cast)	5
6481610	Thom, Bob	They Won't Believe Me (1947)	Hotel Clerk	-1
6481631	Thom, Peter (I)	Geheime Lüste blutjunger Mädchen (1978)	Diener Pepi	-1
6481651	Thoma, Carl	Edge of Night, The	Moss (1973)	11
6481787	Thomalla, Georg	Meister Eder und sein Pumuckl	Preisslkofer	-1
6481895	Thomas, Alex (III)	Tony's Big Brother (1993) (V)		7
6482553	Thomas, Billie 'Buckwheat'	Our Gang Follies of 1936 (1935)	Buckwheat	-1
6482006	Thomas, Dean Milor	Lionheart (1990)	BMW Passenger #2	56
6483377	Thomas, Jonathan Taylor	Bradys, The	Kevin Brady	-1
6483768	Thomas, Paul (I)	Addicted to Love (1988)		-1
6483991	Thomas, Paul (I)	Swedish Erotica 4 (1981)		-1
6484282	Thomas, Richard (I)	Edge of Night, The	Ben Schultz, Jr. (1961)	11
6484544	Thomas, Terry (II)	Bikini Beach (1993) (V)		-1
6484806	Thomason, C.J.	General Hospital	Lucas Stansbury Jones #8 (2002-2003)	5
6484941	Thome, Keath	Critical Assembly (2003) (TV)	Guard	-1
6485099	Thomerson, Tim	Some Kind of Hero (1982)	Cal	12
6485138	Thomey, Greg	Boys of St. Vincent, The (1992) (TV)	Brother Glackin	10
6485139	Thomey, Greg	John and the Missus (1987)	Jimmy Ludlow	20
6485519	Thompson, Brian (I)	Lionheart (1990)	Russell	6
6485546	Thompson, Brian (IV)	Fleshtones (1985) (V)		3
6473267	Telfer, David	Not a Penny More, Not a Penny Less (1990) (TV)	Workman	-1
6473516	Tellini, Massimo	Amore imperfetto, L' (2002)	Driver Cop	-1
6474151	Tenbrook, Harry	I Was a Communist for the FBI (1951)	Spectator at Senate Hearing	-1
6474878	Teo (II)	Asian Street Hookers 26 (2002) (V)	Himself (Teo)	-1
6475265	Terajima, Mitsugu	Oushou (1948)		7
6475408	Terei, Pio	Intrepid Journeys	Himself (host)	4
6476348	Terrell, Ken	I Was a Communist for the FBI (1951)	Communist Good Agitator	-1
6477222	Terry-Thomas	Quiet Wedding (1941)	Extra	-1
6477322	Tertzarian, Krikor	Real Bullets (1990)	Sallini's Goon	30
6477775	Teschner, Lutz	Tatort - Tod aus der Vergangenheit (1992) (TV)	Roller	19
6479014	Tessen, Robert	Tatort - Mord im Ministerium (1974) (TV)	Wiesiewicz	-1
6479021	Tesser, Osvaldo	Titanes en el ring contraataca (1983)		-1
6489429	Thring, Frank (I)	Ned Kelly (1970)	Judge Barry	5
6489473	Throne, Malachi	Greatest, The (1977)	Payton Jory	-1
6489852	Thunderwolf	Lionheart (1990)	Street Gang Member #4	51
6490022	Tiainen, Jarkko	Angela ja ajan tuulet	Tohtori Virta	-1
6490046	Tian, Lie	Huan le ren jian (1959)	Old Mr. Wei	-1
6490223	Tibet, Kartal	Karaoglan - Camoka'nin intikami (1966)	Karaoglan	1
6491332	Tiedtke, Jakob	Provinzonkel, Der (1926)		-1
6491535	Tien, Feng	Zhong huan ying xiong (1991)	Yip Chi-Mei	-1
6491835	Tierney, John (I)	They Nest (2000) (TV)	Fisherman #1	19
6492840	Tijori, Deepak	Santaan (1993)	Amar Singh	3
6492019	Tiler, Scott	Flying Blind (1990) (TV)		8
6492098	Tiller, Hans	Perle von Tokay, Die (1953)		17
6492129	Tilley, Colin (I)	Ned Kelly (1970)	Bank Clerk	-1
6493628	Timsit, Patrick	À la vitesse d'un cheval au galop (1992)	Le trouble-fête	30
6493756	Tindberg, Svein	SøndagsÅpent	Leser bibeltekster (1998-1999)	-1
6494584	Tinling, Ted	Edge of Night, The	Vic Lamont (1969-1975)	11
6494596	Tinn, Lee	Man from New Mexico, The (1932)	Ching	14
6495014	Tipton, Ken	Unstrung Heroes (1995)	Additional Voices	-1
6495778	Tkalenko, Alex	Rebaño, El (1997)		5
6495782	Tkebuchava, A.	Chirveuli mezoblebi (1945)	Tengizi	6
6495960	Tobaruela, Álvaro	Marta y alrededores (1999)	Fer	-1
6498069	Toetzke, Berthold	Tatort - Kein Kinderspiel (1980) (TV)		19
6498339	Tognazzi, Gianmarco	Miei più cari amici, I (1998)		-1
6498716	Toivonen, Kari-Pekka	Angela ja ajan tuulet	Bengt Granberg	-1
6498935	Tokmakchiev, Toncho	Ispanska muha (1998)	Itzeto Stoichkov	10
6501221	Tomlinson, David (I)	Quiet Wedding (1941)	John Royd	8
6501783	Tone, Ben	Virginian, The (2000) (TV)	Quinces	32
6502369	Tono, Eijirô	Akitsu onsen (1962)	Priest	-1
6502519	Tono, Eijirô	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		3
6502540	Tonoyama, Taiji	Akitsu onsen (1962)	Rokusuke	-1
6503329	Toones, Fred 'Snowflake'	Tall, Dark and Handsome (1941)		-1
6503642	Topatan, Ahmet Danyal	Karaoglan - Camoka'nin intikami (1966)	Camoka	3
6503923	Toppo, Philippe	Conte à regler (1978)		-1
6504267	Tordy, Géza	Amerikai cigaretta (1977)	Ebes	4
6485769	Thompson, Don (I)	Comrades of Summer, The (1992) (TV)	Media Moe	34
6486673	Thompson, James (XI)	Rave (2000)	Officer Parker	29
6486676	Thompson, James Brewster	Lionheart (1990)	N.Y. 'Monster' Fighter	41
6486879	Thompson, Larry (II)	Bobby Jones, Stroke of Genius (2004)	John Malone	9
6486890	Thompson, Larry (VII)	Bobby Jones, Stroke of Genius (2004)	John Malone	-1
6485990	Thompson, Mark (II)	Adventures of Mark & Brian, The	Host	2
6486069	Thompson, Marshall (I)	Yank in Viet-Nam, A (1964)	Major Benson	1
6486186	Thompson, Nick (I)	Married? (1926)	Joe Pinto	5
6486360	Thompson, Rex (I)	All Mine to Give (1958)	Robbie	3
6487640	Thomson, R.H.	Man Alive	Host (1996-)	-1
6488047	Thorley, Victor	Edge of Night, The	Daniel Morrissey (1961)	11
6488345	Thorne, William L.	She-Wolf, The (1931)	Detective Burks	9
6488414	Thornton, Billy Bob	Gun, a Car, a Blonde, A (1997)	Syd/Monk	7
4896251	Correa, Arturo	Tu, mi amor... (1998)		5
6510632	Trambusti, Daniele	Miei più cari amici, I (1998)		-1
6511145	Trapp, Roger	Guépiot, Le (1981)	Un gendarme	-1
6511170	Trapp, Roger	Sainte farce, La (1972) (TV)		-1
6511282	Trattnig, Herbert	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Peter Poeschl	7
6511345	Trautmann, Ludwig	Katzensteg, Der (1915)	Felix Merkel, Merkels Sohn	4
6511501	Travanti, Daniel J.	General Hospital	Spence Andrews (1979)	5
6512054	Travis, Mark (II)	General Hospital	Felix Buchanan (1975)	5
6512947	Tregor, Michael	Meister Eder und sein Pumuckl	Herr Recknagel	-1
6514316	Tremayne, Les	General Hospital	Edward L. Quartermaine (temporary substitute for David Lewis)	5
6514423	Tremblett, Ken	Comrades of Summer, The (1992) (TV)	Jones	35
6514471	Tremont, Mike	Tempest (1982)	Diplomat	-1
6514534	Trenet, Charles	Chansons ont leur destin (1953)		-1
6513877	Trevino, Vic	General Hospital	Carlos (1998, 2001)	5
6515266	Trieste, Leopoldo	Trastevere (1971)	Il professore	5
6515967	Trin, Marvin 'Bubbles'	Our Gang Follies of 1936 (1935)		-1
6516495	Trischan, Michael	Tatort - Der Fremdwohner (2002) (TV)	Bernie	11
6516758	Trivedi, Arvind	Ramayan	Ravan	3
6518290	Trovato, Salvatore	Blume der Hausfrau, Die (1999)		-1
6518429	True, Garrison	General Hospital	Hal Tomlinson (1981)	5
6518603	Truex, Ernest	All Mine to Give (1958)	Doctor Delbert	5
6518988	Trujillo, Valentín	Rage (1966)	José	12
6519873	Tréjan, Guy	Dame de lieudit, La (1993) (TV)	Le président	6
6519941	Tréville, Georges	Bach détective (1936)	Le baron	18
6521565	Tsoukas, Nikos	Jack o kavalaris (1979)	Apostolis	3
6523555	Tucker, Jerry	Our Gang Follies of 1936 (1935)		-1
6523639	Tucker, Marcellus	Lionheart (1990)	Schoolboy #1	-1
6523713	Tucker, Richard (I)	Bat Whispers, The (1930)	Mr. Bell	2
6524901	Tully, Phil	I Was a Communist for the FBI (1951)	Irish Mick	-1
6525616	Tuorila, Risto	Angela ja ajan tuulet	Gabriel Berggren	2
6526620	Turenne, Louis	Edge of Night, The	Antony 'Tony' Saxon (1976-1978)	11
6526701	Turgeon, Peter	Edge of Night, The		11
6526702	Turgeon, Peter	General Hospital	Mr. Arnold	5
6526981	Turner, Don (I)	Valley of the Giants (1938)	Lumerjack helping to dynamite dam	-1
6504606	Torka, Horst	Blaulicht - Kindermörder (1960) (TV)		2
6505288	Torn, Rip	Beer (1985)	Buzz Beckerman	2
6505225	Torrence, Ernest	Strictly Unconventional (1930)	Lord Porteous	5
6505239	Torrence, Scott	Rave (2000)	Amanda	15
6506068	Torres, Eric (I)	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	C.J. Age 2	41
6506315	Torres, Michael (II)	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	C.J. Age 2	42
6506338	Torres, Olivier	Hurlevent (1985)	Olivier	7
6506524	Torreton, Philippe	Oublie-moi (1995)	Fabrice	5
6507584	Tosun, Necdet	Kislalar doldu bugün (1968)		-1
6507824	Totten, Robert	Trauma (1962)	Gas Station Attendant	11
6508547	Toussaint, René	Dumm gelaufen (1997)	Jäger	17
6509311	Townsend, Ernie	Edge of Night, The	Clifford 'Cliff' Nelson (1978-1984)	11
6510010	Tracey, Ian	Comrades of Summer, The (1992) (TV)	Andy	7
6510410	Traczyk, Andreas	Boys of St. Vincent, The (1992) (TV)	Boy of St. Vincent	25
6531294	Téllez, Héctor	Reed, México insurgente (1973)		-1
6531706	Törzs, Jenö	Iza néni (1933)		-1
6532207	Uchida, Yoshiro	Daikaijû Gamera (1965)	Toschio	-1
6533660	Ulloa, Tristán	Marta y alrededores (1999)	Julio	-1
6534128	Ulyanov, Mikhail	Samozvantsy		1
6534688	Underwood, Hank	General Hospital	Whit Whitaker (1980-1981)	5
6534862	Ungeheuer, Günther	Tatort - Das stille Geschäft (1977) (TV)	Jahn	-1
6535238	Uno, Jukichi	Akitsu onsen (1962)	Kenkichi Matsumiya	-1
6535397	Unterkircher, Hans	Premiere (1936)		13
6535415	Untermann, Federico	Caja 507, La (2002)	As Joven	20
6535519	Upchurch, Nick	Rave (2000)	Bobby	24
6535792	Uranga, Lucas	Don Juan (1998)	Ragotin	12
6535933	Urban, Drew	Yank in Viet-Nam, A (1964)	Col. Haggerty	5
6537094	Urich, Tom	Edge of Night, The	Dennis Nagy (1983)	11
6536445	Uruki, Hiroshi	Joyu to shijin (1935)		-1
6537442	Ursillo, Alan	General Hospital	Bellows (1986)	5
6537925	Utjesanovic, Djuro	Hocu zivjeti (1982)		-1
6538433	Uzzo, Luigi	Trastevere (1971)		-1
6538493	Vaag, Helmut	Noor pensionär (1972) (TV)		-1
6538632	Vaccaro, Ramón	Páginas en negro, Unas (1950)		-1
6538979	Vadim, Christian	Pourquoi t'as fait ça? (2001)		-1
6539027	Vadim, Stephane	Età da sballo, Un' (1983)		4
6539149	Vagareza	Entre Mulheres e Espiões (1961)		2
6539218	Vahanian, Marc	Black Thunder (1997)	Radio Operator	-1
6539273	Vahl, Henry	Maulkorb, Der (1958)		-1
6539557	Vajnar, Josef	Andel milosrdenství (1994)	Horecky	3
6539974	Valberg, Robert	Premiere (1936)	Chef der Kriminalpolizei	14
6540020	Valcke, Serge-Henri	Do Not Disturb (1999)	Funny Business Man	-1
6540669	Valdés, Manuel 'Loco'	Club de señoritas (1956)		-1
6541728	Valentino (III)	Primal Instinct (1996) (V)		7
6541929	Valentino, Tony (I)	Lionheart (1990)	Hospital Technician	28
6542044	Valenziano, Luigi	Trastevere (1971)		-1
6542321	Valero, Miguel Ángel	Verano azul	Piraña	8
6528102	Turpin, Ben	Small Town Idol, A (1921)	Sam Smith	1
6528385	Turturro, John	Unstrung Heroes (1995)	Sid Lidz	2
6528910	Tweddell, Frank	Harvest (1953) (TV)	Mr. Franklin	12
6529326	Tyler, Bobby	Jawbreakers (2001) (V)		-1
6529461	Tyler, Harry	Grand Central Murder (1942)	Dance Director	-1
6529547	Tyler, Harry	Penny's Picnic (1938)		-1
6529954	Tyler, Tom (I)	Man from New Mexico, The (1932)	Jess Ryder	1
6530111	Tylo, Michael	General Hospital	Charlie Prince (1989)	5
6530157	Tymon, Steve	Deadlock: A Passion for Murder (1997)		-1
6530239	Tyne, George	They Won't Believe Me (1947)	Lieutenant Carr	6
6530414	Tyrrell, John (II)	Andy Clyde Gets Spring Chicken (1939)		8
6530433	Tyrrell, John (II)	Boobs in Arms (1940)	Enemy Officer	-1
6530608	Tyrrell, John (II)	Skinny the Moocher (1939)		7
6530746	Tyson, Neil	BreakThrough: The Changing Face of Science in America	Himself	-1
6531228	Tähtelä, Ilmari	Käyntikorttini... (1964)		-1
6543866	Vally, Paul	À la vitesse d'un cheval au galop (1992)	Paul Merveilleux	18
6545032	Van Bergen, Lewis	Overboard (1978) (TV)	Jean-Paul	-1
6545537	Van Damme, Jean-Claude	Breakin' (1984)	Passerby in first dance sequence	-1
6545550	Van Damme, Jean-Claude	Lionheart (1990)	Lyon Gaultier	1
6546123	van den Heuvel, Alfred	Do Not Disturb (1999)	Physician	-1
6546396	van der Heyden, Wim	Do Not Disturb (1999)	Man In Airplane	-1
6546531	van der Meer, Wil	Do Not Disturb (1999)	Suspicious Cop	-1
6547998	van Hart, Matt	Vow to Kill, A (1995) (TV)	Michael	-1
6548292	Van Horn, David	Bobby Jones, Stroke of Genius (2004)	Perry Adair (m)	-1
6548293	Van Horn, Dennis	Boys of St. Vincent, The (1992) (TV)	Boy of St. Vincent	27
6548365	van Houweninge, Chiem	Tatort - Der Tausch (1986) (TV)	Hänschen	3
6548845	Van Loan, Howard	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		14
6548933	van Lyck, Henry	Meister Eder und sein Pumuckl	Herr Borchert/Herr Schenck	-1
6549069	Van Ness, Jon	Some Kind of Hero (1982)	Aide	-1
6549125	Van Norden, Peter	Gigli (2003)	Morgue Attendant	18
6549608	Van Rellim, Tim	Ned Kelly (1970)	Sportsman	-1
6550720	Van Zandt, Philip	Boobs in Arms (1940)	Soldier	-1
6551059	Van, Le	Yank in Viet-Nam, A (1964)	Viet Cong Leader	14
6552041	Vandross, Luther	Bacharach: One Amazing Night (1998) (TV)	Himself	-1
6552113	Vane, Charles	Way of the World, The (1920)	Marshall	3
6552513	Vanhorn, Patrick	Day & Date	Reporter	1
6553006	Vanvakaris, Dr. Gregory	Day & Date	Health & Fitness Correspondent	6
6553285	Varconi, Victor	Tänzer meiner Frau, Der (1925)	Edmund Chauvelin	1
6553530	Varela, Froilán	Casamiento de Chichilo, El (1938)		-1
6553712	Varennes, Jacques	Bossu, Le (1934)		-1
6554168	Vargas, John	General Hospital	Rico Chacone (1990)	5
6555088	Vasadze, Akaki	Magdanas lurja (1955)	Villige Foreman	-1
6556020	Vassallo, Salvatore	Gigli (2003)	Beach Dancer	54
6556130	Vastardis, Nikos	Episimi agapimeni (1969)		-1
6556574	Vaughan, Greg	General Hospital	Lucky Spencer #3 (2003-present)	5
6558012	Vega, Franco	Rave (2000)	JP	5
6558070	Vega, Gonzalo	Toda una vida		-1
6559648	Velez, Eddie	General Hospital	Alex Garcia #2 (1999, 2000)	5
6559664	Velez, Jesse	Real Bullets (1990)	Sallini's Goon	27
6560112	Velniciuc, Stefan	Martori disparuti (1988)		-1
6560391	Velázquez, Hugo (II)	Reed, México insurgente (1973)		-1
6560811	Vendruscolo, Michael	Highway 61 (1991)	Pickerel Falls Photographer	20
6560929	Vengerov, Gennadi	Dumm gelaufen (1997)	Manfred	4
6561101	Venito, Lenny	Gigli (2003)	Louis	4
6561201	Venkatramaiah, Relangi	Raju-Peda (1954)		4
6561478	Ventresca, Vincent	Medicine Ball	Tom	-1
6561751	Venture, Richard	Greatest, The (1977)	Colonel	9
6561784	Venture, Richard	General Hospital	Jonathan Pierce (1991)	5
6561854	Venturis, Themi	Platoon Leader (1988)	New Lieutenant	17
6562058	Vera, Hernán (I)	Club de señoritas (1956)		-1
6562688	Verdier, Jean	Adieu (2003)	Agriculteur	15
6564221	Vernon, Bobby	Voice of Hollywood No. 3, The (1929)	Himself	-1
6565291	Vernon, Thom	General Hospital	Lonnie (1997)	5
6566213	VeSota, Bruno	Patty (1962)	Colbert	9
6567669	Vibert, Ronan	Grass Arena, The (1991)	Charles	-1
6567811	Vicens, Luis (I)	Reed, México insurgente (1973)		-1
6567893	Vichi, Gerald	Beer (1985)	Bartender Freddie	14
6568024	Vickery, John (I)	Edge of Night, The	Constantine (aka Richard Scanlon) (1983)	11
6569343	Vidal, Nacho	No Limits 4 (2003) (V)		-1
6569478	Vidalin, Robert	Bossu, Le (1934)		-1
6569775	Vidov, Oleg	Ya shagayu po Moskve (1963)		10
6570102	Vieira, Manoel	Tudo é Música (1957)		-1
6571278	Vijay, Thalaivasal	Magalir Mattum (1994)	Papamma's Husband	-1
6572119	Vilela, Diogo	Semideus, O		-1
6573480	Villaret, João	Pai Tirano, O (1941)		31
6573663	Villarreal, Norberto	Pequeños gigantes, Los (1960)		-1
6573898	Villatoro, Carlos (I)	No te engañes corazón (1937)		-1
6574493	Villiers, Christopher	Young Sherlock: The Mystery of the Manor House	Jasper Moran	-1
6574882	Vinair, Jacques	Maîtresse pour couple (1979)	Georges	4
6575049	Vincent, Billy	I Was a Communist for the FBI (1951)	Striker in Picket Line	-1
6575417	Vincent, Paul (I)	Edge of Night, The	Ashley Reynolds (1973)	11
6575475	Vincent, Roger	Valet maître, Le (1941)	Un membre du club des 'Patineurs'	-1
6575612	Vincent, Serge	Conte à regler (1978)		-1
6575933	Vine, John	Not a Penny More, Not a Penny Less (1990) (TV)	Adam Foster	-1
6576162	Vinicio	Jawbreakers (2001) (V)		-1
6576416	Vinroot, Fred	Edge of Night, The	Fred (1968)	11
6576454	Vinson, Robert	Gigli (2003)	Beach Dancer	55
6576978	Visan, Iulian	Cine ma striga? (1979)	Tudor	3
6577170	Viscogliosi, Henri	Point douloureux, Le (1979)		-1
6577211	Viscusi, Greg	Big Pile, The (1985)	Chip N' Dale's Dancer	13
6578345	Vitale, Bobby	Primal Instinct (1996) (V)		6
6578509	Vitali, Alvaro	Dottoressa sotto il lenzuolo, La (1976)		4
6578808	Vito (I)	Miei più cari amici, I (1998)		12
6579334	Vittrup, Kai	Europa på spil (2002) (TV)	Himself - Chief Police Inspector	-1
6579483	Vivas, Eduardo	No te engañes corazón (1937)		-1
6580275	Vlahos, Sam	General Hospital	Felipe Morez (1994)	5
6580539	Vockroth, Frank	Tatort - Kindstod (2001) (TV)	Jürgen	12
6580589	Vodenicharov, Kamen	Ispanska muha (1998)	Serzhant Kiro	2
6580637	Voellenklee, Markus	Anna - annA (1993)	Philipp	8
6580798	Vogan, Emmett	Failure at Fifty, A (1940)	50 Year Old Jobless Man	-1
6580889	Vogan, Emmett	Lady, Let's Dance (1944)	Stack	12
6581349	Vogel, Jürgen	Tatort - Der vierte Mann (2004) (TV)		-1
6581663	Vogelbacher, Markus	Zycie za zycie (1991)	Fritsch	14
6582035	Voglis, Yannis	Egoistes, Oi (1971)		1
6583116	Volkov, Mikhail	Prival strannikov (1991)		-1
6583220	Volkov, Vladimir	Ya shagayu po Moskve (1963)		-1
6583785	von Alten, Ferdinand	Jagd nach der Wahrheit, Die (1920)		6
6584037	von Berlepsch, Tilo	Barrings, Die (1955)	Emanuel von Eyff	10
6584083	von Besser, Eric	Anarchy TV (1997)	Prisoner	29
6584285	von Brincken, Wilhelm	Melody Lingers On, The (1935)	Austrian Officer	-1
6584951	von Franckenstein, Clement	Lionheart (1990)	English Investor	29
6585045	von Gadow, Mogens	Meister Eder und sein Pumuckl	Herr Hufnagel	-1
6585276	von Hassel, Karl-Heinz	Tatort - Kein Kinderspiel (1980) (TV)	Rainer Wolf	6
6585423	von Jascheroff, Mario	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Thomas Pabst	4
6585536	von Klipstein, Ernst	Barrings, Die (1955)	Dr. Bremer	11
6585700	von Leer, Hunter	Making of a Male Model (1983) (TV)	Director	-1
6585719	von Leer, Hunter	General Hospital	Larry Baker #1 (1977)	5
6585772	von Loewis, Erik	Barrings, Die (1955)	Hofrat Herbst	12
6585817	von Malachowsky, Alexander	Meister Eder und sein Pumuckl	Polizist	-1
6586303	von Muhr, Wilhelm	Katzensteg, Der (1915)	Baron von Schranden	1
6586620	von Richthofen, Christian	Seine beste Rolle (1989) (TV)	Stefan	3
6586857	von Seyffertitz, Gustav	Bat Whispers, The (1930)	Dr. Venner	12
6587052	von Sonn, Christopher	Wild Pair, The (1987)	Deliveryman	21
6587293	von Sydow, Max	Ingen mans kvinna (1953)	Olof	6
6587893	von Zell, Harry	Triple Play: Roger Corman, Hollywood's Wild Angel (1980)		-1
6587966	Vondracek, Frantisek	Waterloo po cesku (2002)		23
6588557	Voscherau, Carl	Maulkorb, Der (1958)	Arbeiter	20
6589194	Voutsas, Kostas	Jack o kavalaris (1979)	Jack	1
6589671	Voyeur, Vince	Primal Instinct (1996) (V)		9
6589902	Voß, Siegfried	Tatort - Tod aus der Vergangenheit (1992) (TV)	Petzhold	9
6590055	Vrana, Vlasta	Hey Babe! (1980)	Roy	-1
6590373	Vrhovec, Janez	Poslednja trka (1979)		-1
6590478	Vries, Edwin de	Do Not Disturb (1999)	Guest In Housecoat	-1
6590617	Vroom, Marinus	Do Not Disturb (1999)	Surprised Customer	-1
6591059	Vujisic, Pavle	Poslednja trka (1979)	Mikos	-1
6591974	Vándory, Gusztáv	Iza néni (1933)		-1
6591984	Vándory, Gusztáv	Mai lányok (1937)	Anyakönyvvezetõ	-1
6592290	Vázquez, Fernando (II)	Agujetas en el alma (1998)	Operador vídeo	42
6592865	Vízner, Oldrich	Waterloo po cesku (2002)	Dr. Zawinul	3
6592999	Völz, Wolfgang	Meister Eder und sein Pumuckl	2. Zoowärter	-1
6593194	Wachtveitl, Udo	Tatort - Der Fremdwohner (2002) (TV)	Kriminalhauptkommissar Franz Leitmayr	2
6593195	Wachtveitl, Udo	Tatort - Der Prügelknabe (2003) (TV)	Kriminalhauptkommissar Franz Leitmayr	2
6593215	Wachtveitl, Udo	Tatort - Schwarzer Advent (1998) (TV)	Kriminalhauptkommissar Leitmayr	2
6593660	Wade, Michael (I)	John and the Missus (1987)	Sid Peddigrew	8
6593671	Wade, Mike	Last Enchantment (1995)	Aurther	-1
6593972	Wadsworth, William	Martyrdom of Philip Strong, The (1916)	Dunn	7
6594172	Wagenheim, Charles	Respect the Law (1941)	Johnson's Secretary	-1
6594471	Wagner, Chuck	General Hospital	Randall Thompson (1987)	5
6594630	Wagner, Germain	Tatort - Schwarzer Advent (1998) (TV)		-1
6594683	Wagner, Jack (I)	General Hospital	Dr. Andrew 'Frisco' Jones (1983-1988, 1989-1991, 1994-1995)	5
6595291	Wagner, Robert (I)	Trials of Rosie O'Neill, The	Peter Donavan (1992)	-1
6595918	Wahlquist, Andrew J.	Face in the Frame, The (1998)	Renegade Agent 1	-1
6596337	Waite, Ralph	Lovely Way to Die, A (1968)	Sean Magruder	9
6597577	Wald, John	Respect the Law (1941)	Radio Commentator	-1
6597669	Waldow, Ernst	Maulkorb, Der (1958)	Gerichtsvorsitzender	8
6598846	Walken, Christopher	Gigli (2003)	Det. Stanley Jacobellis	9
6598955	Walker Jr., Robert	Making of a Male Model (1983) (TV)	Joseph	-1
6599035	Walker, Ben (I)	He Won a Ranch (1914)	Jim Bell	3
6599214	Walker, Charles (I)	General Hospital	Rev. Phillips (1994)	5
6599333	Walker, David (XII)	General Hospital	Tom Baldwin, Sr. #3 (1982-1984)	5
6600240	Walker, Paul (III)	Wastelands (1993)		-1
6600300	Walker, Ray (I)	Atomic Kid, The (1954)	Newspaperman	-1
6600613	Walker, Robert (II)	Man from New Mexico, The (1932)	Mort Snyder	3
6600743	Walker, Roger (I)	Picking up the Pieces	Barry Courtland	-1
6600744	Walker, Roger (I)	Rainbow	Singer (1979)	-1
6600807	Walker, Scott (I)	Muppet Movie, The (1979)	Frog Killer	23
6600866	Walker, Sydney	Lovely Way to Die, A (1968)		30
6600887	Walker, Tommy (I)	Atomic Kid, The (1954)	Enlisted Man	-1
6601442	Wallace, Danny	General Hospital	Dr. Tom 'Tommy' Baldwin, Sr. #4 (1987-1993)	5
6601595	Wallace, George (I)	Edge of Night, The	Dr. Leo Gault (1980)	11
6601708	Wallace, Jack (I)	Anarchy TV (1997)	Mr. Harris	14
6602254	Wallach, Eli	Lovely Way to Die, A (1968)	Tennessee Fredericks	3
6603270	Wallice, Marc	Hard to Thrill (1991) (V)		-1
6603807	Walling, Sterling	Edge of Night, The	Eddie Vaughn (1979)	11
6604049	Wallraff, Diego	Ginevra (1992)	Artus	-1
6604574	Walsh, Dermot	Tarnished Heroes (1961)	Maj. Roy Bell	1
6604663	Walsh, Frank (I)	Married? (1926)	Harvey Williams	-1
6604878	Walsh, James (II)	Big Pile, The (1985)	Chip N' Dale's Dancer	12
6605799	Walter, Ruedi	Go-Go-Girl vom Blow Up, Das (1969)		3
6606192	Walters, Jack (I)	They Were Four (1917)		6
6607308	Waltz, Christoph	Zycie za zycie (1991)	Jan	2
6607626	Wanderone Jr., Rudolph	Celebrity Billiards	Himself	-1
6607922	Wang, Jingming	Shadow Magic (2000)	Old Liu	6
6607943	Wang, Lee-Hom	Lei ting zhan jing (2000)	Alex Cheung	5
6608456	Wanka, Rolf	Tatort - 3:0 für Veigl (1974) (TV)	Färber	17
6609223	Ward, Chance	Bat Whispers, The (1930)	Police lieutenant	1
6609661	Ward, John (I)	Holt of the Secret Service (1941)	'Lucky' Arnold	3
6610197	Ward, Sandy	Some Kind of Hero (1982)	Col. Maxwell	-1
6610321	Ward, Tiny	Burglar, The (1928)		-1
6610746	Warde, Harlan	I Was a Communist for the FBI (1951)	FBI Agent	-1
6611166	Ware, Tim	Bobby Jones, Stroke of Genius (2004)	George Adair	52
6611224	Warfield, Chris	Unstrung Heroes (1995)	Mr. Clements	21
6611495	Warlock, Billy	General Hospital	Alan 'A. J.' Quartermaine, Jr. #8 (1997-2003)	5
6612009	Warner, J.B.	Rounding Up the Bandits (1923)	Bill Keats	1
6611947	Warner, H.B.	Son-Daughter, The (1932)	Sin Kai	7
6612176	Warner, Richard (I)	Shadow of the Cat (1961)	Edgar Venable	4
6612895	Warren, Gomez	General Hospital	Stan (2003-present)	-1
6613024	Warren, Kenneth J.	Fiction Makers, The (1968)	Warlock	4
6613293	Warren, Steve (III)	Bobby Jones, Stroke of Genius (2004)	Reporter	54
6613539	Warry-Smith, Dan	Vow to Kill, A (1995) (TV)	Kevin Anson	-1
6613999	Warwick, Robert (I)	Unmasked (1929)	Craig Kennedy	1
6614493	Washington, Blue	I Was a Communist for the FBI (1951)	Black Man at Union Meeting	-1
6614742	Washington, Keith (I)	General Hospital	Keith Jasper (1991)	5
6615230	Wasti	1857 (1946)		-1
6599502	Walker, Gerald (I)	Edge of Night, The	Police Officer Sweeney (1982)	11
6599505	Walker, Gerald (II)	Edge of Night, The	Police Officer Sweeney (1962)	11
6600165	Walker, Nicholas	General Hospital	Jimmy O'Herlihy (1989-1990)	5
6616165	Waters, Russell	I Could Go on Singing (1963)	Reynolds	6
6616727	Watkin, Pierre	Valley of the Giants (1938)	Banker #2	-1
6616748	Watkins, Adrian	Trials of Life (1997) (TV)	Paris at 5	-1
6616938	Watkins, Tuc	General Hospital	Pierce Dorman #2 (1996-1997)	5
6617447	Watson, Delmar (I)	Our Gang Follies of 1936 (1935)		-1
6617704	Watson, Jimmy	Highway 61 (1991)	Highway Panhandler	26
6617840	Watson, Michael (I)	General Hospital	Decker Moss (1989-1991)	5
6617931	Watson, Minor	Flight Lieutenant (1942)	Maj. John Thompson	5
6618367	Watson, Wylie	Happy Go Lovely (1951)	Stage Door Keeper	14
6618485	Watt, Nathan	Unstrung Heroes (1995)	Steven/Franz Lidz	5
6619419	Watts, George (I)	Tall, Dark and Handsome (1941)	Joe	17
6619541	Waugh, Jackson	Warning: Parental Advisory (2002) (TV)	Photographer	-1
6618806	Way, Guy	Atomic Kid, The (1954)	Lieutenant	-1
6620478	Weary, A.C.	Edge of Night, The	Gary Shaw (1984)	11
6620814	Weaver, Dennis (I)	Virginian, The (2000) (TV)	Sam Balaam	13
6621686	Webb, Richard (I)	I Was a Communist for the FBI (1951)	Ken Crowley, FBI Chief	5
6621735	Webb, Robert (VI)	Meaningful Sex (2000) (TV)	Graham	2
6622019	Webber, Timothy (I)	John and the Missus (1987)	Danny Boland	6
6622768	Weber, Chris (II)	Rave (2000)	Sky	16
6622885	Weber, Gregor	Tatort - Veras Waffen (2003) (TV)	Stephan	2
6622939	Weber, Jacques	Dernier mot, Le (1991) (TV)		-1
6622940	Weber, Jacques	Don Juan (1998)	Don Juan	1
6623071	Weber, Larry	Edge of Night, The	Austin Johnson (1962-1963)	11
6622513	Webster, Peter (I)	Edge of Night, The	Pietro (aka Ellis Campbell) (1982)	11
6623197	Weck, Peter	Weiße Stadt, Die (1980) (TV)	Mladen Raikow	1
6623869	Wegenbreth, Peter	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Vorsitzender der Konfliktkommission	-1
6624018	Wegrostek, Oskar	Tatort - Mordverdacht (1971) (TV)		-1
6624396	Weicker, Herbert	Tatort - 3:0 für Veigl (1974) (TV)	Kroneis	20
6624508	Weigang, Rüdiger	Tatort - Kein Kinderspiel (1980) (TV)		20
6625162	Weiner, Tex	General Hospital	Young Stone (Mike Cates) (1993)	5
6625199	Weingartener, Steve	Terra (2003)	Father	-1
6625453	Weintraub, Carl	Flying Blind (1990) (TV)	Loverboy	6
6625542	Weinzierl, Kurt	Meister Eder und sein Pumuckl	Herr Eichinger	-1
6625750	Weisert, Gabe	Fishing with Gandhi (1998)	Stephen	4
6625776	Weishappel, Gustl	Tatort - 3:0 für Veigl (1974) (TV)	Kuhnert	8
6625782	Weishappel, Gustl	Meister Eder und sein Pumuckl	Lehrer	-1
6625921	Weiss, Daniel (II)	Egoists, The (2003)	Lawrence Childs	5
6626021	Weiss, Heinz	Tatort - Feuerzauber (1977) (TV)	Georg Kastrup	-1
6626251	Weiss, Shaun	Rave (2000)	Lazy	6
6626276	Weiss, Warren	Real Bullets (1990)	Jim's Henchman	32
6626615	Weissmuller, Johnny	Tarzan Finds a Son! (1939)	Tarzan	1
6626704	Weitz, Bruce	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Burton Weinstein	12
6626954	Welch, Christopher Evan	Custody (2000)	Wally	-1
6627267	Welch, Wally	Substitute Wife, The (1994) (TV)	Jake	14
6615501	Watanabe, Kunio (I)	Akai yuhi ni terasarete (1925)	Spy	-1
6615935	Waters, Floyd	Jawbreakers (2001) (V)		-1
4504938	Allison, Ralph	Boys of St. Vincent, The (1992) (TV)	Official	19
4506750	Alonso, Fernando (I)	Monosabio, El (1977)	José Mari Guzmán	28
4506779	Alonso, Johnny	Number's Alive! (1996) (TV)	Johnny Kowolski	1
4507388	Alper, Murray	Big Tip Off, The (1955)	Hal Trenton	9
4507598	Alpert, Dennis C.	Knight Rider (1982) (TV)	Security Guard	-1
4508046	Altai, Armand	Conte à regler (1978)		-1
4508074	Altamirano, Pedro	Valentina	Gerardo	-1
4508651	Altman, Bruce	Four Simples Rules (2003)		-1
4509310	Alvarado, Nathan	CTV	Host	-1
4509408	Alvarez, Auggi	Moonchild (1994) (V)		-1
4509442	Alvarez, George	General Hospital	Alex Garcia #1 (1992-1994, 1995-1999)	5
4509598	Alverez, Roberto	Trials of Life (1997) (TV)	Jr.	-1
4510987	Amat, Jordi	Caja 507, La (2002)	Guardia Seguridad de Bancosol	7
4512559	Amico, Robert	General Hospital	Dockworker (1992)	-1
4513426	Amos, Keith	General Hospital	Eric Nash (1990)	5
4513442	Amos, William T.	Lionheart (1990)	Drug Dealer	12
4513645	Amrapurkar, Sadashiv	Return of Jewel Thief (1996)	Jabisco	-1
4514218	Anand, Dev	Loot Maar (1980)		-1
4514242	Anand, Dev	Return of Jewel Thief (1996)	Amar,Vinay	-1
4514953	Ander, Régis	Point douloureux, Le (1979)		-1
4514968	Anderako, Mark	Virginian, The (2000) (TV)	Mr. Odgen	17
4515787	Anderson Jr., Michael	Making of a Male Model (1983) (TV)	Sven	-1
4516451	Anderson, Doug (I)	Beer (1985)	Policeman	43
4516587	Anderson, Ernest (I)	I Was a Communist for the FBI (1951)	Black Man	-1
4517546	Anderson, Larry (I)	Knight Rider (1982) (TV)	Michael Long	-1
4517945	Anderson, Richard (I)	Holiday for Sinners (1952)	Father Victor	5
4517957	Anderson, Richard (I)	Knight Rider (1982) (TV)	Dr. Ralph Wesley	9
4518027	Anderson, Richard Dean	Pandora's Clock (1996) (TV)	Captain James Holland	1
4518034	Anderson, Richard Dean	General Hospital	Dr. Jeff Webber (1976-1981)	5
4518401	Anderson, Sugarfoot	I Was a Communist for the FBI (1951)	Black Man	-1
4519361	Andorai, Péter	Amerikai cigaretta (1977)	Ticket tout	8
4519674	Andrae, Manfred	Tatort - Willkommen in Köln (1997) (TV)		-1
4519806	Andreas, George Pan	General Hospital	George (1983)	5
4519998	Andrei, Damir	Vow to Kill, A (1995) (TV)	Everett Thayer	-1
4520262	Andress, Herb	Tatort - Schimanskis Waffe (1990) (TV)	Baretti	5
4520301	Andreu, Gogó	Casamiento de Chichilo, El (1938)		-1
4520900	Andrews, Drew	Marine Crucible (1997)		-1
4521130	Andrews, Harry	Solomon and Sheba (1959)	Baltor	8
4521268	Andrews, Mark (V)	Edge of Night, The	Chad Sutherland (1982)	11
4521271	Andrews, Martyn	Do Not Disturb (1999)	Security Guard	-1
4521374	Andrews, Réal	General Hospital	Det. Marcus Taggart #1 (1996-1997, 1998-2003)	5
4521612	Andrews, Stanley (I)	Northwest Stampede (1948)	Bowles (horse auctioneer)	6
4522163	Andries, Rik	Speelmeisje (1968)	Bewaker	-1
4522364	Andronico, Enzo	Dottoressa sotto il lenzuolo, La (1976)		9
4523674	Angelini, Giuseppe	Vita da cani (1950)		23
4524117	Angerkoski, Kaarlo	Mies Marseillesta (1937)	Jere Renkonen	2
4524846	Anker, Marshall	Forbidden Under the Censorship of the King (1972)		-1
6627563	Weldon, Jimmy	Funny Boners	Host	1
4526272	Anthony, Gerald	General Hospital	Marco Dane (1992-1993)	5
4526286	Anthony, J.P.	Eclipse (1993) (V)		-1
4527373	Antonini, Marty	Virginian, The (2000) (TV)	Craig	23
4527510	Antonio, Lou	Face to Face (1990) (TV)	Dr. Calvin Finch	-1
4527532	Antonio, Maro	Chompin' at the Bit (1997) (V)		-1
4528106	Antwine, Tim	Face in the Frame, The (1998)	Steve	-1
4528813	Apel, Friedmar	Barrings, Die (1955)	Malte mit 4 Jahren	-1
4528814	Apel, Hartmut	Barrings, Die (1955)	Malte mit 2 Jahren	-1
4529313	Appel, Craig	General Hospital	Biker	7
4530354	Aragón, Alejandro	Años perdidos, Los		-1
4531223	Aranha, Edgar Gurgel	Em Cada Coração um Punhal (1970)	(segment "Clepsusana")	11
4530543	Araújo, José	Tronco do Ipê, O	Pedro	-1
4530568	Araújo, Paulo	Grande Família, A	Agostinho	-1
4530572	Araújo, Paulo	Rainha Louca, A		-1
4530818	Arbour, Patrice	Sous les draps, les étoiles (1989)		-1
4532726	Arce, Roberto	Espejo público	Host (1998-2002)	2
4533395	Arcuragi, Tom	Bobby Jones, Stroke of Genius (2004)	Ralph Reed	11
4534874	Arent, Eddi	Go-Go-Girl vom Blow Up, Das (1969)	Dr. Adler	1
4535044	Aresco, Joey	General Hospital	Moreno (1998)	5
4537556	Arliss, George	Old English (1930)	Sylvanus 'Gordy' Heythorp, also called 'Old English'	1
4537841	Armani, Michael (II)	Pandora's Clock (1996) (TV)	Passenger	-1
4538637	Armitage, Graham	Fiction Makers, The (1968)	Carson	12
4539068	Armstrong, Billy	It's a Boy (1920)		-1
4539356	Armstrong, Hank	Southern Comfort (1995) (V)		-1
4539562	Armstrong, Mark	Demon Possessed (1993)	Bar Lout	8
4540072	Arnal, Laurent	Adieu (2003)	Le client	11
4540496	Arnell, Eddie	Coeurs de couleur (1989)	Jean-Paul	1
4541940	Arnold, Mark (I)	Edge of Night, The	Gavin Wylie (1980-1983)	11
4542029	Arnold, Phil	Main Street Kid, The (1948)	Riley	10
4541208	Arnold, Victor (II)	Edge of Night, The	Joe Bulmer (1982)	11
4541210	Arnold, Walter	Daikaijû Gamera (1965)	American Ambassador	-1
4541482	Arnstedt, Andreas	Und tschüss! - Ballermann olé (1997) (TV)	Zombie	2
4542152	Aro, Antti	Angela ja ajan tuulet	Professor	-1
4542371	Aronsson, Gustaf	A.-B. gifta bort baron Olson (1928)	Weller	5
4542412	Arora, Vijay	Kadambari (1976)		1
4544222	Artero, Juan José	Verano azul	Javi	5
4544387	Arthur, Gerald	Real Bullets (1990)	Sallini's Goon	28
4544887	Arundell, Teddy	Question of Trust, A (1920)	Jouvain	3
4545274	Arvizu, Jorge	Toda una vida		-1
4545663	Asakura, Keiji	Kôsoku sentai Tâborenjâ	Yôhei Hama/Blue-Turbo	3
4545902	Asche, Oscar	Private Secretary, The (1935)	Robert Cattermole	4
4546227	Ash, Sam	Unmasked (1929)	Billy Mathews	3
4546403	Ashby, Robert	Love Potion (1987)	Robert Badel	3
4546834	Ashford, Matthew	General Hospital	Dr. Tom 'Tommy' Hardy #5 (1995-1997)	5
4547535	Ashley, Mark (II)	No Limits 4 (2003) (V)		-1
4547652	Ashmore, Frank	General Hospital	Corrigan (1981)	5
4547666	Ashmore, Peter	Fiction Makers, The (1968)	Finlay Hugoson	9
4525357	Annunziata, Nick	General Hospital	Stan (mobster) (1999-2001)	5
4526164	Anthony Rodriguez, Philip	Jake 2.0: The Tech (2003) (TV)	Kyle Duarte	4
4547743	Askenazy, Ludvík	Tatort - 3:0 für Veigl (1974) (TV)	Mallik	18
4548005	Askwith, Johnny (I)	Highway 61 (1991)	Claude	10
4548028	Askwith, Robin	Infidelities (1983) (TV)	Alec	-1
4548907	Asner, Edward	Not a Penny More, Not a Penny Less (1990) (TV)	Harvey Metcalfe	-1
4548977	Asner, Edward	Trials of Rosie O'Neill, The	Walter Kovacs (1991-1992)	-1
4548984	Asner, Hans-Dieter	Tatort - Schlußverkauf (1978) (TV)	Direktor Haslauer	-1
4549442	Asrani	Santaan (1993)		9
4549666	Assböck, Joachim Paul	Tatort - Willkommen in Köln (1997) (TV)	Zorro	-1
4549813	Assmann, Hans-Jörg	Fast perfekt verlobt (2003) (TV)	Seckbach	5
4550091	Astangov, Mikhail	U nikh yest rodina (1950)		-1
4551943	Atkins, Ross	Tony's Big Brother (1993) (V)		6
4552307	Atkinson, Scott	Unknown Cyclist, The (1998)	Lance	7
4553028	Atterton, Edward	Ichigensan (1999)		-1
4553232	Atwater, Barry	General Hospital	Dr. John Prentice (1964-1967)	5
4553616	Auberjonois, Rene	Teenage Tease (1983)		-1
4553866	Aubrey, James	Infidelities (1983) (TV)	The Prince	-1
4554068	Aubrey, Jimmy	Overland Riders (1946)	Deputy Joe	-1
4554545	Audley, Harry (I)	Not a Penny More, Not a Penny Less (1990) (TV)	Trevor	-1
4554637	Audubert, Louis-Marie	Parfum d'Yvonne, Le (1994)	Singer	13
4554889	Auer, Mischa	Up in Mabel's Room (1944)	Boris	4
4554991	Aufaure, Claude	Parfum d'Yvonne, Le (1994)	Spaniel Headed Man	9
4555002	Auffray, Jacques	4 aventures de Reinette et Mirabelle (1987)	Le tapeur	13
4555469	Augustine, Craig	Edge of Night, The	Johnny Gentry (1981-1982)	11
4555761	Aull, Bill	Real Bullets (1990)	Sheriff's Deputy	58
4555920	Aumont, Jean-Pierre	Dernier mot, Le (1991) (TV)		-1
4556286	Aurelius, Marcus	Black Thunder (1997)	Hinkle	-1
4556841	Austin, Larry	Virginian, The (2000) (TV)	Diamond Joe	29
4557967	Avari, Erick	General Hospital	Ahmed Hakeem (1991)	5
4558190	Aveline, Dominique	Maîtresse pour couple (1979)	Edmond Larchaud	3
4558297	Avendaño, José Luis	Amantes frios, Los (1978)	Hombre III ("Los Amantes frios")	25
4558692	Avery, Pete	Hobbies: Model Bus Collector (2002)	Wolfie	-1
4559665	Axelrod, Jack	General Hospital	Victor Jerome (1988-1989)	5
4560181	Ayer, Harold	Voices, The (1955) (TV)	Gen. Kirkland	-1
4560892	Ayones, Miguel	Toda una vida		-1
4560916	Ayr, Michael	General Hospital	Stockton (1992)	5
4560998	Ayres, Jerry	General Hospital	David Hamiliton (1977-1978)	5
4561104	Ayres, Mitchell	Lady, Let's Dance (1944)	And His Orchestra	-1
4561261	Ayuso, Manuel	Monosabio, El (1977)	Veterinarian	14
4561423	Azarow, Martin	Some Kind of Hero (1982)	Tank	9
4561595	Azerot, Alain	Amoureux, Les (1994)	Halpha	19
4562193	Azzopardi, Charlie	Highway 61 (1991)	Rock Band Member #2	30
4562503	Babagee	Jawbreakers (2001) (V)		-1
4562670	Babbar, Raj	Chann Pardesi (1980)	Laali - Kammo's son	1
4562721	Babbar, Raj	Main Awara Hoon (1983)		2
4562876	Babenko, V.	Ya shagayu po Moskve (1963)		-1
4562886	Baber, Sidney	General Hospital	King (1990)	5
4562947	Babic, Miodrag	Poslednja trka (1979)		-1
4548482	Ashton, Mark	Rave (2000)	Bouncer #2	27
6627961	Welker, Frank	Littles, The		-1
4563509	Baccaro, Salvatore	Mondo candido (1975)	Orco	7
4563600	Bach	Bach détective (1936)	Narcisse	-1
4563844	Bacharach, Burt	Bacharach: One Amazing Night (1998) (TV)	Himself	1
4564082	Bachir, Younes	Caja 507, La (2002)	Khaled	10
4564556	Backus, David	Gigli (2003)	Laundry Customer	3
4566374	Badin, Jean	Trois couronnes du matelot, Les (1983)	Un officier	3
4566387	Bading, Thomas	Tatort - Tod aus der Vergangenheit (1992) (TV)		13
4566487	Badu	Tudo é Música (1957)		-1
4566545	Badía, Juan Alberto	Badía y Cia	Host	-1
4567015	Baer, Max	Two Roaming Champs (1950)		1
4567475	Bages, David	Un per l'altre, L'	Calafell	6
4568407	Bahadur, Paul	Voices, The (1955) (TV)	Dhevu	-1
4568617	Bahner, Blake	General Hospital	Gary (1992)	5
4568734	Bai, Dezhang	Huan le ren jian (1959)	Jiangming	-1
4569046	Bailey, Dennis	General Hospital	Dist. Atty. Michael Schultz (1991)	5
4569389	Bailey, Mark (I)	General Hospital	Various roles (1963-1991)	5
4569748	Bailey, William (I)	I Was a Communist for the FBI (1951)	Lawyer	-1
4570161	Bain, Conrad	Lovely Way to Die, A (1968)	James Lawrence	21
4570173	Bain, Conrad	Edge of Night, The	Dr. Charles Weldon #1 (1970)	11
4570265	Bainbridge, Sherman	Isle of Abandoned Hope (1914)		4
4570388	Baio, Joey	Edge of Night, The	Randy Crawford #1 (1966-1967)	11
4570443	Baio, Steven	General Hospital	Johnny (1982-1989)	5
4570734	Bajcar, Mark	Sk8 Life (2004)	Mark	-1
4571365	Baker, Benny	Thunderbirds (1952)	Pvt. Charles Klassen	15
4571732	Baker, Dusty	Last Enchantment (1995)	Executioner	-1
4572021	Baker, George (I)	At Bertram's Hotel (1987) (TV)	Chief Insp. Fred Davy	6
4572918	Baker, Scott Thompson (I)	General Hospital	Colton Shore (1988-1991)	5
4572982	Baker, Silver Tip	Man from New Mexico, The (1932)	Langton Rider	-1
4573292	Bakewell, William	Bat Whispers, The (1930)	Brook	4
4574038	Balabanov, Sergei	Prival strannikov (1991)		-1
4574139	Balakin, Boris	Ya shagayu po Moskve (1963)		-1
4574219	Balanchivadze, V.	Chirveuli mezoblebi (1945)		-1
4575395	Baldwin, Alec	Cutter to Houston	Dr. Hal Wexler	3
4575598	Baldwin, Peter (III)	At Bertram's Hotel (1987) (TV)	Mr. Humfries	-1
4576400	Balin, Richard	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Judge #2	32
4576605	Ball, Frank	Man from New Mexico, The (1932)	'Dad' Langton	6
4576638	Ball, George (I)	General Hospital	Real Van Gelder (1982)	5
4576726	Ball, Ralph	Fiction Makers, The (1968)	Photographer	20
4576860	Ball, Vincent (I)	Voices, The (1955) (TV)	Locke	-1
4578084	Ballista, Gigi	Dottoressa sotto il lenzuolo, La (1976)		14
4578126	Ballista, Gigi	Trastevere (1971)	Il conte	8
4578225	Balme, C.	General Hospital	Rick Webber, Jr. (1986)	5
4577760	Balsamo, William	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		4
4578485	Baltes, Alan	General Hospital	Police Cadet McDonald (1985-1986)	-1
4578877	Balzaretti, Jorge	Amantes frios, Los (1978)	Nardo (segment "Los Amantes frios")	21
4579197	Bamberry, Lee Jay	They Nest (2000) (TV)	Guy Barter	9
4579448	Ban, Junzaburo	Shin kitsune no tameki (1962)		4
5491988	Jugnu (I)	Kadambari (1976)		4
4579708	Bancroft, Cameron	General Hospital	Ray (late 1980s)	5
4580129	Bando, Tsumasaburo	Oushou (1948)		1
4580454	Banfi, Lino	Moglie in vacanza... l'amante in città, La (1980)		4
4580640	Bangs, Richard (II)	Jawbreakers (2001) (V)		-1
4580775	Banier, François-Marie	4 aventures de Reinette et Mirabelle (1987)	1er passant	4
4581010	Banks, David (I)	Some Kind of Hero (1982)	Disc Jockey	-1
4582978	Baragrey, John	Daikaijû Gamera (1965)	Capt. Lovell	-1
4583120	Baran, J. Michael	General Hospital	Waiter (1981)	-1
4585271	Barcellos, Jaime	Rainha Louca, A	Fernando	-1
4585373	Barceló, José Luis	Monosabio, El (1977)	Mayor	15
4585459	Barcis, Artur	Zycie za zycie (1991)	Father Anselm	3
4585623	Barclay, Don	Valley of the Giants (1938)	Drunk	-1
4585913	Barcroft, Roy	Main Street Kid, The (1948)	Torrey	9
4586099	Bard, Ben	Bat Whispers, The (1930)	The Unknown	16
4586120	Bard, Ben	Son-Daughter, The (1932)	Fen Sha's Servant	-1
4586128	Bard, Dayton	Junky's Christmas, The (1993)	Christmas dinner friend	-1
4586423	Bardette, Trevor	Flight Lieutenant (1942)	Carey	10
4586535	Bardette, Trevor	Valley of the Giants (1938)	Complaining landowner	-1
4587242	Bargielowski, Marek	Weryfikacja (1987)	Marianek	8
4587815	Barker, Evan (II)	Platoon Leader (1988)	Klinski	13
4588889	Barkoulis, Andreas	Galazio diamanti, To		1
4588483	Barnard, Ivor	Quiet Wedding (1941)		-1
4589798	Barnett, Buddy	Deadlock: A Passion for Murder (1997)	Bit	-1
4589804	Barnett, Charlie (II)	Beer (1985)	Himself	20
4589910	Barnett, Chester	Only Woman in Town, The (1912)		2
4590343	Barnett, Walter (II)	Big Pile, The (1985)	Jack Hoffman	2
4590373	Barney, Jay	Lovely Way to Die, A (1968)	The Real Finchley	24
4592061	Barral, Rolando	Toda una vida	Rene Racquer	-1
4590652	Barrat, Robert	Laddie (1940)	Mr. John Stanton	5
4590913	Barreaux, Gérard	Amoureux, Les (1994)	Le père	9
4590976	Barreiro, Jorge (I)	Solo y conmigo (2000)		-1
4592164	Barrella, Gianni	Vita da cani (1950)		5
4592329	Barreto, Arlindo	Palácio de Vênus (1980)		-1
4592636	Barrett, Leslie (I)	Edge of Night, The	Arnold Larraby (1979)/Mr. Eccles (1983)	11
4592972	Barri, Bernabe Barta	Familia Vila, La (1950)		-1
4593060	Barri, Mario	Yank in Viet-Nam, A (1964)	Houng	3
4593687	Barris, Marty	Comedy Tonight	Regular	-1
4593731	Barritt, Ian	Love Potion (1987)	Ben & Nurse Bill	5
4594143	Barros, Carlos	Pai Tirano, O (1941)		27
4594417	Barrow, Bernard	Edge of Night, The	Police guard (1966)/Dist. Atty. Ira Paulson (1974-1975)	11
4594735	Barry, Bruce (I)	Ned Kelly (1970)	George King	6
4596430	Bart, Chris	General Hospital	Dr. Collins (1987)	5
4596608	Bartell, Eddie	Big Idea, The (1934)	Radio Rogue Imitating Amos n' Andy	-1
4596888	Bartha, Justin	Gigli (2003)	Brian	7
4597864	Barton, Dick	Three Men on a Horse (1936)	Gus, a Bookie	-1
4599072	Basch, Harry	General Hospital	Armistead (1983)	5
4599106	Basco, Dante	Rave (2000)	Jay Hoon	4
4599243	Basedow, Rainer	Meister Eder und sein Pumuckl	Redakteur	-1
4599338	Basehart, Richard	Knight Rider (1982) (TV)	Wilton Knight	11
4599395	Baseleon, Michael	General Hospital	Dr. Tony Perelli (1980)	5
4599420	Bash, Kevin	General Hospital	Phillip Wilder (1995)	5
4600249	Basov, Vladimir	Ya shagayu po Moskve (1963)	Floor Polisher	5
4600783	Bassett, William	General Hospital	Wolfgang Von Schuler (1987)	5
4601202	Batelat, Jean-Pierre	Conte à regler (1978)		-1
4602064	Bates, Charles (I)	Tall, Dark and Handsome (1941)		-1
4602400	Bates, Stanley	Rainbow	Bungle (1973-1990)	-1
4602445	Bateson, David	Kongelig familie, En	Narrator	-1
4602560	Bathke, Wolfgang	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Wolfgang Wülff	-1
4602602	Bathurst, Peter (I)	Voices, The (1955) (TV)	Adm. Gould	-1
4602672	Batista de Andrade, João	Em Cada Coração um Punhal (1970)	(segment "O Filho da Televisão")	18
4602688	Batista, Celso	Tronco do Ipê, O	Frederico	-1
4602935	Batstone, Chris (I)	Face in the Frame, The (1998)	Man	-1
4603491	Battle, Joseph	Beer (1985)	Man in Steambath	49
4604044	Bauer, Hans-Uwe	Tatort - Eiskalt (1997) (TV)	Sebastian Schächter	4
4604138	Bauer, Reinhard Vom	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Schnierske	-1
4604209	Bauer, Steven	Rave (2000)	Antonio	8
4604656	Baumann, Hilmar	Romeo und Julia auf dem Dorfe (1984)		-1
4605410	Baviera, José	Ángeles de Puebla, Los (1968)	Padre Alfonso	11
4606686	Bayne, Bruce Davis	Laser Moon (1993)	Police Officer	-1
4606827	Bayrhammer, Gustl	Mein Freund, der Scheich (1981)		-1
4606843	Bayrhammer, Gustl	Tatort - 3:0 für Veigl (1974) (TV)	Kriminaloberinspektor Melchior Veigl	1
4606856	Bayrhammer, Gustl	Tatort - Schlußverkauf (1978) (TV)	Kriminalhauptkommissar Melchior Veigl	-1
4606861	Bayrhammer, Gustl	Tatort - Tod aus der Vergangenheit (1992) (TV)	Veigl, Leiter der Dienststelle	3
4606882	Bayrhammer, Gustl	Meister Eder und sein Pumuckl	Meister Eder	1
4607064	Bazell, Tony	Ned Kelly (1970)	Mr. Scott	7
4607486	Beach, Michael	Critical Assembly (2003) (TV)	Agent Winston	5
4608601	Beasley, Barney	Man from New Mexico, The (1932)	Langton Rider	-1
4608912	Beatty, Jim	Warning: Parental Advisory (2002) (TV)	Al Gore	11
4609548	Beaumont, Bill (II)	Rugby Special	Analyst	-1
4609620	Beaumont, Hugh	Flight Lieutenant (1942)	John McGinnis	-1
4609660	Beaumont, Hugh	Respect the Law (1941)	Reporter	-1
4609783	Beaune, Michel	Entre chats et loups (1985) (TV)	Charles Lambert	3
4610024	Beauvois, Xavier	Amoureux, Les (1994)	L'amant de Marc	5
4610725	Beck, Ashley	Team One (2003)	Masked warrior	-1
4610780	Beck, Brian (II)	General Hospital	Jason Quartermaine (aka Jason Morgan) #2 (1983-1986)	5
4610850	Beck, Heinz	Tatort - 3:0 für Veigl (1974) (TV)	Dr. Pirzel	5
4611012	Beck, Jackson	Edge of Night, The	Willie Saffire (1968-1969)	11
4611635	Becker, Fred	Speed (1925)	Señor Querino	8
4611972	Becker, Rolf	Tatort - Lockvögel (1996) (TV)	Staatsanwalt	4
4612115	Beckett, Andreas	Tatort - Der Fremdwohner (2002) (TV)	Banker	-1
4612241	Beckett, Scotty (I)	Our Gang Follies of 1936 (1935)	Scotty	2
4612323	Beckham, Matt	Egoists, The (2003)	Actor in Line	21
4612367	Beckhaus, Friedrich G.	Tatort - Kein Kinderspiel (1980) (TV)	Fächler	11
4896445	Correia, Manuel	Pai Tirano, O (1941)		28
4612753	Bedard, David (I)	Not a Penny More, Not a Penny Less (1990) (TV)	Sotheby's Auctioneer	-1
4612795	Beddoe, Don	Andy Clyde Gets Spring Chicken (1939)		7
4612953	Beddoe, Don	They Won't Believe Me (1947)	Thomason	7
4613071	Bedford Lloyd, John	Edge of Night, The	Walter Gantz (1983)	11
4613195	Bedi, Kabir	General Hospital	Lord Rama (1983)	5
4613488	Bedouët, Arnaud	Don Juan (1998)	La Violette	10
4613694	Bee, Kenny	You jian chin tian (1981)		3
4613857	Beecroft, Greg	General Hospital	Duke Lavery #2 (1989-1990)	5
4614892	Begg, Alistair	Bobby Jones, Stroke of Genius (2004)	Stewart Maiden	8
4615169	Begley Jr., Ed	Not a Penny More, Not a Penny Less (1990) (TV)	Stephen Bradley	-1
4615250	Begley, Ed (I)	Harvest (1953) (TV)	Karl Zalinka	2
4615572	Behl, Ravi	Boogie Woogie		-1
4615656	Behmer, Ernst	Orlow, Der (1927)		-1
4615853	Behrendt, Klaus J.	Tatort - Kindstod (2001) (TV)	Max Ballauf	1
4615864	Behrendt, Klaus J.	Tatort - Schimanskis Waffe (1990) (TV)	Erwin Spilonska	3
4615872	Behrendt, Klaus J.	Tatort - Willkommen in Köln (1997) (TV)	Max Ballauf	1
4616006	Behrens, Sam	General Hospital	Jake Meyer (1983-1987)	5
4616113	Beierle, Alfred	Wette um eine Seele, Die (1918)		-1
4616144	Beigel, Alain	À la vitesse d'un cheval au galop (1992)	Georges	2
4616271	Beimel, Kurt	Ned Kelly (1970)	Anton Wicks	-1
4616582	Bek, Josef	V trestném území (1947)		-1
4617011	Belanger, Dax	Critical Assembly (2003) (TV)	Reporter	-1
4617246	Belasco, Leon	Tall, Dark and Handsome (1941)	Alfredo	14
4617423	Belding, Dale	Who Killed Doc Robbin? (1948)	Speck	5
4617491	Belfer, Maurice	Elephant in the Living Room (1990)		-1
4619164	Bell, Ralph	Edge of Night, The	Capt. Roderick Turner (1962)/Miguel Torres (1965)	11
4619650	Bellamy, George (I)	Laughing Cavalier, The (1917)	Lord Stoutenberg	3
4619689	Bellamy, Jeff (II)	All or Nothing (1998)		-1
4620187	Belletti, Adolfo	Moglie in vacanza... l'amante in città, La (1980)		13
4621127	Belmonte, Ricky	Junior Cursillo (1968)		-1
4621601	Belozyorov, Pavel	Prival strannikov (1991)		-1
4621620	Belsher, Darcy	Virginian, The (2000) (TV)		11
4622019	Belvaux, Lucas	Hurlevent (1985)	Roch	2
4622706	Benard, Maurice	General Hospital	Michael "Sonny" Corinthos, Jr. (1993-1997, 1998-)	5
4623315	Bender, Henry	Jagd nach der Wahrheit, Die (1920)		7
4623362	Bender, Lawrence	Lionheart (1990)	Garage Fight Heckler	21
4624199	Benedict, Dick (I)	Big Tip Off, The (1955)	1st Hood	6
4625110	Benge, Wilson	Bat Whispers, The (1930)	The Butler	3
4625222	Benge, Wilson	She-Wolf, The (1931)		-1
4625359	Bengtsson, Josua	Ingen mans kvinna (1953)	School Master	-1
4625582	Benham, Harry	Pamela Congreve (1914)		3
4625683	Benichou, Philip	General Hospital	LeBlanc (1988)	5
4625969	Benjamin, Paul	Some Kind of Hero (1982)	Leon	7
4626333	Benn, Walter	Tatort - Feuerwerk für eine Leiche (1988) (TV)		16
4612441	Beckley, William	General Hospital	Albert (1981)	5
4612458	Beckman, Andy	Live with Regis and Kathie Lee	Himself (2003)	-1
4612617	Beckwith, Alan	General Hospital	Store clerk #1 (1981)	-1
4626487	Bennes, John	Beer (1985)	Lawrence Talbot	21
4626582	Bennett, Alan (I)	Pleasure at Her Majesty's (1976) (TV)	Various	-1
4626663	Bennett, Bruce (I)	Big Tip Off, The (1955)	Bob Gilmore	3
4627050	Bennett, Hywel	Where the Buffalo Roam (1966) (TV)	Willy Turner	1
4627799	Bennett, Ray (I)	Northwest Stampede (1948)	Barkis	7
4628053	Benning, Achim (II)	Tatort - 3:0 für Veigl (1974) (TV)	Kriminalrat Schneehans	4
4628094	Bennion, Alan	Not a Penny More, Not a Penny Less (1990) (TV)	Ritz Doorman	-1
4628666	Benskin, Tyrone	Boys of St. Vincent, The (1992) (TV)	Dr. Maynard	29
4628957	Benson, Java	General Hospital	Bouncer	-1
4629926	Benton, Curtis	Three Men on a Horse (1936)	Racetrack Announcer	-1
4630176	Benvenuti, Alessandro	Miei più cari amici, I (1998)		-1
4631133	Beradino, John	General Hospital	Dr. Steve Hardy (1963-1996) (original cast)	1
4630739	Berde, Laxmikant	Santaan (1993)		7
4630842	Beregi Sr., Oscar	Iza néni (1933)		-1
4630888	Berend, István	Mai lányok (1937)	István gazda	-1
4631714	Beretta, Fernando	Asesinato en tres variantes con dos incógnitas y un maniquí (1987)		-1
4632220	Bergen, Eugen	Barrings, Die (1955)	Arnoldi	-1
4632318	Berger, Bill	Edge of Night, The	Emory Warren (1963)	11
4632320	Berger, Bror	A.-B. gifta bort baron Olson (1928)	Efraim Kahn	2
4632339	Berger, Cary	Big Pile, The (1985)	Electrician	26
4632488	Berger, Gregg	Littles, The	William Little	1
4632505	Berger, Gunter	Dreimal die Woche... (1994) (TV)		-1
4632750	Berger, Joe (I)	Tatort - Feuerwerk für eine Leiche (1988) (TV)		21
4632904	Berger, Silvester	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Georg	3
4632979	Berger, Toni	Meister Eder und sein Pumuckl	Toni Schmitt Mechanikermeister	-1
4634207	Bergman, Ted	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	15
4634225	Bergmann, Art	Highway 61 (1991)	Otto	5
4634891	Beristáin, Arturo	Veneno para las hadas (1984)	Fabiola's Father	-1
4635046	Berkel, Christian	Tatort - Schwarzer Advent (1998) (TV)	Rainer Wenisch	3
4635609	Berle, Milton	Muppet Movie, The (1979)	Mad Man Mooney	9
4635637	Berle, Milton	Tall, Dark and Handsome (1941)	Frosty	4
4636480	Bermejo, Charo	Monosabio, El (1977)	Sergeant	10
4637259	Bernard, Butch	All Mine to Give (1958)	Kirk	12
4637284	Bernard, Carl	Voices, The (1955) (TV)	Vernon-Cavendish	-1
4637944	Bernard, Paul (I)	Bach détective (1936)	André	2
4638019	Bernard, Sam (I)	Great Pearl Tangle, The (1916)		-1
4638542	Berner, David	Comrades of Summer, The (1992) (TV)	Director	9
4638641	Bernet, Jaume	Un per l'altre, L'	Poppins	3
4638776	Bernhardt, Kevin	General Hospital	Frisco Jones (temporary replacement) (1984)/Dr. Kevin O'Connor (1985-1986)	5
4639060	Bernsen, Collin	General Hospital	Dennis (1989)	5
4639286	Bernstein, Leonard	Young People's Concerts: Holst - Planets, The (1972) (TV)	Himself (commentator and conductor)	-1
4639926	Berroyer, Jackie	Quand on est amoureux c'est merveilleux (1999)		-1
4640322	Berry, Lloyd	They Nest (2000) (TV)	Lighthouse Keeper	17
4640435	Berry, Richard (I)	Enfant du secret, L' (1996) (TV)	St. Brieux	2
4640639	Berryman, Joe	Warning: Parental Advisory (2002) (TV)	Donald Bean	14
4974518	Dease, John	Ned Kelly (1970)	Whitty	-1
4643019	Besré, Jean	Colombes, Les (1972)	Julien Ferland	-1
4643272	Besser, Horst	Meister Eder und sein Pumuckl	Einer von 3 Buben	-1
4643680	Best, Kevin	General Hospital	Dr. Harrison Davis (1988-1990)	5
4644694	Betts, Jack	Edge of Night, The	Dr. Stein (1978)	11
4644695	Betts, Jack	General Hospital	Dr. Ken Martin (1963)	5
4644881	Betzel, Robert	General Hospital	P.J. Taylor (1977)	5
4645164	Bevan, Billy	It's a Boy (1920)		1
4645254	Bevan, Billy	Small Town Idol, A (1921)	Director	11
4645436	Bevans, Clem	Valley of the Giants (1938)	Clem (old man)	-1
4645656	Bevine, Victor	Trials of Rosie O'Neill, The	Mason Pappas (1991)	-1
4645916	Beyer, Hermann	Luftschiff, Das (1983)		-1
4646219	Bezerra, Washington	Tronco do Ipê, O	Young Lúcio	-1
4646581	Bhagyaraj, Krishnaswamy	Idu Namma Alu (1988)	Gopalasami	-1
4646709	Bharadwaj, Nitish	Ramayan	Ram	-1
4647184	Bhasi, Adoor	Picnic (1975)		-1
4647275	Bhasi, Adoor	Thachali Marumakan Chandu (1974)		-1
4647439	Bhatt, Rahul	Boogie Woogie		-1
4647862	Biafra, Jello	Highway 61 (1991)	Customs Agent #1	6
4649104	Bickford, Allen	Ned Kelly (1970)	Dan Kelly	8
4649194	Bickford, Charles	Valley of the Giants (1938)	Howard 'Steve' Fallon	6
4649496	Bideau, Jean-Luc	Point douloureux, Le (1979)	T.	1
4649785	Biedkyski, Leon	Happy Go Lovely (1951)	Principal Dancer	25
4650343	Bierbichler, Josef	Mein Freund, der Scheich (1981)		-1
4650615	Bieslijn, Mike	Do Not Disturb (1999)	Policeman	-1
4651005	Biggins, Christopher (I)	Infidelities (1983) (TV)		-1
4651759	Biladeau, Benjamin J.	Halfway to Heaven and Hell (2003)	God	-1
4652287	Bilicsi, Tivadar	Heten, mint a gonoszok (1943)	Pázmándy Péter,festõ/Pázmándy Pál,zeneszerzõ;ikrek	-1
4652743	Billard, Ashley	Boys of St. Vincent, The (1992) (TV)	Brian Lunny	6
4653295	Billings, Jack	Happy Go Lovely (1951)	Principal Dancer	21
4653401	Billingslea, Beau	General Hospital	Prof. Russell Stern (1991)	5
4653870	Bim, Eberhard	Tatort - Kein Kinderspiel (1980) (TV)		23
4653885	Bin Hassan, Kemat	Pendekar bujang lapok (1959)	Kemat (Samseng)	15
4654288	Bingham, Howard	Greatest, The (1977)	Himself	8
4654394	Binkley, Allan	New Orleans After Dark (1958)	Bartender	15
4655206	Bird, John (I)	Pleasure at Her Majesty's (1976) (TV)	Various	-1
4655434	Birdthistle, William	Fishing with Gandhi (1998)	Giles	5
4655933	Biro, Barney	Patty (1962)	Narrator	22
4656191	Biscan, Egon	Meister Eder und sein Pumuckl	Herr Meier/Herr Ramsieder	-1
4656538	Bishop, Bill	General Hospital	Dr. Goodman (1995)	5
4656829	Bishop, Patrick Francis	General Hospital	Dr. Yank Chung (1985-1987)	5
4657027	Bisig, Gary	Making of a Male Model (1983) (TV)	Frank	-1
4657186	Bisoglio, Val	Edge of Night, The	Kitty's agent (1964)	11
4657252	Bisquert, Patxi	Telaraña, La (1990)		-1
4657295	Bissell, Whit	Atomic Kid, The (1954)	Dr. Edgar Pangborn	6
4641490	Berti, Dehl	Edge of Night, The	Standing Elk (1983-1984)	11
4642185	Bertram, William	Trails of the Golden West (1931)		7
4642461	Berval, Paul	Colombes, Les (1972)	Philippe	-1
4642790	Besnard, Michel	Amoureux, Les (1994)	Gus	28
4659623	Black, James D.	Zycie za zycie (1991)	News Caster's voice	-1
4660212	Blackburn, Robert	Edge of Night, The	Vic Price #2 (1964-1965)	11
4660324	Blackman, Bond	Trauma (1962)	Robert	7
4660337	Blackman, Don (I)	Santiago (1956)	Sam	10
4660592	Blackshaw, Anthony	Fiction Makers, The (1968)	Morgan	15
4662411	Blake, Noah	General Hospital	Patrick Pulaski (1991)	5
4662951	Blakeney, Ben	Ned Kelly (1970)	Tracker	-1
4665855	Blanks, Billy	Lionheart (1990)	African Legionnaire	15
4667752	Blier, Bernard	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Ubaldo Palmarini	2
4667817	Bliffen, Jerry	Real Bullets (1990)	Sheriff's Deputy	61
4668099	Bliss, Ted	Three Men on a Horse (1936)	Radio Announcer	-1
4668436	Block, Larry	General Hospital	Cal Jamison (1978)	5
4668866	Blomstedt, Georg	A.-B. gifta bort baron Olson (1928)	Grooth	7
4668939	Blonde, Dizzy	Isis Blue 2 (1998) (V)		-1
4670046	Blue, Monte	Something to Think About (1920)	Jim Dirk	3
4670536	Blumb, Jon	Junky's Christmas, The (1993)	Christmas dinner friend	-1
4670676	Blumenfeld, Robert	Beer (1985)	Board Room Executive	32
4671232	Blystone, Stanley	Holt of the Secret Service (1941)	Garrity	7
4671442	Blystone, Stanley	Tall, Dark and Handsome (1941)	Policeman	18
4671481	Blystone, Stanley	Valley of the Giants (1938)	Bartender	-1
4671866	Boa, Bruce	Mister Jerico (1970) (TV)	Nolan	7
4672005	Boardman, True (I)	End of the Circle, The (1913)	Don Wilson	3
4672171	Bob, Madan	Magalir Mattum (1994)		-1
4672954	Bochy	Indio Pluma Roja, El (1975)		-1
4673233	Boddy, Michael	Ned Kelly (1970)		-1
4674403	Bogaert, Ward	Speelmeisje (1968)		-1
4674461	Bogarde, Dirk	I Could Go on Singing (1963)	David Donne	2
4674745	Bogazianos, Vasili	Edge of Night, The	Mickey Dials (aka Tobias) (1979)	11
4674993	Boggs, Bill	Comedy Tonight	Host	-1
4675119	Bogodukh, Igor	Prival strannikov (1991)		-1
4675150	Bogolyubov, Nikolai	Ya shagayu po Moskve (1963)		-1
4675221	Bogousslavsky, Axel	Adieu (2003)	Paul	4
4675718	Bohnen, Roman	Grand Central Murder (1942)	Ramon	13
4675750	Bohnet, Folker	Im Schlaraffenland (1965) (TV)	Andreas Zumsee	2
4675899	Bohringer, Richard	Parfum d'Yvonne, Le (1994)	Yvonne's Uncle	4
4678093	Boldrin, Sérgio	Palácio de Vênus (1980)		-1
4678208	Bolender, Charles	Beer (1985)	Little Man at Bar	42
4677692	Bollmann, Hans Heinz	Lindenwirtin, Die (1930)		-1
4677706	Bollmann, Horst	Tatort - Das stille Geschäft (1977) (TV)	Delius	-1
4677876	Bologna, Joseph	Intimate Portrait: Bonnie Franklin (2003) (TV)	Himself	-1
4678766	Bolton, Marc	Tales from the Tower (2001)	Duke of Monmouth	-1
4679140	Bon, Lou	Real Bullets (1990)	Sheriff's Deputy	52
4679611	Bonar, Ivan	General Hospital	Chase Murdock (1966-1971, 1973-1979)	5
4657408	Bissell, William	Trauma (1962)	Thaddeus Hall	6
4657768	Bista, Henryk	Zycie za zycie (1991)		21
4658047	Bitorajac, Rene	Letac Joe i Marija smjela (1996)	Friend	-1
4658232	Bityukov, Boris	Ya shagayu po Moskve (1963)		11
4659437	Black, Daniel (II)	General Hospital	Dr. Kyle Bradley (1975-1976)	5
4681285	Bonfim, Roberto	Semideus, O		-1
4681362	Bongartz, Peter	Tatort - Willkommen in Köln (1997) (TV)	Kriminalrat Körber	3
4681581	Bonifant, J. Evan	General Hospital	Lucas Stansbury Jones #7 (2002)	5
4681667	Bonifácio, Wilson	Palácio de Vênus (1980)		-1
4681897	Bonisteel, Roy	Man Alive	Host (1967-1989)	-1
4682013	Bonn, Ferdinand	Katzensteg, Der (1915)	Alter Hackelberg	5
4683341	Bontatibus, Jay	General Hospital	Det. Andy Capelli (2002)	5
4684110	Boone, Randy	Wild Pair, The (1987)	Farkas	11
4684996	Borashvili, Mikho	Magdanas lurja (1955)	Mikho	3
4685780	Bordukov, Aleksandr	Prival strannikov (1991)		-1
4686145	Borg, Richard	Edge of Night, The	Spencer Varney (1981-1983)	11
4686555	Borges, Miguel (II)	Água e Sal (2002)	Desconhecido	4
4686929	Borgnine, Ernest	Greatest, The (1977)	Angelo Dundee	2
4687381	Borisov, Vladimir	Prival strannikov (1991)		-1
4687409	Borja, Amador	Amantes frios, Los (1978)	Artesano III (segment"El Soplador del vidrio")	8
4687666	Born, David	Warning: Parental Advisory (2002) (TV)	James Baker	15
4687938	Borovicka, Václav	Zahrada (1968)		-1
4688346	Borsche, Dieter	Barrings, Die (1955)	Fried von Barring	1
4688362	Borsche, Dieter	Goldsucher von Arkansas, Die (1964)	Pater Benson	5
4688471	Borsos, Silas	Sk8 Life (2004)	Silas	-1
4688490	Borst, Gerald	Nationaal songfestival (1989) (TV)	Himself	-1
4688684	Bory, Jean-Marc	Conte à regler (1978)		1
4688929	Bosc, Thierry	Adieu (2003)	Le prêtre	6
4689136	Bosco, Mauro	Età da sballo, Un' (1983)		-1
4689182	Bosco, Philip	Lovely Way to Die, A (1968)	Fuller	8
4689908	Bosse, Carl	Tatort - Mord im Ministerium (1974) (TV)	Hofrat Gleiner	-1
4690088	Bostantzoglou, Yannis	Eglimata	Elias Liakouras	-1
4690139	Boston, Jack	Square Shooter (1935)	Bank clerk	-1
4690263	Bostwick, Herbert	Cap'n Eri (1915)		3
4690330	Boswell, Charles	General Hospital	Father Martin (1992)	5
4691060	Boteler, Wade	Son-Daughter, The (1932)	Munition Ship's Captain	-1
4691106	Boteler, Wade	Valley of the Giants (1938)	Joe Lorimer	14
4691843	Bottoms, Timothy	Ava's Magical Adventure (1994)	Slayton	-1
4692011	Botvid, John	Maria på Kvarngården (1945)	John Gröndal	9
4692282	Bouc, Francis	Parfois trop d'amour (1992)	Marcel	-1
4692317	Boucaron, Gérard	Trastevere (1971)		-1
4692881	Bouck, Jonathan	General Hospital	Matt Reynolds (1997)	5
4692934	Boudemdam, Amar	Amoureux, Les (1994)	Nadir	23
4693397	Bouillette, Christian	Josse (1974) (TV)	Un maçon	8
4693633	Boujenah, Michel	Don Juan (1998)	Sganarelle	2
4694265	Bouquin, Jean-Noël	Adieu (2003)	Le chauffeur du camion	18
4694634	Bourg Jr., Wilson	New Orleans After Dark (1958)	Nick Livorno	5
4695273	Boustedt, Christer	Aldrig mera krig (1984)		-1
4680096	Bond, Raleigh	Making of a Male Model (1983) (TV)	Mr. Breedlove	-1
4680223	Bond, Steve (I)	General Hospital	Jimmy Lee Holt (1983-1987)	5
4680536	Bond, Ward	Thunderbirds (1952)	Lt. John McCreery	6
4681056	Bonet, Juan Carlos	Valentina	Pepe	-1
4681146	Bonfadini, David	Gigli (2003)	High School Kid #5	14
4697193	Bowie, Robert	Carnal Passion (2001) (V)	Chauffeur	29
4697223	Bowker, Aldrich	Torchy Plays with Dynamite (1939)	Judge Hershey, Police Court	11
4697558	Bowman, Lee (I)	Up in Mabel's Room (1944)	Arthur Weldon	6
4698144	Boy, T.T.	Bikini Beach (1993) (V)		-1
4698361	Boy, T.T.	Hard to Thrill (1991) (V)		-1
4699430	Boyd, Roy	Fiction Makers, The (1968)	McCord	16
4699693	Boyd, William (I)	Something to Think About (1920)		-1
4700051	Boyett, William	General Hospital	Fred Eckert (1991)	5
4700156	Boyle, Billy	Grass Arena, The (1991)	Mr. Healy	5
4700237	Boyle, John (I)	General Hospital	Darius (1989)	5
4700364	Boyle, Peter (I)	Comedy Tonight	Regular	-1
4700688	Bozian, Jamie	Dead Wrong: The John Evans Story (1984) (TV)	Zack	6
4701096	Braban, Harvey	Question of Trust, A (1920)	Pierre Dumaresque	2
4701490	Bracey, Sidney	Rogue with a Heart, The (1916)		2
4701542	Bracey, Sidney	Valley of the Giants (1938)	Man asking Andy what he found out	-1
4701621	Bracho, Carlos	Ángeles de Puebla, Los (1968)	Tirso	13
4701735	Bracken, Eddie	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Himself	-1
4702038	Bradecki, Tadeusz	Zycie za zycie (1991)	Priest	10
4702232	Bradford, John (I)	I Was a Communist for the FBI (1951)	Elbert Dobbs	-1
4702316	Bradford, Lane	Northwest Stampede (1948)	Cowboy with eyepatch	-1
4702320	Bradford, Lane	Overland Riders (1946)	Deputy	11
4702388	Bradford, Les	Gigli (2003)	High School Kid #4	13
4703250	Bradley, Paul (I)	I Was a Communist for the FBI (1951)	Lawyer	-1
4703367	Bradley, Truman	Failure at Fifty, A (1940)	Lincoln's Friend	3
4703756	Brady, Edward	Flat Harmony (1917)		4
4705392	Brambilla, Andrea	Miei più cari amici, I (1998)		-1
4705434	Bramble, A.V.	Laughing Cavalier, The (1917)	Diogenes	1
4705997	Branco, José Augusto	Rainha Louca, A		-1
4706107	Brand, Hans	Premiere (1936)	Sachverständiger	-1
4706690	Branding, Heinz Theo	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Grosser	-1
4707456	Brandt, Carlo	Adieu (2003)	L'amant de Dora/Le passeur	7
4707481	Brandt, Carlo	Scènes d'amour en Bavière (1995)		2
4708074	Brannon, Chad	General Hospital	Zander Smith (aka Alexander Lewis) (2000-2004)	5
4708291	Braquet, Christophe	Amoureux, Les (1994)	Jere	27
4708550	Brassard, Phil	Face in the Frame, The (1998)	Hughes Fitzgerald	-1
4709161	Bratton, Creed	Wild Pair, The (1987)	Dalton	10
4709235	Brauer, Charles	Tatort - Leiche im Keller (1986) (TV)	Hauptkommissar Peter Brockmöller	2
4709236	Brauer, Charles	Tatort - Lockvögel (1996) (TV)	Hauptkommissar Brockmöller	2
4709240	Brauer, Charles	Tatort - Rattenlinie (2000) (TV)	Hauptkommissar Peter Brockmöller	2
4709363	Braugher, Andre	BreakThrough: The Changing Face of Science in America	Narrator	-1
4709666	Braun, Victor (III)	Cheveux de ma mère, Les (2004)		5
4709729	Brauner, Asher	General Hospital	Roy DiLucca #1 (1978-1979)	5
4710207	Bravo y Fernández, Carlos	Club de señoritas (1956)		-1
4710286	Bravo y Fernández, Carlos	Río de las ánimas, El (1964)		-1
4710383	Bravo, Antonio (I)	Ladrona, La (1954)		10
4710791	Bray, Chip	Do Not Disturb (1999)	Cop at entrance	-1
4711004	Brazeau, Jay	Comrades of Summer, The (1992) (TV)	Tom	8
4711548	Breaugh, Todd Patrick	General Hospital	Park Commissioner (2001)	5
4711754	Breck, Peter	Highway 61 (1991)	Mr. Watson	4
4711772	Breck, Peter	General Hospital	The Magus/Masters (1982)	5
4712248	Breese, Edmund	She-Wolf, The (1931)	William Remington	5
4712783	Brem, Beppo	Go-Go-Girl vom Blow Up, Das (1969)		8
4713051	Bremmer, Brian	Bobby Jones, Stroke of Genius (2004)	Well Wisher	71
4713268	Brendel, El	Valley of the Giants (1938)	Fats	10
4713408	Brenlin, George	General Hospital	Benny (1981)	5
4713821	Brennan, Tom (II)	Edge of Night, The	Judge William J. Trahanney (Year Unknown)	11
4714191	Brenner, Hans (I)	Meister Eder und sein Pumuckl	Herr Schrader	-1
4714425	Brent, Lynton	Boobs in Arms (1940)	Annoyed Pedestrian	-1
4714769	Breon, Edmund	Premiere (1936)		-1
4714889	Breslin, Jason	This Pretty Planet: Tom Chapin in Concert (1992) (V)	Audience Member	-1
4715251	Bretherton, Philip	At Bertram's Hotel (1987) (TV)	Det. Insp. Campbell	8
4715298	Breton, Emile	Adieu (2003)	Agriculteur	14
4715451	Brett, Marc	General Hospital	Zander Smith #1 (2000)	5
4715641	Breuer, Walter (IV)	Illusion in Moll (1952)	Kurt	13
4716366	Brian, Sean	Patty (1962)	Reep	7
4717258	Bridges, Beau	Wild Pair, The (1987)	Joe Jennings	1
4717283	Bridges, Casey	Wild Pair, The (1987)	Paul	24
4717311	Bridges, Dylan	Wild Pair, The (1987)	Little Billy	23
4717518	Bridges, Lloyd	Flight Lieutenant (1942)	Bill Robinson	14
4717635	Bridges, Lloyd	Wild Pair, The (1987)	Col. Heser	3
4717848	Brieger, Nicolas	Tatort - Leiche im Keller (1986) (TV)	Charly Strauch	5
4717948	Brierley, Ted	Young Sherlock: The Mystery of the Manor House	John Whitney	-1
4719305	Brindis de Sala, Faustino	Río de las ánimas, El (1964)		-1
4719421	Bring, Lou	Lady, Let's Dance (1944)	And His Orchestra	-1
4719602	Brinkmann, Fritz	Komischer Heiliger, Ein (1979)		8
4719710	Brinley, Charles	Square Shooter (1935)	Miller rider	-1
4720289	Brisseau, Jean-Claude	4 aventures de Reinette et Mirabelle (1987)	2eme passant	7
4720872	Brix, Peter Heinrich	Tatort - Kalte Wut (2001) (TV)	Gerhard Groszek	-1
4721499	Brocco, Peter	Atomic Kid, The (1954)	Comrade Mosley	17
4721654	Brochard, Jean	Bach détective (1936)	Le voyageur indisposé	19
4721914	Brock, Hall	Killers, The (1964)	Race Marshal	16
4722309	Broderick, James (I)	Edge of Night, The	District Attorney Nick Bryce (1964)	11
4722808	Brodis-Turner, R.	Quiet Wedding (1941)		-1
4723241	Brogan, Harry	Home Is the Hero (1959)	Dovetail	6
4723740	Bromilow, Peter	Breakin' (1984)	Judge	11
4723872	Bronchud, Manuel	Indio Pluma Roja, El (1975)		-1
4724098	Bronski, Mike	Real Bullets (1990)	Jim's Henchman	31
4724360	Brook, Claudio	Pequeños gigantes, Los (1960)		-1
4724391	Brook, Claudio	Valentina	Alfred Van Dutren	-1
4724512	Brook, Jonathan	Not a Penny More, Not a Penny Less (1990) (TV)	Charles	-1
4725059	Brooke-Taylor, Tim	Pleasure at Her Majesty's (1976) (TV)	Various	-1
4725459	Brooks, David Allen	Edge of Night, The	Jim Dedrickson (1981-1982)	11
4725775	Brooks, Martin E.	General Hospital	Dr. Arthur Bradshaw (1981)	5
4726210	Brooks, Sammy	Bromo and Juliet (1926)		-1
4726706	Broquin, Albert	Bach détective (1936)	Le distributeur de prospectus	26
4726768	Brose, Jens Peter	Tatort - Rattenlinie (2000) (TV)		18
4727169	Brouett, Albert	Bach détective (1936)	Un élève chez Lesueur	25
4728041	Brown, Arthur William	Good Sport, The (1918)	De Lancey	3
4728335	Brown, Cathy (II)	Team One (2003)	Champ, Boxing	-1
4728478	Brown, Charles D. (I)	Tall, Dark and Handsome (1941)	District Attorney	15
4728513	Brown, Christopher (I)	Mondo candido (1975)	Candido	1
4728538	Brown, Christopher M.	Lionheart (1990)	Street Gang Leader	25
4728702	Brown, Danny (III)	Jawbreakers (2001) (V)		-1
4728791	Brown, Derren	Derren Brown Plays Russian Roulette Live (2003) (TV)	Host/Illusionist	-1
4728856	Brown, Drew Bundini	Greatest, The (1977)	Himself	-1
4729084	Brown, Georg Stanford	Ava's Magical Adventure (1994)		-1
4730526	Brown, Peter (I)	Teenage Tease (1983)		-1
4731202	Brown, Stanley (I)	Skinny the Moocher (1939)		6
4731464	Brown, Tom (I)	General Hospital	Al Weeks #2 (1963-1965, 1970-1974)	5
4731875	Browne, Kale	General Hospital	David (1983)	5
4732167	Browning, Ivan	They Won't Believe Me (1947)	Second Bartender	-1
4732671	Bruce, Bob	Real Bullets (1990)	Sallini's Goon	29
4733323	Brudny, Stanislaw	Moje miasto (2002) (TV)	Leon	8
4733588	Bruhn, Martin	Tatort - Kindstod (2001) (TV)	Platzwart	14
4733659	Brulatot, Pierre	Bobby Jones, Stroke of Genius (2004)	Doctor	34
4733832	Brun, Manuel	Caja 507, La (2002)	Sánchez	31
4734242	Bruning, Robert	Ned Kelly (1970)	Sgt. Steele	9
4734684	Bruno, Frank (I)	Tall, Dark and Handsome (1941)	Gunman	11
4734982	Bruns, Philip	General Hospital	Dr. Porchenko (1984)	5
4735574	Bryan, Arthur Q.	Grand Central Murder (1942)	The Doctor	-1
4735802	Bryant Jr., Earl	Trials of Life (1997) (TV)	James	10
4736127	Bryant, Todd	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Card	25
4736210	Bryant, William (I)	General Hospital	Lamont Cortin #2 (1978)	5
4736456	Bryce, Scott	Pandora's Clock (1996) (TV)		11
4736809	Brynner, Yul	Solomon and Sheba (1959)	Solomon	1
4737372	Bröcker, Oliver	Tatort - Kalte Wut (2001) (TV)	Marco Groszek	-1
4737602	Bua, Gene	Daikaijû Gamera (1965)	Lt. Clark	-1
4737662	Buarque de Hollanda, Chico	Água e Sal (2002)	Amante	7
4737735	Bubba	Rats, The (2002) (TV)	Shipping foreman	22
4737924	Bucci, Flavio	Miei più cari amici, I (1998)		-1
4737993	Buccola, Marc	Making of a Male Model (1983) (TV)	John	-1
4738290	Buchanan, Ian	General Hospital	Duke Lavery #1 (1986-1989)	5
4739015	Buck, Philip	General Hospital	Phil (1987-1990)	5
4739025	Buck, Richard	Edge of Night, The	Dr. Warner (1962)	11
4739703	Bucko, Ralph	Square Shooter (1935)	Baxter rider	-1
4739890	Bucko, Roy	Square Shooter (1935)	Baxter rider	-1
4740169	Budd, Norman	Thunderbirds (1952)	Pvt. Lou Radtke	16
4740603	Buendía, Manuel	No te engañes corazón (1937)		-1
4741091	Bugarini, Ramón	Río de las ánimas, El (1964)		-1
4725821	Brooks, Mel (I)	Muppet Movie, The (1979)	Professor Max Krassman	10
4726033	Brooks, Rand	Laddie (1940)	Peter Dover	11
4742786	Buljan, Vladimir	Poslednja trka (1979)		-1
4741815	Bull, Peter (I)	Quiet Wedding (1941)		-1
4741936	Bullard, Michael	General Hospital	Delivery Man (2003)	5
4742966	Bulnes, Quintín	Rage (1966)	Pedro	11
4743705	Buneta, Sasa	Letac Joe i Marija smjela (1996)	Joe	-1
4743845	Bunners, David C.	Tatort - Eiskalt (1997) (TV)	Mario Strasser	-1
4743859	Bunny, George	Cap'n Eri (1915)	Cap'n Eri	1
4744111	Bunston, Herbert	Old English (1930)	Mr. Brownbee	-1
4744333	Bupp, Sonny	Our Gang Follies of 1936 (1935)		-1
4744351	Bupp, Sonny	Valley of the Giants (1938)	Kid yelling 'The ship is coming'	-1
4744507	Buraglio, Pierre	Meeting with... (1991) (TV)	Himself	-1
4744890	Burdon, Eric	Shindig! Presents British Invasion Vol. 2 (1992) (V)	The Animals	-1
4745697	Burian, Paul	Grüne Heinrich, Der (1994)	Teacher	14
4746423	Burke, Joe Michael	General Hospital	Dr. Mason Caldwell (2002)	5
4746464	Burke, Joseph (I)	General Hospital	Paul Devore (1989)	5
4746708	Burke, Rodney (I)	Shadow of the Cat (1961)	Workman	-1
4746824	Burke, Walter	Double Deal (1950)	Wally (a thug)	-1
4747252	Burleigh, Stephen	General Hospital	Ray Conway (1993)	5
4747986	Burnham, Edward	At Bertram's Hotel (1987) (TV)	Dr. Whittaker	16
4748012	Burnham, Jeremy	I Could Go on Singing (1963)	Young Hospital Doctor	8
4748799	Burns, Edmund	To Please One Woman (1920)	Dr. John Ransome	4
4749401	Burns, Lee (I)	Warning: Parental Advisory (2002) (TV)	Andrew Norris	8
4749638	Burns, Paul E.	Double Deal (1950)	Well assistant	-1
4749810	Burns, Robert A.	Substitute Wife, The (1994) (TV)	Leering Man	-1
4750026	Burr, David (III)	General Hospital	Morris	5
4750082	Burr, Lonnie	Lionheart (1990)	Bookie #1	24
4750891	Burt, Frederick	Son-Daughter, The (1932)	Man	-1
4751547	Burton, Frederick	Valley of the Giants (1938)	Mortimer (banker #1)	-1
4751856	Burton, Matthew	Reise ohne Wiederkehr (1989)	Chaplain Wolpers	-1
4751865	Burton, Ned	Auction Block, The (1917)	Hannibal Wharton	7
4752174	Burton, Rod (II)	Rainbow	Rod (1974-1992) (singer)	-1
4752199	Burton, Steve (I)	General Hospital	Jason Quartermaine (aka Jason Morgan) #3 (1991-2000, 2001, 2002-present)	5
4752777	Busch, Fabian	Dumm gelaufen (1997)	Jojo	10
4753770	Bushman, Francis X.	Rosary, The (1911)	Young Payne	1
4753832	Bushman, Ralph	Away in the Lead (1925)		1
4754276	Busse, John	General Hospital	Joseph (1996-1998)	-1
4754406	Bussières, Raymond	Esprits de famille (1975) (TV)	Lucien Bichois	1
4755177	Butcher, Abdullah the	Hoero! Tekken (1982)	Samson	5
4756046	Butler, Eddie (IV)	Rugby Special	Commentator	-1
4756581	Butler, John (I)	Grand Central Murder (1942)	Train Conductor	-1
4757472	Butterfield, Max	Tarnished Heroes (1961)	Tony	6
4757911	Butts, Billy	All Wet (1930)		2
4758024	Butzen, Karl-Heinz	Clemi flüchtet (1994)		-1
4758547	Buzzi, Bruno	Agujetas en el alma (1998)	Bruno	2
4759101	Bykov, Rolan	Ya shagayu po Moskve (1963)	Man in Park	6
4741444	Buhre, Traugott	Dumm gelaufen (1997)	Vater Harm	6
4742413	Bukowsky, Michael	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Inspektor Hollocher	3
4742776	Buljan, Ratko	Crni kisobran (1969)		-1
4761497	Byron, Tom	Terminal Case of Love (1998) (V)		-1
4762380	Bär, Dietmar	Tatort - Kindstod (2001) (TV)	Freddy Schenk	2
4762395	Bär, Dietmar	Tatort - Willkommen in Köln (1997) (TV)	Oberkommissar Freddy Schenk	2
4762423	Bäuerl, Anderl	Geheime Lüste blutjunger Mädchen (1978)	Graf von Rammelburg	-1
4763179	Böck, Wolfgang	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Gehard Drechsler	9
4763506	Böhm, Manfred	Gesundheit (1978) (TV)		-1
4763792	Böwe, Kurt	Luftschiff, Das (1983)		-1
4763886	Børgesen, Bent	Ta' det som en mand, frue! (1975)	Ellens læge	21
4764218	C., Ahmad	Pendekar bujang lapok (1959)	Ahmad (Samseng)	13
4764696	Cabello, Antonio	Agujetas en el alma (1998)	Representante	23
4765420	Caccia, Roger	Chansons ont leur destin (1953)		-1
4765481	Cacharelli, Daniel	Asesinato en tres variantes con dos incógnitas y un maniquí (1987)		-1
4765680	Cade, Michael	General Hospital	Vince (1997)	5
4766086	Caekaert, Cyril	À la vitesse d'un cheval au galop (1992)	Un enfant	38
4766106	Caesar, Adolph	General Hospital	Douglas Burke (1969)	5
4766428	Caffaro, Nini	Tu, mi amor... (1998)		3
4766715	Cagle, Jeff	Looking in the Fishbowl (2001)	Remy	-1
4766716	Cagle, Jim	Demon Possessed (1993)	Ron	6
4767179	Caillaud, Gérard	Dame de lieudit, La (1993) (TV)		-1
4767722	Caine, Richard (I)	General Hospital	Bill Watson (1979)	5
4768228	Calabro, Thomas	They Nest (2000) (TV)	Dr. Ben Cahill	1
4769041	Caldwell, Michael (I)	General Hospital	Co-Star (2002)	-1
4769066	Caldwell, Orville	Wives of the Prophet, The (1926)	Howard Brice	1
4769803	Call, Anthony D.	Edge of Night, The	Sen. Colin Whitney (1970-1971)	11
4770203	Callahan, John (I)	General Hospital	Leo Russell (1984-1985)	5
4770884	Calleja, Sergi	Marta y alrededores (1999)	Marc	-1
4772283	Callinan, Dick	Edge of Night, The	Raymond Harper (aka Col. Blood) (1977)	11
4771803	Calvo, Jorge (II)	Caja 507, La (2002)	Aguiló	14
4773128	Camacho, Manuel (I)	Monosabio, El (1977)	Amparito	5
4773556	Camargo, Ralph	Edge of Night, The	Judge (1979)	11
4773672	Cambres, Paco	Caja 507, La (2002)	Gerardo de la Hoz	39
4774786	Camoiras, Francisco	Monosabio, El (1977)		18
4774988	Camp, Shep	Hampton Court Palace (1926)	Henry VIII	3
4775143	Campanella, Frank	Edge of Night, The	Leo Magagnoli (1962)	11
4775631	Campbell, C. Juston	Real Bullets (1990)	Chip	6
4775844	Campbell, Dan (III)	Edge of Night, The	Norman (1984)	11
4776907	Campbell, William (I)	Holiday for Sinners (1952)	Danny Farber	4
4777248	Campion, Sean	Meaningful Sex (2000) (TV)	Anorak man	-1
4777305	Campo, Tony	General Hospital	Scotty 'Scott' Baldwin #3 (1969-1972)	5
4777922	Campos, Adam	Carnal Passion (2001) (V)	Waiter	28
4778264	Campos, Miguel (II)	Monosabio, El (1977)	Castillito	-1
4778364	Campos, Sebastião	Tronco do Ipê, O	Domingos	-1
4777482	Can, Malte	Tatort - Kalte Wut (2001) (TV)	Ingo Marquardt	-1
4777600	Canal, Antonio	Caja 507, La (2002)	Hombrecillo	37
6628041	Well, Brian	Nationaal songfestival (1989) (TV)	Himself	-1
4759340	Byrd, David (II)	Some Kind of Hero (1982)	Doorman	-1
4759409	Byrd, Michael (I)	Chickboxin Underground (1999)	Guy Scared White	33
4779334	Cann, Alexander	Ned Kelly (1970)	McInnes	10
4779496	Cannavale, Enzo	Trastevere (1971)	Straccariello	9
4779706	Cannon, Chris (III)	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Himself	-1
4779785	Cannon, Harold	Real Bullets (1990)	Sheriff	16
4780728	Cantinflas	No te engañes corazón (1937)		3
4781120	Cantú, Carlos	General Hospital	Luis (1992)	5
4781667	Caploe, William	Warning: Parental Advisory (2002) (TV)	Dom	20
4781815	Capodice, John	General Hospital	Carmine Cerullo (1994)	5
4781846	Capolicchio, Lino	Fratelli e sorelle (1991)		4
4783122	Caprioli, Vittorio	Trastevere (1971)	Don ernesto	2
4783311	Car, Ali	Do Not Disturb (1999)	Cleaner	-1
4783809	Carbajal, Tony	Vamos juntos	Pedro	-1
4784927	Cardoso, Pedro (I)	Grande Família, A	Agostinho	3
4784949	Cardoso, Rogério	Grande Família, A	Floriano (2001-2003)	4
4786013	Carey, George (III)	General Hospital	Lamont Corbin #1 (1977)	5
4786541	Carey, Philip	I Was a Communist for the FBI (1951)	Mason	3
4786895	Caride, Antonio	Solo y conmigo (2000)		-1
4787304	Carl, Rudolf	Perle von Tokay, Die (1953)	Pali, Gutsverwalter	3
4788090	Carlisle, Kevin	Highway 61 (1991)	Rock Band Member #1	29
4788173	Carlo, Ismael 'East'	Unknown Cyclist, The (1998)	Farm Worker	11
4788177	Carlo, Ismael 'East'	General Hospital	Hernando Rivera (1994-1996/1997)	5
4788382	Carlos, John (I)	General Hospital	The Tin Man (1997)	5
4788761	Carlson, Steve (I)	General Hospital	Dr. Gary Lansing (1977-1979)	5
4788966	Carlsten, Rune	Maria på Kvarngården (1945)	Defence Lawyer	10
4789511	Carmet, Jean	Conte à regler (1978)		2
4790217	Carnelutti, Francesco	Amore imperfetto, L' (2002)	Doctor Melzi	4
4791349	Carone, Felipe	Semideus, O	Gildo Graça	-1
4791877	Carpenter, Gary (I)	General Hospital	Toby (1981)	5
4792144	Carpenter, Horace B.	Trails of the Golden West (1931)		5
4792397	Carpenter, Richard (I)	Tarnished Heroes (1961)	Freddy	4
4792470	Carpenter, Willie C.	General Hospital	Eugene (1994)	5
4792771	Carr, Charlie (II)	Trials of Life (1997) (TV)	Joel	17
4792999	Carr, Kevin (I)	Love Potion (1987)	Gary	6
4793164	Carr, Nat	Torchy Plays with Dynamite (1939)	Book Store Clerk	19
4793168	Carr, Nat	Valley of the Giants (1938)	Bank clerk	-1
4793213	Carr, Paul (I)	General Hospital	Dr. Peter Taylor #1 (1969)/Milton Stanus (1994)	5
4793512	Carradine, David	Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Himself	-1
4793979	Carraher, Bob	Big Tip Off, The (1955)		-1
4794174	Carrasco, Carlos	Anarchy TV (1997)	Clarence	11
4794287	Carraway, Bob	Daikaijû Gamera (1965)	Lt. Simpson	-1
4794675	Carreño, Ignacio	Don Juan (1998)	Cavalier de Don Alonse	24
4794977	Carrillo, Carlos (II)	Reed, México insurgente (1973)		-1
4795022	Carrillo, José Domingo	Reed, México insurgente (1973)		-1
4796457	Carruthers, Steve (I)	Who Killed Doc Robbin? (1948)	Reporter	-1
4777847	Canavan, Michael	General Hospital	Dist. Atty. Lombardi (1986)	5
4778963	Cane, Miguel	Veneno para las hadas (1984)	Jaime	-1
4796616	Carson, Charles	Quiet Wedding (1941)	Mr. Johnson	21
4797366	Carstens, Bruno	Blaulicht - Kindermörder (1960) (TV)		1
4896588	Corrie, Will	Laughing Cavalier, The (1917)		7
4798272	Carter, John (XIV)	General Hospital	Congressman Sterner (1981)	5
4798285	Carter, Jonathan (I)	General Hospital	Jason Vining #2 (1975)	5
4799174	Caruso, Anthony (I)	Tall, Dark and Handsome (1941)	Gunman	12
4799179	Caruso, Anthony (I)	They Won't Believe Me (1947)	Tough Patient	-1
4799486	Carvajal, Víctor	Luftschiff, Das (1983)		-1
4799592	Carvalho, Eudes	Palácio de Vênus (1980)		-1
4799735	Carvana, Hugo (I)	Tudo é Música (1957)		-1
4800061	Casablanc, Pedro	Don Juan (1998)	Lucas	13
4800745	Casado, Mario (I)	Titanes en el ring contraataca (1983)		-1
4801028	Casal, Gregorio	Mi amor por ti		5
4800403	Casanova, Jorge	Ladrona, La (1954)		-1
4801564	Cascioli, Richard	General Hospital	Renaldo (1997-1998)	5
4801568	Casco, Antonio	Monosabio, El (1977)	Peñista #3	13
4801971	Casey, Brian (II)	Gigli (2003)	High School Kid #3	12
4802770	Cash, Dylan	General Hospital	Michael Morgan Quartermaine Corinthos [#3] (2001-)	5
4802931	Cashman, Pat	Pandora's Clock (1996) (TV)	TV reporter	-1
4803136	Casnoff, Philip	Edge of Night, The	Brian Murdock (1984)	11
4803278	Cason, John L.	Overland Riders (1946)	Henchman	9
4803391	Cassavetes, John	Killers, The (1964)	Johnny North	3
4803406	Cassavetes, John	Tempest (1982)	Phillip Dimitrius	1
4803670	Cassel, Seymour	Killers, The (1964)	Desk Clerk	21
4803878	Cassell, Wally	Thunderbirds (1952)	Pfc. Sam Jacobs	14
4804450	Cassidy, Shaun	General Hospital	Dusty Walker (1987)	5
4804459	Cassidy, Steve (II)	General Hospital	Hit man	5
4805125	Castanedo, Rafael	Reed, México insurgente (1973)		-1
4805232	Castañón, Carlos (I)	Reed, México insurgente (1973)		-1
4805276	Castel, Edmond	Bach détective (1936)	M. Estrade	11
4805446	Castelar, Emílio	Tudo é Música (1957)		-1
4805524	Castell, Rolf	Meister Eder und sein Pumuckl	Schwager vom Eder	-1
4807070	Castera, Robert	Josse (1974) (TV)	Le photographe	10
4806529	Castillón Bracho, Mario	Reed, México insurgente (1973)		-1
4806629	Castle, Don	Who Killed Doc Robbin? (1948)	Defense Attorney	7
4807924	Castro 'Bigotón', Arturo	Club de señoritas (1956)		-1
4808278	Castro, Francisco de	Pai Tirano, O (1941)		-1
4808287	Castro, George	BreakThrough: The Changing Face of Science in America	Himself	-1
4808387	Castro, Kevin (I)	General Hospital	Jose Morez (1994)	5
4808807	Cathey, Dalton	Breakin' (1984)	Producer #1	21
4808997	Catlett, Walter	Lady, Let's Dance (1944)	Timber	5
4809237	Catt, Jeromia	Last Enchantment (1995)	Jeromia the polisher	-1
4810683	Cavanagh, Paul	Strictly Unconventional (1930)	Ted	2
4810965	Cavanaugh, Michael (I)	Black Thunder (1997)	Barnes	-1
4811436	Cavender, Glen	Torchy Plays with Dynamite (1939)	Bellevue Apartments Landlord	-1
4811443	Cavender, Glen	Valley of the Giants (1938)	Landowner	-1
4811579	Cavett, Dick	Edge of Night, The	Moe Everhardt (1983)	11
4811791	Cavy, Chris	General Hospital	Dr. Campbell (1984)	5
4812052	Cazalet, Joe	Sous les draps, les étoiles (1989)		-1
4812239	Cazassus, Bernard	Guépiot, Le (1981)	Bistouquet	-1
4812275	Cazaux, Emanuel	Rebaño, El (1997)		3
4814204	Cejvan, Adem	Hocu zivjeti (1982)		-1
4814564	Celestino, Paulo	Entre Mulheres e Espiões (1961)		5
4814901	Cellier, Frank	Quiet Wedding (1941)	Mr. Clayton	11
4815939	Cernuda, Alfredo	Agujetas en el alma (1998)	Protagonista casting	7
4816291	Cerullo, Al	Tempest (1982)	Pilot	-1
4816791	Cervo, Pascal	Amoureux, Les (1994)	Marc	2
4816848	Cesar, Mike	Chompin' at the Bit (1997) (V)		-1
4817380	Chaban, Youssef	Bint min el banat (1968)		4
4817851	Chads, Michael	Tony's Big Brother (1993) (V)	Tony's big brother	2
4817975	Chadwick, Simon	Picking up the Pieces	Tony Anzari	-1
4817998	Chafe, Alfred	Trauma (1962)	Police Officer	12
4818042	Chagas, Armando	Pai Tirano, O (1941)		-1
4818121	Chagger, Shanni	Face to Face (1990) (TV)	Reporter	-1
4819056	Chalk, Gary	Comrades of Summer, The (1992) (TV)	Ump	11
4819936	Chamarat, Georges	Amants du Tage, Les (1955)	L'avocat	11
4820056	Chamberlain, Chaz	Critical Assembly (2003) (TV)	Track buddy	-1
4821262	Chan, Jackie (I)	Jin ye bu she fang	Guest	-1
4821925	Chan, Wai-Man	Zhong huan ying xiong (1991)	Fanny's Father	-1
4821936	Chan, Wing Chun	Ta lai zi hu zhi ming shi (1994)		-1
4822087	Chancer, Norman	Love Potion (1987)	Mr. Camden	4
4822576	Chandler, Eddy	Square Shooter (1935)	Ed Chandler	-1
4822602	Chandler, Eddy	Torchy Plays with Dynamite (1939)	Announcer	-1
4822607	Chandler, Eddy	Valley of the Giants (1938)	Man Telling Andy about Foreigners	-1
4822972	Chandler, George	Valley of the Giants (1938)	Fireman #2	-1
4823379	Chandler, Lane	Northwest Stampede (1948)	Scrivner (Bar B cowboy)	8
4824753	Chapalain, Pierre-Yves	Cheveux de ma mère, Les (2004)		3
4824988	Chapin, Tom (I)	This Pretty Planet: Tom Chapin in Concert (1992) (V)	Himself	1
4825636	Chapman, Graham	Pleasure at Her Majesty's (1976) (TV)	Various	-1
4826340	Chapuies, Alexander	Midnight Intruders (1987)	Lover	3
4826744	Charles, Baltasar	Pequeños gigantes, Los (1960)		-1
4826961	Charles, Keith	Edge of Night, The	Rick Oliver (1966)	11
4827428	Charlton, Bill	Ned Kelly (1970)	Richards	-1
4827465	Charlton, Jud	Love Potion (1987)	Jeff	15
4827678	Charney, Jordan	General Hospital	Dr. Seymour Katz (1982)	5
4828029	Charrel, Michel	Guépiot, Le (1981)	Un gendarme	-1
4828215	Charters, Spencer	Bat Whispers, The (1930)	The Caretaker	9
4828405	Charters, Spencer	Valley of the Giants (1938)	Fireman #1	-1
4828790	Chase, Charley	Bromo and Juliet (1926)	Charley	1
4828966	Chase, Charley	Skinny the Moocher (1939)		1
4829445	Chastain, Don	General Hospital	Dr. Tom Baldwin, Sr. #2 (1977-1987)	5
4829841	Chatterjee, Eric	Chickboxin Underground (1999)	Cop/Numerous Asundry Spectators	22
4830166	Chatto, Daniel	Young Sherlock: The Mystery of the Manor House	Sgt. Grimshaw	-1
4830324	Chau, Nam	Yank in Viet-Nam, A (1964)	Dr. The	12
4830839	Chaves, Armando	Tronco do Ipê, O	Young Mário	-1
4831123	Chaykin, Maury	Unstrung Heroes (1995)	Arthur Lidz	4
4831325	Cheatham, Jack	Holt of the Secret Service (1941)	Agent Frank	-1
4831757	Cheetwood, Derk	General Hospital	Max (2001-present)	5
4831895	Chege, Mick Ndisho	Face to Face (1990) (TV)	Tobias' Foreman	-1
4831946	Chekan, Sergei	Dva patrona na mamonta (1990)		8
4832003	Chekhov, Michael	Holiday for Sinners (1952)	Dr. Konndorff	6
4832906	Cheng, Chuang	Shadow Magic (2000)	Mi Hu	9
4833089	Cheng, Lawrence	Ghost in the House (1988)		4
4833834	Chesebro, George (I)	Holt of the Secret Service (1941)	Rankin	8
4833931	Chesebro, George (I)	Overland Riders (1946)	Townsman	10
4834730	Cheshire, Harry	Northwest Stampede (1948)	Rodeo judgeg	-1
4834873	Chesne, Alain	Conte à regler (1978)		-1
4835989	Chevalier, Reginald	Emmanuelle 5: A Time to Dream (1994)	Pierre	-1
4836298	Chevrier, Arno	Grüne Heinrich, Der (1994)	Lys	8
4836424	Chew, Frank	Shadows of Chinatown (1926)	Wo Hop	6
4836576	Chi, Pham Phuoc	Yank in Viet-Nam, A (1964)	Kim	11
4836782	Chiang, George (II)	General Hospital	Ling Wang (1974)	5
4836817	Chiang, Paul	Lei ting zhan jing (2000)	Sheriff Lin	7
4837402	Chiba, Sonny	Hoero! Tekken (1982)	Mr. Magic/Interpol Inspector	2
4837648	Chicot, Etienne	Point douloureux, Le (1979)	L'homme essui-glace	6
4837687	Chicotel, Al	Last Enchantment (1995)	bedwer	-1
4837922	Chihara, Kôji	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)		-1
4837926	Chihara, Seiji	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)		-1
4838004	Chiklis, Michael	Do Not Disturb (1999)	Rudolph Hartman	5
4838547	Chin, Clint	Tempest (1982)	Steward	-1
4838636	Chin, Han	You jian chin tian (1981)		2
4838741	Chin, Siu-hou	Jiang shi zhi zun (1987)	Hsi	-1
4838801	Chinarro, Fernando	Monosabio, El (1977)		19
4840393	Cho, Jamie	Team One (2003)	Jamie Cho	-1
4841304	Chomiak, Michael	Team One (2003)	Comander X	-1
4841778	Chopra, Prem	Return of Jewel Thief (1996)	Minister Nilkant Maharaja	-1
4841781	Chopra, Prem	Santaan (1993)		6
4842286	Choura, Alexander	Tänzer meiner Frau, Der (1925)	Dance extra	10
4842511	Chow, Ho	Vow to Kill, A (1995) (TV)	Swift-Way Clerk	-1
4842623	Chow, Stephen	Long Feng cha lou (1990)	Rubbish Pool	-1
4842896	Choynski, Carl Heinz	Romeo und Julia auf dem Dorfe (1984)		-1
4843536	Christensen, Scott	Warning: Parental Advisory (2002) (TV)	Senator Huth	-1
4843738	Christian, Nathaniel	General Hospital	Roger Barrett (1987)	5
4843891	Christians, Rudolph	Burnt Wings (1920)	James Cartwright	3
4844037	Christianson, Jay	Nobody's Perfect (2002)	Joshua	2
4844292	Christodoulou, Yorgos	Demonismeni, I (1975)		7
4844884	Christoforidis, Pericles	Amartoles (1962)		-1
4845203	Christopher, Guy	General Hospital	Ed Newell (1982)	5
4845253	Christopher, Mark (II)	Fleshtones (1985) (V)		5
4845350	Christopher, Thom	Edge of Night, The	Noel Douglas #1 (1977)	11
4844349	Christopher, Tyler	General Hospital	Nikolas Cassidine #1 (1996-1999, 2003-present)	5
4844697	Chrzescianski, Radoslaw	Moje miasto (2002) (TV)	Gozdzik	1
4845879	Chung, David (II)	Rave (2000)	Sung-Un	18
4845990	Chung, Lee	Shadows of Chinatown (1926)	Wing Lee	5
4846168	Church, Fred	End of the Circle, The (1913)	Will Davis	1
4847746	Churney, Rudy	Tempest (1982)	Man With Pigeons	-1
4846467	Chávez, Guillermo (III)	Crónica de un extraño (1998)		1
4846476	Chávez, José	Amantes frios, Los (1978)	Hombre I (segment "Los Amantes frios")	23
4847049	Ciaffone, Alberto	Trastevere (1971)		-1
4847358	Ciangherotti, Fernando (I)	Reportero, El (1987)		1
4848620	Cid, Modesto	Familia Vila, La (1950)	Abuelo	-1
4849312	Ciminello, David	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Rick	8
4850541	Citrano, Anthony	General Hospital	Mikey Sanner (Quartermaine) (1986)	5
4852054	Claesson, Åke	Maria på Kvarngården (1945)	Judge	11
4852196	Claisse, Georges	Entre chats et loups (1985) (TV)	Peter Wick	5
4851150	Clarence, O.B.	Private Secretary, The (1935)	Thomas Marsland	9
4851152	Clarence, O.B.	Quiet Wedding (1941)		17
4851456	Clarin, Hans	Meister Eder und sein Pumuckl	Pumuckl	2
4852353	Clark, Brett Baxter	General Hospital	Chet (1988)	5
4852412	Clark, Charles Dow	Bat Whispers, The (1930)	Detective Jones	15
4852733	Clark, Cliff (I)	Torchy Plays with Dynamite (1939)	Mike Kelly, Manager Sportland Arena	15
4853612	Clark, Dick (I)	Winning Lines	Host	-1
4854367	Clark, Matt (I)	Some Kind of Hero (1982)	Mickey	17
4854524	Clark, Richard (IV)	John and the Missus (1987)		25
4855027	Clark, Steve (I)	Square Shooter (1935)	Pete	8
4855452	Clarke, Brian Patrick	General Hospital	Grant Andrews (1983-1985)/Grant Putnam (1984, 1987-1988)	5
4855680	Clarke, Don (I)	General Hospital	Scotty 'Scott' Baldwin #4 (1973-1974)	5
4856107	Clarke, Phil (III)	Patty (1962)	Pawnbroker	16
4856172	Clarke, Richard (II)	Edge of Night, The	Duane Stewart (1969-1970)	11
4856279	Clarke, Robert (I)	General Hospital	Ray Lansing #1 (1963)	5
4856575	Clarkson, John (I)	Edge of Night, The	Alf Mayhew (1983)	11
4857488	Claudio (I)	Trapped (1996) (V)	Officer Action	8
4857190	Clay, Philippe	Sainte farce, La (1972) (TV)	Argamassilla	1
4858199	Cleaver, Emyrs	Where the Buffalo Roam (1966) (TV)	Man in Cinema	13
4858338	Cleese, John	Pleasure at Her Majesty's (1976) (TV)	Various	-1
4858448	Clegg, Tom	Fiction Makers, The (1968)	Monk	6
4858518	Clemens, Günter	Blutjunge Verführerinnen 2 (1972)		11
4858572	Clemens, Otto	Glückliche Zeiten (1976)		-1
4858627	Clemensen, Hans Henrik	Ta' det som en mand, frue! (1975)	Sekretær	18
4859028	Clements, Hal	Under a Flag of Truce (1912)		3
4859148	Clements, Stanley	Tall, Dark and Handsome (1941)	Harry	6
4859346	Clennon, David	Greatest, The (1977)	Captain	17
4860268	Clifford, William	Isle of Abandoned Hope (1914)		1
4860484	Clifton, Scott	General Hospital	Dillon Quartermaine [#3] (2003-)	5
4861040	Cliver, Al	Lussuria (1986)		4
4862088	Clute, Chester	Tall, Dark and Handsome (1941)		-1
4862255	Clyde, Andy	Andy Clyde Gets Spring Chicken (1939)	Andy	1
4862480	Clyde, Andy	Small Town Idol, A (1921)		-1
4863152	Coates, Alan (I)	Edge of Night, The	Ian Devereaux (1982-1983)	11
4864017	Cobb, James W.	Back Stage (1923)	Man in box-seat disrupted by Farina	-1
4864026	Cobb, Joe	Back Stage (1923)	Joe	-1
4864224	Cobb, Mel	Not a Penny More, Not a Penny Less (1990) (TV)	Harvard Club waiter	-1
4864227	Cobb, Mel	Edge of Night, The	Ben Everett (1978)	11
4864393	Cobel, Jinny	Em Cada Coração um Punhal (1970)	(segment "O Filho da Televisão")	15
4881437	Conrad, Charles J.	Atomic Kid, The (1954)	Scientist	-1
4865742	Coco, James	Edge of Night, The	Stubby (1967-1968)/JoJo (year unknown)	11
4866024	Codrescu, Constantin	Martori disparuti (1988)		-1
4866497	Coe, Barry (I)	General Hospital	Joel Stratton #1 (1974)	5
4866627	Coego, Manolo	Toda una vida	Don Julián Mauti	-1
4867098	Coffin, Frederick	Edge of Night, The	Stephen Markham (1983)	11
4867177	Coffin, Tristram	Holt of the Secret Service (1941)	Ed Valdin	6
4867517	Coghill, Gordon	Way of the World, The (1920)	Dick Jefferson	2
4868072	Cohen, Horace	Do Not Disturb (1999)	Waiter in bar	-1
4868085	Cohen, Howard (I)	Rave (2000)	Fred	17
4869164	Colbin, Rod	Edge of Night, The	Doorman (1966)	11
4870021	Cole, Frank (II)	Life Without Death (2000)	Himself	-1
4870327	Cole, Michael (I)	General Hospital	Harlan Barrett (1991)	5
4870597	Colean, Chuck (I)	I Was a Communist for the FBI (1951)	Brakeman	-1
4870630	Coleby, A.E.	Way of the World, The (1920)	Seth Langton	1
4871310	Coletta, Lino	Trastevere (1971)		-1
4871615	Colicos, John	General Hospital	Mikkos Cassadine (1981)/Petros (1985)	5
4871624	Colicos, Nicholas	Not a Penny More, Not a Penny Less (1990) (TV)	David Kesler	-1
4872576	Collier Jr., William	Forgotten (1933)	Joseph Meyers	3
4873280	Collins, Burton	Cry for Help: The Tracey Thurman Story, A (1989) (TV)		11
4873595	Collins, G. Pat	Big Tip Off, The (1955)		-1
4873735	Collins, Gene	General Hospital	Dr. Perry (1990)	5
4874187	Collins, Nat	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		18
4874567	Collins, Sheldon (I)	Edge of Night, The	Randy Crawford #2 (1967)	11
4874904	Collver, Mark	Fratelli e sorelle (1991)	Paul	-1
4874993	Colman, Booth	General Hospital	Prof. Hector Jerrold (1983)	5
4875102	Colmans, Edward	Santiago (1956)	Lorenzo	-1
4875371	Colombo, Juan Carlos	Mujer de Benjamín, La (1991)	Paulino	4
4875441	Colomer, Jesús	Familia Vila, La (1950)	Jaime	-1
4875489	Colomé, Héctor	Caja 507, La (2002)	Director Europa Sur	36
4875634	Colonna, Jerry	Valley of the Giants (1938)	Singing specialty act	17
4877015	Comfort, David	General Hospital	Tom 'Tommy' Baldwin, Jr. #1 (1977-1981)	5
4877026	Comi, Paul	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Officer Dempsey	13
4877042	Comi, Paul	General Hospital	George Durnely (1982)	5
4877368	Compton, Forrest	Edge of Night, The	Dist. Atty. Mike Karr #3 (1972-1984)	9
4877660	Conaty, James (I)	Who Killed Doc Robbin? (1948)	Bailiff	-1
4877708	Conaway, Jeff	Making of a Male Model (1983) (TV)	Chuck Lanyard	7
4878063	Condon, Jackie	Back Stage (1923)	Jackie	-1
4878261	Condrus, Wolfgang	Selbstbedienung (1968) (TV)		-1
4878478	Conforti, Michael	Edge of Night, The	Jeremy Rhodes (1984)	11
4878539	Congdon, James	Edge of Night, The	Col. Ben Hatcher (1967)	11
4878893	Conklin, Colton	Substitute Wife, The (1994) (TV)	Jack	6
4878924	Conklin, Heinie	Big Idea, The (1934)	Drunk Answering Telephone	-1
4878928	Conklin, Heinie	Booty and the Beast (1953)		-1
4879429	Conley, Joe	Patty (1962)	Johnny	11
4864406	Cobert, Jon	This Pretty Planet: Tom Chapin in Concert (1992) (V)	Himself	2
4864993	Coburn, James	Muppet Movie, The (1979)	El Sleezo Cafe Owner	11
4881354	Connors, Richard	Midnight Intruders (1987)	Businessman	8
4881467	Conrad, Christian (I)	Jesse Hawkes	Matt Hawkes	-1
4881516	Conrad, Eddie	Melody Lingers On, The (1935)	Fruit Vendor	19
4881543	Conrad, Guido	Greatest, The (1977)	Himself	29
4881784	Conrad, Robert (I)	Jesse Hawkes	Jesse Hawkes	-1
4881814	Conrad, Shane	Jesse Hawkes	Cody Hawkes	-1
4881827	Conrad, Sid	General Hospital	Mac (1989)	5
4882046	Conrich, Neil	Love Potion (1987)	Lloyd	7
4882467	Considine, John	Pandora's Clock (1996) (TV)	Dr. Turnheir	-1
4883265	Conte, John (I)	Trauma (1962)	Warren Clyner	1
4883293	Conte, Richard	Big Tip Off, The (1955)	Johnny Denton	1
4883558	Conti, Carl	General Hospital	Orderly Bob Clark (1997-2002)	-1
4883959	Contreras, Juan	Pequeños gigantes, Los (1960)		-1
4884782	Conway, Paul (V)	Wastelands (1993)		-1
4884844	Conway, Russ (I)	I Was a Communist for the FBI (1951)	Frank Cvetic	-1
4885006	Conway, Tom (I)	Grand Central Murder (1942)	Frankie Ciro	10
4885722	Cook, David (II)	Rainbow	Presenter (1972-1973)	-1
4886096	Cook, Peter (I)	Pleasure at Her Majesty's (1976) (TV)	Various	-1
4886229	Cook, Skip	Deadlock: A Passion for Murder (1997)	Strothers	14
4886401	Cooke, Al	Small Town Idol, A (1921)	Joe Barnum	5
4887052	Cooley, Spade	Big Tip Off, The (1955)	Himself	13
4887161	Coolio	Lei ting zhan jing (2000)	Coolio	3
4887318	Coombs, Guy (I)	Under a Flag of Truce (1912)		1
4887678	Cooper, Ben (I)	Thunderbirds (1952)	Calvin Jones	13
4887726	Cooper, Bigelow	Martyrdom of Philip Strong, The (1916)	Brother Man	4
4887950	Cooper, Clancy	Flight Lieutenant (1942)	Scanlon	9
4888421	Cooper, George (I)	Auction Block, The (1917)	Jimmy Knight	9
4888577	Cooper, George (VIII)	Greatest, The (1977)	Lawyer	17
4888657	Cooper, H.	Old English (1930)	Wstgate, a Shareholder	-1
4888660	Cooper, Hal	Edge of Night, The	Paul Roberts (1956-1957)	11
4888932	Cooper, Justin (I)	General Hospital	Lucas Stansbury Jones #5 (1996-1998)	5
4889251	Cooper, Scott (II)	Breakin' (1984)	Judge	13
4889698	Copage, John	Killers, The (1964)	Porter	19
4890529	Coppin, Don	Real Bullets (1990)	Sallini's Boduguard	23
4890561	Copping, David	Ned Kelly (1970)	Curnow	11
4891378	Corbett, Ben	Shadows of Chinatown (1926)	The Weasel	4
4891598	Corbett, Matthew	Rainbow	Singer	-1
4891692	Corbett, William	Unmasked (1929)	Franklin Ward	7
4892498	Cordero, Joaquín	Río de las ánimas, El (1964)		-1
4892953	Cording, Harry	Valley of the Giants (1938)	Henchman Greer	13
4893146	Cordova, France	BreakThrough: The Changing Face of Science in America	Himself	-1
4893452	Corelli, Bruno	Vita da cani (1950)	Dancer	6
4893637	Corey, Irwin	Edge of Night, The	The Hobo (1981)	11
4879672	Conlon, Noel	Knight Rider (1982) (TV)	William Benjamin	6
4879861	Connell, John (I)	Harvest (1953) (TV)	Chuck	5
4879967	Connelly, Bobby	Wilderness of Youth (1922)		-1
4880470	Connery, Van	Martyrdom of Philip Strong, The (1916)	Philip Strong	1
4880833	Connon, John (II)	Looking in the Fishbowl (2001)	Logan	-1
4895508	Coromina, Javier	Caja 507, La (2002)	Toni Lomas	5
4895615	Corona, Sergio	Toda una vida		-1
4895627	Coronado, José	Caja 507, La (2002)	Rafael Mazas	13
4896684	Corrigan, Daniel	Wastelands (1993)		-1
4897556	Cortes, Alfonso	Pequeños gigantes, Los (1960)		-1
4897842	Cortez, Jaime	Palácio de Vênus (1980)		-1
4897859	Cortez, Leon	I Could Go on Singing (1963)	The Busker	13
4898072	Corthay, Sylvain	Esprits de famille (1975) (TV)	Jean Morin	6
4898565	Corvinus	Premiere (1936)	Polizeiatzt	-1
4899190	Coskun, Faik	Kara gözlüm efkarlanma (1968)		-1
4899399	Coss, Joaquín	No te engañes corazón (1937)		-1
4899628	Cossins, James	At Bertram's Hotel (1987) (TV)	Col. Luscombe	4
4899693	Cosso, Pierre	À la vitesse d'un cheval au galop (1992)	Le handicapé	33
4899702	Cossoneau, Patrice	Don Juan (1998)	Cavalier de Don Alonse	26
4900372	Costanza, Len	Unstrung Heroes (1995)	Second Doctor	26
4900700	Costello, Elvis	Bacharach: One Amazing Night (1998) (TV)	Himself	-1
4900758	Costello, John (I)	Married? (1926)	Judge Tracey	-1
4901070	Costello, Matt	Way of a Man with a Maid, The (1912)		1
4901081	Costello, Matt	Wives of the Prophet, The (1926)	William Neil	7
4901171	Costello, Ward	General Hospital	Martine Drake (1981)	5
4901322	Coster-Waldau, Nikolaj	Hemmeligheder (1997)	Mads	3
4901802	Cotsworth, Staats	Edge of Night, The	Doctor (1962)	11
4902411	Couchard, Jean-Luc	Quand on est amoureux c'est merveilleux (1999)		-1
4902585	Coughlin, Joe	Vow to Kill, A (1995) (TV)	Vince	-1
4902869	Coulter, Phil	Pride of Ireland (2000)	Himself	-1
4902965	Count of Rosenborg, Flemming	Kongelig familie, En	Himself	-1
4903025	Courant, Gérard	4 aventures de Reinette et Mirabelle (1987)	L'inspecteur	7
4904220	Coutu, Jean (I)	Colombes, Les (1972)	M. Ferland	-1
4904306	Couturier, Luis	Valentina		-1
4904308	Couturier, Miguel	Buzos diamantistas, Los (1988)		-1
4905439	Cowley, Eric	Hampton Court Palace (1926)	Sir Thomas Culpepper	2
4906187	Cox, Paul (V)	Cafe Fantasy (1996)		-1
4906384	Cox, Ronny (I)	Some Kind of Hero (1982)	Col. Powers	4
4907293	Cozzolino, Ciro	Spray Jet (1986)	Himself	-1
4907435	Crabbe, Buster	Overland Riders (1946)	Billy Carson	1
4907517	Crabtree, Don	Edge of Night, The	Lloyd Hubbard (1967-1968)	11
4907552	Crabtree, Michael (I)	Warning: Parental Advisory (2002) (TV)	Sen. Danforth	23
4907835	Craig, Andrew (I)	Unstrung Heroes (1995)	Man in Line	23
4908044	Craig, Donald	General Hospital	Tom Warren (1982)	5
4908247	Craig, James (I)	Northwest Stampede (1948)	Dan Bennett (Clarence)	2
4894007	Corey, Jim	Square Shooter (1935)	Wagon driver	-1
4894176	Coria, Martín	Crónica de un extraño (1998)		3
4894608	Corman, Terence	Rot in Zanzibar (1954)	Stefan Kowski	-1
4894769	Corne, Léonce	Valet maître, Le (1941)	Un membre du club des 'Patineurs'	-1
4895219	Cornillac, Clovis	Amoureux, Les (1994)	Charmillet	7
4895449	Cornwell, Matt	Bobby Jones, Stroke of Genius (2004)	Chum	18
4909594	Cranford, Scott	General Hospital	Boxer (1995)	-1
4910390	Crawford, Andrew	Shadow of the Cat (1961)	Andrew, the butler	6
4910617	Crawford, Jeff	Making of a Male Model (1983) (TV)	Assistant Director	-1
4910666	Crawford, John (I)	I Was a Communist for the FBI (1951)	McGowan	-1
4910713	Crawford, John (I)	Solomon and Sheba (1959)	Joab	6
4911500	Crehan, Joseph	Crime Takes a Holiday (1938)	Gou Allen	11
4912479	Cresswell, Tommy	Bobby Jones, Stroke of Genius (2004)	Official	46
4913311	Crisan, Mircea	Tatort - 3:0 für Veigl (1974) (TV)	Mirko Vikicevic	25
4913366	Criscuolo, Lou	Edge of Night, The	Danny Micelli (1973-1977)	11
4913589	Crisp, Donald (I)	Valley of the Giants (1938)	Andy Stone	5
4913949	Critchlow, Roark	Comrades of Summer, The (1992) (TV)	Petra	12
4914120	Crizer, Thomas J.	End of the Circle, The (1913)		7
4914334	Croce, Gérard	Guépiot, Le (1981)	Le curé	-1
4914626	Crockett, Sam	Chompin' at the Bit (1997) (V)		-1
4915184	Croft, Douglas	Flight Lieutenant (1942)	Danny as a boy	-1
4915406	Croker-King, Charles	Question of Trust, A (1920)	Governor of Maritas	4
4915413	Croll, Gerd	Dumm gelaufen (1997)	Volltrunkener Rentner	13
4914913	Cronin, Cam	Critical Assembly (2003) (TV)	Husband (Terrorist)	12
4915796	Croom, Gregory	General Hospital	Willie (1986)	5
4917062	Crothers, Joel	Edge of Night, The	Dr. Miles Cavanaugh (1977-1984)	11
4917800	Crowley, Matt	Edge of Night, The	Lakeview Chief of Police #2 (1964)	11
4917849	Crownprince of Yugoslavia, Alexander	Kongelig familie, En	Himself	-1
4918383	Crutchfield, Doug	Ta' det som en mand, frue! (1975)	Mandlig stripper	12
4918422	Cruveiller, Olivier	Hurlevent (1985)	Guillaume	5
4919496	Cruz, Ricardo (I)	Don Juan (1998)	Cavalier de Don Alonse	23
4919521	Cruz, Roberto	Monosabio, El (1977)	Photographer	9
4919828	Csernák, János	Pázmány (1987) (TV)		-1
4922905	Cullings, Scott	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	C.J. Age 1	40
4922906	Cullings, Steven	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	C.J. Age 1	39
4921488	Cullum, John (I)	Edge of Night, The	David Gideon #1 (1966-1967)	11
4921556	Culp, Jason	General Hospital	Julian Jerome (1988-1990)	5
4921943	Culver, Roland	Quiet Wedding (1941)	Boofy Ponsonby	12
4923506	Cummings, Irving	Pamela Congreve (1914)		2
4924373	Cunningham, Joe (I)	Torchy Plays with Dynamite (1939)	Maxie, Daily Star City Editor	5
4924586	Cunningham, Tiarnan	General Hospital	Michael Morgan Quartermaine Corinthos [#2] (2001-2002)	5
4924759	Cuoco, Francisco	Semideus, O	Alex Garcia	-1
4924985	Curci, Gennaro	Melody Lingers On, The (1935)	Innkeeper	14
4925183	Cureton, Peter	Boys of St. Vincent, The (1992) (TV)	Brother Peter	37
4925512	Curran, John (IV)	Bobby Jones, Stroke of Genius (2004)	Bobby Cruickshank	17
4925799	Currie, Finlay	Solomon and Sheba (1959)	David	7
4908263	Craig, James (I)	Skinny the Moocher (1939)		8
4908511	Craig, Tony (I)	Edge of Night, The	Draper Scott (1975-1981)	11
4909182	Crane, Carleton	Patty (1962)	Allan	4
4909361	Crane, Matthew	General Hospital	Ross Duncan (2004-)	-1
4909501	Crane, Stephen (IV)	Do Not Disturb (1999)	Chef	-1
4929272	Cuzzocrea, Dominic	Rats, The (2002) (TV)	Nervous rider	16
4929711	Cypher, Jon	General Hospital	Max Van Stadt (1981)	5
4930072	Czerny, Henry	Boys of St. Vincent, The (1992) (TV)	Brother Peter Lavin	1
4930179	Czuchry, Matt	Jake 2.0: The Tech (2003) (TV)	Darin Metcalf	3
4930677	Céleste, Marc	Coeurs de couleur (1989)	Mano	3
4930805	César, Júlio (III)	Semideus, O	Maneco	-1
4931065	Córdova, Pancho	Rage (1966)	Old Man	8
4931275	d'Ailly, Sven	Ingen mans kvinna (1953)	Jan Ersson	-1
4931315	D'Albrook, Sidney	Bat Whispers, The (1930)	Police sergeant	5
4932036	D'Angelo, Gianfranco	Mondo candido (1975)	Barone	6
4932338	D'Arcy, Harry	They Won't Believe Me (1947)	Fisherman	-1
4934289	Dabson, Jesse	Platoon Leader (1988)	Joshua Parker	4
4934338	Dacascos, Mark	Lei ting zhan jing (2000)	Tony Lau	4
4934479	Dacqmine, Jacques	Adieu (2003)	Le médecin	9
4935001	Dafauce, Félix	Páginas en negro, Unas (1950)		-1
4935413	Dahdah, Robert	Edge of Night, The	Doorman (1966)	11
4935694	Dahle, Erik	SøndagsÅpent	Misjonærharselerer (1998-1999)	-1
4936196	Dahlström, Nils	Hemliga Svensson (1933)	Bus driver	-1
4936258	Dahmen, Josef	Maulkorb, Der (1958)	Bankier	16
4937967	Dalio, Marcel	Amants du Tage, Les (1955)	Porfirio	5
4938005	Dalio, Marcel	Flight Lieutenant (1942)	Marcel Faulet	11
4938168	Dall, Karl	Meister Eder und sein Pumuckl	Kunde	-1
4938237	Dallansky, Bruno	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Oberinspektor Pfeifer	1
4938238	Dallansky, Bruno	Tatort - Mord auf Raten (1980) (TV)	0berinspektor Pfeifer	-1
4938483	Dallmeier, Uwe	Meister Eder und sein Pumuckl	1. Wärter	-1
4939594	Daly, Shane (I)	Rats, The (2002) (TV)	Cop	21
4939887	Damasceno, João	Entre Mulheres e Espiões (1961)		9
4940473	Damon, Les	Edge of Night, The	Asst. Dist. Atty. Ed Palmerlee #2 (1957-1958)	11
4940600	Damon, Stuart	General Hospital	Dr. Alan Quartermaine, Sr. (1977-present)	5
4940898	Danailov, Stefan	Ispanska muha (1998)	Uycho	7
4941590	Danek	Premiere (1936)	2. Autor	-1
4942323	Daniel, Robert E.	Bobby Jones, Stroke of Genius (2004)	Bobby Jones' Caddy	-1
4942621	Daniels, Danny (I)	Behind the Green Door, the Sequel (1986)		-1
4942674	Daniels, E.G. (I)	Highway 61 (1991)	Motel Vegetarian	35
4943193	Daniels, Mark (I)	Grand Central Murder (1942)	David V. Henderson	8
4943241	Daniels, Mickey	Air-Tight (1931)		1
4943247	Daniels, Mickey	Back Stage (1923)	Mickey	-1
4926171	Curry, Joel	Fleshtones (1985) (V)		2
4926291	Curry, Shaun	Fiction Makers, The (1968)	Guard, Gamekeeper	17
4926758	Curtis, Craig	General Hospital	Eddie Weeks #1 (1963) (original cast)	5
4927203	Curtis, Jack (I)	Square Shooter (1935)	Jack (bartender)	-1
4927811	Curtiss, Thomas Quinn	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Himself	-1
4928351	Cushing, Peter	Laddie (1940)	Robert Pryor	13
4928451	Cusick, Pat	Bobby Jones, Stroke of Genius (2004)	Reporter No. 4	57
4928665	Cutell, Lou	Unstrung Heroes (1995)	Uncle Melvin	13
4928869	Cutler, Brian	Knight Rider (1982) (TV)	Bar Manager	14
4928997	Cutrona, Ryan	General Hospital	Carmichael (1991)	5
4946153	Darien, Frank	Valley of the Giants (1938)	Doctor	-1
4946703	Darnov, Hans-Maria	Tatort - Der Prügelknabe (2003) (TV)	Hausmeister	-1
4946972	Darren, James	Hey There, It's Yogi Bear (1964)	Singer	-1
4947013	Darrieu, Gérard	Dame de lieudit, La (1993) (TV)	Ricco	8
4947384	Darrow, Henry	General Hospital	Ambassador Tabris (1982)/DVX-backed Colonel (1987)	5
4947429	Darrow, John	Square Shooter (1935)	Johnny Lloyd	4
4947455	Darrow, Oliver	Mister Jerico (1970) (TV)	Receptionist	9
4948560	Dauder, Jordi	Telaraña, La (1990)		-1
4949625	Davenport, Harry (I)	Three Men on a Horse (1936)	Williams	12
4951156	Davidson, Dore	East Side, West Side (1927)	Channon Lipvitch	4
4952192	Davies, D.C. Mills	Where the Buffalo Roam (1966) (TV)	Policeman	16
4952263	Davies, E.R.	General Hospital	Officer George (1989)	5
4952523	Davies, Jeremy (I)	General Hospital	Roger (1992)	5
4952558	Davies, John (IV)	Substitute Wife, The (1994) (TV)	Preacher #1	16
4952602	Davies, Lane	General Hospital	Dr. Cameron Lewis (2002-2004)	5
4952650	Davies, Mitchell	Comrades of Summer, The (1992) (TV)	Igor	13
4952725	Davies, Richard (II)	Fiction Makers, The (1968)	Reporter	23
4952737	Davies, Richard (II)	Where the Buffalo Roam (1966) (TV)	Mr. Black, teacher	5
4953296	Davis, Austin	John and the Missus (1987)	Len Peacock	14
4953380	Davis, BJ	General Hospital	Coach Potter (1983)	5
4953512	Davis, Brian (I)	Wild Pair, The (1987)	Punk	26
4953558	Davis, Carl (IV)	Ghosts of the Past (1991) (TV)		-1
4953605	Davis, Charlie (II)	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		12
4954460	Davis, Herb	Edge of Night, The	Lt. Luke Chandler (1973-1978)	11
4954469	Davis, Humphrey	Edge of Night, The	Dr. Arnold Featherstone (1981)	11
4954551	Davis, Jack (I)	Back Stage (1923)	Jack	-1
4955532	Davis, Mark (V)	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Himself	-1
4955586	Davis, Mark (V)	Trapped (1996) (V)	Wolf	7
4956155	Davis, Rudi	Bobby Jones, Stroke of Genius (2004)	Interlachen Golfer	19
4956402	Davis, Todd (IV)	General Hospital	Bryan Phillips (1978-1987)	5
4956496	Davis, Tyrell	Strictly Unconventional (1930)	Arnold Champion-Cheney, M.P.	3
4957104	Davor, Peter	Tatort - Der Prügelknabe (2003) (TV)	Darko	-1
4958182	Dawson, Ronald	Edge of Night, The	Maynard (1966-1970)	11
4958465	Day, Gordon	Boys of St. Vincent, The (1992) (TV)	Premier	16
4943331	Daniels, Mickey	Three Men on a Horse (1936)	Delivery Boy	-1
4943404	Daniels, Richard	Back Stage (1923)	Man in audience trying to slap spider	-1
4943483	Daniels, Steven E.	Trials of Life (1997) (TV)	Kyle	7
4943628	Danielson, Richard	Unknown Cyclist, The (1998)	Bartender	12
4943850	Dankan	Help!		11
4944202	Dano, Royal	All Mine to Give (1958)	Howard Tyler	9
4944271	Dano, Royal	Santiago (1956)	Lobo	9
4945186	Daoud, Suleiman	Palácio de Vênus (1980)		-1
4945428	Darasse, Vincent	Point douloureux, Le (1979)		-1
4945596	Darchinger, Thomas	Tatort - Der Fremdwohner (2002) (TV)	Richi Freisinger	13
4945881	Dargo, Hugo	Perra, La (1967)	Gustavo Velez	4
4946123	Darien, Frank	She-Wolf, The (1931)		-1
4964329	de Heer, Walter	Do Not Disturb (1999)		-1
4964742	De Keuchel, Dominique	Sainte farce, La (1972) (TV)	Rico	5
4965081	de la Cruz, René	Brigadista, El (1977)		-1
4965329	De La Paz, Danny	Wild Pair, The (1987)	Tucker	6
4965871	De Lacey, John	Auction Block, The (1917)		-1
4966485	de Liguoro, Giuseppe	Inferno, L' (1909)		-1
4966672	De Longis, Anthony	General Hospital	Irving (1984)	5
4966893	De Luigi, Fabio	È già ieri (2004)	Enrico	3
4967297	De Mario, Tony	Big Tip Off, The (1955)		-1
4967761	de Meriche, Julián	Club de señoritas (1956)		-1
4968616	De Nuet, Dickie	Our Gang Follies of 1936 (1935)		-1
4968797	de Oliveira, Juca	Semideus, O	Alberto	-1
4968928	de Oliveira, Sérgio	Semideus, O	Albino	-1
4969037	de Pascual, Armando	Toda una vida	Antonio	-1
4969452	de Pruyssenaere, Nicolas	Do Not Disturb (1999)	Male Nurse	-1
4969861	De Rosselli, Rex	Isle of Abandoned Hope (1914)		5
4970097	De Sales, Francis	All Mine to Give (1958)	Mr. Stephens	17
4970681	De Sica, Vittorio	Trastevere (1971)	Enrico Formichi	3
4970823	De Simone, Roberto	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Father Cerioni	-1
4971151	De Souza, Modesto	Entre Mulheres e Espiões (1961)		6
4971188	De Souza, Patrick	À la vitesse d'un cheval au galop (1992)	Un gendarme	50
4972628	De Wolff, Francis	Man Who Could Cheat Death, The (1959)	Insp. LeGris	6
4973409	Dean, James (I)	Harvest (1953) (TV)	Paul Zalinka	3
4973583	Dean, Mitch (III)	Bobby Jones, Stroke of Genius (2004)	Inwood Runner	20
4974023	Dearden, Farron	Virginian, The (2000) (TV)	9 Year Old Boy	30
4974350	Dearing, Edgar	Torchy Plays with Dynamite (1939)	Jim Simmons, S.F. Police	7
4974474	Dearth, John	Shadow of the Cat (1961)	Constable Hamer	-1
4975657	Decker, Chuck	Demon Possessed (1993)	Lout's Friend	9
4975701	Decker, John (II)	Cafe Fantasy (1996)		-1
4975725	Decker, John (II)	Eclipse (1993) (V)		-1
4975815	Decker, John (II)	Southern Comfort (1995) (V)		-1
4975971	Deckert, Blue	Substitute Wife, The (1994) (TV)	Royal Spencer	13
4978911	Dekker, Albert	Daikaijû Gamera (1965)	Secretary of Defense	2
4958577	Day, Mark (II)	Boyclops (2004)	Johnny	1
4959466	de Albuquerque, Henrique	Pai Tirano, O (1941)		30
4959526	De Alessandro, Mark	Lionheart (1990)	N.Y. Homeless Fighter #2	40
4959534	De Alexandre, Rodolfo	Amantes frios, Los (1978)	Artesano I (segment"El Soplador del vidrio")	6
4959699	de Almeida, Joaquim	Água e Sal (2002)	Marido	2
4960582	de Barros, Orlando	Tronco do Ipê, O	Mário	-1
4960603	de Barros, Raúl	Tudo é Música (1957)		-1
4960776	de Bernal, Farnesio	Mujer de Benjamín, La (1991)	Román	-1
4960787	de Bernal, Farnesio	Reed, México insurgente (1973)		-1
4960794	de Bernal, Farnesio	Tres historias de amor (1978)		6
4961851	de Carvalho, José (I)	Trois couronnes du matelot, Les (1983)		-1
4962780	de Falco, Rubens	Rainha Louca, A	Imperador Maximiliano do México	-1
4964071	De Grazia, Julio	Titanes en el ring contraataca (1983)		-1
4979071	DeKova, Frank	Santiago (1956)	Jingo	7
4979585	del Castillo, Eric	Grandes ilusiones		3
4979652	del Castillo, Gerardo	No te engañes corazón (1937)		-1
4980182	Del Postigo, Domi	Caja 507, La (2002)	Inspector 2	18
4981823	Delano, Michael	General Hospital	Dr. Mark Dante #3 (1976)	5
4995649	Devan (I)	Horse Power (2002)		-1
4982034	Delayat, Gérard	À la vitesse d'un cheval au galop (1992)	Routier 1	45
4982259	Delchev, Yoan	Duhat na bashta mi (1998) (TV)	Momcheto	3
4982408	Deleuze, Jacques	Hurlevent (1985)	Le médecin	10
4984550	DeLorenzo, Michael	Platoon Leader (1988)	Raymond Bacera	3
4984936	Deluc, Xavier	Beau temps mais orageux en fin de journée (1986)	Bernard	-1
4985103	DeLuise, Dom	Muppet Movie, The (1979)	Bernie the Hollywood Agent	12
4985328	Demange, Paul	Bach détective (1936)	M. Dubois	27
4985456	Demange, Paul	Train de plaisir (1936)		-1
4985468	Demange, Paul	Valet maître, Le (1941)	Le vendeur de tableaux	-1
4986568	Demorest, Daniel	Platoon Leader (1988)	Duffy	7
4986740	Dempsey, Michael (I)	Trials of Life (1997) (TV)	Coach	16
4986746	Dempsey, Pat	Ava's Magical Adventure (1994)	Jeffrey	-1
4986857	Dempster, Hugh	Happy Go Lovely (1951)	Bates	10
4988455	Dennett, Chris	Chickboxin Underground (1999)	Giman/Others	23
4988544	Denning, Richard (I)	Double Deal (1950)	Buzz Doyle	2
4988761	Dennis, John (I)	Harvest (1953) (TV)	Joe	6
4988872	Dennis, Mike (I)	Chickboxin Underground (1999)	Tim Wannahump	9
4989207	Denny, Reginald (I)	Voice of Hollywood No. 3, The (1929)	Guest Host	-1
4989225	Denny, Stuart	Face to Face (1990) (TV)	Journalist	-1
4989363	Denos, John	General Hospital	Dr. Malcolm Rutledge (1987)	5
4989498	Dent, Vernon	Booty and the Beast (1953)	Night Watchman	4
4990117	Denver, John	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Himself - Performer: 'Rhymes & Reasons'	11
4990137	Deny, Pierre	Dame de lieudit, La (1993) (TV)		-1
4990485	DePaiva, James	General Hospital	Eddie Holton (1985)	5
4990843	Deplanche, Philippe	Trois couronnes du matelot, Les (1983)	L'étudiant	2
4991392	Derek, John	Thunderbirds (1952)	Lt. Gil Hackett	1
4991431	Derepp, Claude	Parfum d'Yvonne, Le (1994)	Roger Fossorie	8
4991438	Derepp, Claude	Trois couronnes du matelot, Les (1983)	Le capitaine	6
4991733	Dermont, Jean-Paul	Amoureux, Les (1994)	L'entrepreneur	6
4991959	DeRose, Chris	General Hospital	Dino (1988)	5
4992401	Des Barres, Michael	Hungry Bachelors Club, The (1999)	Harold Spinner	2
4992452	des Pallières, Balthazar	Adieu (2003)	L'enfant de choeur	14
4992502	Desagneaux, Lucien	Valet maître, Le (1941)	Un membre du club des 'Patineurs'	-1
4993656	Deskin, Rik	Pandora's Clock (1996) (TV)	Man in Elevator	-1
4995037	Deu, Amerjit	Bobby Jones, Stroke of Genius (2004)	Hadji	15
4995926	Devendorf, Don (I)	Only Way to Ski, The (1969) (TV)	Host	-1
4996358	Devine, Aidan	Boys of St. Vincent, The (1992) (TV)	Brother Michael Davitt	15
4996849	Devlin, A.J.	Clash of the Ash, The (1987)		-1
4997149	Devlin, William	Solomon and Sheba (1959)	Nathan	11
4997313	DeVona, Phillip	Bobby Jones, Stroke of Genius (2004)	Reporter No. 2	55
4979477	del Castillo, Eric	Hija del hacendado, La (1997) (V)		-1
4997915	DeWilde, Philip	Rats, The (2002) (TV)	Artie	18
4998069	Dexter, Aubrey	Private Secretary, The (1935)	Gibson	8
4998119	Dexter, Coco	Overboard (1978) (TV)	Parts Proprietor	-1
4998166	Dexter, Elliott	Something to Think About (1920)	David Markely	1
4998348	Deyl, Rudolf (I)	V trestném území (1947)		-1
4998450	Dezsõffy, László	Mai lányok (1937)	Magándetektív	-1
4998776	Dharmendra (I)	Return of Jewel Thief (1996)	Commando Surya Singh	-1
5000569	Di Pri, Timothy	Emmanuelle 5: A Time to Dream (1994)		-1
5000621	Di Reda, Joe	General Hospital	Angel Moran (1986)	5
5001598	Dianellos, Lavrentis	Egoistes, Oi (1971)		-1
5001927	Dias, Pedro	Tudo é Música (1957)		-1
5002980	Dickens, David	Jawbreakers (2001) (V)		-1
5003096	Dickerson, Dudley	Booty and the Beast (1953)		-1
5003184	Dickerson, Dudley	Torchy Plays with Dynamite (1939)	Black Man in Court	-1
5003522	Dickson, Chad	Sk8 Life (2004)	Chad	-1
5003937	Dieffenbacher, Joe	Do Not Disturb (1999)	Junk With Crowbar	-1
5003874	Diedrich, Hans Jürgen	Meister Eder und sein Pumuckl	Uhrmacher Meisel	-1
5003936	Dieffenbacher, Gustav	Tatort - Mord im Ministerium (1974) (TV)	Sektionschef Ehmann	-1
5004033	Diego, Gabino	Tu-no (1999)	Borja Juan/Tunoman	1
5004114	Diego, Nacho de	Agujetas en el alma (1998)	Sex-shop	47
5004965	Dietl, Harald	Meister Eder und sein Pumuckl	Revierpolizist	-1
5005054	Dietrich, Frank	Weiße Stadt, Die (1980) (TV)	Kosta	5
5005150	Dietz, Michael	General Hospital	Dr. Joseph Parnell 'Joe' Scanlon #1 (1997-1999)	5
5005192	Dieudonné, Albert	Ce que les Flots Racontent (1916)		1
5005331	Diffring, Anton	Man Who Could Cheat Death, The (1959)	Dr. Georges Bonnet	1
5005834	Dijkstra, Jacob	Do Not Disturb (1999)	Senior medical officer	-1
5006511	Dillard, Richard	Warning: Parental Advisory (2002) (TV)	Senator Sam	12
5007240	Dillon, John (IV)	Junky's Christmas, The (1993)	Christmas dinner friend	-1
5007810	Dilson, Clyde	Unmasked (1929)	Imposter	13
5009575	Dinn, Philip	Boys of St. Vincent, The (1992) (TV)	Mike Finn	4
5010478	DiSanti, Joe	General Hospital	Dr. Gerald Henderson (1975)	5
5011049	Dissel, Werner	Tatort - Rattenlinie (2000) (TV)	Otto Wissing	11
5011249	Ditta, Angelo	Blume der Hausfrau, Die (1999)		-1
5011899	Dixon, Jed	Vow to Kill, A (1995) (TV)	Security Officer	-1
5011989	Dixon, MacIntyre	Edge of Night, The	Bertie (1972)	11
5012239	Djadjam, Mostefa	Trois couronnes du matelot, Les (1983)		-1
5012329	Djaparidze, Sh.	Chirveuli mezoblebi (1945)	Head of town	8
5013327	Dobbs, George (I)	Tall, Dark and Handsome (1941)		-1
5013466	Dobkin, Richard	Bobby Jones, Stroke of Genius (2004)	Law Professor	23
5013967	Dobson, Michael (I)	Comrades of Summer, The (1992) (TV)	Marine Ball Player	-1
5014569	Dodd, Brian	Boys of St. Vincent, The (1992) (TV)	Steven Lunny	5
5014776	Dodds, Joe	Virginian, The (2000) (TV)	Thick Bandana	21
5014799	Dodemond, Howard	Do Not Disturb (1999)	Waiter In Restaurant	-1
5014847	Dodge, Frank	East Side, West Side (1927)	Judge Kelly	9
5015163	Doench, Karl	Tatort - Mord auf Raten (1980) (TV)		-1
4997820	Dewey, Elmer	Shadows of Chinatown (1926)	The Ace	3
5016787	Dolo, Akonio	Amoureux, Les (1994)	Hassim	20
5017047	Dombrowsky, Felix	Premiere (1936)	1. Autor	-1
5017811	Domphe, Richard	Mondo candido (1975)		9
5018399	Donahue, Shawn	General Hospital	Nathan (1987)	5
5018555	Donald, Peter (I)	Prize Performance	Judge	-1
5019123	Donavan, Felipe	Tronco do Ipê, O	Capitão	-1
5019400	Dondé, Manuel	Río de las ánimas, El (1964)		-1
5019811	Donlevy, Brian	Daikaijû Gamera (1965)	Gen. Terry Arnold	1
5020662	Donovan, Brian (I)	General Hospital	George Z (1995)	5
5021480	Dooley, Brian (I)	Boys of St. Vincent, The (1992) (TV)	Detective Noseworthy	3
5021536	Dooley, Johnny	East Side, West Side (1927)	Grogan gang member	11
5021682	Doom, Yves	Overboard (1978) (TV)	Taarii	-1
5021691	Doonan, George	Shadow of the Cat (1961)	Ambulance Man	-1
5021848	DoQui, Robert	Making of a Male Model (1983) (TV)	Policeman	-1
5022012	Doran, Olivier	À la vitesse d'un cheval au galop (1992)	Le marié	21
5022219	Dorety, Charles	Boobs in Arms (1940)	Army Private	-1
5022246	Dorety, Charles	Holt of the Secret Service (1941)	Henchman	-1
5022341	Dorfer, Gerhard	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Hofrat Dr. Putner	5
5023954	Dorsey, Rufus	Rave (2000)	E.M.T.	25
5024437	Dost, Dieter	Tatort - Der vierte Mann (2004) (TV)		-1
5024795	Doubet, Steve	General Hospital	Zack (1980-1982)	5
5025870	Dough, Jon	Transaction (1986) (V)		-1
5026171	Douglas, Bert	General Hospital	Mac McLaughlin (1977)	5
5026225	Douglas, Burt	Edge of Night, The	Ron Christopher (1968-1972)	11
5026527	Douglas, Donald (III)	Young Sherlock: The Mystery of the Manor House	Colonel Turnbull	-1
5026791	Douglas, James (I)	Edge of Night, The	Desmond Aldrich (1984)	11
5026876	Douglas, Javien	Trials of Life (1997) (TV)	Paris	-1
5026997	Douglas, Kirk (I)	Lovely Way to Die, A (1968)	Jim Schuyler	1
5028449	Dow, Tony (I)	General Hospital	Ross Jeanelle (1975)	5
5028585	Dowhen, Garrick	General Hospital	Yves (1986)	5
5028966	Downes, Kevin	Bobby Jones, Stroke of Genius (2004)	Gene Homans	24
5029126	Downey, Brian	John and the Missus (1987)	Burgess	16
5029149	Downey, Glenn (II)	Boys of St. Vincent, The (1992) (TV)	Policeman	30
5029227	Downie, Peter	Man Alive	Host (1989-1996)	-1
5029353	Downing, Joe (I)	Tall, Dark and Handsome (1941)		-1
5029390	Downing, Rex	Our Gang Follies of 1936 (1935)		-1
5029874	Doyle, David (I)	General Hospital	Ted Holmes (1986-1987)	5
5029921	Doyle, Jerry (II)	John and the Missus (1987)	Alf Sheppard	9
5030388	dr. Szilágyi, Imre	Iza néni (1933)		-1
5030633	Dracz, Krzysztof	Farba (1998)		-1
5030665	Draeger, Jürgen	Selbstbedienung (1968) (TV)		-1
5030760	Drago, Alberto	Titanes en el ring contraataca (1983)		-1
5031053	Drake, Adrian	Edge of Night, The	Dwight Endicott (1982)	4
5015489	Dogan, Süha	Izmir sokaklarinda (1953)		1
5015986	Dol, Shariff	Pendekar bujang lapok (1959)	Shariff, Ketua Samseng (Leader of thugs)	10
5016039	Dolabella, Carlos Eduardo	Rainha Louca, A		-1
5016073	Dolan, Don	General Hospital	Chief Guy Lewis (1985-1989)	5
5016387	Doleman, Guy	General Hospital	Angus McKay (1986-1987)	5
5032774	Dressel, Gerhard	Tatort - Rattennest (1972) (TV)	Kriminalassistent Roland	5
5033723	Drinan, Paul	Traum des Hauptmann Loy, Der (1961)	Hauptmann Loy	1
5033773	Drischell, Ralph	General Hospital	Baron Varony (1987)	5
5034053	Driver, Ian	Edge of Night, The	Kevin Jameson #2 (1975-1980)	11
5034829	Drury, James	Virginian, The (2000) (TV)	Rider	6
5034988	Dryden, Robert	Edge of Night, The	Vincente (1966)	11
5035152	Du Biel, Nellis	Tatort - Schimanskis Waffe (1990) (TV)	Hooken	-1
5035367	Du Pont, Floyd	Premiere (1936)	Dancer	-1
5035393	Du Val, Douglas	Lionheart (1990)	N.Y. Security Guard	20
5035573	Duarte, Arthur	Pai Tirano, O (1941)	Artur Castro	10
5035740	Duarte, Reginaldo	Pai Tirano, O (1941)	Pinto	7
5036458	Dubov, Paul	Atomic Kid, The (1954)	Anderson, advertising agent	16
5036800	Duca D'Aosta, Amedeo	Kongelig familie, En	Himself	-1
5036862	Duceppe, Jean	Colombes, Les (1972)	L'oncle Albert	-1
5037278	Duckworth, Todd	Comrades of Summer, The (1992) (TV)	Leonid	14
5037725	Dudikoff, Michael	Black Thunder (1997)	Vince	-1
5037744	Dudikoff, Michael	Platoon Leader (1988)	Lt. Jeff Knight	1
5037771	Dudley, Aaron	Critical Assembly (2003) (TV)	Dreads	-1
5038928	Dufilho, Jacques	Josse (1974) (TV)	Josse	1
5039059	Dufour, Val	Edge of Night, The	Andre Lazar (1965-1966)	11
5039325	Dugan, Tom (I)	Grand Central Murder (1942)	Mileaway	-1
5039606	Duggan, Andrew	Overboard (1978) (TV)	Dugan	-1
5039670	Duggan, Gerry	Ned Kelly (1970)	Father O'Hea	13
5041298	Dumbrille, Douglass	Crime Takes a Holiday (1938)	J.J. Grant	4
5041510	Dumesnil, Jacques	Bach détective (1936)	Stefani	7
5041610	Dumke, Ralph	Holiday for Sinners (1952)	Mike Hennighan	10
5041892	Dumont, Sky	General Hospital	Claudio Maldonado (1989)	5
5043048	Duncan, Angus	General Hospital	Al (1987)	5
5044426	Dunn, Bobby (I)	Hot Foot (1922)		-1
5044841	Dunn, Eddie	Tall, Dark and Handsome (1941)		-1
5045338	Dunn, Ralph	Grand Central Murder (1942)	Policeman	-1
5045491	Dunn, Ralph	Tall, Dark and Handsome (1941)		-1
5045529	Dunn, Ralph	Edge of Night, The	Jake Golick (1957)/Lakeview Chief of Police #2 (1964)	11
5045864	Dunne, Griffin	Warning: Parental Advisory (2002) (TV)	Frank Zappa	10
5046204	Dunphy, Don	Greatest, The (1977)	Commentator	26
5046485	Duogo, Ramiro	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	The Mechanic	-1
5046602	Dupeyrón, José	Amantes frios, Los (1978)	Hombre II ("Los Amantes frios")	24
5048513	Durkin, Brian F.	Bobby Jones, Stroke of Genius (2004)	Perry Adair	51
5048581	Durkin, Tom (II)	General Hospital	Carver (1990)	5
5048596	Durmaz, Ercan	Handvoll Gras, Eine (2000)	Uncle	3
5048725	Durning, Charles	Muppet Movie, The (1979)	Doc Hopper	6
5048895	Durov, Lev	34-j skoryj (1981)		1
5048979	Durov, Lev	Ya shagayu po Moskve (1963)		-1
5031172	Drake, Charlie	Slapstick and Old Lace		-1
5031812	Drake, Steve (I)	Transaction (1986) (V)		-1
5032344	Drechsel, Sammy	Tatort - 3:0 für Veigl (1974) (TV)	Sportreporter	27
5032588	Drescher, Peter	Zycie za zycie (1991)	Palitsch	15
5050408	Dutt, Sanjay	Main Awara Hoon (1983)		1
5050931	Duval, Carlos	Semideus, O		-1
5051312	Duvall, Robert (I)	Greatest, The (1977)	Bill McDonald	-1
5051414	Duvall, Wayne	Unstrung Heroes (1995)	Mr. Crispi	22
5051452	Duvallès, Frédéric	Train de plaisir (1936)		-1
5051720	Duyen, Ky	Bach détective (1936)	Le complice de Stefani	20
5054841	Dénes, György	Iza néni (1933)		-1
5052349	Dwyer, David (I)	Bobby Jones, Stroke of Genius (2004)	Reporter No. 3	56
5052809	Dye, Cameron	Dead Wrong: The John Evans Story (1984) (TV)	Ritter	5
5053499	Dynarski, Gene	General Hospital	Jed (1983)	5
5056483	Díte, Zdenek	V trestném území (1947)		-1
5056592	Dória, Jorge	Grande Família, A	Lineu	-1
5056632	Dózsa, István	Mai lányok (1937)	Árverezõ	-1
5055716	Dörner, Erich	Perle von Tokay, Die (1953)		-1
5055951	Düzgün, Sadettin	Kislalar doldu bugün (1968)		-1
5056677	Eagle, Chief White	Trails of the Golden West (1931)		8
5056891	Earl of Harewood, George	Kongelig familie, En	Himself	-1
5056962	Earl, Shaun	Gigli (2003)	Beach Dancer	26
5057336	Earle, George	John and the Missus (1987)	Mr. Godden	19
5057348	Earle, Jack	Obey the Law (1924)		1
5057701	East, Carlos	Ángeles de Puebla, Los (1968)	Ricky	9
5058039	East, Nick	Primal Instinct (1996) (V)		8
5058105	East, Nick	Southern Comfort (1995) (V)		-1
5059428	Eberle, Thomas	Edge of Night, The	Mark Egan (1983)	11
5059504	Ebert, Michael	Edge of Night, The	Dr. Dave Gerard #1 (1969)	11
5059635	Ebner, Jacques	Point douloureux, Le (1979)	L'homme agression	11
5059872	Eccles, Ted	General Hospital	Bobby Chandler (1975-1976)	5
5060443	Eckhardt, Fritz	Tatort - Mord auf Raten (1980) (TV)	Oberinspektor Marek	-1
5060446	Eckhardt, Fritz	Tatort - Mord im Ministerium (1974) (TV)	Oberinspektor Marek	-1
5060451	Eckhardt, Fritz	Tatort - Mordverdacht (1971) (TV)	Oberinspektor Marek	-1
5060654	Eckmüller, Ossi	Meister Eder und sein Pumuckl	Mann am Steeg	-1
5060746	Economou, Bruce	General Hospital	Capt. Turner (1994)	5
5061645	Edge, Norman	Virginian, The (2000) (TV)	Thorsen	15
5061766	Edige, Kemal	Dertli irmak (1958)		5
5062330	Edmundson, Mr.	Just Jim (1915)	Undetermined Role	4
5062975	Edwards, Bruce (I)	Respect the Law (1941)	Interne	-1
5063642	Edwards, Gary (I)	Overboard (1978) (TV)	Klaus	-1
5064741	Edwards, Vince	Knight Rider (1982) (TV)	Fred Wilson	10
5064774	Edwards, Waldo	Unmasked (1929)	Gordon Hayes	12
5064828	Edwin, Walter	Unsullied Shield, An (1913)		8
5065154	Eftaxopoulos, Vassilis	Eglimata	Dr. Pavlos Logaras	-1
5065179	Efthimiou, Christos (III)	Eglimata	Valantis	-1
5065497	Egan, Scott	General Hospital	Johnny	5
5065783	Egger, Joseph	Goldsucher von Arkansas, Die (1964)	Barbier	10
5065810	Egger, Joseph	Perle von Tokay, Die (1953)	Janek, Offiziersdiener	9
5065888	Eggers, Per	Prins hatt under jorden (1980)	Narrator	1
5065947	Eggleston, Dan	Warning: Parental Advisory (2002) (TV)	Photographer	-1
5067143	Eiding, Paul	Littles, The		-1
5067163	Eidlitz, Karl	Perle von Tokay, Die (1953)	Stuhlrichter	11
5067271	Eikelpoth, Dieter	Tatort - Der Tausch (1986) (TV)		13
5067308	Eiland, Kenneth S.	Some Kind of Hero (1982)	Vietcong Guard	-1
5068189	Eiseman, Jack	Wild Pair, The (1987)	Sex Shop patron	14
5068656	Ekhtiar-dini, Amaneh	Zendegi dar meh (1999)		-1
5068661	Ekhtiar-dini, Nezhad	Zendegi dar meh (1999)		-1
5068782	Eklund, Ernst	Maria på Kvarngården (1945)	Major Lundgren	6
5068838	Eklund, Michael	Critical Assembly (2003) (TV)	Jefferson	-1
5069234	Ekstam, Nils	A.-B. gifta bort baron Olson (1928)	Jönsson	4
5069293	El Aidi, Abdelhadi	Marocain (1989) (TV)		-1
5069518	El Hariri, Ahmed	Bint min el banat (1968)		6
5069898	El-Sherif, Nour	Bint min el banat (1968)		3
5070278	Elcar, Dana	Lovely Way to Die, A (1968)	Layton	12
5070310	Elcar, Dana	Edge of Night, The	Clinton Wheeler (1964-1965)	11
5071096	Elflein, Gerald	Caja 507, La (2002)	Camarero Alemán	15
5071637	Elias, Kelly	Making of a Male Model (1983) (TV)	Charlie	-1
5071704	Elias, Oswaldo	Tudo é Música (1957)		-1
5071820	Elik, Terry	Beer (1985)	Talk Show Audience	39
5072048	Elizondo, Hector	Edge of Night, The	Dimitri (1967)	11
5072171	Elizondo, Oscar	Amantes frios, Los (1978)	Monaguillo (segment "Los Amantes frios")	22
5072694	Ellington, Zachary	General Hospital	Dr. Tommy 'Tom' Hardy, Jr. #2 (1994-1997)	5
5072770	Elliot, Ian	Do Not Disturb (1999)	Man In Elevator	-1
5073241	Elliott, David (I)	Deadlock: A Passion for Murder (1997)	Paul	5
5073531	Elliott, Dick (I)	Main Street Kid, The (1948)	Sam Trotter	13
5073788	Elliott, Ian (II)	Do Not Disturb (1999)	Man in elevator	-1
5073804	Elliott, James (II)	Ned Kelly (1970)	Pat O'Donnell	-1
5074397	Elliott, Ross (I)	General Hospital	Lee Baldwin #1 (1963-1965)	5
5074529	Elliott, Stephen (I)	Overboard (1978) (TV)	Shawn	-1
5075073	Ellis, Frank (I)	Overland Riders (1946)	Henchman	7
5075166	Ellis, Frank (I)	Square Shooter (1935)	Ore wagon shotgun	-1
5075902	Ellis, Robert (I)	Speed (1925)	Nat Armstrong Jr.	6
5076191	Ellison, James	Lady, Let's Dance (1944)	Jerry Gibson	2
5076333	Ellsworth, Kiko	General Hospital	Jamal Woods (2000)	-1
5076449	Elmaleh, Gad	Décalages au Palais des Glaces (1997) (V)	David	-1
5076535	Elmecky, Khaldoun	Cowboy uit Iran (1999) (TV)	Amir	-1
5076842	Elonperä, Toppo	Mies Marseillesta (1937)	Pjotr	5
5077409	Eltinge, Julian	Voice of Hollywood No. 3, The (1929)	Himself	-1
5077542	Elviro, Pedro	Club de señoritas (1956)		-1
5078599	Emery, James (I)	General Hospital	Dr. Dean Arnold (1988)	5
5078980	Emmer, Peter	Komischer Heiliger, Ein (1979)	Geistlicher	4
5080270	Engel, Roy	All Mine to Give (1958)		-1
5080301	Engel, Roy	I Was a Communist for the FBI (1951)	Jackie's Father	-1
5080828	England, Randall	General Hospital	Jack Slater (1984-1985)	5
5080943	Engle, Billy	Tiddly-Winks (1927)		3
5081029	Englert, Jan	Weryfikacja (1987)	Janusz Malicki	3
5082108	Enríquez, Roberto	Marta y alrededores (1999)	Néstor	-1
5082195	Ensign, Michael	General Hospital	Dr. Gary (1994)	5
5082719	Epperson, Tom (I)	General Hospital	O'Connor (1995)	5
5082784	Eppler, Dieter	Tatort - Der Tausch (1986) (TV)	Bohm (senior)	8
5082787	Eppler, Dieter	Tatort - Kein Kinderspiel (1980) (TV)		15
5083197	Erazo, Luis Ignacio	Mujer de Benjamín, La (1991)	Nemesio	-1
5083572	Ergashev, Alisher	Ukhodya, ostayutsya (1987)		11
5083909	Erhart, Peter	Tatort - Schwarzer Advent (1998) (TV)		-1
5084920	Ericson, John	General Hospital	Eric Ingstrom (1987)	5
5084471	Erlandzon, Albin	Ingen mans kvinna (1953)	Ersson's neighbour	-1
5086015	Ervie Mateo, Patrick	Basta Tricycle Driver... Sweet Lover (2000)		-1
5086095	Erwig, Til	Meister Eder und sein Pumuckl	Nachbar	-1
5086336	Erwin, Terry (I)	Ned Kelly (1970)	Chinese	-1
5086361	Erämaa, Kyösti	Mies Marseillesta (1937)	Matti Marras	3
5086858	Escobar, Alvaro (I)	Casamiento de Chichilo, El (1938)		-1
5086942	Escobar, John	Wild Pair, The (1987)	Mexican kid	-1
5087398	Eshbaugh, Jack	Burglar, The (1928)		-1
5087541	Eslin, James	Real Bullets (1990)	Sheriff's Deputy	56
5088135	Espinosa 'Ferrusquilla', José Ángel	Rage (1966)		-1
5088888	Esser, Paul	Tatort - Mord im Ministerium (1974) (TV)	Kommissar Kaulke	-1
5088889	Esser, Paul	Tatort - Rattennest (1972) (TV)	Kommissar Kasulke	4
5089889	Estrada, Joseph	Big Boss (1965)		-1
5089937	Estrada, Joseph	Magkaaway (1978)		-1
5090191	Estrella, Rafael	Pequeños gigantes, Los (1960)		-1
5090302	Esumi, Hideaki	Showa onnamichi: Rashomon (1972)	Marquis Katsuragawa/Hiroyoshi	-1
5090653	Etienne, Roger	Lionheart (1990)	Interpol Inspector	19
5090700	Etlinger, Karl	Frau, nach der man sich sehnt, Die (1929)	Poitrier	6
5091682	Evans, Charles E.	Old English (1930)	Appleby, a Shareholder	-1
5091714	Evans, Claude	New Orleans After Dark (1958)	Frank	16
5091825	Evans, Dave (VI)	Chickboxin Underground (1999)	Sparks Maltby	16
5091915	Evans, Douglas	I Was a Communist for the FBI (1951)	Chief Agent	-1
5091927	Evans, Douglas	Main Street Kid, The (1948)	Mark Howell	8
5092489	Evans, Gene (I)	Thunderbirds (1952)	Sgt. Mike Braggart	4
5092903	Evans, Jack (I)	Square Shooter (1935)	Miller rider Jack	-1
5094248	Everett, Todd	General Hospital	Eddie Hawkins (1976-1977)	5
5095034	Evrard, Jacky	Conte à regler (1978)		-1
5095280	Ewer, Donald	Beer (1985)	Priest	25
5095584	Eybner, Richard	Premiere (1936)	Mucky	12
5095681	Eyes, Hawk	Jawbreakers (2001) (V)		-1
5096039	Eytinge, Harry	Unsullied Shield, An (1913)		7
5096358	Faber, Knud	Knud Faber (1936)	Himself	1
5096564	Fabian, Patrick	General Hospital	Ted Murty (1997)	5
5096679	Fabio, Mario	Casting de maduras (2001) (V)		4
5097075	Fabrizi, Aldo	Vita da cani (1950)	Nino Martoni	1
5097249	Fabrizio, David	General Hospital		-1
5097535	Fadón, Manuel	Monosabio, El (1977)	Truck driver	7
5098339	Fainsilber, Samson	Bossu, Le (1934)		-1
5098987	Fairman, Michael	General Hospital	Harry Silver (1994-1997)	5
5099151	Faison, Matthew	General Hospital	Dist. Atty. Boyer (1984)	5
5099352	Fajardo, Curro	Monosabio, El (1977)	Rafa	2
5099518	Fajardo, Eduardo	Toda una vida		-1
5099542	Fajardo, Manuel	Monosabio, El (1977)	Hombre del cartel	27
5099852	Falco, Tav	Highway 61 (1991)	Motorcycle Gang Leader	8
5099958	Falcon, Bruno	Breakin' (1984)	Electro Rock 1	7
5100647	Falk, Rick	General Hospital	Dr. Phil Brewer #3 (1966)	5
5100938	Fall, Steve	Highway 61 (1991)	Jeffrey The Corpse	12
5102023	Fancy, Richard	General Hospital	Benny (1997-2003)	5
5102431	Fantoni, Vittorio	Trastevere (1971)		-1
5102558	Faraday, Tim	Do Not Disturb (1999)	Lt. Brand	12
5102790	Farc, Abrahão	Em Cada Coração um Punhal (1970)	(segment "O Filho da Televisão")	14
5103155	Farese, Jude	Some Kind of Hero (1982)	Bandit	18
5103296	Farguette, Gabriel	Bach détective (1936)	Le fils de l'aubergiste	22
5103937	Farmer, Gary	Virginian, The (2000) (TV)	Buster	7
5104191	Farney, Cyl	Entre Mulheres e Espiões (1961)		-1
5104885	Farr, Derek	Quiet Wedding (1941)	Dallas Chaytor	2
5105776	Farrar, David (I)	Solomon and Sheba (1959)	Pharaoh	5
5106832	Farrell, Tom Riis	Four Simples Rules (2003)		-1
5106947	Farrington, Frank	Pamela Congreve (1914)		6
5106010	Fassler, Otto	Perle von Tokay, Die (1953)		22
5106053	Fastbom, Ernst	Hemliga Svensson (1933)	Man	9
5106135	Fatmi, Farid	Don Juan (1998)	Ouvrier statue	19
5106238	Fatyushin, Aleksandr	34-j skoryj (1981)		4
5108621	Fawcett, Allen	Edge of Night, The	Kelly McGrath (Pollock) #2 (1980-1982)	11
5108622	Fawcett, Allen	General Hospital	Swede 'Lars' Hanson (1990)	5
5109645	Faßnacht, Paul	Tatort - Willkommen in Köln (1997) (TV)	Assenbach	6
5109892	Fedder, Jan	Seine beste Rolle (1989) (TV)	Rudi	6
5109959	Feder, Ingo	Tatort - Kein Kinderspiel (1980) (TV)		21
5110026	Federico, Luciano	Caja 507, La (2002)	Marcelo Crecci	24
5110028	Federico, Luciano	Fratelli e sorelle (1991)		5
5110642	Fegán, Jorge	Tres historias de amor (1978)		7
5110927	Feichtner, Anton	Meister Eder und sein Pumuckl	Herr Ramsauer	-1
5111068	Feik, Eberhard	Tatort - Der Tausch (1986) (TV)	Kriminalhauptkommissar Christian Thanner	2
5111086	Feik, Eberhard	Tatort - Schimanskis Waffe (1990) (TV)	Kriminalhauptkommissar Christian Thanner	2
5111255	Feinstein, Alan	Edge of Night, The	Dr. Jim Fields (1969-1974)	11
5111258	Feinstein, Alan	General Hospital	Gregory Howard (1988)	5
5112527	Fell, Norman	Killers, The (1964)	Mickey Farmer	6
5112550	Fell, Norman	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	4
5112872	Fellowes, Billy	White Peak Farm	Martin Tanner	-1
5113085	Felmy, Hansjörg	Maulkorb, Der (1958)	Rabanus	3
5113145	Fels, Mathias	Meeting with... (1991) (TV)	Himself	-1
5114292	Fenz, Carl	Margots Freier (1919)		-1
5114387	Feore, Colm	Virginian, The (2000) (TV)	Trampas	5
5114630	Ferencic, Zvonimir	Hocu zivjeti (1982)		-1
5114678	Ferency, Adam	Weryfikacja (1987)		7
5114748	Ferez, Jose	Junky's Christmas, The (1993)	Christmas dinner friend	-1
5114905	Ferguson, Al	Overland Riders (1946)	Henchman	8
5115247	Ferguson, Frank (I)	Grand Central Murder (1942)	Detective McAdams	-1
5115339	Ferguson, Frank (I)	They Won't Believe Me (1947)	Mr. Cahill, Defense Attorney	8
5116067	Fernandes, Amilton	Rainha Louca, A	Xavier	-1
5116194	Fernandes, Mário	Pai Tirano, O (1941)		29
5116271	Fernandes, Zeca	Pai Tirano, O (1941)		23
5116452	Fernandez, Peter J.	Egoists, The (2003)	Nathan Pizzaro	10
5116564	Fernando, Darren	Junior Cursillo (1968)		-1
5116716	Fernando, Don	Eclipse (1993) (V)		-1
5117552	Fernández de Rosa, Alberto	Monosabio, El (1977)	Manene	6
5117598	Fernández del Real, Carlos	Reed, México insurgente (1973)		-1
5118737	Fernández, José Luis (IV)	Verano azul	Pancho	6
5118797	Fernández, Juan (XIII)	Caja 507, La (2002)	Regueira	8
5119323	Ferrandini, Dean Raphael	Platoon Leader (1988)	Medic	15
5119332	Ferrandino, Pascual	Casamiento de Chichilo, El (1938)		-1
5119442	Ferrandis, Antonio	Verano azul	Chanquete	1
5119619	Ferrara, Juan	Ángeles de Puebla, Los (1968)	Sonny	10
5119636	Ferrara, Juan	Valentina		-1
5120197	Ferrario, Enea	Dottoressa sotto il lenzuolo, La (1976)		8
5120329	Ferraz, Juliano	No Limits 4 (2003) (V)		-1
5120511	Ferreira, Jaime	Tudo é Música (1957)		-1
5120889	Ferrene, Welborn	General Hospital	Under 5 waiter (1999-2000)	-1
5120915	Ferrer, Darryl	General Hospital	Michael (1989)	5
5121485	Ferretti, Johnny	General Hospital	Mercy orderly #1 (2002-2003)	-1
5122362	Fertis, Yannis	Egoistes, Oi (1971)		3
5122705	Fessler, Norman	General Hospital	Waiter: PC Grill and Restaurant (1988-2003)	5
5123150	Feuchtenberg, Walter	Tatort - 3:0 für Veigl (1974) (TV)	Lechner	9
5123155	Feuchtenberg, Walter	Meister Eder und sein Pumuckl	Neffe	-1
5123551	Fiander, Lewis	Young Sherlock: The Mystery of the Manor House	Ranjeet	-1
5123609	Fiasconaro, Frank	New Orleans After Dark (1958)	Solitaire	14
5123874	Fiebiger, Erik	Tatort - Lockvögel (1996) (TV)		-1
5124227	Field, Craig	Carnal Passion (2001) (V)	Richard Connor	4
5124798	Fields, David (I)	Demon Possessed (1993)	Chris	4
5124975	Fields, Sammie	Eleven P.M. (1928)	Louis Perry	-1
5125178	Fieldsend, David	Yeomen of the Guard, The (1978) (TV)	Leonard Meryll	9
5125283	Fierek, Wolfgang	Komischer Heiliger, Ein (1979)	Wolfgang Fierek	1
5125834	Figner, M.	Magdanas lurja (1955)		-1
5125949	Figueras, Domingo	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Durabal	-1
5126006	Figueroa, Efrain	Rave (2000)	Roberto	9
5126326	Filer, Bryant	Lionheart (1990)	Schoolboy #2	-1
5128035	Filho, Brandão	Grande Família, A	Floriano	-1
5128109	Filho, Daniel	Rainha Louca, A		-1
5126871	Filiz, Recep	Karaoglan - Camoka'nin intikami (1966)	Calik	5
5127967	Fine, Larry (I)	Boobs in Arms (1940)	Larry	2
5127969	Fine, Larry (I)	Booty and the Beast (1953)	Larry	2
5129512	Finlayson, James	Small Town Idol, A (1921)	J. Wellington Jones	2
5129636	Finley, Greg	Wild Pair, The (1987)	Sgt. Peterson	12
5131013	Firestone, Roy (I)	Greatest, The (1977)	TV Reporter	-1
5131658	Fischer, Helmut (I)	Tatort - 3:0 für Veigl (1974) (TV)	Kriminalobermeister Lenz	2
5131671	Fischer, Helmut (I)	Tatort - Schlußverkauf (1978) (TV)	Kriminalhauptmeister Lenz	-1
5131687	Fischer, Helmut (I)	Meister Eder und sein Pumuckl	Arzt	-1
5131700	Fischer, Ingo	Komischer Heiliger, Ein (1979)		7
5132667	Fisher, Gary (I)	Ned Kelly (1970)	Jack Jones	-1
5133323	Fiske, Richard (I)	Andy Clyde Gets Spring Chicken (1939)		3
5116548	Fernando, Darren	Bulung-Bulungan (1962)		-1
5133386	Fiske, Richard (I)	Skinny the Moocher (1939)		4
5133663	Fitts, Rick	Platoon Leader (1988)	Robert Hayes	5
5133674	Fitts, Rick	General Hospital	Councilman Blake (1994)	5
5133705	Fitz, Florian	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Eric	1
5133791	Fitz, Michael (I)	Tatort - Der Fremdwohner (2002) (TV)	Carlo Menzinger	3
5133792	Fitz, Michael (I)	Tatort - Der Prügelknabe (2003) (TV)	Carlo Mentzinger	-1
5133811	Fitz, Michael (I)	Tatort - Schwarzer Advent (1998) (TV)	Carlo Menziger	10
5133969	Fitzek, Siegurd	Tatort - Feuerzauber (1977) (TV)	Adam	-1
5134406	Fitzgerald, Wilbur	Bobby Jones, Stroke of Genius (2004)	Oakmont Official	47
5134519	Fitzpatrick, Brian (III)	General Hospital	Roscoe (2002)	5
5134696	Fitzpatrick, Jim (IV)	General Hospital	Pierce Dorman #1 (1994-1995)	5
5134744	Fitzpatrick, Michael (II)	Love Potion (1987)	Bobby	25
5135086	Fix, Paul	Crime Takes a Holiday (1938)	Louie	9
5135216	Fix, Paul	Santiago (1956)	Trasker	5
5135609	Flagg, James Montgomery	Good Sport, The (1918)	Gil Faraday	1
5135936	Flaherty, Pat	Torchy Plays with Dynamite (1939)	Crusher's Handler	17
5136430	Flanagan, Pug	Edge of Night, The	Billy Harper #2 (1957)	11
5136501	Flanders, Charles E.	Coeurs de couleur (1989)	Le père de Mathieu	6
5137308	Flavin, James	Tall, Dark and Handsome (1941)		-1
5137454	Fleck, John (I)	Comrades of Summer, The (1992) (TV)	Milov	5
5138331	Flemming, Jeremiah	Do Not Disturb (1999)	Customs Man	-1
5138981	Flint, Sam	Big Tip Off, The (1955)	Father Kearney	7
5139918	Floche, Sébastien	Consultation, La (1985)		3
5140421	Florencie, Louis	Bach détective (1936)	Baudry	5
5141050	Flottwell	Premiere (1936)	Chef	-1
5141535	Flynn Shane, Ronald	Trials of Life (1997) (TV)	Ren's Dad	-1
5141603	Flynn, Charles	They Won't Believe Me (1947)	Gus the Masseur	-1
5141787	Flynn, J. Michael	General Hospital		5
5142021	Flynn, P.J. (II)	Only Fools Buy Horses	'Traverse' Trainer	-1
5142412	Focás, Spiros	Galazio diamanti, To		6
5143505	Foley, Joseph (I)	Harvest (1953) (TV)	Herb	8
5143513	Foley, Kris	Sk8 Life (2004)	Kris	-1
5143532	Foley, Michael M.	Lionheart (1990)	Video Fighter #1	53
5143829	Follett, Randy	John and the Missus (1987)	Matt	3
5143901	Fong, Darryl	Medicine Ball	Max	-1
5143953	Fong, Henry (II)	Long Feng cha lou (1990)	Chan	-1
5144075	Fonoll, José Luis	Indio Pluma Roja, El (1975)		-1
5144090	Fons, Edgardo	Crónica de un extraño (1998)		4
5144255	Fontaine Jr., Robert	General Hospital	Frankie Greco (1990-1991)	5
5144817	Fontoura, Ary	Semideus, O	Mauro	-1
5145887	Ford, Barry (I)	Edge of Night, The	Jason Everett	11
5146011	Ford, David (I)	Edge of Night, The	Unknown (Year Unknown)	11
5146552	Ford, Glenn	Flight Lieutenant (1942)	Danny Doyle	2
5146604	Ford, Glenn	Rage (1966)	Doc Reuben	1
5146761	Ford, Harrison (II)	Girls (1919)	Edgar Holt	4
5146895	Ford, Jimmy (I)	Dead Wrong: The John Evans Story (1984) (TV)	Dick	9
5147635	Foree, Ken	General Hospital	Kris (1992)	5
5133333	Fiske, Richard (I)	Boobs in Arms (1940)	The Sergeant	4
5148008	Forgeham, John	Not a Penny More, Not a Penny Less (1990) (TV)	Ronnie	-1
5148250	Forman, Joey	Atomic Kid, The (1954)	MP in hospital	7
5148429	Formby Sr., George	No Fool Like an Old Fool (1914)	John Willie	-1
5148665	Fornet, Emilio	Monosabio, El (1977)	Peñista #2	12
5148795	Forrest Jr., William	Who Killed Doc Robbin? (1948)	Reporter	-1
5148953	Forrest, Frederic	Black Thunder (1997)	The Admiral	-1
5149236	Forrest, William	Flight Lieutenant (1942)	Captain	-1
5149271	Forrest, William	I Was a Communist for the FBI (1951)	Senator Wood	-1
5149342	Forrest, William	Respect the Law (1941)	Police Lieutenant Edward Macroy	4
5149592	Forslund, Erik (I)	Hemliga Svensson (1933)	Man in line	-1
5149842	Forster, Grant	Comrades of Summer, The (1992) (TV)	Vasily	15
5150001	Forster, Rudolf	Jagd nach der Wahrheit, Die (1920)		3
5150634	Fortell, Bert	Tatort - Mord im Ministerium (1974) (TV)	Radler	-1
5151121	Fortune, John (I)	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5151267	Fosado, Víctor	Reed, México insurgente (1973)		-1
5152100	Foster, Eddie	Tall, Dark and Handsome (1941)		-1
5152745	Fotidis, Hristos	Galazio diamanti, To		4
5153280	Foulger, Byron	They Won't Believe Me (1947)	Mortician	-1
5153817	Fowkes, Conard	Edge of Night, The	John Paul Anderson (1963)/Steve Prentiss (1967-1968)	11
5154515	Fox, Bernard (I)	General Hospital	Nigel Penny-Smith (1981)	5
5154797	Fox, Eric	Looking in the Fishbowl (2001)	Chaucer	-1
5155744	Foxworth, Robert	Face to Face (1990) (TV)	Tobias Williams	-1
5156670	Frack, Jack	Lady, Let's Dance (1944)	Himself	-1
5156138	Fraley, Pat (II)	Littles, The	Slick the Turtle	8
5157484	Francis, Alec B.	Auction Block, The (1917)	John Merkle	10
5157864	Francis, David (I)	Boys of St. Vincent, The (1992) (TV)	Lou Benson	18
5159069	Franck, David	Josse (1974) (TV)	Yvon	3
5159232	Francks, Don	Vow to Kill, A (1995) (TV)	Smithford	-1
5159471	Frandsen, Jano	Comrades of Summer, The (1992) (TV)	Meyers	16
5159990	Frank, Carl	Edge of Night, The	Police Chief Bill Marceau #1 (1956-1959, 1968)	11
5160144	Frank, Gary	Flying Blind (1990) (TV)	Jason	9
5160161	Frank, Gary	General Hospital	Mark Simpson (1973)	5
5160270	Frank, Horst	Goldsucher von Arkansas, Die (1964)	Dan McCormick	3
5160587	Frank, Tony	Substitute Wife, The (1994) (TV)	Major Willows	17
5161139	Frankl, Daniel	Do Not Disturb (1999)	Security Guard	-1
5161408	Franklin, Randy	Fiction Makers, The (1968)	2nd Guard	19
5161616	Frankman, Knut	Hemliga Svensson (1933)	Man in line	-1
5161907	Frantz, Jacques	Don Juan (1998)	Don Alonse	8
5162053	Franz, Allan	Critical Assembly (2003) (TV)	John Deere	-1
5163071	Fraser, Hugh (I)	Rainbow	Singer (1972)	-1
5163117	Fraser, John (I)	Young Sherlock: The Mystery of the Manor House	Uncle Gideon	-1
5163583	Frawley, James	Muppet Movie, The (1979)	Waiter	29
5163928	Frazer, Robert	Flight Lieutenant (1942)	Capt. Hall	-1
5164320	Freberg, Donavan	Littles, The	Tom Little	5
5164564	Frederick, Jayson	Bobby Jones, Stroke of Genius (2004)	Caddy	-1
5164622	Frederick, Lee	They Won't Believe Me (1947)	Detective	-1
5164796	Frederik, Kronprins	Kongelig familie, En	Himself	-1
5165161	Freeman Jr., Al	Edge of Night, The	Asst. Dist. Atty. Ben Lee (1967)	11
5165513	Freeman, Loren	Anarchy TV (1997)	Transvestite	23
5165516	Freeman, Loren	Lionheart (1990)	Salesperson	27
5165518	Freeman, Loren	General Hospital	Elton Herbert	5
5165679	Freeman, Paul (I)	Bobby Jones, Stroke of Genius (2004)	Angus	16
5166119	Freestyler	Carnal Passion (2001) (V)	Hotel Guest	10
5167848	Fresson, Bernard	Guépiot, Le (1981)	Claude Chénot, le père	2
5168328	Frey, Erik (I)	Noch minderjährig (1957)		-1
5168416	Frey, Keith	Virginian, The (2000) (TV)	Wagon Driver	24
5168629	Freyd, Bernard	Dame de lieudit, La (1993) (TV)	Passat	4
5169280	Friderikusz, Sándor	Az én mozim	Riporter	-1
5170152	Friedman, Andrew (IV)	Dinner Date 1 (2002) (TV)	Killer	-1
5169762	Friedrichsen, Uwe	Tatort - Aus der Traum (1986) (TV)	Richard	-1
5170570	Fries, Otto	Burglar, The (1928)	Gaspipe McGook, Bungalow Burglar	4
5170735	Frigola, Carlos	Indio Pluma Roja, El (1975)		-1
5171072	Frites, Eulogio	Crónica de un extraño (1998)		2
5171311	Fritsch, Willy	Tänzer meiner Frau, Der (1925)	Max de Sillery	5
5171656	Frohlich, Sig	Atomic Kid, The (1954)	Photographer	-1
5171865	Froman, David	Edge of Night, The	Gunther Sylvester Wagner (1981-1982)/Gunther Bruno Wagner (1982-1984)	11
5171878	Frome, Milton	Atomic Kid, The (1954)	Communications Man	-1
5172262	Frost, David (I)	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Himself - Introduction	23
5174261	Fröhlich, Franz	Kühne Schwimmer, Der (1957)	Buergermeister	11
5173772	Fuchs, Oswald	Tatort - Feuerwerk für eine Leiche (1988) (TV)		22
5175601	Fujioka, John	Some Kind of Hero (1982)	Capt. Tai, Prison Camp Commander	20
5175660	Fujioka, Takuya	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		4
5175925	Fujiwara, Kamatari	Joyu to shijin (1935)		-1
5176057	Fujiyama, Kanbi	Zatoichi sakate giri (1965)		2
5176058	Fujiyama, Koji	Daikaijû Gamera (1965)	Tank Farm Worker	-1
5176209	Fukumoto, Seizo	Hoero! Tekken (1982)		-1
5176552	Fuller, Kurt	Pandora's Clock (1996) (TV)	Chet walters	13
5176645	Fuller, Marcus Dean	General Hospital	Ted Wilson (2000)	5
5176994	Fulton, Rad	General Hospital	Teddy Holmes #1 (1972)	5
5177178	Funakoshi, Eiji	Daikaijû Gamera (1965)	Dr. Hidaka	-1
5178061	Furey, John	Black Thunder (1997)	Moore	-1
5178319	Furlanetto	Vita da cani (1950)	Boselli	7
5178424	Furlong, Mack	John and the Missus (1987)	Drummer	24
5179545	Fux, Herbert	Tatort - Rattennest (1972) (TV)	Frankenstein	8
5179876	Fyssoun, Petros	Amartoles (1962)		-1
5180331	Förster, Hajo	Dumm gelaufen (1997)	Freund Reinhard	19
5180732	Fürst, Sigge	Flicka med melodi (1954)	Evert Bergvall	7
5181104	G., Mickey	Southern Comfort (1995) (V)		-1
5181443	Gaber, Jolt	Schneewittchen... und die schwangere Königin (2001) (V)		-1
5181946	Gabourie, Ray	Highway 61 (1991)	Bingo Caller	25
5181967	Gabriel Jr., Lawrence	Muppet Movie, The (1979)	Sailor	24
5182071	Gabriel, John (I)	General Hospital	Teddy Holmes #2 (1972-1973)	5
5182946	Gaetano, Bobby	Tatort - Der Tausch (1986) (TV)		12
5183105	Gaffrey, Toby	Team One (2003)	Brickhouse (Zone One Blue Team)	-1
5184309	Gaines, Lenny	Lionheart (1990)	Bookie #1	23
5185527	Gale, David (I)	Edge of Night, The	Beau Richardson (1976-1977)	11
5187362	Gallanders, James	Real Bullets (1990)	Sallini's Goon	26
5187561	Gallardo, Manuel	Verano azul	Javier	12
5187678	Gallaudet, John	Flight Lieutenant (1942)	Jackson	12
5187774	Galle, Raymond	Bossu, Le (1934)		-1
5187914	Gallery, James	Edge of Night, The	Mr. Lambert (Year Unknown)	11
5188347	Gallo, Billy	General Hospital	Sammy Tagliatti (2002-2003)	5
5188731	Galloway, Don	General Hospital	Dr. Buzz Stryker (1985-1987)	5
5189090	Galvan, Sébastien	Cheveux de ma mère, Les (2004)	Le fils	2
5189290	Galván, Pedro	Pequeños gigantes, Los (1960)		-1
5189683	Gambashidze, Shalva	Chirveuli mezoblebi (1945)	Gramitoni	2
5189696	Gambell, John	Real Bullets (1990)	Helicopter Pilot	37
5189709	Gamberti	Premiere (1936)	4. Detektiv	-1
5190344	Gamer, Barry	Face to Face (1990) (TV)	Pilot	-1
5190645	Gammit, Eddie	General Hospital	Ron (1980)	5
5190667	Gammon, James (I)	Greatest, The (1977)	Mr. Harry	21
5190910	Ganaha, Fumiaki	Kôsoku sentai Tâborenjâ	Daichi Yamagata/Black-Turbo	2
5191431	Ganev, Lyubo	Ispanska muha (1998)	Borsalino	5
5191728	Ganju	1857 (1946)		-1
5192740	Garat, Henri	Valet maître, Le (1941)	Gustave Lorillon	2
5193106	Garbers, Gerhard	Tatort - Der Tausch (1986) (TV)	Bohm (junior)	9
5194807	Garcia, Stênio	Semideus, O	Joe	-1
5194021	García Alonso, José Luis	Accidente (1965)		-1
5194164	García Cantú, Guillermo	Valentina	Víctor	-1
5195731	García Riera, Emilio	Reed, México insurgente (1973)		-1
5195825	García Tenorio, Arturo	Valentina		-1
5194864	García Vargas, Joaquín	Club de señoritas (1956)		-1
5196005	García, Héctor (IV)	Reed, México insurgente (1973)		-1
5196210	García, Juan Ramón (I)	Don Juan (1998)	Le Pauvre	17
5196253	García, Luis (II)	Toda una vida		-1
5196588	García, Saturnino	Tu-no (1999)		2
5196834	Garden, Graeme	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5196951	Gardenia, Vincent	Edge of Night, The	George Vetter (1960)/Ernie Tuttle #1 (1967)	11
5196996	Gardiel, Enrique	Mujer de Benjamín, La (1991)	Eustasio	-1
5198025	Garfield, David (IV)	Edge of Night, The	Robert Arnaud	-1
5198370	Gargan, Edward	Tall, Dark and Handsome (1941)		-1
5198493	Gargan, Jack	They Won't Believe Me (1947)	George, First Bartender	-1
5199573	Garner, David	Trauma (1962)	Craig Schoonover	4
5201092	Garrido, Gerardo	Verano azul	Quique	7
5201420	Garrity, Freddie	Shindig! Presents British Invasion Vol. 2 (1992) (V)	Freddie and the Dreamers	-1
5201473	Garrivier, Victor	Point douloureux, Le (1979)	B.	2
5201521	Garro, George	Greatest, The (1977)	Mr. Curtis	16
5201677	Garrone, Riccardo	Trastevere (1971)		-1
5201866	Garth, David	General Hospital	Dr. Matthew Armstrong	1
5202006	Garvey, Edward (I)	East Side, West Side (1927)	Second	13
5202198	Gary (III)	2 On 1 (1998) (V)		-1
5202711	Gascon, Gabriel	Sous les draps, les étoiles (1989)		-1
5202815	Gaskill, Brian	General Hospital	Rafe Kovich (2001-2003)	-1
5203129	Gassman, Alessandro	Miei più cari amici, I (1998)		-1
5203260	Gassman, Vittorio	Tempest (1982)	Alonzo	4
5203353	Gassouk, Marcel	Guépiot, Le (1981)	Mathurin	-1
5203843	Gates, S. James	BreakThrough: The Changing Face of Science in America	Himself	-1
5204370	Gaudins, Peteris	34-j skoryj (1981)		6
5204496	Gaugl, Anton	Perle von Tokay, Die (1953)		19
5205110	Gautre, Alain	À la vitesse d'un cheval au galop (1992)	Le professeur	47
5206087	Gay, Ramón	Club de señoritas (1956)		-1
5206203	Gaye, Amadou	À la vitesse d'un cheval au galop (1992)	Le danseur black	40
5206235	Gaye, Gregory	Flight Lieutenant (1942)	Becker	8
5206338	Gaye, Howard	To Please One Woman (1920)	Leila's Husband	6
5206406	Gayle, Jackie	Tempest (1982)	Trinc	9
5206509	Gaynes, George	General Hospital	Frank Smith #1 (1980)	5
5206609	Gazarian, John	Real Bullets (1990)	John	1
5207289	Gearhart, Devon	Bobby Jones, Stroke of Genius (2004)	Bobby Jones, Ages 6-8	12
5207300	Geary, Abraham	General Hospital	Alan 'A. J.' Quartermaine, Jr. #2 (1983)	5
5207337	Geary, Anthony	General Hospital	Luke Spencer (1978-1984, 1985, 1993- )/Bill Eckert (1991-1993)	5
5207622	Gebauer, Ulrich	Dreimal die Woche... (1994) (TV)		-1
5207639	Gebauer, Ulrich	Tatort - Der vierte Mann (2004) (TV)		-1
5207904	Gebühr, Otto	Erlkönig, Der (1931)		-1
5208008	Gecks, Nicholas	Not a Penny More, Not a Penny Less (1990) (TV)	Bernard Lampson	-1
5209010	Geissler, Timmy	Edge of Night, The	Adam (Drake, Jr.) Cavanaugh (1980-1983)	11
5209086	Gelabert, Miquel	Caja 507, La (2002)	Inspector 1	17
5209497	Gellenbeck, Benno	Im Schlaraffenland (1965) (TV)		-1
5209982	Gemora, Charles	Who Killed Doc Robbin? (1948)	Gorilla	-1
5210036	Genaro, Shanah	Rebaño, El (1997)		2
5210374	Gendron, François-Eric	Not a Penny More, Not a Penny Less (1990) (TV)	Jean-Pierre Lamanns	-1
5211376	Gentzen, Horst	Im Schlaraffenland (1965) (TV)	Kaflisch	5
5212041	George, Götz	Tatort - Der Tausch (1986) (TV)	Kommissar Horst Schimanski	1
5212056	George, Götz	Tatort - Rattennest (1972) (TV)	Jerry	6
5212058	George, Götz	Tatort - Schimanskis Waffe (1990) (TV)	Kommissar Horst Schimanski	1
5212298	George, Joe	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Captain Kyker	14
5212556	George, Tom (I)	Fratelli e sorelle (1991)	Party Guest	-1
5213147	Geraci, Drew	Beer (1985)	Man in Steambath	50
5213715	Gerber, Jay	General Hospital	Jim Richardson (1978)	5
5215084	Gerringer, Robert	Lovely Way to Die, A (1968)	Connor	22
5215090	Gerringer, Robert	Edge of Night, The	Del Emerson (1983-1984)	11
5215326	Gersan, Georges	Monsieur mon chauffeur (1926)		-1
5215473	Gerstle, Frank	I Was a Communist for the FBI (1951)	Tom Cvetic	-1
5215912	Getchell, Sumner	Son-Daughter, The (1932)	Dr. Dong's Servant	-1
5216297	Gewirtz, Perry	Forbidden Under the Censorship of the King (1972)		-1
5216453	Ghani, Ahmad	Pendekar bujang lapok (1959)	Ahmad (Samseng)	17
5216834	Ghiara, Hugo	Asesinato en tres variantes con dos incógnitas y un maniquí (1987)		-1
5218219	Gianola, Fabián	Solo y conmigo (2000)		-1
5218260	Gianopoulos, David	General Hospital	Danny Zacharowitz (1995)	5
5218400	Gibb, Andy (I)	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Song Performer "I Go For You" and "Rest Your Love On Me"	8
5218573	Gibbons, Blake	General Hospital	Mitchell Coleman (2002-present)	5
5218601	Gibbons, Joe (I)	Fiction Makers, The (1968)	Pa	14
5218867	Gibbs, Timothy (I)	Dead Wrong: The John Evans Story (1984) (TV)	John Evans III (as a boy)	4
5219497	Gibson, John (I)	Edge of Night, The	Joe Polock #1 (1962-1971)	11
5219890	Giebenhain, Todd	Gigli (2003)	High School Kid #1	10
5220906	Gil, Chris	Jawbreakers (2001) (V)		-1
5220309	Giese, Heinz	Tatort - Feuerzauber (1977) (TV)	Vorsitzender	-1
5220337	Giese, Wolfgang	Selbstbedienung (1968) (TV)		-1
5220450	Gifford, Alan	Edge of Night, The	Sen. Gordon Whitney (1970-1971)	11
5220557	Gigante, Dino	Making of a Male Model (1983) (TV)	Stylist	-1
5220719	Giglio, Sandro	Holiday for Sinners (1952)	Nick Muto	7
5221642	Gilbert, Billy (III)	Burglar, The (1928)	Mabel's Father, Jimmy's Father-in-Law	6
5221680	Gilbert, Bobby	I Was a Communist for the FBI (1951)	Picket	-1
5221734	Gilbert, Dick	Back Stage (1923)	Outsode worker	-1
5221801	Gilbert, Ed	Knight Rider (1982) (TV)	Charles Acton	12
5222042	Gilbert, John (II)	Comrades of Summer, The (1992) (TV)	Dobolov	17
5222951	Gilford, Jack	Edge of Night, The	Custodian (1963)	11
5223897	Gillespie, William (I)	Back Stage (1923)	Head of touring show	-1
5223976	Gillespie, William (III)	They Won't Believe Me (1947)	Waiter	-1
5224056	Gillette, Edwin (II)	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Himself	-1
5224241	Gilliam, Terry	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5224654	Gillis, Colin	Carnal Passion (2001) (V)	Party Guest	17
5225241	Gilman, Fred	Card of Destiny (1928)		1
5225714	Gilmour, Geoff	Ned Kelly (1970)	Steve Hart	14
5225787	Gilou, Thomas	À la vitesse d'un cheval au galop (1992)	Mickey	39
5225871	Gilroy, Tom	Harry and Max (2004)	Josiah	4
5226082	Gimeno, Luis (I)	Amantes frios, Los (1978)	Cura (segment "Los Amantes frios")	17
5228156	Girardin, Ray	General Hospital	Howie Dawson (1968-1974)	5
5228264	Girardot, Hippolyte	Parfum d'Yvonne, Le (1994)	Victor Chmara	2
5229240	Gissel, Henning	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Moritz Fügner	-1
5229433	Gittinger, Alexander (I)	Tatort - Tödlicher Treff (1987) (TV)		10
5229950	Givens, Samuel Luis	Gigli (2003)	Beach Dancer	28
5230653	Glaser, Günter	Tatort - Feuerzauber (1977) (TV)	Architekt	-1
5231130	Glass, Tom (I)	Virginian, The (2000) (TV)	Drifter	20
5231277	Glatzeder, Robert	Tatort - Veras Waffen (2003) (TV)	Arnold Leidecker	-1
5231324	Glatzeder, Winfried	Tatort - Eiskalt (1997) (TV)	Kommissar Ernst Roiter	1
5231489	Glazer, Colin	Good Shepherd, The (2004)	Monsignor Humel	-1
5231532	Glazer, Eugene Robert	General Hospital	Peter Kaufman (1992)	5
5231797	Gleason, James (II)	Trials of Life (1997) (TV)	Mr. Johnson	4
5232245	Gleeson, Redman	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Officer Bray	15
5232885	Glenn, Scott	Edge of Night, The	Calvin Brenner (1969)	11
5218330	Giardini, Pietro	Komischer Heiliger, Ein (1979)	Assistenzarzt	-1
5235104	Gobert, Boy	Kühne Schwimmer, Der (1957)	Fritz Hohebirke	7
5235429	Godart, Lee	Edge of Night, The	Eliot Dorn (1978-1980)	11
5235584	Goddard, Mark (I)	General Hospital	Derek Barrington (1984-1986)	5
5235671	Goddard, Willoughby	Voices, The (1955) (TV)	Prof. Mark Harrison	-1
5235925	Godfrey, E.	Sons of the Sea (1925)	Bill Martin	2
5237037	Goetz, Peter Michael	Beer (1985)	Harley Feemer	7
5237261	Goff, Thom	Egoists, The (2003)	Actor in Line	20
5237596	Gojkov, Dusan	Poslednja trka (1979)		-1
5240409	Gomes, Delfim	Tudo é Música (1957)		-1
5237957	Gold, Leon	This Pretty Planet: Tom Chapin in Concert (1992) (V)	Audience Member	-1
5238001	Gold, Sondra	This Pretty Planet: Tom Chapin in Concert (1992) (V)	Audience Member	-1
5238424	Golden, Eddie	Home Is the Hero (1959)	Mr. Shannon	10
5238446	Golden, Geoffrey	Home Is the Hero (1959)	O'Conner	15
5238496	Golden, Larry	Edge of Night, The	Jud Wallace (1984)	11
5238552	Golden, Norm	Inner Glow of Things, The (2003)	Dr. Coppelius	4
5238865	Golding, Ronald	Ned Kelly (1970)	Casement	-1
5238914	Goldman, Danny	General Hospital	Clarence Darrow (1991)	5
5239253	Goldsmith, Jonathan (I)	Littles, The		-1
5239718	Golfinopoulis, Nick	Big Pile, The (1985)	Chip N' Dale's Dancer	16
5240191	Golubitsky, Oleg	34-j skoryj (1981)		11
5240383	Gomes, André	Trois couronnes du matelot, Les (1983)		-1
5240641	Gomez, António	Don Juan (1998)	Jeune baroudeur	21
5241486	Gong, Michael Gregory	Egoists, The (2003)	Keith	9
5241606	Gontermann, Walter	Tatort - Willkommen in Köln (1997) (TV)		-1
5241607	Gontermann, Walter	Und tschüss! - Ballermann olé (1997) (TV)	Carlos	6
5241696	Gonzaga, Castro	Semideus, O	Azevedo	-1
5241851	Gonzales, Jimmy (I)	I Was a Communist for the FBI (1951)	Brennan	-1
5241868	Gonzales, Luis (I)	Bulung-Bulungan (1962)		-1
5242476	González Jr., Rafael 'Indio'	Indio Pluma Roja, El (1975)		-1
5242559	González Sinde, José María (I)	Accidente (1965)		-1
5243013	González, Federico (I)	Amantes frios, Los (1978)	Campesino (segment "El Difunto al pozo y la viuda al gozo")	13
5243211	González, Gerardo (IV)	Pequeños gigantes, Los (1960)		-1
5243357	González, Javier (II)	Brigadista, El (1977)		-1
5244285	Goodeve, Grant	Pandora's Clock (1996) (TV)	Don Moses	-1
5244463	Goodlet, Ken	Ned Kelly (1970)	Supt. Nicholson	4
5245091	Goodwin, Bill (I)	Atomic Kid, The (1954)	Dr. Rodell	4
5245483	Goodwin, Nat C.	Wall Street Tragedy (1916)	Norton	1
5245643	Goorjian, Michael A.	Do Not Disturb (1999)	Billy Boy Manson	7
5246925	Gordon, Bob (I)	Greatest, The (1977)	Reporter	-1
5247052	Gordon, Bryan	Edge of Night, The	Ewell (1975)	-1
5247336	Gordon, Dick (I)	I Was a Communist for the FBI (1951)	Lawyer	-1
5247306	Gordon, David L.	Comrades of Summer, The (1992) (TV)	Scoop Reporter	18
5232986	Glezakos, Vassilis	Tempest (1982)	Captain	13
5233042	Glickman, Marty	Lovely Way to Die, A (1968)	Racetrack Announcer	25
5233739	Glover, Edmund	Failure at Fifty, A (1940)	Abe Lincoln	1
5234072	Glover, William	General Hospital	Dr. Tremaine (1984)	5
5234839	Gnädinger, Mathias	Grüne Heinrich, Der (1994)	L'oncle	6
5250121	Gorss, Sol	Double Deal (1950)	Thug	-1
5250220	Gorss, Sol	They Won't Believe Me (1947)	Gus, Truck Passenger	-1
5250227	Gorss, Sol	Torchy Plays with Dynamite (1939)	Court Attendant	-1
5250231	Gorss, Sol	Valley of the Giants (1938)	Frank Dorsey	-1
5250986	Gossler, Stefan	Dreimal die Woche... (1994) (TV)		-1
5251774	Gottschalk, Ferdinand	Melody Lingers On, The (1935)	Da Vigna	10
5252740	Gould, Elliott	Muppet Movie, The (1979)	Beauty Contest Compere	13
5253221	Gould, William	Torchy Plays with Dynamite (1939)	Fire Chief	-1
5253877	Govil, Arun	Ramayan	Ram	1
5253332	Goulem, Alain	Boys of St. Vincent, The (1992) (TV)	Brother Glynn	11
5253624	Gourmet, Olivier	Adieu (2003)	François	2
5253718	Goutman, Christopher	Edge of Night, The	Matt Sharkey #2 (1980)	11
5253810	Govedarizu, Wojo	Goldsucher von Arkansas, Die (1964)	Mescalero	14
5255272	Gracia, Sancho	Caja 507, La (2002)	Santos Guijuelo	32
5255415	Gracindo, Paulo	Rainha Louca, A	Demetrius	-1
5256020	Grafenberg, Günther	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Apotheker	7
5256141	Graff, Wilton	They Won't Believe Me (1947)	Prosecuting Attorney	-1
5256148	Graff, Wilton	Who Killed Doc Robbin? (1948)	Prosecutor	11
5256339	Graham, Charles (I)	Auction Block, The (1917)	Max Melcher	8
5256364	Graham, Charles (I)	On the High Card (1921)	Pecos Bill/Don Antonio	5
5256570	Graham, Eddie	Valley of the Giants (1938)	Bank teller	-1
5256772	Graham, Fred (I)	They Won't Believe Me (1947)	Deputy sheriff	-1
5258332	Grana, Sam	Boys of St. Vincent, The (1992) (TV)	Monsignor	14
5257647	Grand, Murray	Tempest (1982)	Pianist	21
5258662	Grange, Robert	Young Sherlock: The Mystery of the Manor House	Tom Hudson	-1
5258750	Granger, Farley	Edge of Night, The	Trent Archer (1980)	11
5258841	Granger, Philip	Virginian, The (2000) (TV)	Ben	12
5259093	Granström, Anders	Prins hatt under jorden (1980)	Prince	8
5259188	Grant, Bernie	Edge of Night, The	Duke Manson (1957)	11
5259369	Grant, Charles	Edge of Night, The	John 'Preacher' Emerson (1982-1984)	11
5259697	Grant, Keith (II)	Edge of Night, The	Troy Bannister (1982, 1984)	11
5259892	Grant, Matt (II)	Boyclops (2004)	Jock	-1
5260549	Graser, James	Go-Go-Girl vom Blow Up, Das (1969)		12
5260593	Grass, Vincent	Amoureux, Les (1994)	M. Godfroy	13
5260818	Grassi, Rick	General Hospital	Augie Nash (1983)	5
5261237	Grauerholz, James	Junky's Christmas, The (1993)	Christmas dinner friend	-1
5261430	Graves, Christopher	General Hospital	Lucas Stansbury Jones [#2] (1990)	5
5261455	Graves, Ernest	Edge of Night, The	Asst. Dist. Atty. Walter Palmerlee #2 (1958)	11
5247627	Gordon, Gerald (II)	General Hospital	Dr. Mark Dante #2 (1976-1978, 1982-1983)	5
5248297	Gordon, Mark (I)	Edge of Night, The	Lt. Paul Carey (1967)	11
5248401	Gordon, Peter (I)	Lovely Way to Die, A (1968)	Eric	19
5249052	Gorham, Christopher	Jake 2.0: The Tech (2003) (TV)	Jake Foley	1
5249649	Gorman, Reg	Ned Kelly (1970)	Bracken	-1
5250055	Gorshin, Frank	Edge of Night, The	Smiley Wilson (1981-1982)	3
5250056	Gorshin, Frank	General Hospital	Rev. Love (1999)	5
5264382	Greely, Bill	Bobby Jones, Stroke of Genius (2004)	Mr. Beecham	25
5264509	Green, Barry (I)	John and the Missus (1987)	Wallace Cahill	12
5264534	Green, Bradley	General Hospital	Dr. Tom 'Tommy' Baldwin, Jr. #2 (1981-1982)	5
5265168	Green, Judd	Laughing Cavalier, The (1917)		8
5265288	Green, Martyn	Lovely Way to Die, A (1968)	Finchley	5
5266088	Greene, Daniel	General Hospital	Felix (1982)	5
5266914	Greene, Peter D.	General Hospital	Larry Baker #3 (1977)	5
5267717	Greer, Dabbs	All Mine to Give (1958)		-1
5268245	Gregg, Mitchell	Edge of Night, The	Leon Gavril (1966)	11
5268752	Gregory, Jay	Edge of Night, The	Morlock Sevigny (1974-1975)	11
5268875	Gregory, Mark (I)	General Hospital	Dr. Rick Webber #1 (1976-1978)	5
5269307	Greif, Stephen	Face to Face (1990) (TV)	Grant Ross	-1
5269906	Gresch, Jim	Demon Possessed (1993)	Sheriff	11
5270130	Greve, Manfred	Blutjunge Verführerinnen 2 (1972)		12
5270302	Grey, Georges	Valet maître, Le (1941)	Jean-Louis Crampel	4
5270507	Grey, Sam	Edge of Night, The	Jake Becker (1962)/Frank Sloane (1971-1972)	11
5270950	Gribbon, Eddie	Small Town Idol, A (1921)	Bandit Chief	9
5271017	Gribbon, Harry	Great Pearl Tangle, The (1916)		-1
5271264	Grieco, Richard (I)	Vow to Kill, A (1995) (TV)	Eric	1
5271290	Grieg, Theodor	Perle von Tokay, Die (1953)		15
5271377	Grier, David Alan	Beer (1985)	Elliott Morrison	4
5271613	Griesser, Max	Tatort - 3:0 für Veigl (1974) (TV)	Mandl Karpf	26
5271785	Griffis, William	Edge of Night, The	Rev. Dudley (1975)	11
5272018	Griffith, Gordon (I)	To Please One Woman (1920)	Bobby Granville	8
5272664	Griffith, James (I)	Double Deal (1950)	Walter Karnes	5
5273965	Grimes, Tom	They Were Four (1917)		3
5273987	Grimm, Douglas K.	Laser Moon (1993)		-1
5274059	Grimm, Tim	Pandora's Clock (1996) (TV)	CIA Agent Steve Ellis	6
5274121	Grimshaw, Jim	Bobby Jones, Stroke of Genius (2004)	Charlie Cox	26
5274649	Griswold, Michael	General Hospital	Don Sussman (1982)	5
5275151	Groh, David	General Hospital	D.L. Brock (1983-1985)	5
5275530	Groom, Sam	Edge of Night, The	Lee Pollock #2 (1964)	11
5275767	Gross, Benjamin	Reise ohne Wiederkehr (1989)		-1
5276049	Gross, Walter (I)	Kühne Schwimmer, Der (1957)	Dr. Hans Sommer	3
5261548	Graves, Kevin (I)	General Hospital	Lucas Stansbury Jones [#2] (1990)	5
5262092	Gravino, Chuckie	General Hospital	Lucas Stansbury Jones [#3] (1992-1994)	5
5262096	Gravino, Kenny	General Hospital	Lucas Stansbury Jones [#3] (1992-1994)	5
5262357	Gray, Bruce (I)	Edge of Night, The	Owen Madison (1979-1980)	11
5262358	Gray, Bruce (I)	General Hospital	George Blyth (1987)	5
5263010	Gray, John (II)	Ned Kelly (1970)	Stratton	-1
5263080	Gray, Lawrence (I)	She-Wolf, The (1931)	Tom Breen	3
5263147	Gray, Mack	Tall, Dark and Handsome (1941)		-1
5263187	Gray, Mark Russell	Bobby Jones, Stroke of Genius (2004)	Reporter No. 8, Merrion	61
5263739	Grayson, Donald (II)	Real Bullets (1990)	Sallini's Boduguard	21
5264150	Greaza, Walter	Edge of Night, The	Winston Grimsley (1956-1973) (original cast) (played role until his death)	10
5282696	Guhl, George	Respect the Law (1941)	Williams, Radio Interviewee	-1
5283448	Guillard, Jean-Bernard	Trois couronnes du matelot, Les (1983)	Le matelot	1
5283551	Guillaume, Robert	Pandora's Clock (1996) (TV)	Ambassador Lee Lancaster	17
5283679	Guillet, Raoul	Trois couronnes du matelot, Les (1983)	Voix off	-1
5283976	Guillén, Fernando	Telaraña, La (1990)		-1
5284375	Guinee, Tim	Warning: Parental Advisory (2002) (TV)	John Denver	6
5285234	Guitián, Manuel	Monosabio, El (1977)	Peñista #1	11
5285419	Gulager, Clu	Killers, The (1964)	Lee	4
5285597	Gullage, Richard	Greatest, The (1977)	Commission Doctor	4
5292671	Gárdonyi, Lajos	Iza néni (1933)		-1
5286888	Gunn, Tommy	Trapped (1996) (V)	Guy in bedroom	9
5287087	Gunther, Tim	Do Not Disturb (1999)	Security guard	-1
5287215	Guo, Zhenqing	Huan le ren jian (1959)	Lu Wanchun	-1
5287493	Gurney, William	Anarchy TV (1997)	Wealthy Man	42
5287632	Gurvich, Louis	New Orleans After Dark (1958)	Omega	13
5287890	Guskov, G.	Ya shagayu po Moskve (1963)		-1
5288602	Guth, Raymond	Some Kind of Hero (1982)	Motel Clerk	21
5288683	Guthrie, Richard	General Hospital	Dr. Addison (1989)	5
5288832	Gutierrez, Quentin	General Hospital	Milar (1994)	5
5289279	Gutiérrez, Armando (I)	Río de las ánimas, El (1964)		-1
5289348	Gutiérrez, Jorge (I)	Mujer de Benjamín, La (1991)	Kid 3	-1
5290748	Guzmán, Roberto (II)	Vamos juntos	Arturo	-1
5291485	Gwillim, David	Do Not Disturb (1999)	Simon Van Der Molen	9
5291502	Gwillim, David	General Hospital	Football player (1972-1973)	-1
5291539	Gwillim, Jack	Solomon and Sheba (1959)	Josiah	12
5291610	Gwisdek, Michael	Handvoll Gras, Eine (2000)	Kruse	8
5292790	Gärtner, Claus Theo	Tatort - Das stille Geschäft (1977) (TV)	Ulli Meineke	-1
5292874	Gélin, Daniel	Amants du Tage, Les (1955)	Pierre Roubier	2
5293271	Génin, René	Valet maître, Le (1941)	Foucard	7
5293373	Gérald, Jim	Bossu, Le (1934)		-1
5293596	Gérard, Pierre	Don Juan (1998)	Carlos	9
5293723	Gérôme, Raymond	Dame de lieudit, La (1993) (TV)		-1
5294171	Gómez Cruz, Ernesto	Reed, México insurgente (1973)		-1
5294491	Gómez, Galindo	Reed, México insurgente (1973)		-1
5276374	Grossmann, Johannes	Tatort - Kein Kinderspiel (1980) (TV)	Dr. Jerg	14
5276573	Groth, Jan	Tatort - Rattennest (1972) (TV)	Bernd Laschke	1
5277130	Grover, Stanley	Edge of Night, The	Dr. Kevin Reed	11
5277666	Grubman, Ira F.	Muppet Movie, The (1979)	Bartender	25
5278738	Grévill, Laurent	Oublie-moi (1995)	Eric	3
5278788	Grön, Eino	Vatsa sisään, rinta ulos! (1959)	Singing soldier	-1
5278865	Grönberg, Åke	Maria på Kvarngården (1945)	Jakob	5
5279783	Guardino, Harry	Big Tip Off, The (1955)	2nd Hood	11
5280120	Gudzuhn, Jörg	Luftschiff, Das (1983)		-1
5280737	Guerra, Rogelio	Años perdidos, Los		-1
5281841	Guers, Paul	Parfum d'Yvonne, Le (1994)	Daniel Hendrickx	5
5282594	Gugushvili, Aleqsandre	Tetri mkhedari (1929)	Arsena, White Rider, Bishop	4
5294539	Gómez, Héctor (II)	Grandes ilusiones		1
5295696	Gözalan, Muammer	Eli masali (1966)		6
5295997	Gümüs, Ünal	Tatort - Lockvögel (1996) (TV)		-1
5297348	Haakon, Crown Prince	Kongelig familie, En	Himself	2
5298017	Haber, Alessandro	Mondo candido (1975)	Amante di Cunegonda	8
5298855	Hackathorne, George	To Please One Woman (1920)	Freddy	3
5298885	Hackenberg, Karl	Perle von Tokay, Die (1953)	Dr. Joachim Dittersberg	8
5299027	Hackett, Buddy	Hey Babe! (1980)	Sammy Cohen	-1
5299703	Haddock, Jack	Patty (1962)	Lt. Powell	10
5299715	Haddon, Carl	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Ambulance Attendant	38
5300604	Hagan, Jordan	General Hospital	Travis (2004-)	-1
5300769	Hagen Dittmann, Christoph	Tatort - Kalte Wut (2001) (TV)	Robert Lehmbach	-1
5300866	Hagen, Kevin	General Hospital	Toughie (1986)	5
5301183	Hagerthy, Ron	I Was a Communist for the FBI (1951)	Dick Cvetic	10
5301402	Haggerty, Don (I)	Atomic Kid, The (1954)	Lieutenant	-1
5301445	Haggerty, Don (I)	Killers, The (1964)	Mail Truck Driver	9
5301545	Haggerty, H.B.	Muppet Movie, The (1979)	Lumberjack	26
5301883	Hagman, Larry	Edge of Night, The	Johnny Collins (1959)/Ed Gibson (1961-1963)	11
5302795	Haider, Alfons	Tatort - Feuerwerk für eine Leiche (1988) (TV)		15
5303028	Haigh, Kenneth	Lovely Way to Die, A (1968)	Jonathan Fleming	4
5303511	Hair, Stephen	Virginian, The (2000) (TV)	Bannister	22
5303515	Hairapetian, Shahen	Real Bullets (1990)	Sheriff's Deputy	57
5303967	Hakan, Fikret	Dertli irmak (1958)		1
5304305	Halberstam, David	Teammates, The (2003) (TV)	Himself (interviewee)	6
5304439	Halden, Walter	Maulkorb, Der (1958)	Justizrat	19
5304493	Hale Jr., Alan	All Mine to Give (1958)	Tom Cullen	7
5304771	Hale, Alan (I)	Valley of the Giants (1938)	'Ox' Smith	4
5305087	Hale, Creighton	Torchy Plays with Dynamite (1939)	Hotel Clerk	18
5305251	Hale, Jonathan (I)	Flight Lieutenant (1942)	Joseph Sanford	4
5305538	Hale, Ron	Lovely Way to Die, A (1968)		-1
5305543	Hale, Ron	General Hospital	Mike Corbin (1995-present)	5
5305554	Hale, Scott (I)	Killers, The (1964)	Hotel Clerk	22
5306104	Hall, Albert (I)	Anarchy TV (1997)	Bobby	6
5306551	Hall, Charlie (I)	Air-Tight (1931)		7
5306581	Hall, Charlie (I)	Bromo and Juliet (1926)	Stagehand	-1
5307234	Hall, George (I)	Edge of Night, The	John (1975)	11
5307672	Hall, James (I)	She-Wolf, The (1931)	David Talbot	2
5307689	Hall, James (II)	Edge of Night, The	Maximillian (1970)	11
5307958	Hall, Michael Keys	General Hospital	Helmut (1991)	5
5308055	Hall, Philip Baker	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Judge Blumenfeld	6
5308154	Hall, Porter	Holiday for Sinners (1952)	Louie	9
5308284	Hall, Robert David	Littles, The	Dinky Little, Mr. George Bigg	4
5308911	Hall, Thurston	Wilderness of Youth (1922)		1
5308964	Hall, Vic	Jawbreakers (2001) (V)		-1
5309294	Hallam, Henry	Bondage of Barbara, The (1919)	John J. Newton	5
5309373	Hallam, Henry	Under a Flag of Truce (1912)		4
5309438	Hallam, John	White Peak Farm	John Tanner	-1
5309807	Hallervorden, Dieter	Tatort - Rattennest (1972) (TV)	Prickwitz	12
5297335	Haake, James 'Gypsy'	Making of a Male Model (1983) (TV)	Female Impersonator #1	-1
5310574	Hallwachs, Hans Peter	Reise ohne Wiederkehr (1989)		-1
5310700	Halm, Harry	Kühne Schwimmer, Der (1957)		13
5310725	Halm, Martin	Tatort - Schimanskis Waffe (1990) (TV)	Mario Salvatore	6
5311245	Halsey, Brett (I)	General Hospital	Dr. Adam Streeter (1967)	3
5311292	Halstead, John	General Hospital	Arnold Capper	-1
5311983	Hamamura, Jun	Daikaijû Gamera (1965)	Dr. Murase	-1
5312148	Hamblin, David	Unknown Cyclist, The (1998)	Doug's Date	13
5312382	Hamel, Alan (II)	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	-1
5312464	Hamel, Luc	Boys of St. Vincent, The (1992) (TV)	Priest	39
5312605	Hamid, Andy	Egoists, The (2003)	Lomax	16
5312756	Hamill, Mark (I)	General Hospital	Kent Murray (1972-1973)	5
5313151	Hamilton, Dan (I)	Edge of Night, The	Wade Meechum (1978-1979)	11
5313476	Hamilton, Hunter	Gigli (2003)	Beach Dancer	29
5314123	Hamilton, Mack L.	Small Town Idol, A (1921)		-1
5314433	Hamilton, Neil (I)	General Hospital	Philip Mercer (1963)	5
5314738	Hamlin, Georges	Monsieur mon chauffeur (1926)		-1
5314881	Hamman, Joë	Erlkönig, Der (1931)		-1
5314905	Hammann, Thorsten	Tatort - Kalte Wut (2001) (TV)	Polizeibeamter	-1
5314993	Hammelmann, Winfried	Tatort - Kalte Wut (2001) (TV)	Kriminalassistent Karlsen	-1
5315092	Hammer, Ben (I)	Edge of Night, The	Oakley Reynolds (1962)	11
5315738	Hammond, Nicholas (I)	General Hospital	Algernon Durban (1985)	5
5315839	Hammond, Ron (I)	Big Pile, The (1985)	Guy Crawford	27
5316385	Han, Guk-nam	Milhaeng (1975)		1
5317021	Hancock, Wyley	Edge of Night, The	Mr. Rankin (1961)	11
5317642	Hanfstingl, Franz	Tatort - Schlußverkauf (1978) (TV)	Personalchef	-1
5317738	Hangal, A.K.	Ratnadeep (1979)		3
5318319	Hanley, Frank	Big Tip Off, The (1955)		-1
5318486	Hanlon, Roy	Fiction Makers, The (1968)	Nero Jones	8
5319408	Hanray, Laurence	Quiet Wedding (1941)	Mr. Williamson	-1
5320304	Hansen, Peter (I)	General Hospital	Lee Baldwin #2 (1965-1986, 1992-present)	5
5321485	Haralabopoulos, Vassilis	Eglimata	Jhonny Karathanos	6
5322285	Harder, Alex	Warning: Parental Advisory (2002) (TV)	Pizza Guy	18
5322304	Harder, Jeff	Swami MD #1: Coming to America (1999) (V)	Dr. Swami	-1
5322496	Hardin, Jerry	Pandora's Clock (1996) (TV)	Reverend Garson Wilson	10
5322504	Hardin, Jerry	Tempest (1982)	Harry Gondorf	11
5322685	Harding, Jamie	Love Potion (1987)	Gerald	24
5322868	Harding, Vincent (I)	Fiction Makers, The (1968)	1st Guard	18
5323067	Hardman, Dave	Fat Beach Patrol (2000) (V)		-1
5323394	Hardt, Harry	Provinzonkel, Der (1926)		-1
5323569	Hardwick, Paul	Voices, The (1955) (TV)	Hadfield	-1
5324074	Hardy, Oliver	Bromo and Juliet (1926)	Cab Driver	4
5324286	Hardy, Oliver	Never Again (1915)		3
5325019	Harens, Dean	General Hospital	Noel Clinton #1 (1965)	5
5325108	Harewood, Dorian	Trials of Rosie O'Neill, The	Hank Mitchell	-1
5325541	Harker, Wiley	General Hospital	Crane Tolliver (1983)	5
5310153	Halliday, John (I)	Melody Lingers On, The (1935)	Marco Turina	3
5310173	Halliday, John (I)	Social Secretary, The (1912)		1
5310464	Hallouin, Michaël	Adieu au pirate, L' (2003)		-1
5326260	Harlander, Willy	Meister Eder und sein Pumuckl	Bernbacher Karl, Schlosser	-1
5326329	Harley, Jim	Bobby Jones, Stroke of Genius (2004)	Constable O'Brien	27
5327664	Harper, Reggie	General Hospital	Roy Ward (1994)	5
5328001	Harrelson, Woody	Comedy Club All-Star 4 with Woody Harrelson (1990) (TV)	Host	-1
5328135	Harrigan, William	Melody Lingers On, The (1935)	Captain Jonesy	7
5328194	Harrington Jr., Pat	Intimate Portrait: Bonnie Franklin (2003) (TV)	Himself	-1
5328540	Harris Jr., Glenn Walker	General Hospital	Sly Eckert (1991-1994)	5
5328730	Harris, Brad (I)	Goldsucher von Arkansas, Die (1964)	Phil Stone	2
5328912	Harris, Dean	Not a Penny More, Not a Penny Less (1990) (TV)	Richard Eliot	-1
5332251	Harsányi, Rezsö	Iza néni (1933)	Pap	-1
5328930	Harris, Doc	Comrades of Summer, The (1992) (TV)	Bud	19
5329337	Harris, Jared	Shadow Magic (2000)	Raymond Wallace	1
5329359	Harris, Jeff (I)	Edge of Night, The	Jenning Carlson (1960)	11
5330422	Harris, Stacy (I)	New Orleans After Dark (1958)	Detective Vic Beaujac	1
5330498	Harris, Toby (II)	Fleshtones (1985) (V)		8
5330565	Harris, Wadsworth	Unsullied Shield, An (1913)		6
5331059	Harrison, John (III)	Substitute Wife, The (1994) (TV)	Groom	18
5331070	Harrison, John (VII)	Man Who Could Cheat Death, The (1959)	Servant	-1
5331736	Harron, John	Torchy Plays with Dynamite (1939)	Motorcycle cop	14
5331738	Harron, John	Valley of the Giants (1938)	Man reporting Mac was slugged	-1
5332670	Hart, Eddie	Respect the Law (1941)	Police Officer	-1
5333113	Hart, Kurt	Tatort - Lockvögel (1996) (TV)	Stefan Struve	9
5333116	Hart, Kurt	Tatort - Rattenlinie (2000) (TV)		9
5333272	Hart, Neal	They Were Four (1917)		4
5333380	Hart, Richard (V)	Egoists, The (2003)	Daniel Solomon	3
5333452	Hart, Teddy	Three Men on a Horse (1936)	Frankie	7
5333464	Hart, Tom	Midnight Intruders (1987)	Catman	5
5333590	Hartberg, Victor	Katzensteg, Der (1915)	Alter Merkel	3
5333648	Harter, Bob	Bobby Jones, Stroke of Genius (2004)	Worchester Senior Official	48
5334452	Hartmann, Paul	Barrings, Die (1955)	Archibald von Barring	3
5335506	Harvey, Harry (II)	Lady, Let's Dance (1944)	Fraser	10
5335625	Harvey, Harry (II)	They Won't Believe Me (1947)	Judge Charles Fletcher	9
5335628	Harvey, Harry (II)	Thunderbirds (1952)	Inoculations Doctor	-1
5335863	Harvey, Lew	Big Idea, The (1934)	Machine Gunner	-1
5335948	Harvey, Lew	Valley of the Giants (1938)		-1
5336224	Harvey, Paul (I)	Three Men on a Horse (1936)	Clarence Dobbins	9
5337602	Hassan, Ibrahim	Pendekar bujang lapok (1959)	Ibrahim (Samseng)	16
5337651	Hassan, Kamal	Magalir Mattum (1994)	Boss from Head Office	-1
5337879	Hasse, O.E.	Maulkorb, Der (1958)	von Treskow	1
5337955	Hasselhoff, David	Knight Rider (1982) (TV)	Michael Knight	1
5338198	Hastings, Bob (I)	Edge of Night, The	Barney (1966)	11
5338200	Hastings, Bob (I)	General Hospital	Capt. Burt Ramsey (1979-1986)	5
5326232	Harlander, Willy	Tatort - 3:0 für Veigl (1974) (TV)	Kriminalmeister Brettschneider	3
5326243	Harlander, Willy	Tatort - Schlußverkauf (1978) (TV)	Kriminalwachtmeister Brettschneider	-1
5341683	Hawk, Tee Pee	Jawbreakers (2001) (V)		-1
5342257	Hawkins, Peter (I)	Rainbow	Zippy (1972)	-1
5342828	Hawthorne, James H.	Edge of Night, The	Dr. Kenneth Bryson (1981)	11
5343833	Hayden, Harry	Up in Mabel's Room (1944)	Justice of the Peace	11
5344255	Hayes, Ben	Edge of Night, The	Davey Hansen (1964)	11
5344518	Hayes, Geoffrey	Rainbow	Presenter (1973-1992)	-1
5344738	Hayes, Gerry	Go-Go-Girl vom Blow Up, Das (1969)		15
5345150	Hayes, Ron	General Hospital	Dr. Phil Brewer #2 (1967)	5
5345153	Hayes, Ron Michael	General Hospital	Sheriff Broder (1986)/Andy Matthews (1987)	5
5345589	Haynes, Clarence (I)	Highway 61 (1991)	Motel Meat Eater	34
5345718	Haynes, Lloyd	Greatest, The (1977)	Herbert Muhammad	-1
5345726	Haynes, Lloyd	General Hospital	Ken Morgan (1984-1986)	5
5346262	Hayward Sr., Melvyn	Wild Pair, The (1987)	Audience member	17
5346388	Hayward, Jim (I)	Double Deal (1950)	Mike (the bartender)	-1
5347725	Healy, Ted	Big Idea, The (1934)	Ted Healy, Scenario Company President	1
5348106	Hearn, Edward	Failure at Fifty, A (1940)	Partner	-1
5348145	Hearn, Edward	Holt of the Secret Service (1941)	Agent Jim Layton	10
5348527	Hearst, Rick	General Hospital	Ric Lansing (2002-present)	5
5349413	Hecht, Paul	Tempest (1982)	Paul	19
5350720	Heffernan, William	Clash of the Ash, The (1987)		-1
5350726	Heffleringer, Mark	Real Bullets (1990)	Thief	45
5350841	Heflin, Van	Grand Central Murder (1942)	Rocky Custer	1
5351675	Heiden, Florian	Tatort - Lockvögel (1996) (TV)	Leon	8
5352264	Heinrichs, Dirk	Tatort - Willkommen in Köln (1997) (TV)		-1
5352483	Heinze, Thomas	Seine beste Rolle (1989) (TV)	Bjoern	4
5352604	Heising, Guenther	Tatort - Das stille Geschäft (1977) (TV)	Kriminalobermeister Henkel	-1
5352732	Heit, Michael	General Hospital	Vic Gower (1980)	5
5352850	Hekster, Russel	Do Not Disturb (1999)	Security Guard	-1
5353598	Heller, Barry	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Trauma Team Doctor #1	33
5353998	Hellström, Kurt-Ingvar	Samlaren (1989)		-1
5354134	Helmerhorst, Michael (II)	Do Not Disturb (1999)	Frightened Bum	-1
5356092	Henderson, Dell	Son-Daughter, The (1932)	Hy Py, the Banker	-1
5356680	Henderson, Skitch	Thrills of Music: Skitch Henderson and His Orchestra (1948)	Himself, Bandleader	1
5357034	Hendricks Jr., Ben	Valley of the Giants (1938)	Baxter (landowner)	-1
5357245	Hendriks, Jan (I)	Barrings, Die (1955)	Graf Wilda	6
5357749	Henley, Hobart	Rogue with a Heart, The (1916)		1
5358028	Hennessy, Michael C.	Home Is the Hero (1959)	Manchester Monaghan	12
5358315	Henning, Uno	Frau, nach der man sich sehnt, Die (1929)	Henry Leblanc	5
5338229	Hastings, Don	Edge of Night, The	Jack Lane (1956-1960) (original cast)	11
5338645	Hatcher, Steve	Other Side of Chelsea, The (1993) (V)		-1
5338806	Hatfield, Hurd	General Hospital	Pilgrim (1986)	5
5339673	Hatzipanayotis, Christos	Eglimata	Achilleas Mitropoulos	7
5340045	Hauer, Rutger	Repelsteeltje (1973)		-1
5340695	Hauser, Karl	Premiere (1936)	3. Autor	-1
5340829	Hausknost, Ernst	Tatort - Feuerwerk für eine Leiche (1988) (TV)		18
5341160	Havard, René	Sainte farce, La (1972) (TV)	Zeffe	9
5361098	Herala, Helge	Vatsa sisään, rinta ulos! (1959)	Capt. Tauno Routa	-1
5361392	Herbert, Holmes	East Side, West Side (1927)	Gilbert Van Horn	8
5361718	Herbert, John (II)	Em Cada Coração um Punhal (1970)	(segments "Transplante de Mãe" and "O Filho da Televisão")	2
5362094	Herbrechter, Max	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Uwe	3
5362278	Herczeg, Jenö	Iza néni (1933)		-1
5362824	Herley, Randal	At Bertram's Hotel (1987) (TV)	Richard Egerton	15
5362862	Herlihy, Ed	Roar, Navy, Roar (1942)	Narrator	1
5362956	Herlin, Jacques	Mondo candido (1975)	Dr. Panglos	3
5363176	Herman, Al	Valley of the Giants (1938)	Father holding boy	-1
5363496	Hermann, Tobias	Meister Eder und sein Pumuckl	Einer von 3 Buben	-1
5363645	Hermoso, Miguel	Accidente (1965)		-1
5363756	Hern, Pepe	Thunderbirds (1952)	Pvt. Joe Lastchance	24
5364512	Hernández, Emilio (III)	Caja 507, La (2002)	Abogado Hombrecillo	38
5364676	Hernández, Guillermo (I)	Río de las ánimas, El (1964)		-1
5364783	Hernández, Juan Manuel	Agujetas en el alma (1998)	Doble Mel Gibson (Mel Gibson lookalike)	27
5365611	Herrera, Guillermo	Grandes ilusiones		10
5366356	Herrmann, Edward	Pandora's Clock (1996) (TV)	President	16
5366741	Hersholt Jr., Jean	Forgotten (1933)	Hans Strauss, Jr.	-1
5367616	Hertzler, John	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Doctor	26
5367628	Hertzler, John	General Hospital	Gen. Stark (1990)	5
5367753	Herwig, Paul	Dumm gelaufen (1997)	Polizist Pohl	11
5368779	Hevener, Jerold T.	He Won a Ranch (1914)	Isaac Rosenstein	1
5368914	Hewgill, Roland	John and the Missus (1987)	Fred Budgell	5
5368922	Hewitson, Ian	Man Who Could Cheat Death, The (1959)	Roget	-1
5368994	Hewitt, Henry	Happy Go Lovely (1951)	Dodds	8
5369074	Hewitt, Martin	General Hospital	Steven Lars Webber (1979)	5
5369365	Hexum, Jon-Erik	Making of a Male Model (1983) (TV)	Tyler Burnett	2
5369968	Heyne, Jan Peter	Tatort - Kalte Wut (2001) (TV)		-1
5370127	Heywood, Herbert	They Won't Believe Me (1947)	Sheriff	-1
5372135	Hidari, Bokuzen	Daikaijû Gamera (1965)	Old Man	-1
5372145	Hidari, Bokuzen	Gurama-to no yuwaku (1959)	Mitsumura	-1
5372329	Hiemer, Horst	Romeo und Julia auf dem Dorfe (1984)		-1
5373364	Higuera, Emilio	Monosabio, El (1977)	Guard	26
5373548	Hilbeck, Fernando	Verano azul	Padre de Quique	-1
5373706	Hildebrand, Weyler	Hemliga Svensson (1933)	Julius Göransson	2
5373869	Hilding, Olle	Ingen mans kvinna (1953)	Henriksson, Judith's father	-1
5374431	Hill, Ben	On the High Card (1921)	Ben Stiles	3
5358564	Henricão	Tronco do Ipê, O	Sebastião	-1
5358807	Henry, Gregg	Substitute Wife, The (1994) (TV)	Joe	-1
5358832	Henry, Guy (I)	Young Sherlock: The Mystery of the Manor House	Sherlock Holmes	1
5358879	Henry, Hank	Not Tonight Henry (1961)	Henry/Napoleon/Samson/Marc Antony/Captain John Smith/Cave Man	1
5358924	Henry, Jim Douglas	Man Alive	Reporter	-1
5359138	Henry, Mike (I)	General Hospital	Rudolpho (1988)	5
5360095	Henschel, Brandon	Gigli (2003)	Beach Dancer	32
5360252	Hensler, Zach	Gigli (2003)	Beach Dancer	31
5360597	Hentsch, Jürgen	Handvoll Gras, Eine (2000)	Kroog	6
5377330	Hinds, Samuel S.	Grand Central Murder (1942)	Roger Furness	5
5377488	Hinds, Scott	Team One (2003)	Zone Guardian	-1
5377624	Hines, Grainger	General Hospital	Dr. Kyle Morgan (1990)	5
5377923	Hinga, Zacky	Face to Face (1990) (TV)	Teacher	-1
5378263	Hinkley, Tommy	Anarchy TV (1997)	Ralph Greed	10
5378304	Hinman, Van	Not a Penny More, Not a Penny Less (1990) (TV)	Dr. Sherman Baker	-1
5378651	Hinton, Ed	I Was a Communist for the FBI (1951)	Jim Broderick, FBI Agent	-1
5378764	Hinz, Knut	Tatort - Das stille Geschäft (1977) (TV)	Kommissar Brammer	-1
5378895	Hinz, Werner	Tatort - Mordverdacht (1971) (TV)		-1
5378917	Hinze, Gerhard	Tatort - Rattenlinie (2000) (TV)		16
5378924	Hinze, Heinz	Traum des Hauptmann Loy, Der (1961)	Mister Macauley	5
5538987	Khanna, Vinod	Qaid (1975)		-1
5379749	Hirose, George	Daikaijû Gamera (1965)	Japanese Ambassador	-1
5380454	Hislop, Scott	Gigli (2003)	Beach Dancer	33
5380720	Hitchcock, Walter	Auction Block, The (1917)	Jarvis Hammon	6
5381537	Ho, Andy	Voices, The (1955) (TV)	Hsuan	-1
5382652	Hobbs, Peter	Killers, The (1964)	Instructor	18
5382940	Hochgruber, Thomas	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Gendarm	8
5383253	Hodge, Al	Edge of Night, The	TV commentator (1957)	11
5383531	Hodges, James	He Won a Ranch (1914)	Algie	4
5383769	Hodgins, Earle	Main Street Kid, The (1948)	Judge Belin	12
5384725	Hoey, John	Home Is the Hero (1959)	Finnegan	11
5385740	Hoffman, Robert (X)	Gigli (2003)	Beach Dancer	34
5385858	Hoffmann, Benno	Barrings, Die (1955)	Gutsinspektor Barbknecht	13
5385959	Hoffmann, Günter (II)	Tatort - Rattennest (1972) (TV)	Wolf	14
5386383	Hofrichter, Christoph	Tatort - Tödlicher Treff (1987) (TV)		6
5386921	Hogan, Robert	General Hospital	Dr. Phil Brewer #2 (1966)/Burt Marshall (1973)	5
5387188	Hohberger, Peter	Tatort - Der Tausch (1986) (TV)		11
5387225	Hohl, Arthur	Crime Takes a Holiday (1938)	Joe	5
5387416	Holahan, Dennis	General Hospital	John (1982)	5
5387437	Holar, Frantisek	V trestném území (1947)	Jandera	3
5387606	Holbæk, Svend (I)	Ta' det som en mand, frue! (1975)		45
5388001	Holden, Max	Tony's Big Brother (1993) (V)	Tony	1
5388199	Holder, Carlton (I)	Lionheart (1990)	Street Gang Member #5	52
5388209	Holder, Christopher	Edge of Night, The	Mark Aldrich (aka Mark Hamilton) (1984)	11
5388720	Holister, Boyd	General Hospital	Phony Van Gelder (1982)	5
5388832	Holland, Anthony (I)	Tempest (1982)	Sebastian	10
5374635	Hill, Conleth	Meaningful Sex (2000) (TV)	Carl	1
5374995	Hill, Jack (II)	Back Stage (1923)	Audience extra	-1
5375667	Hill, Lee (I)	Girls (1919)	Frank Loot	5
5375704	Hill, Lee (I)	When Baby Forgot (1917)	George Watson	4
5376067	Hill, Roy (IV)	Real Bullets (1990)	Old Miner	15
5376385	Hillis, Rib	General Hospital	Dr. Jake Marshak (1997-1998)	5
5376536	Hilpert, Heinz	Barrings, Die (1955)	Baron von Eyff	5
5376560	Hilt, Stefan	Moonchild (1994) (V)	Cabal	-1
5376822	Himber, Drew	General Hospital	Vincent Cerullo (1994)	5
5376824	Himber, Jason	General Hospital	Patrick Cerullo (1994)	5
5376927	Himonidis, Yannis	Demonismeni, I (1975)		4
5393538	Holoubek, Gustaw	Weryfikacja (1987)	Gucio	4
5394015	Holt, Jack (I)	Crime Takes a Holiday (1938)	Walter Forbes	1
5394063	Holt, Jack (I)	Holt of the Secret Service (1941)	Agent Jack Holt, alias Nick Farrel	1
5394376	Holt, Tim	Laddie (1940)	Laddie Stanton	1
5394502	Holtmann, Frank	Tatort - Aus der Traum (1986) (TV)	Assistent Ballou	2
5394593	Holtz, Jürgen	Luftschiff, Das (1983)		-1
5395432	Homeier, Skip	Greatest, The (1977)	Major	14
5395443	Homeier, Skip	Overboard (1978) (TV)	Dr. Medlow	-1
5396022	Hong, James	General Hospital	Sung Cho Lee (1983)	5
5396663	Hooks, David	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Judge #1	31
5396673	Hooks, David	Edge of Night, The	Dr. Charles Weldon #2 (early 1970s)	11
5389463	Hollander, David (I)	Littles, The		-1
5396683	Hooks, Ed	Knight Rider (1982) (TV)	Guard	18
5396804	Hooper, Brandon	General Hospital	Dr. Eric Simpson (1991)	5
5397431	Hope, Bob	Muppet Movie, The (1979)	Ice Cream Vendor	14
5397947	Hopkins, Blake	General Hospital	Michael Morgan Quartermaine Corinthos [#1] (1997-2001)	5
5398114	Hopkins, Dylan (II)	General Hospital	Michael Morgan Quartermaine Corinthos [#1] (1997-2001)	5
5398128	Hopkins, Gerald	General Hospital	Alan 'A. J.' Quartermain, Jr. #6 (1991-1992)	5
5398268	Hopkins, John (IV)	Ned Kelly (1970)	O'Connor	-1
5398351	Hopkins, Rand	Bobby Jones, Stroke of Genius (2004)	Major Cohen	28
5398495	Hoppe, Edgar	Tatort - Leiche im Keller (1986) (TV)	Baumann	9
5398497	Hoppe, Edgar	Tatort - Rattenlinie (2000) (TV)	Viktor	10
5399161	Hopson, Lew	Lionheart (1990)	Ship's Mate	17
5399199	Hopton, Russell (I)	Crime Takes a Holiday (1938)	Jerry Clayton	3
5399389	Horan, James	Edge of Night, The	Schuyler 'Sky' Whitney (temporary substitute) (1982)	11
5399390	Horan, James	General Hospital	Brett Madison (1985-1987)	5
5399656	Horgan, Patrick	Edge of Night, The	Ansel Scott #1 (1976-1977)	11
5399938	Horne, Peter (II)	Chompin' at the Bit (1997) (V)		-1
5401251	Hornsby, Paul (II)	Team One (2003)	Floor Manager	-1
5403239	Horton, Edward Everett	Private Secretary, The (1935)	Rev. Robert Spalding	1
5402564	Horvath, Charles	I Was a Communist for the FBI (1951)	Good Leader	-1
5402215	Hoshino, Koichi	Toruko 110-ban: monzetsu kurage (1978)	Miura	-1
5402304	Hoskins, Allen 'Farina'	Back Stage (1923)	Farina	-1
5389322	Holland, Ray	Greatest, The (1977)	Reporter	30
5389490	Hollander, Jack	Edge of Night, The	Snell (1982-1983)	11
5389726	Holleschek, Gerhard	Barrings, Die (1955)	Lachmanski	-1
5389729	Hollett, Rick	John and the Missus (1987)	Sax Player	22
5389736	Holley, Bernard	Not a Penny More, Not a Penny Less (1990) (TV)		-1
5390206	Hollingsworth, Harry	Torchy Plays with Dynamite (1939)	Officer	-1
5390299	Hollis, Oliver	Team One (2003)	Desperate Dan	-1
5390364	Hollnagle, Ron	Demon Possessed (1993)	Snowgroomer Driver	10
5390793	Hollywood, Jimmy	Big Idea, The (1934)	Radio Rogue singing 'Marta'	-1
5392033	Holmes, Jesse	Beer (1985)	Man in Steambath	51
5393032	Holmes, Stuart	Valley of the Giants (1938)	Land Office official	-1
5393074	Holmes, Taylor	Double Deal (1950)	C.D. 'Corpus' Mills	3
5408257	Howard, Vince	General Hospital	Harve Johnston (1993)	5
5408453	Howe, Doug	Do Not Disturb (1999)	Bell Boy	-1
5408544	Howe, Wallace	Back Stage (1923)	Manager of the theater	-1
5409156	Howes, Bobby	Happy Go Lovely (1951)	Charlie	4
5409514	Howlett, Chad	Trials of Life (1997) (TV)	LaRue	9
5410326	Hoyos Jr., Rodolfo	General Hospital	Hernandez (1976)	5
5410656	Hoyt, Clegg	Santiago (1956)	Dutch	12
5411614	Hsieh, Wang	Ajia himitsu keisatsu (1966)	Lai Yu Tien	5
5412123	Hubbard, John (I)	Up in Mabel's Room (1944)	Jimmy Larchmont	7
5412534	Huber, Martin	Tatort - Eiskalt (1997) (TV)	Conrad	5
5413010	Huckabee, Ted Hurt	Bobby Jones, Stroke of Genius (2004)	Fraternity Guy	-1
5413083	Hud, Antonio de	Río de las ánimas, El (1964)		-1
5413237	Huddleston, David	Greatest, The (1977)	Cruikshank	-1
5413247	Huddleston, David	Lovely Way to Die, A (1968)		-1
5413609	Hudson, Gary (I)	Black Thunder (1997)	Jannick	-1
5413742	Hudson, Larry (II)	Highway 61 (1991)	Nathan - Manservant	13
5413780	Hudson, Paul (II)	Yeomen of the Guard, The (1978) (TV)	Sergeant Meryll	5
5414049	Huebing, Craig	General Hospital	Dr. Phil Brewer #5 (1967)/Dr. Peter Taylor (1969-1979)	5
5414842	Hugelmann, Oskar	Perle von Tokay, Die (1953)		21
5416015	Hughes, Roddy	Quiet Wedding (1941)	Vicar	16
5416225	Hughson, Hubert	Where the Buffalo Roam (1966) (TV)	Cinema Manager	14
5416264	Hugo, Laurence	Edge of Night, The	Dist. Atty. Mike Karr #2 (1961-1972)	8
5416537	Hui, Michael	Jin ye bu she fang	Guest	-1
5416772	Hukkanen, Esko	Sininen imettäjä (1985)	Paavo	-1
5418439	Humphries, Barry	Pleasure at Her Majesty's (1976) (TV)	Edna Everage	-1
5418589	Hun, Ediz	Eli masali (1966)		2
5419129	Hunold, Sören	Tatort - Lockvögel (1996) (TV)		-1
5419190	Hunt, Alan	General Hospital	Clayton (1989)	5
5419279	Hunt, Dan	Fishing with Gandhi (1998)	Chris	7
5419285	Hunt, Dave	Bobby Jones, Stroke of Genius (2004)	Dr. Begg	33
5419465	Hunt, Kevin (I)	General Hospital	Drug dealer (1998)	5
5419510	Hunt, Neil	General Hospital	Oliver (1982)	5
5404981	Houser, Jerry	Bradys, The	Wally Logan	10
5405037	Housman, Arthur	Bondage of Barbara, The (1919)	Jack Newton	4
5405225	Housseau, Mr.	4 aventures de Reinette et Mirabelle (1987)	Le voisin	3
5405389	Houston, George	Melody Lingers On, The (1935)	Carlo Salvini	2
5405443	Houston, Glyn	Where the Buffalo Roam (1966) (TV)	Mr. Jenkins	3
5405618	Hove, Anders	General Hospital	Cesar Faison (1990-1992, 1999-2000)	5
5405733	Hover, Robert	Edge of Night, The	Lane Wilton (1983-1984)	11
5405897	Howard, Andrew (I)	North West One (1999)	Tom	-1
5406295	Howard, Curly	Boobs in Arms (1940)	Curly	1
5406297	Howard, Curly	Booty and the Beast (1953)		-1
5407142	Howard, Moe (I)	Boobs in Arms (1940)	Moe	3
5407144	Howard, Moe (I)	Booty and the Beast (1953)	Moe	1
5407788	Howard, Shawn Michael	Rats, The (2002) (TV)	Ty	3
5407809	Howard, Shemp	Booty and the Beast (1953)	Shemp	3
5408011	Howard, Sherman	General Hospital	Gordon Bradford Gray #1 (1973-1974)	5
5408132	Howard, Trevor (I)	Amants du Tage, Les (1955)	Inspector Lewis	3
5425706	Hyland, Rob (III)	General Hospital	Paulie (2002-2003)	5
5426564	Hyttinen, Niilo	Sininen imettäjä (1985)	Joel Stroem	-1
5426582	Hytönen, Hugo	Mies Marseillesta (1937)	General Velikov	4
5426777	Hálek, Jirí	Zahrada (1968)	Josef	1
5426803	Häberle, Horatius	Komischer Heiliger, Ein (1979)	Untersuchungsrichter	5
5427588	Hélmond, Daniel	Boys of St. Vincent, The (1992) (TV)	Detective	32
5427884	Högel, Axel	Ingen mans kvinna (1953)	Vicar at the burial ceremony	-1
5427904	Högel, Axel	Maria på Kvarngården (1945)	Vicar	-1
5428266	Hörbe, Alexander	Tatort - Kalte Wut (2001) (TV)	Stefan Dehlers	-1
5428321	Hörbiger, Attila	Premiere (1936)	Dr. Helder, Polizeikommissar	2
5428341	Hörbiger, Attila	Weiße Stadt, Die (1980) (TV)		-1
5428513	Hörbiger, Paul	Perle von Tokay, Die (1953)	Ferencz Körös von Köröshazy, General a.D.	4
5428558	Hörbiger, Paul	Tatort - Mordverdacht (1971) (TV)		-1
5428883	Hübner, Charly	Tatort - Der vierte Mann (2004) (TV)		-1
5428947	Hübner, Herbert	Illusion in Moll (1952)	Dr. Bauer	7
5429086	Hübsch, Wolfgang	Tatort - Hahnenkämpfe (1997) (TV)	Paul Kant	2
5429117	Hülsmann, Ingo	Tatort - Aus der Traum (1986) (TV)		-1
5430105	Ibáñez, Manuel 'Flaco'	Valentina		-1
5430329	Ice-T	Breakin' (1984)	Rap Talker	10
5431620	Iglesias, Pompín	Ladrona, La (1954)		-1
5431945	Ihász, Lajos	Iza néni (1933)		-1
5432721	Illig, Rolf	Tatort - Rattenlinie (2000) (TV)	Abt Zumbrink	3
5432729	Illig, Rolf	Meister Eder und sein Pumuckl	Kunde	-1
5432828	Illiopoulos, Dinos	Jack o kavalaris (1979)	Boss of the gang	2
5433422	Imai, Masayuki	Help!		8
5433870	Immers, Tim	Littles, The		-1
5434685	Inci, Arman	Handvoll Gras, Eine (2000)	Kendal	2
5435446	Infante, Antonio	Reportero, El (1987)		4
5436201	Ingle, John	General Hospital	Edward L. Quartermaine #2 (1993-2004)	5
5437756	Innes, Neil	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5438478	Interlenghi, Franco	Amiche del cuore, Le (1992)		-1
5438650	Inverdale, John	Rugby Special	Presenter	-1
5419628	Hunt, Will	General Hospital	Herbert Quartermaine (1987)	5
5419762	Hunter, Bill (I)	Ned Kelly (1970)	Officer	-1
5420048	Hunter, Ian (I)	Tarzan Finds a Son! (1939)	Mr. Austin Lansing	4
5420303	Hunter, Matt	General Hospital	Zach Roads (2003-)	5
5420882	Huntley, Hugh	Bat Whispers, The (1930)	Richard Fleming	14
5421332	Hurley, Matthew	Trials of Life (1997) (TV)	Trent	12
5421364	Hurlic, Philip	Our Gang Follies of 1936 (1935)		-1
5421901	Hurst, Paul (I)	Tall, Dark and Handsome (1941)	Biff	10
5421935	Hurst, Paul (I)	Who Killed Doc Robbin? (1948)	Jailer	9
5422205	Hurt, William (I)	Do Not Disturb (1999)	Walter Richmond	1
5422648	Husmann, Andrew	General Hospital	Noel Clinton #2 (1965)	5
5423473	Huszár, Károly (I)	Iza néni (1933)		-1
5423520	Husák, Frantisek	Zahrada (1968)		-1
5423813	Hutchinson, Bill (I)	Not a Penny More, Not a Penny Less (1990) (TV)	Saunders	-1
5438674	Inwood, Steve	General Hospital	Moreno #2 (1989-1989)	5
5438709	Ioakimidis, Dimitrios	Jack o kavalaris (1979)	Novalsky	5
5438804	Ionescu, Serban	Martori disparuti (1988)		-1
5438901	Ioualalen, Farid	À la vitesse d'un cheval au galop (1992)	Zino	25
5439885	Irjala, Pentti	Vatsa sisään, rinta ulos! (1959)	Capt. Turve	-1
5440693	Irving, George (I)	Laddie (1940)		-1
5441503	Irwin, Michael (II)	Young Sherlock: The Mystery of the Manor House	William Creasley	-1
5441602	Isaac, Alberto	Some Kind of Hero (1982)	Vietcong Guard	-1
5441988	Isbert, José	Familia Vila, La (1950)	Señor Vila	-1
5442212	Iseman, Matt	General Hospital	Rock Fowler (2003)	-1
5442377	Ishibashi, Masashi	Hoero! Tekken (1982)		-1
5442384	Ishibashi, Masashi	Kôsoku sentai Tâborenjâ		9
5442591	Ishida, Junichi	Help!		2
5442775	Ishihara, Sumao	Oushou (1948)		8
5443077	Ishiyama, Kenjiro	Zatoichi sakate giri (1965)		5
5443534	Isler, Seth	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Lewis	10
5444377	Itkin, Paul Henry	Edge of Night, The	Joel Gantry #1 (1972)	11
5444437	Ito, Hideaki	Over Time	Yuuki Kobayashi	5
5444605	Ito, Shinkichi	Akai yuhi ni terasarete (1925)	Spy	-1
5444761	Iturralde, Alfonso	Toda una vida		-1
5445106	Ivanek, Zeljko	Edge of Night, The	Sammy Wheaton (1981-1982)	11
5445556	Ivar, Stan	General Hospital	David (1986)/Senator Jack Kensington (1992)	5
5445632	Iveberg, Hans	Prins hatt under jorden (1980)		6
5445924	Ivezic, Ilija	Hocu zivjeti (1982)		-1
5447353	Iwamatsu, Ryo	Ijô no hitobito: Densetsuno nijino sankyôdai (1993)		4
5446271	Izzard, Eddie	Eddie Izzard: Circle (2002) (V)	Himself	1
5446509	J.V., Somayajulu	Idu Namma Alu (1988)	Srinivasa Sastry	-1
5448253	Jackson, Gordon	Happy Go Lovely (1951)	Paul Tracy	6
5448607	Jackson, Jonathan (I)	General Hospital	Lucky Spencer #1 (1993-1999)	5
5448993	Jackson, Osi	Warning: Parental Advisory (2002) (TV)	Rock Fan	-1
5449531	Jackson, Selmer	Forgotten (1933)	Hans Strauss	5
5449959	Jackson, Thomas E.	Crime Takes a Holiday (1938)	Brennan	6
5451220	Jacobsen, Michael Trier	Ta' det som en mand, frue! (1975)	Ellens sekretær	27
5451240	Jacobsen, Peter (II)	Ta' det som en mand, frue! (1975)		41
5451391	Jacobsson, Hugo	Hemliga Svensson (1933)	Nord	8
5451795	Jacques, Ted	Killers, The (1964)	Gym Assistant	12
5453042	Jaggberg, Kurt	Tatort - Mord auf Raten (1980) (TV)	Bezirksinspektor Wirz	-1
5453048	Jaggberg, Kurt	Tatort - Mordverdacht (1971) (TV)		-1
5453212	Jagger, Mick	Ned Kelly (1970)	Ned Kelly	1
5453382	Jahan, Olivier	Amoureux, Les (1994)	Michel	17
5453475	Jahncke, Carter	Number's Alive! (1996) (TV)	Marty	3
5454083	Jakus, Bogdan	Poslednja trka (1979)		-1
5454269	Jamaica, Kid	No Limits 4 (2003) (V)		-1
5455699	James, Jack (III)	General Hospital	Val Duncan (1994)	5
5455728	James, Jeremy (III)	Man Alive	Reporter	-1
5456857	Jameson, House	Edge of Night, The	John H. Phillips (1957-1958)	11
5457187	Jamison, Bud	Hot Foot (1943)	Sam	5
5457365	Jamison, Bud	Tall, Dark and Handsome (1941)		-1
5457501	Jammer, Cal	Bare Ass Beach (1994) (V)		-1
5457571	Jammer, Cal	Hard to Thrill (1991) (V)		-1
5458521	Jang, Hyeok	Mokmeyeo bulleobwado (1969)		3
5458742	Janicijevic, Dusan	Poslednja trka (1979)		-1
5460134	Janisch, Michael	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Inspektor Fichtl	2
5460135	Janisch, Michael	Tatort - Hahnenkämpfe (1997) (TV)	Chefinspektor Fichtl	1
5460290	Janketic, Mihailo 'Misa'	Kabare 011		2
5459527	Janney, Leon	Old English (1930)	John 'Jock' Larne	8
5459536	Janney, Leon	Edge of Night, The	Clayton Pike (1957)/Eric Barrington (1968-1969)	11
5459325	Janssen, Walter	Illusion in Moll (1952)	Friedrich	8
5460697	Jantzen, Koen	Do Not Disturb (1999)	Policeman In Car	-1
5460869	Japin, Arthur	Do Not Disturb (1999)	Head Waiter	-1
5461083	Jaramillo, Salvador	Buzos diamantistas, Los (1988)		-1
5461715	Jarrett, Christopher	Edge of Night, The	Damian Tyler Wilcox (1981-1983)	11
5461716	Jarrett, Clark	Bobby Jones, Stroke of Genius (2004)	Chick Evans	29
5462062	Jarvis, Graham (I)	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Officer Danziger	3
5462580	Jason, Peter	Some Kind of Hero (1982)	Honcho	15
5462840	Jasso, Luis	Reed, México insurgente (1973)		-1
5464454	Jedrzejczyk, Rafal	Farba (1998)		-1
5464628	Jeetendra	Santaan (1993)	Sarju Narayan Singh	1
5464806	Jeffcoat, Don	General Hospital	Craig (1990)	5
5464871	Jefferson Jr., Herb	Knight Rider (1982) (TV)	Muntzy	10
5465050	Jeffery, Doug	Deadlock: A Passion for Murder (1997)	Nick	1
5465587	Jeffries, Will (II)	General Hospital	Damon Grenville (1986)	5
5466332	Jenkins, Allen	Three Men on a Horse (1936)	Charlie	5
5466337	Jenkins, Allen	Torchy Plays with Dynamite (1939)	Lt. Steve McBride aka Steve the Flathead	2
5466383	Jenkins, Brinley	Where the Buffalo Roam (1966) (TV)	Police Superintendent	10
5466754	Jenkins, Terry (II)	Yeomen of the Guard, The (1978) (TV)	Colonel Fairfax	4
5466930	Jenks, Frank (I)	Tall, Dark and Handsome (1941)	Puffy	7
5467308	Jennings, Bob (II)	General Hospital	Wollman (1991)	-1
5467376	Jennings, DeWitt	Bat Whispers, The (1930)	Police captain	4
5468233	Jensen, Jesper	Ta' det som en mand, frue! (1975)	Mand på diskotek	19
5468259	Jensen, Johnny (II)	General Hospital	Scotty 'Scott' Baldwin #5 (1974-1975)	5
5470413	Jerome, Jeff	General Hospital		5
5470482	Jerome, Joey	Edge of Night, The	Joey Dials (1979)	11
5471198	Jeupeu	À la vitesse d'un cheval au galop (1992)	L'étudiant en droit	36
5471812	Jimena, Carlos	Caja 507, La (2002)	Hijo Marcelo	23
5472392	Jiménez, Sergio (I)	Valentina		-1
5472577	Jinnai, Takanori	Help!		6
5472642	Jiroyan, Arsène	Parfum d'Yvonne, Le (1994)	Cintra Proprietor	20
5472877	Joachim, Prins	Kongelig familie, En	Himself	-1
5472958	Jobert, Stéphane	Amoureux, Les (1994)	Trisson	8
5473349	Joe, Big (I)	Carnal Passion (2001) (V)	Hotel Guest	9
5473944	Johansen, Svend	Ta' det som en mand, frue! (1975)		35
5474590	John, Elton	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Song Performer	22
5474992	Johns, Andrew (I)	Young Sherlock: The Mystery of the Manor House	Captain Cholmondeley	-1
5475458	Johnson, Arch	Edge of Night, The	Jim Earle #1 (1983)	11
5475505	Johnson, Arte	Making of a Male Model (1983) (TV)	Marty Sampson	5
5475540	Johnson, Arte	General Hospital	Finian O'Toole (1991)	5
5477562	Johnson, Karl (II)	Rainbow	Singer (1973)	-1
5477753	Johnson, Lawrence (IV)	Bobby Jones, Stroke of Genius (2004)	Golfer	-1
5478036	Johnson, Mike (I)	Quiet Wedding (1941)		-1
5478356	Johnson, Quinzy	CTV	Host	-1
5478366	Johnson, R.J. (I)	General Hospital	Hotel waiter (1979)	-1
5479430	Johnston, Bobby (I)	Deadlock: A Passion for Murder (1997)	Evan	3
5482298	Jones, Des	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5482362	Jones, Dickie	Our Gang Follies of 1936 (1935)		-1
5483532	Jones, James Earl	Greatest, The (1977)	Malcolm X	-1
5483864	Jones, John (XII)	Do Not Disturb (1999)	Barkeeper	-1
5483888	Jones, John Frederick	General Hospital	Judge Young #2 (1995)	5
5484196	Jones, L.Q.	Santiago (1956)	Digger	6
5484262	Jones, Lewis (I)	General Hospital	Mr. William Parker Brown	2
5484741	Jones, Nicholas (I)	Not a Penny More, Not a Penny Less (1990) (TV)	Dr. Robin Oakley	-1
5485078	Jones, Ray (I)	Burglar, The (1928)		-1
5485190	Jones, Ray (I)	Square Shooter (1935)	Miller rider	-1
5485745	Jones, Terry (I)	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5486429	Joplin, Gareth	Our Gang Follies of 1936 (1935)		-1
5487363	Jordan, Sid	Cactus Jim's Shopgirl (1915)	A Ranch Hand	3
5487418	Jordan, Sid	Never Again (1915)		4
5487528	Jordan, Tom (II)	Making of a Male Model (1983) (TV)	Fred	-1
5487910	Jorjoliani, Aleqsandre	Chirveuli mezoblebi (1945)	Amirani	1
5488110	Josch, Walter	Tatort - Feuerwerk für eine Leiche (1988) (TV)		17
5488857	Joss, Jonathan	Substitute Wife, The (1994) (TV)	Black Deer	12
5489496	Joswig, Rüdiger	Reise ohne Wiederkehr (1989)		-1
5489716	José, Juan	Monosabio, El (1977)		29
5489022	Jouko, Ensio	Mies Marseillesta (1937)	Svjatomir Asatiánts	8
5489037	Jouno, Thierry	Conte à regler (1978)		-1
5490899	Joven, Miguel (I)	Verano azul	Tito	9
5490243	Joyce, Jimmy (I)	Killers, The (1964)	Sales Assistant	14
5490386	Joyner, Francis	Auction Block, The (1917)	Campbell Pope	11
5490413	Joyner, Jesse	Nebraska Supersonic (2001)	Stan	-1
5492328	Juhász, József (I)	Mai lányok (1937)	Asztalossegéd	-1
5492496	Julia, Raul	Tempest (1982)	Kalibanos	5
5492693	Julian, Joseph (I)	Edge of Night, The	Agent (1966)	11
5492927	Julien, André	À la vitesse d'un cheval au galop (1992)	Le vorace	10
5493641	Jung, Bo Mo	Jawbreakers (2001) (V)		-1
5493732	Jung, Kurt A.	Maulkorb, Der (1958)	Redakteur Nelles	18
5493789	Jung, Nathan	General Hospital	Won Chu (1974)	5
5494142	Junkermann, Hans	Orlow, Der (1927)		-1
5494168	Junkermann, Hans	Tänzer meiner Frau, Der (1925)	Der Tanzmeister	6
5494509	Justh, Gyula	Mai lányok (1937)	Asztalos	-1
5494712	Justin, Shawn	Tony's Big Brother (1993) (V)		4
5475906	Johnson, Ben (I)	Greatest, The (1977)	Hollis	-1
5476211	Johnson, Bryce	Harry and Max (2004)	Harry	1
5476485	Johnson, Corey (I)	Do Not Disturb (1999)	Bruno Decker	6
5477327	Johnson, James E. (I)	Halfway to Heaven and Hell (2003)	Satan	-1
5494720	Justine, William	Trauma (1962)	Treasury Agent	8
5494776	Jutras, Peter	Boys of St. Vincent, The (1992) (TV)	Brother Graham	38
5495671	Jávor, Pál	Iza néni (1933)	Baló Bálint erdész	-1
5496061	Järrel, Stig	Flicka med melodi (1954)	Professor Libergius	3
5496358	Józefowicz, Janusz	Nowy Jork, czwarta rano (1992)		-1
5497880	Júnior, Gracindo	Rainha Louca, A		-1
5497570	Kadochnikov, Pavel	U nikh yest rodina (1950)		-1
5498453	Kagawa, Ryosuke	Jiraiya (Ninjutsu sanyôden) (1937)		4
5498462	Kagawa, Ryosuke	Oushou (1948)		6
5498841	Kahn, Cavid	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		7
5499006	Kahrmann, Christian	Und tschüss! - Ballermann olé (1997) (TV)	Jürgen	1
5499212	Kain	Do Not Disturb (1999)	Other bum	-1
5499632	Kaitlyn, Peter	Unstrung Heroes (1995)	Dr. Feldman	27
5500696	Kalipha, Stefan	Young Sherlock: The Mystery of the Manor House	The Munchi	-1
5501573	Kalske, Kullervo	Vatsa sisään, rinta ulos! (1959)	Capt. Virta	-1
5501618	Kaltvedt, Otis A.	Substitute Wife, The (1994) (TV)	Older Jack	22
5501851	Kamahl	Ned Kelly (1970)	Gloster	-1
5502281	Kamel, Saddam	General Hospital	Cody McCall (2003)	-1
5502316	Kamenesky, Eliezer	Pai Tirano, O (1941)	Ciriloff	15
5502568	Kaminski, André (I)	Tatort - Schwarzer Advent (1998) (TV)	Leo Gruber	6
5502940	Kamoun, Samir	Real Bullets (1990)	Samir	11
5503083	Kampers, Fritz	Provinzonkel, Der (1926)		-1
5503453	Kanan, Sean	General Hospital	Alan 'A. J.' Quartermaine, Jr. #7 (1993-1997)	5
5504319	Kane, Sid	Patty (1962)	Crawford	14
5504413	Kane, Whitford	Who Killed Doc Robbin? (1948)	'Fix-it' Dan Cameron	10
5504947	Kang, Sung	9:30 (2003)	Chan Kin Fai	-1
5505170	Kanies, Rolf	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)		-1
5505377	Kanseas, Angelo	Tatort - Rattennest (1972) (TV)	Thomas	3
5506156	Kaplow, Herbert	Forbidden Under the Censorship of the King (1972)		-1
5506688	Kapoor, Rajiv	Naag Nagin (1989)		-1
5507045	Kapoor, Shakti (I)	Main Awara Hoon (1983)		6
5508278	Karadagián, Martín	Titanes en el ring contraataca (1983)		-1
5508539	Karaki, Al	Platoon Leader (1988)	Kemp	11
5508850	Karapiet, Rashid	At Bertram's Hotel (1987) (TV)	Indian waiter	17
5509516	Karilo, Santeri	Vatsa sisään, rinta ulos! (1959)	Major General	-1
5509741	Karl, Fritz	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Martin Bose	4
5509748	Karl, Fritz	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)		7
5509834	Karl, Roger	Valet maître, Le (1941)	Ravier 'de l'Orne'	3
5510666	Karnad, Girish	Ratnadeep (1979)		1
5511406	Karrier, Steve	Anna - annA (1993)	Teacher	4
5511470	Karson, Eric	Lionheart (1990)	Doctor	10
5511917	Karén, Aarre	Angela ja ajan tuulet	Anton Goldberg	-1
5512051	Kascier, Johnny	Boobs in Arms (1940)		-1
5512075	Kascier, Johnny	Holt of the Secret Service (1941)	Henchman	-1
5513165	Kastner, Bruno	Orlow, Der (1927)		-1
5513198	Kastner, Peter	Edge of Night, The	Lonnie Winters	11
5513374	Katagiri, Junichiro	Kôsoku sentai Tâborenjâ	Shunsuke Hino/Yellow-Turbo	4
5513499	Kataoka, Chiezo	Jiraiya (Ninjutsu sanyôden) (1937)		1
5514496	Katsu, Shintarô	Zatoichi sakate giri (1965)	Zatoichi	1
5514621	Katsura, Kokinji	Gurama-to no yuwaku (1959)	Sogoro Hyodo	-1
5515215	Katô, Daisuke (I)	Shin kitsune no tameki (1962)		3
5515258	Katô, Daisuke (I)	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		6
5515273	Katô, Haruhiko	Over Time	Kazuya Endo	4
5515383	Kauffman, William	Face in the Frame, The (1998)	Hank Ingalls	1
5515794	Kaufmann, Maurice	Tarnished Heroes (1961)	Tom Mason	5
5516034	Kautz, Sebastian	Tatort - Kalte Wut (2001) (TV)		-1
5516249	Kavanaugh, Junior	Our Gang Follies of 1936 (1935)		-1
5516285	Kaven, Wolfgang	Tatort - Rattenlinie (2000) (TV)		14
5516393	Kavtaradze, Gogi	Prival strannikov (1991)		-1
5517379	Kay, Stephen T.	General Hospital	Reginald Jennings (1992-present)	5
5517782	Kaye, Davy	Young Sherlock: The Mystery of the Manor House	Natty Dan	-1
5517874	Kaye, Marvin	Reaction Stick (1998)	Best Friend	-1
5517972	Kaye, Robert	Edge of Night, The	Lt. Marks (1969-1970)	11
5518078	Kayser, Beau	General Hospital	Dr. Bunny Willis (1983, 1999)	5
5518415	Kazakov, Ye.	Ya shagayu po Moskve (1963)		-1
5519574	Keane, Robert Emmett	Atomic Kid, The (1954)	Mr. Reynolds	5
5519824	Kearney, John (I)	East Side, West Side (1927)	Policeman	12
5519990	Kearns, Michael (I)	Making of a Male Model (1983) (TV)	Roddy	-1
5520138	Keating, Graham	Ned Kelly (1970)	1st Trooper	-1
5520274	Keaton, Buster	Blacksmith, The (1922)	Blacksmith's assistant	1
5520475	Keaton, Joshua	General Hospital	Tim (1997)	5
5520695	Keck, Franz	Tatort - 3:0 für Veigl (1974) (TV)	Schwarzmeier	7
5520746	Kedem, Moshe	Ned Kelly (1970)	Baumgarten	-1
5521083	Keegan, Jimmy	Littles, The	Henry Bigg	10
5522319	Kei, Ho Chiu	Ta lai zi hu zhi ming shi (1994)		-1
5523313	Keith, Sherwood	Patty (1962)	Dr. Fridden	15
5523517	Keleghan, Peter	General Hospital	Barry Durban (1992)	5
5523524	Kelehan, Matt	Nebraska Supersonic (2001)	Dave	-1
5523622	Keleti, László	Iza néni (1933)		-1
5523698	Kelker-Kelly, Robert	General Hospital	Stavros Cassadine #2 (2001, 2002)	5
5524250	Kellett, Pete	Big Tip Off, The (1955)		-1
5525198	Kelly, Dermot	Home Is the Hero (1959)	2nd Pub Customer	14
5525486	Kelly, Harry (II)	Ned Kelly (1970)	Aborigine	-1
5525629	Kelly, Jim (III)	General Hospital	Jim Kelly (1992)	5
5526786	Kelly-Young, Leonard	Anarchy TV (1997)	Angela's Father	27
5526991	Kelsey, Fred	Bromo and Juliet (1926)		6
5527321	Kelsey, John	Big Pile, The (1985)	Umberto Eco	20
5527555	Kemmer, Ed	Edge of Night, The	Malcolm Thomas (1964-1965)	11
5528593	Kendall, Cy	Valley of the Giants (1938)	Sheriff Graber	12
5528666	Kendall, Henry	Shadow of the Cat (1961)	The Doctor	11
5529010	Kenerdine, D.C.	Sons of the Sea (1925)	Derek Bray	1
5529247	Kennedy, Arthur (I)	Home Is the Hero (1959)	Willie O'Reilly	3
5529756	Kennedy, Edgar	Hot Foot (1943)	Edgar	1
5529888	Kennedy, Edgar	Three Men on a Horse (1936)	Harry, the Bartender	8
5531139	Kennedy, Tom (I)	Torchy Plays with Dynamite (1939)	Officer Jerry Gahagan aka Harry the Horse	3
5514038	Kato, Takeshi	Gurama-to no yuwaku (1959)	Akai	-1
5531451	Kenny, Colin	I Was a Communist for the FBI (1951)	Communist at Meeting	-1
5531862	Kent, Carl (I)	They Won't Believe Me (1947)	Chauffeur	-1
5532035	Kent, Crauford	Flight Lieutenant (1942)	Company official	-1
5532410	Kent, Prince Michael of	Kongelig familie, En	Himself	-1
5532550	Kente, Edmund	Not a Penny More, Not a Penny Less (1990) (TV)	Richard Carlton	-1
5532664	Kentmen, Hulusi	Dertli irmak (1958)		4
5533071	Keong, Ali	General Hospital	Mr. Wu (1985)	5
5533312	Kerboul, Yves	Dame de lieudit, La (1993) (TV)		-1
5533531	Kerivan, Greg	Wild Pair, The (1987)	Hester's bodyguard	28
5533595	Kerkwijk, Henny	Do Not Disturb (1999)	Policeman	-1
5533661	Kerlow, Max	Reed, México insurgente (1973)		-1
5533664	Kerlow, Max	Tres historias de amor (1978)		1
5535205	Kerrigan, J. Warren	For the Good of Her Men (1912)		1
5535464	Kerry, James	General Hospital	Dr. Martin Baxter (1975)	-1
5535558	Kerry, Otto	Noch minderjährig (1957)		-1
5575063	Kosugi, Isamu	Oushou (1948)		2
5536540	Ketchum, Dwight P.	Gigli (2003)	High School Kid #6	15
5537001	Keyes, Johnny	Swedish Erotica 4 (1981)		-1
5538071	Khan, Kader	Main Awara Hoon (1983)		7
5538268	Khan, Namir	Highway 61 (1991)	Funeral Director	11
5539091	Kharbanda, Kulbhushan	Chann Pardesi (1980)	Nek Chand	3
5539642	Kherkheulidze, Shalva	Magdanas lurja (1955)		-1
5540070	Khorava, Akaki	Chirveuli mezoblebi (1945)	Mamager of factory	9
5540106	Khorsand, Philippe	Don Juan (1998)	Monsieur Dimanche	11
5540712	Kiare, Daniel	Face to Face (1990) (TV)	Diana's Student	-1
5540851	Kibbee, Guy	Three Men on a Horse (1936)	Mr. J. G. Carver	3
5541273	Kibrick, Leonard	Our Gang Follies of 1936 (1935)		-1
5541293	Kibrick, Sidney	Flight Lieutenant (1942)	Pudgy	-1
5541305	Kibrick, Sidney	Our Gang Follies of 1936 (1935)		-1
5541503	Kidd, Mark	Last Enchantment (1995)	Sir Prize	-1
5541679	Kiefer, Martin	Tatort - Kalte Wut (2001) (TV)		-1
5541723	Kiehl, William	Edge of Night, The	Fred Burns	11
5541728	Kiehling, Kristian	Fast perfekt verlobt (2003) (TV)	Fritz	4
5543244	Kilian, Victor	Northwest Stampede (1948)	Mel Saunders	5
5543466	Killmeyer, Hermann	General Hospital	Jennings (1984-1992)	5
5543497	Kilman, Peter	General Hospital	Dr. Henry Pinkham (1969-1975)	5
5543641	Kilpatrick, Lincoln	Lovely Way to Die, A (1968)	Daley	15
5543771	Kilroy, Gene	Greatest, The (1977)	Himself	22
5543984	Kim, Dong-won (I)	Korea (1954)		2
5544720	Kim, Kim Ho	Good, the Bad & the Innocent, The (2001)	The Good?	2
5544736	Kim, Kyeong-jin	Maechun 3 (1993)		2
5544748	Kim, Leigh C.	Some Kind of Hero (1982)	Vietcong Guard	-1
5545135	Kim, Seung-Ho (I)	Mulmangcho (1960)		1
5545709	Kimbrough, Matthew	Beer (1985)	Joel	27
5546163	Kinalzik, Ulli	Tatort - Rattennest (1972) (TV)	Stocker	9
5546645	King Constantine II	Kongelig familie, En	Himself	-1
5546761	King Harald V	Kongelig familie, En	Himself	1
5546790	King Michael	Kongelig familie, En	Himself	-1
5547550	King, Charles (II)	Yearning for Love (1926)		2
5547830	King, Donald (II)	Who Killed Doc Robbin? (1948)	Dat	14
5547980	King, Freeman	Lionheart (1990)	Homeless Man	37
5549122	King, Sidney (I)	Quiet Wedding (1941)	Denys	9
5549207	King, Ted (II)	General Hospital	Luis Ramon Alcazar (2002-2003)/Lorenzo Alcazar (2003-present)	5
5549544	Kingly, Ian	Fiction Makers, The (1968)	Reporter	24
5549703	Kingsford, Walter	Melody Lingers On, The (1935)	Croce	9
5549762	Kinnell, Murray	Old English (1930)	Charles Ventnor	6
5551467	Kirby, Bruce	Muppet Movie, The (1979)	Gate Guard	27
5553027	Kirkland, David	End of the Circle, The (1913)		8
5553691	Kirsch, Stan	General Hospital	Carl (1992)	5
5553816	Kirzinger, Ken	Comrades of Summer, The (1992) (TV)	Ivan	20
5554300	Kitahara, Yoshiro	Daikaijû Gamera (1965)	Sakurai	-1
5554885	Kjellin, Alf	Ingen mans kvinna (1953)	Arne Persson	1
5556083	Kjenaas, Aaron	Demon Possessed (1993)	Tom	2
5556202	Kjærulff-Schmidt, Helge	H.O.P.L.A.	Himself	-1
5556736	Klaus, Wilfried	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Wilfried Neuker	-1
5581988	Kravljaca, Uros	Koze		-1
5556757	Klaus, Wilfried	Tatort - 3:0 für Veigl (1974) (TV)	Bohnsack	16
5556772	Klaus, Wilfried	Meister Eder und sein Pumuckl	Herr Schladerer	-1
5557038	Klees, Thomas	Fünfzig Minuten (2001)	Verkäufer	3
5557173	Klein, Dan (IV)	Fishing with Gandhi (1998)	Danno	3
5557333	Klein, Hans Walter	Reise ohne Wiederkehr (1989)		-1
5557571	Klein, Robert (I)	Comedy Tonight	Host	-1
5557664	Klein, Wolfgang (I)	Meister Eder und sein Pumuckl	Polizist	-1
5557860	Kleiner, Sergio	Mi amor por ti		7
5557890	Kleiner, Towje	Meister Eder und sein Pumuckl	Professor	-1
5557992	Kleinmuntz, Josh	Inner Glow of Things, The (2003)	Lothar	5
5558709	Klender, Guy	Starwoids (2001)	Himself	-1
5558283	Kline, Richard (I)	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	5
5559102	Klisser, Evan J.	Platoon Leader (1988)	Larsen	12
5559209	Klockmann, Bruno	Maulkorb, Der (1958)	Oberlehrer	17
5559289	Klopsch, Kurt	Maulkorb, Der (1958)	Kultusminister	21
5559297	Klopsch, Kurt	Tatort - Das stille Geschäft (1977) (TV)	Herr Schobel	-1
5559595	Klugman, Jack	I Could Go on Singing (1963)	George	3
5560262	Knauer, Chad	Last Enchantment (1995)	Jive talker	-1
5560300	Knaup, Herbert	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Jan Meinert	2
5560798	Knight, Chad	Marine Crucible (1997)		-1
5560861	Knight, Christopher (I)	Bradys, The	Peter Brady	7
5560867	Knight, Damien	Carnal Passion (2001) (V)	John Reynolds	6
5561254	Knight, Glen (II)	They Won't Believe Me (1947)	Parking Lot Attendant	-1
5561289	Knight, Harlan	Wives of the Prophet, The (1926)	The Patriarch	4
5561296	Knight, Howard (I)	Shadow of the Cat (1961)	The Son (new family)	17
5561787	Knight, William (III)	Deadlock: A Passion for Murder (1997)	Beckman	6
5561729	Knight, Vin	Custody (2000)	The Bailiff	-1
5561958	Knobeloch, Jim	Trials of Rosie O'Neill, The	D.A. Duncan Watts	-1
5562054	Knoll, Mark	Chickboxin Underground (1999)	Elvis	29
5562106	Knop, Václav	Waterloo po cesku (2002)		20
5562279	Knotts, Don	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	8
5562306	Knotts, Kevin	Deadlock: A Passion for Murder (1997)	Franco	10
5562863	Knudsen, Hermod	Ta' det som en mand, frue! (1975)		37
5562888	Knudsen, Kolbjörn	Ingen mans kvinna (1953)	Jonas Persson	7
5563859	Kobayashi, Keiju	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		1
5564351	Kocak, Timur	Egoists, The (2003)	Barry Matthew Billings	7
5564955	Kockisch, Uwe	Tatort - Kalte Wut (2001) (TV)	Richard Wohlers	-1
5565724	Kogan, Milt	General Hospital	Irv (1995)	5
5565952	Kohler Jr., Fred	Up in Mabel's Room (1944)	Johnny	10
5566122	Kohler, Gilles	General Hospital	Phillipe (1982)	5
5566132	Kohler, John (III)	Bobby Jones, Stroke of Genius (2004)	Milt Saul	30
5566193	Kohlmar, Lee	Forgotten (1933)	Papa Strauss	1
5566522	Koike, Asao	Akitsu onsen (1962)	Osaki	-1
5566663	Koivula, Pertti (II)	Angela ja ajan tuulet	Ukkola	-1
5566799	Kojadinovic, Ugljesa	Hocu zivjeti (1982)		-1
5567140	Koklas, Kostas	Eglimata	Alekos Papadimas	2
5567230	Koksal, Yilmaz	Eli masali (1966)		3
5567774	Kolev, Todor	Ispanska muha (1998)	Batko	1
5568164	Kollar, Will	Face in the Frame, The (1998)	Lt. Tim McCarthy	4
5568611	Kolovos, Vassilis	Skies sto peristilio		-1
5569461	Komlós, Vilmos	Iza néni (1933)		-1
5569826	Kondo, Iyokichi	Akai yuhi ni terasarete (1925)		-1
5569947	Kondrashoff, Kim	Comrades of Summer, The (1992) (TV)	Nikita	21
5570032	Kondrat, Marek	Weryfikacja (1987)	Marek Labus	2
5571015	Koock, Guich	Substitute Wife, The (1994) (TV)	Mr. Van Der Meer	15
5571178	Kopaczewski, Jaroslaw	Weryfikacja (1987)		-1
5571710	Kopriva, Ludek	Zahrada (1968)	Frank	2
5572507	Korittke, Oliver	Handvoll Gras, Eine (2000)	Udo Hellkamp	1
5573271	Korte, Hans	Tatort - Tödlicher Treff (1987) (TV)		3
5573594	Kortner, Fritz	Frau, nach der man sich sehnt, Die (1929)	Dr. Karoff	2
5573606	Kortner, Fritz	Jagd nach der Wahrheit, Die (1920)		2
5574175	Kosloff, Theodore	Something to Think About (1920)	Clown	10
5574265	Koss, Dwight	Comrades of Summer, The (1992) (TV)	Jack	10
5574845	Kostolevsky, Igor	Samozvantsy		2
5574989	Kostroff, Michael	General Hospital	Francis (1995)	5
5576100	Kotys, Ryszard	Zycie za zycie (1991)		23
5576106	Kotz, Adam	Love Potion (1987)	Adam	18
5577820	Kowalewski, Krzysztof	Zycie za zycie (1991)	Editor in chief	7
5577909	Kowalski, Michelangelo	General Hospital	Zack (1987)	5
5577976	Kowalski, Rudolf	Tatort - Lockvögel (1996) (TV)	Kaiser	5
5578311	Koz, Dave	General Hospital	Himself (1993-present)	5
5578504	Kozhevnikov, M.	Tetri mkhedari (1929)	Ioane, father of Natasha	3
5578890	Koós, Balázs	Rats, The (2002) (TV)	Tech guy	14
5579185	Kraemer, Hans	Gesundheit (1978) (TV)		-1
5579267	Kraft, Randolph	General Hospital	Allistair Dunham (1987)	5
5579321	Kragh-Jacobsen, Hans	Ta' det som en mand, frue! (1975)	Lars	7
5579900	Kramer, Billy J.	Shindig! Presents British Invasion Vol. 2 (1992) (V)	Himself	-1
5579933	Kramer, Eric Allan	Comrades of Summer, The (1992) (TV)	Boris	6
5580010	Kramer, Harry	Edge of Night, The	Announcer (1957-1972)	-1
6628191	Weller, Peter (I)	Substitute Wife, The (1994) (TV)	Martin Hightower	3
5580177	Kramer, Louis (II)	Edge of Night, The	Bernard J. Eilhers #2 (1957)/Police Chief Bill Marceau #2 (1959-1979)	11
5580436	Krampol, Jirí	Waterloo po cesku (2002)		1
5580649	Kranz, Mario	Noch minderjährig (1957)		-1
5580678	Kranzkowski, Karl	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)		-1
5580923	Krass, Michael	Do Not Disturb (1999)	Reluctant Policeman	-1
5581319	Kraus, Jan	Waterloo po cesku (2002)	Policeman	10
5581546	Krause, Horst	Tatort - Tod aus der Vergangenheit (1992) (TV)		14
5581734	Krauss, Ron (I)	Rave (2000)	Doctor	30
5582105	Krayk, Stefan	Wild Pair, The (1987)	Distinguished gentleman	16
5583158	Kreye, Walter	Tatort - Rattenlinie (2000) (TV)	Alfred Löhden	6
5583478	Krims, Milton	Unmasked (1929)	Prince Hamid	2
5583506	Krinzinger, Tom	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Karl Gablenz	13
5584051	Kristofferson, Kris	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Song Performer "Fallen Angels"	10
5585296	Krstovic, Miodrag	Koze		-1
5584147	Kritter, Krispi	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		15
5584557	Krogh, Arne	Ta' det som en mand, frue! (1975)		43
5584576	Krogh, Jørgen (I)	Ta' det som en mand, frue! (1975)		29
5584601	Kroh, Eric	General Hospital	Alan 'A. J.' Quartermaine, Jr. #1 (1980-1983)	5
5585458	Krug, Manfred	Tatort - Leiche im Keller (1986) (TV)	Hauptkommissar Paul Stoever	1
5585459	Krug, Manfred	Tatort - Lockvögel (1996) (TV)	Hauptkommissar Stoever	1
5585463	Krug, Manfred	Tatort - Rattenlinie (2000) (TV)	Hauptkommissar Paul Stoever	1
5586178	Kruse, Bryan	Chickboxin Underground (1999)	Priest	27
5586839	Król, Artur	Moje miasto (2002) (TV)	Lolek Dabrowski	13
5586878	Król, Joachim	Zycie za zycie (1991)	SS officer	16
5587156	Krüger, Franz-Otto	Maulkorb, Der (1958)	Schibulski	12
5587226	Krüger, Hardy	Illusion in Moll (1952)	Paul Alsbacher	3
5587262	Krüger, Hartmut	Barrings, Die (1955)	Archie mit 8 Jahren	-1
5587475	Ku, Feng	Jiang shi zhi zun (1987)	Chin	-1
5587579	Kuball, Michael	Im Auto durch zwei Welten (1929)		-1
5587971	Kubík, Rudolf	Waterloo po cesku (2002)	Jenda	9
5588479	Kuhlman, Ron	Bradys, The	Philip Covington III	11
5588481	Kuhlman, Walt	Chickboxin Underground (1999)	Redneck Daddy/Businessman	26
5589193	Kulich, Vladimir	Pandora's Clock (1996) (TV)		15
5589281	Kulikovsky, Paul	Kongelig familie, En	Himself	-1
5589927	Kumar, Ashok (I)	Grihasthi (1963)		-1
5590030	Kumar, Ashok (I)	Return of Jewel Thief (1996)	Prince Arjun	-1
5590147	Kumar, Dheeraj	Ratnadeep (1979)		5
5591960	Kunze, Andreas (I)	Dumm gelaufen (1997)	Wilhelm	22
5592036	Kuoppala, Paavo	Käyntikorttini... (1964)		-1
5592931	Kurosawa, Toshio	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		5
5593075	Kurt, Stefan	Tatort - Veras Waffen (2003) (TV)	Ernst Wohlfahrt	5
5593101	Kurth, Hanns	Perle von Tokay, Die (1953)		18
5593133	Kurth, Wallace	General Hospital	Ned Ashton #2 (1991-present)	5
5593294	Kurtulus, Cevat	Eli masali (1966)		5
5593398	Kurumada, Stephen	Some Kind of Hero (1982)	Dentist	-1
5594469	Kuusla, Arvo	Mies Marseillesta (1937)	Velikov's assistant	9
5595051	Kuznetsov, Vsevolod	Dva patrona na mamonta (1990)		5
5595261	Kvantaliani, Akaki	Magdanas lurja (1955)	Mitua	-1
5595481	Kwak, Oh-kyeong	Wonhanui gongdongmyuji (1983)		2
5595644	Kwan, Tak-Hing	Jin ye bu she fang	Guest	-1
5595810	Kwok, Aaron	Lei ting zhan jing (2000)	Darren Tong	1
5596356	Kyle, Justin	Carnal Passion (2001) (V)	Dane	3
5596407	Kynev, Velko	Ispanska muha (1998)	Dzhipsi	8
5597407	Kôyama, Shigeru	Akitsu onsen (1962)	Tsuda	-1
5597923	Köpeczi Boócz, Lajos	Mai lányok (1937)	Ügyvéd	-1
5598918	La Brosse, Simon de	Enfant du secret, L' (1996) (TV)	Denis	-1
5599372	La Page, Roger	Lionheart (1990)	Landlord	26
5599751	La Rue, Jack	East Side, West Side (1927)	Dining Extra	-1
5600787	Labmeier, Wilfried	Tatort - Der Prügelknabe (2003) (TV)	Fritz Wagner	-1
5601532	Lacey, Ronald (I)	Face to Face (1990) (TV)	Dr. Brinkman	-1
5602586	Ladd, Alan (I)	Santiago (1956)	Cash Adams	1
5604924	Lahri, Sunil	Ramayan	Laxman	-1
5602678	Lade, Bernd Michael	Dumm gelaufen (1997)	Thorsten Harm	1
5602717	Lade, Bernd Michael	Tatort - Tod aus der Vergangenheit (1992) (TV)	Unterkommissar Kain	2
5603088	Laezza, Luigi	Tempest (1982)	Sailor	14
5603114	Lafaye, Didier	Parfum d'Yvonne, Le (1994)	Concierge at the Hermitage	12
5603126	Lafayette, John	Black Thunder (1997)	Demuth	-1
5603670	Lafront, Jean	Em Cada Coração um Punhal (1970)	(segment "Transplante de Mãe")	4
5604129	LaGioia, John	Edge of Night, The	Johnny Dallas (1973-1977)	11
5605671	Laine, Aarne	Vatsa sisään, rinta ulos! (1959)	Maj. Helminen	-1
5606234	Lake, Arthur (I)	Tiddly-Winks (1927)		1
5607136	Lally, Mike (I)	I Was a Communist for the FBI (1951)	Communist Board Member	-1
5607288	Lally, William (I)	Respect the Law (1941)	Cop	-1
5607533	Lam, Ching-Ying	Jiang shi zhi zun (1987)	Master Gau	-1
5607592	Lam, Chua	Jin ye bu she fang	Host	3
5608603	Lamarca, Lucas	Solo y conmigo (2000)		-1
5608386	Lambert, Doug	General Hospital	Eddie Weeks #2 (1963-1965)	5
5609465	Lambie, Joe	Edge of Night, The	Logan 'Swifty' Swift #1 (1977-1981)	11
5609467	Lambie, Joe	General Hospital	Gregory Malko (1983)	5
5609652	Lamchimchi, Mohamed	Caja 507, La (2002)	Abuelo Tánger	35
5609743	Lammela, Lasse	Käyntikorttini... (1964)		-1
5609993	Lamont, Maurice	Lionheart (1990)	Street Gang Member #2	49
5610499	Lampley, Jim	Comrades of Summer, The (1992) (TV)	Radio Announcer	22
5610626	Lamprecht, Marcin	Moje miasto (2002) (TV)	Bolek Dabrowski	12
5611455	Landa, Juan de	Familia Vila, La (1950)	Teófilo Torrens	-1
5611763	Landau, Martin	Real Bullets (1990)	Sallini	3
5611914	Lander, David L.	Ava's Magical Adventure (1994)		-1
5611974	Lander, Eric	General Hospital	Dr. Richard Kirby	-1
5612578	Landis, Monte	General Hospital	Saura (1985)	5
5613239	Landzaat, Andre	Breakin' (1984)	Waiter	20
5613244	Landzaat, Andre	General Hospital	Anthony 'Tony' Cassadine (1981)	5
5593664	Kusanagi, Kojiro	Akitsu onsen (1962)	Army	-1
5613696	Lane, Charles (I)	Three Men on a Horse (1936)	Cleaner	-1
5614339	Lane, Richard (I)	Killers, The (1964)	Demolition-Derby announcer	-1
5614369	Lane, Richard (I)	Respect the Law (1941)	George Johnson	2
5614722	Lang, Archie	General Hospital	Forbes (1982)	5
5615163	Lang, Peter (II)	Auction Block, The (1917)	Peter Knight	13
5616261	Langdon, Harry (II)	Making of a Male Model (1983) (TV)	Miles	-1
5617023	Langton, Basil	General Hospital	Dr. Borden (1984)	5
5617062	Langton, Jeff	Lionheart (1990)	Cynthia's Fighter	43
5618377	Lanysz, Eduard	Perle von Tokay, Die (1953)		24
5618961	Lapinski, Jerzy	Moje miasto (2002) (TV)	Uncle Jasio	10
5619188	Lapon, Raymond	Erlkönig, Der (1931)		-1
5619253	Laporte, René	Yank in Viet-Nam, A (1964)	Father François	9
5619540	Lara, Vicente	Río de las ánimas, El (1964)		-1
5619987	Larive, Léon	Bach détective (1936)	L'aubergiste	29
5620337	Larkin, John (VI)	Edge of Night, The	Dist. Atty. Mike Karr #1 (1956-1961) (original cast)	6
5620409	Larnaout, Slim	Miel et cendres (1996)	Hassan	4
5620916	Larrañaga, Fernando	Reportero, El (1987)		2
5679086	Livanov, Igor	Samozvantsy		5
5621057	Larrieu Jr., Fernand A.	Greatest, The (1977)	Grocer	27
5622019	Larssen, Tryggve (I)	Ingen mans kvinna (1953)	Lapp-Nicke	8
5622041	Larsson, Adam	Prins hatt under jorden (1980)		20
5622229	Larsson, Uno	Ingen mans kvinna (1953)	Verger	-1
5622692	LaSalle, Martin	Reed, México insurgente (1973)		-1
5622559	Larumbe, Ismael	Ladrona, La (1954)		-1
5622760	Lasater, Jason	Carnal Passion (2001) (V)	Party Guest	19
5622921	LaShelle, Happy	Bobby Jones, Stroke of Genius (2004)	Nell Woodruff	31
5623021	Laska, Ray	General Hospital	Russ Krimpton (1981)	5
5623293	Lassen, Alf	Ta' det som en mand, frue! (1975)	Erik Rasmussen	2
5623800	Latell, Lyle	I Was a Communist for the FBI (1951)	Cahill, FBI Officer	-1
5623866	Latessa, Dick	Edge of Night, The	Noel Douglas #2 (1975-1976)	11
5624209	Lau, Andy	Zhong huan ying xiong (1991)	Hero Hwa	-1
5624278	Lau, Chau Sang	Jiang shi zhi zun (1987)	Action Director	-1
5624530	Lau, Shun	Jiang shi zhi zun (1987)	Shek Kin	-1
5625125	Lau, Siu-Ming	Lei ting zhan jing (2000)	Uncle Ma	8
5625337	Laudenbach, Philippe	4 aventures de Reinette et Mirabelle (1987)	Le garçon de café	5
5625352	Laudenbach, Philippe	Dame de lieudit, La (1993) (TV)	Le préfet	5
5625360	Laudenbach, Philippe	Entre chats et loups (1985) (TV)	Le commissaire	9
5625681	Laughlin, John (I)	Dead Wrong: The John Evans Story (1984) (TV)	John Evans III	1
5625873	Laughton, Eddie	Boobs in Arms (1940)	Man in Apartment H	-1
5626085	Laumord, Gilbert	Coeurs de couleur (1989)	Le père de Mano	4
5626146	Launders, Perc	I Was a Communist for the FBI (1951)	Plant Worker	-1
5626179	Launders, Perc	They Won't Believe Me (1947)	Police Stenographer	-1
5626687	Laurence, Oswald	Fiction Makers, The (1968)	Reporter	21
5627321	Laurie, John (I)	Happy Go Lovely (1951)	Jonskill	13
5627774	Lausch, Heinz	Tatort - Rattennest (1972) (TV)		18
5627968	Lauter, Ed	Dead Wrong: The John Evans Story (1984) (TV)	Mr. Evans	3
5628267	Lauterbach, Heiner	Tatort - Der Tausch (1986) (TV)	CIA-Agent	-1
5628627	Lavant, Denis	Don Juan (1998)	Pierrot	6
5629132	Lavine, David	Nobody's Perfect (2002)	John	5
5629829	Lawford, Christopher	General Hospital	Sen. Jordan (2002-2003)	5
5630052	Lawler, Brian (II)	WWF Attitude (1999) (VG)	Brian Christopher	-1
5631310	Lawrence, Marc (I)	Tall, Dark and Handsome (1941)	Louie	9
5631920	Laws, John	Ned Kelly (1970)	Kennedy	-1
5631959	Lawson, Arnold	Virginian, The (2000) (TV)	Wiggins	28
5632240	Lawson, Richard (I)	Pandora's Clock (1996) (TV)	Captain Daniel Robb	3
5632493	Lax, Francis	Sainte farce, La (1972) (TV)	Gilles	10
5632673	Layde, Pat	Home Is the Hero (1959)	Mr. Green	9
5633051	Lazareff, Serge	Ned Kelly (1970)	Wild Wright	16
5633432	Lazenby, George	General Hospital	Reginald Durban (1982)	5
5633441	Lazer, Peter	Harvest (1953) (TV)	Billy	14
5633715	Le Baron, Eddie	Lady, Let's Dance (1944)	And His Orchestra	-1
5633772	Le Bihan, Samuel	Pourquoi t'as fait ça? (2001)		-1
5634043	Le Castel, Jean-Yves	Assman 5 (1998) (V)		-1
5634107	Le Clerc, John	Edge of Night, The	Guy Tavernier (1983)	11
5634290	Le Duke, Harrison	Laser Moon (1993)	Zane Wolf	-1
5634638	Le Masne, Christophe	À la vitesse d'un cheval au galop (1992)	Danny	35
5634693	Le May, Howard	Teenage Mother (1968)	Tony Michaels	-1
5635002	Le Moyne, Charles	Square Shooter (1935)	Baxter rider	-1
5635463	Le Sueur, Hal	Respect the Law (1941)	Reporter	-1
5635549	Le Vigan, Robert	En douane (1932)		-1
5636096	Leak, Justice	Bobby Jones, Stroke of Genius (2004)	Guy On Street	38
5636327	Lear, Norman	Intimate Portrait: Bonnie Franklin (2003) (TV)	Himself	-1
5636388	Leary, Denis	Do Not Disturb (1999)	Simon	3
5637181	LeBaron, Bert	They Won't Believe Me (1947)	Joe Pots	-1
5637193	Lebas, Michel	Amoureux, Les (1994)	Eddy Chamberlain	14
5637585	LeBell, Gene	General Hospital	Harbormaster (2001)	5
5638611	LeClerc, Jean (I)	Edge of Night, The	Gui Tavenier (1983)	11
5639123	Lederer, Otto	Forgotten (1933)	Uncle Adolph	8
5639221	Ledesma, Yam	Basta Tricycle Driver... Sweet Lover (2000)		-1
5639572	Leduc, Jean-Marie	Conte à regler (1978)		-1
5639928	Lee, Bill (IV)	Hey There, It's Yogi Bear (1964)	Yogi Bear (singing voice)	-1
5640048	Lee, Bruce (I)	Ai xia ji (1955)		-1
5640098	Lee, Bruce (I)	Zao zhi dang cu wo bu jia (1956)		-1
5640399	Lee, Christopher (I)	Man Who Could Cheat Death, The (1959)	Dr. Pierre Gerard	3
5640534	Lee, Chuen Sing	Ta lai zi hu zhi ming shi (1994)		-1
5640939	Lee, David (XIII)	I Could Go on Singing (1963)		12
5641272	Lee, Eugene 'Porky'	Our Gang Follies of 1936 (1935)	Porky	-1
5641757	Lee, Irving	Pequeños gigantes, Los (1960)		-1
5641759	Lee, Irving Allen	Edge of Night, The	Det. Calvin Stoner (1977-1984)	11
5644175	Leeds, Peter	Atomic Kid, The (1954)	Agent Bill	9
5644372	Leenhardt, Vincent	Diva et pianiste (2000)		-1
5644511	Leeson, John	Rainbow	Bungle (1972-1973)	-1
5644737	Lefebvre, Jean (I)	Sainte farce, La (1972) (TV)	Dupin	2
5645509	LeGault, Lance	Knight Rider (1982) (TV)	Security Officer Gray	5
5628928	LaVetta, Bob	Deadlock: A Passion for Murder (1997)	Weller	12
5629094	Lavilla, F. Ignacio	Reed, México insurgente (1973)		-1
5646461	Lehembre, Philippe	À la vitesse d'un cheval au galop (1992)	Guy Breteuil	12
5646730	Lehmann, Manfred	Tatort - Schlußverkauf (1978) (TV)	Heinz Brücken	-1
5647008	Lehnert, Norman	9:30 (2003)	Klaus	-1
5648095	Leigh-Hunt, Ronald	General Hospital	Dr. Robert Thorne (1975)	-1
5648451	Leisner, Otto	H.O.P.L.A.	Himself - Host (1979-1982)	1
5648602	Leitao, Adrien	Cheveux de ma mère, Les (2004)		4
5648722	Leite, Paulo	Palácio de Vênus (1980)		-1
5649377	Lemaire, Philippe	Goldsucher von Arkansas, Die (1964)	Jim Donavan	9
5649520	Lemay, André	Emmanuelle 5: A Time to Dream (1994)	Raymond	-1
5650830	Lencinas, Hernán	Asesinato en tres variantes con dos incógnitas y un maniquí (1987)		-1
5650937	Lengbach, Georg	Katzensteg, Der (1915)	Boleslav, Barons Sohn	2
5651037	Leni, Paul	Katzensteg, Der (1915)		10
5651233	Lennert, Ray	Trauma (1962)	Treasury Agent	9
5651800	Leon	Flying Blind (1990) (TV)	Larry Brown	5
5652966	Leonard, Sheldon	Tall, Dark and Handsome (1941)	Pretty Willie	5
5653568	Leonilson	Spray Jet (1986)	Himself	-1
5654551	Lerchbaumer, Peter	Fast perfekt verlobt (2003) (TV)	Havelka	7
5654607	Lerche, Arnfried	Tatort - Rattenlinie (2000) (TV)		15
5654905	Leritz, Lawrence R.	Edge of Night, The	Dancer (1983)	11
5655097	Lerner, Michael (I)	Comrades of Summer, The (1992) (TV)	George	3
5656009	LeSaint, Edward	Square Shooter (1935)	Forty-Niner Brown	-1
5656467	Leslie (II)	2 On 1 (1998) (V)		-1
5656597	Leslie, John (I)	Addicted to Love (1988)		-1
5656810	Leslie, John (I)	Swedish Erotica 4 (1981)		-1
5657848	Lester, William (II)	I Was a Communist for the FBI (1951)	Brown	-1
5658491	Letts, Barry	Voices, The (1955) (TV)	Dr Luden	-1
5658716	Leung Chiu Wai, Tony	Zhong huan ying xiong (1991)	Chiang Ho-Chie	-1
5658809	Leung, Aaron	Jawbreakers (2001) (V)		-1
5659367	Levene, Sam (I)	Grand Central Murder (1942)	Inspector Gunther	6
5659392	Levene, Sam (I)	Three Men on a Horse (1936)	Patsy	6
5659570	Lever, Johnny	Santaan (1993)		5
5659808	Levett, Harold	East Side, West Side (1927)	Engineer	18
5659824	Levey, Elliot	Lump in My Throat, A (2001) (TV)	Shmuley	-1
5660123	Levin, Stu	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Jury Foreman	27
5660624	Levitsky, Boris	Käyntikorttini... (1964)		-1
5660838	Levy, David A.	Chickboxin Underground (1999)	Janus	8
5660948	Levy, Felipe	Palácio de Vênus (1980)		-1
5661256	Levykh, Michael	Comrades of Summer, The (1992) (TV)	Leather Worker	24
5661400	Lewandowski, Marek (I)	Weryfikacja (1987)	Znamierowski	9
5661620	Lewinger, Ilan	Rave (2000)	Promoter	31
5661762	Lewis, Ben Porter	Serpent and the Sandman (1999) (V)		-1
5661769	Lewis, Bill (V)	Real Bullets (1990)	Man with Crowbar	50
5661901	Lewis, David (III)	General Hospital	Edward L. Quartermaine #1 (1978-1993)	5
5661909	Lewis, David (IV)	Comrades of Summer, The (1992) (TV)	Marine Pitcher	25
5662473	Lewis, George J.	Santiago (1956)	Pablo	8
5662575	Lewis, Gilbert	General Hospital	Orval Leeds (1995)	5
5662632	Lewis, Harrison	Patty (1962)	Bartender	17
5663933	Lewis, Thomas (II)	Bobby Jones, Stroke of Genius (2004)	Bobby Jones, Age 14	13
5665552	Li, Yusheng	Shadow Magic (2000)	Lord Tan (Tan Xinpei)	7
5665737	Liang, Yin (II)	Huan le ren jian (1959)	Zhang Yuren	-1
5665784	Liaros, Pavlos	Jack o kavalaris (1979)	Nikos	4
5665889	Libby, Brian	Platoon Leader (1988)	Roach	8
5667115	Liebl, Roland	Tatort - Schwarzer Advent (1998) (TV)		-1
5667772	Lierck, Werner	Traum des Hauptmann Loy, Der (1961)		-1
5669695	Lima, Medeiros	Em Cada Coração um Punhal (1970)	(segment "O Filho da Televisão")	17
5669742	Lima, Tony	Enfant du secret, L' (1996) (TV)		-1
5670166	Linaweaver, Brad	Deadlock: A Passion for Murder (1997)	Bit	-1
5670457	Lincoln, Scott	General Hospital	Joseph Atkins (1992)	5
5671178	Lindell, Jan	Prins hatt under jorden (1980)	King	2
5671488	Linder, Cec	Edge of Night, The	Sen. Benjamin 'Ben' Travis #2 (1974)	11
5672027	Lindgren, Sten (I)	Ingen mans kvinna (1953)	Voice of Jan Ersson	-1
5672204	Lindinger, Hugo	Meister Eder und sein Pumuckl	Butler	-1
5672272	Lindland, Rick	General Hospital	Valet (1996)	5
5672473	Lindner, Wolff	Tatort - Kindstod (2001) (TV)	Gefängnisdirektor	13
5692561	Loraine, Mr.	Just Jim (1915)		-1
5673335	Lindstrom, Jon	General Hospital	Dr. Ryan Chamberlain (1992-1995)/Dr. Kevin Collins (1993-1997, 1998)	5
5673341	Lindstrom, Leif	Patty (1962)	Dr. Neilson	12
5674039	Lingen, Theo	Premiere (1936)	Inspizient Dornbusch	4
5674196	Lingk, Wolf-Dieter	Tatort - Tod aus der Vergangenheit (1992) (TV)		16
5674495	Linkman, Wolfgang	Real Bullets (1990)	Wolfgang	10
5674510	Linkmann, Ludwig	Maulkorb, Der (1958)	Kanzler	15
5674533	Linko, Leevi	Mies Marseillesta (1937)	Mehto	10
5675741	Lipman, David (I)	Beer (1985)	Ernie	17
5676332	Lipton, Lynn	Comedy Tonight	Regular	-1
5676571	Lisewski, Stefan	Traum des Hauptmann Loy, Der (1961)		-1
5676626	Lisicki, Stefano	Moglie in vacanza... l'amante in città, La (1980)		15
5677293	Litel, John	Valley of the Giants (1938)	Hendricks	8
5677506	Litt, Richard	Beer (1985)	Brimley	30
5677729	Little, David	Little Women in Transit (1996)	Father	4
5678077	Littlefield, Lucien	Lady, Let's Dance (1944)	Snodgrass	6
5678283	Littlejohn, Jesse	Anarchy TV (1997)	Eddie	17
5678304	Littler, Craig	General Hospital	Dr. Todd Levine (1978)	5
5678369	Littman, Julian	Rainbow	Singer (1973)	-1
5678937	Liu, Zhenzhong	Huan le ren jian (1959)	He Ping	-1
5678818	Liu, Peiqi	Shadow Magic (2000)	Master Ren (Ren JingFeng)	4
5678878	Liu, Wei (III)	Qiu tian de yin xiang (1983)	Su Chi	-1
5680141	Liñán, Eduardo	Valentina	Sargento Mijares	-1
5680469	Llopis, Francisco	Tres historias de amor (1978)		5
5680611	Lloyd Pack, Charles	Man Who Could Cheat Death, The (1959)	Man At Private View	-1
5680859	Lloyd, Cory	Substitute Wife, The (1994) (TV)	Nathan	5
5681759	Lloyd, George (I)	Torchy Plays with Dynamite (1939)	Harp, Denver Henchman	10
5682273	Lloyd, Patrick	Real Bullets (1990)	Pat	7
5682737	Lo Verso, Enrico	Amiche del cuore, Le (1992)	Lucio	-1
5682738	Lo Verso, Enrico	Amore imperfetto, L' (2002)	Sergio	1
5682829	Lo, Ken	Lei ting zhan jing (2000)	Ken	9
5663941	Lewis, Thyme	Trials of Life (1997) (TV)	Melvin Grantos	2
5683259	Lober, David	Happy Go Lovely (1951)	Principal Dancer	19
5683325	Lobo, René	Cowboy uit Iran (1999) (TV)		-1
5683378	Loc, Hoang Vinh	Yank in Viet-Nam, A (1964)	Chau	7
5683794	Locke, Philip	Fiction Makers, The (1968)	Frug	5
5683870	Lockerman, Brad	General Hospital	Shep Casey (1990)/Casey Rogers (the Alien) (1990)	5
5684284	Lockwood, Gary	Wild Pair, The (1987)	Capt. Kramer	4
5684500	Lockwood, Preston	At Bertram's Hotel (1987) (TV)	Canon Pennyfather	9
5684967	Lodge, Roger	General Hospital	James (1992)	5
5685818	Logan, James (I)	Two Roaming Champs (1950)		-1
5686068	Logan, Tom (II)	General Hospital		5
5686194	Loggia, Robert	Pandora's Clock (1996) (TV)	CIA Director Jonathan Roth	18
5686451	Logue, Donal	Medicine Ball	Danny Macklin	-1
5687138	Lokey, Ben	Breakin' (1984)	Franco	4
5687168	Loktev, Aleksei	Ya shagayu po Moskve (1963)	Volodya	1
5687348	Lom, Herbert	Mister Jerico (1970) (TV)	Victor Russo	3
5687512	Lomas, Johnny	Team One (2003)	Johnny Lomas	-1
5687625	Lombard, Michael	Edge of Night, The	Sandy Buchanan (1968-1969)	11
5687639	Lombard, Peter	Tempest (1982)	Mackenzie	17
5687905	Lombardi, Sandro	Miei più cari amici, I (1998)		-1
5688661	London, Roy	Edge of Night, The	Roger Castermore #2 (1970)	11
5689149	London, Tom	Trails of the Golden West (1931)		3
5689300	Long Jr., William	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Sergeant Cherney	17
5689612	Long, Jack (I)	Man from New Mexico, The (1932)	Hank	11
5690667	Longfield, Michael (I)	Edge of Night, The	Tank Jarvis (1978-1979)	11
5690992	Longval, Jean-Marc	À la vitesse d'un cheval au galop (1992)	Un gendarme	49
5691175	Lonsdale, Michael (I)	Adieu (2003)	Serge	1
5691216	Lonsdale, Michael (I)	Don Juan (1998)	Don Luis	7
5692145	Lookinland, Mike	Bradys, The	Bobby Brady	8
5692199	Loomis, Rod	General Hospital	Gen. Konrad Kaluga (1981)	5
5692239	Looney, Peter	General Hospital	Buster Johnson (1982)	5
5692395	Lootze, Jürgen	Tatort - Rattennest (1972) (TV)		15
5692467	Lopes, Barroso	Pai Tirano, O (1941)	Lopes	4
5692485	Lopes, Djalma	Férias de Laura (1986)		-1
5691524	Lopes, Murilo	Tudo é Música (1957)		-1
5691936	Lopinski, Bruno	Katzensteg, Der (1915)		9
5692980	Lord, Steve (I)	New Orleans After Dark (1958)	Blackie	12
5693379	Lorenzo, Louis (I)	General Hospital	Chuck Cerullo (1994)	5
5694867	Lottimer, Ed	Breakin' (1984)	Judge's Assistant	14
5696574	Louwe, Gert-Jan	Do Not Disturb (1999)	Wrong Mulder	-1
5696659	Louzan, Walter	Titanes en el ring contraataca (1983)		-1
5696676	Louzano, Milton	Entre Mulheres e Espiões (1961)		7
5696079	Love, Victor	Gun, a Car, a Blonde, A (1997)	Bobby/The Black Chinaman	2
5696200	Lovejoy, Frank	I Was a Communist for the FBI (1951)	Matt Cvetic	1
5696858	Lovell, Nigel	Ned Kelly (1970)	Capt. Standish	19
5697167	Lovgren, David	Comrades of Summer, The (1992) (TV)	Sasha	23
5697383	Low, Carl (I)	Edge of Night, The	Martin Sider (1964)	11
5682920	Lo, Lieh	Long Wei shan zhuang (1980)		-1
5697686	Lowe, Derek	Critical Assembly (2003) (TV)	CSU Man	-1
5697874	Lowe, John B.	Critical Assembly (2003) (TV)	Prof. Miller	-1
5698053	Lowe, Steven	Junky's Christmas, The (1993)	Christmas dinner friend	-1
5698255	Lowens, Curt	General Hospital	Claude Donnet (1989)	5
5698305	Lower, Geoffrey	Trials of Rosie O'Neill, The	Udell Correy	-1
5698678	Lowry, Morton (I)	Tarzan Finds a Son! (1939)	Mr. Richard Lansing	9
5699508	Lubaszenko, Olaf	Amoureux, Les (1994)	Tomek	3
5700086	Lucas, Don	General Hospital	Don (1987-1990)	5
5700281	Lucas, Jonathon	Happy Go Lovely (1951)	Principal Dancer	20
5700327	Lucas, José	Palácio de Vênus (1980)		-1
5700348	Lucas, Laurent	Adieu (2003)	Chrétien	3
5700945	Lucas, William (I)	Shadow of the Cat (1961)	Jacob Venable	5
5701069	Lucchetti, Alfred (I)	Telaraña, La (1990)		-1
5701442	Luchini, Fabrice	4 aventures de Reinette et Mirabelle (1987)	Le marchand de tableau	15
5701554	Lucia, Charles	General Hospital	Leopold Taub (1991)	5
5701750	Lucio, Lewis	Real Bullets (1990)	Sheriff's Deputy	59
5702759	Luft, Joey	I Could Go on Singing (1963)	Extra on boat	-1
5703968	Lukas, Florian	Dumm gelaufen (1997)	Manuel	9
5704566	Luke, Keye	General Hospital	The Ancient One (1985)	5
5704870	Lukács, Sándor	Amerikai cigaretta (1977)	Zoltánfi	5
5707278	Luong, Nam	Yank in Viet-Nam, A (1964)	Cung	15
5708144	Lurville, Armand	Bach détective (1936)	Lesueur	6
5708838	Lutkiewicz, Gustaw	Zycie za zycie (1991)	Konior	4
5710054	Lygizos, Danos	Jack o kavalaris (1979)	General of the police	8
5710181	Lyles, A.C.	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Himself	-1
5710526	Lynch, Jimmy (I)	Highway 61 (1991)	Rock Band Member #3	31
5710728	Lynch, Michael (I)	General Hospital	Connor Olivera (1991-1992)	5
5710740	Lynch, Peter (I)	Highway 61 (1991)	Bingo Angry Man	22
5711293	Lynn, George	Grand Central Murder (1942)	Paul Rinehart	12
5711408	Lynn, Jeffrey	Edge of Night, The	Dist. Atty. Mike Karr (1971) (temporary replacement)	11
5711459	Lynn, Jonathan	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5712139	Lyons, Eddie	Her Friend, the Doctor (1916)		2
5712532	Lyons, Robert F.	Platoon Leader (1988)	Sgt. Michael McNamara	2
5712544	Lyons, Scott (I)	Marine Crucible (1997)		-1
5712853	Lyter, George	General Hospital	Corey Blythe (1987)	5
5713387	Lähteenmäki, Leo	Mies Marseillesta (1937)	Petteri	1
5713405	Lähteenmäki, Pentti	Käyntikorttini... (1964)		-1
5713415	Länsiö, Jaani	Angela ja ajan tuulet	Jakob Anders, as child	-1
5713430	Lätsch, Joachim	Tatort - Tod aus der Vergangenheit (1992) (TV)		15
5713697	Léger, Roger	Sous les draps, les étoiles (1989)		-1
5714354	López Ibarra, Pueblo	Mujer de Benjamín, La (1991)	Kid 1	-1
5714528	López Moctezuma, Carlos	Perra, La (1967)	Walter Johnson	3
5714733	López Rojas, Eduardo	Mujer de Benjamín, La (1991)	Benjamín	1
5714743	López Rojas, Eduardo	Reed, México insurgente (1973)		-1
5714848	López Tarso, Ignacio	Amantes frios, Los (1978)	Hilario (segment "El Soplador del vidrio")	1
5715063	López Vázquez, José Luis	Monosabio, El (1977)	Juanito	1
5715450	López, Fermín	Monosabio, El (1977)	Taylor	-1
5716191	Löw, Victor	Do Not Disturb (1999)	Cook	-1
5717219	Ma, Shida	Huan le ren jian (1959)	He Zhenggang	-1
5719216	MacDonald, J. Farrell	East Side, West Side (1927)	Pug Malone	3
5719402	MacDonald, J. Farrell	Square Shooter (1935)	Sheriff	6
5719563	MacDonald, Kenneth (I)	Booty and the Beast (1953)	Icabod Slipp	5
5719746	MacDonald, Kenneth (III)	Shadows of Chinatown (1926)	Jimmy King	1
5719881	MacDonald, Ryan (I)	General Hospital	Phillip Harper (1982)	5
5719963	MacDonald, Travis	They Nest (2000) (TV)	Enoch Piper	7
5720106	MacDonald, William (II)	Virginian, The (2000) (TV)		8
5720130	MacDonnell, Ray	Edge of Night, The	Philip 'Phil' Capice #3 (1961-1969)/John Lambert (1962)	11
5720305	Mace, Fred	Drummer's Vacation, The (1912)		1
5720405	Mace, Tut	Big Idea, The (1934)		8
5720620	MacFarlane, Bruce (I)	Torchy Plays with Dynamite (1939)	Bugsie, Denver Henchman	9
5721155	Machado, Armando	Pai Tirano, O (1941)	Machado	8
5721418	Machalica, Piotr	Weryfikacja (1987)		14
5721742	Machua, Wilfred	Face to Face (1990) (TV)	Diana's Student	-1
5721755	Machuel, Thierry	Adieu (2003)	L'organiste	13
5722491	Mack, Gene	Beer (1985)	Mack Truck Mackenzie	37
5726774	Madanpuri	1857 (1946)		-1
5722543	Mack, Guy (I)	General Hospital	Dr. Patrick O'Connor (1985-1988)	5
5723233	MacKay, Barry	Private Secretary, The (1935)	Douglas Cattermole	2
5723410	MacKay, Jeff	Trials of Life (1997) (TV)	The Hobo	-1
5723473	MacKay, Michael Reid	Unknown Cyclist, The (1998)	Luc Pierre	14
5723548	Macken, Walter	Home Is the Hero (1959)	Paddo O'Reilly	1
5724523	MacLane, Barton	Thunderbirds (1952)	Sgt. Durkee	5
5724732	MacLean, Peter	General Hospital	Dean (1982)	5
5725073	MacMillan, William	General Hospital	Boris Roskov (1984)	5
5725084	MacMoy, Alain	Dame de lieudit, La (1993) (TV)		-1
5725360	Macnee, Patrick	Mister Jerico (1970) (TV)	Dudley Jerico	1
5725495	MacNeill, Peter (I)	Vow to Kill, A (1995) (TV)	Sam Flowers	4
5725554	Macniven, David	Reaction Stick (1998)	Dave	1
5726510	Macy, Bill	Edge of Night, The	Cab driver (1966)	11
5726669	Macía, Miguel	Grandes ilusiones		5
5726877	Madaula, Ramón	Telaraña, La (1990)		-1
5727114	Madden, Tommy (II)	Muppet Movie, The (1979)	One-Eyed Midget	28
5728043	Madrid, Robert	Black Thunder (1997)	Stone	6
5728512	Madura, Pascal	Don Juan (1998)	Cavalier de Don Alonse	27
5729308	Magalona, Enrique	Yank in Viet-Nam, A (1964)	Andre	2
5729367	Magaloni, Ignacio	Ángeles de Puebla, Los (1968)	Artista	14
5729416	Magarian, Andrew	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Bystander	28
5729917	Maggiani, Serge	Ginevra (1992)	Lancelot	-1
5730121	Maggio, Enzo	Vita da cani (1950)		8
5730195	Maghfurian, Abbas	Tatort - Der Tausch (1986) (TV)	Wirt	10
5730369	Magnan, Philippe	Parfum d'Yvonne, Le (1994)	Pulli	7
5731035	Magrill, George	I Was a Communist for the FBI (1951)	Bit Part	-1
5732010	Maher, Frank (I)	Fiction Makers, The (1968)	Rip Savage	11
6628891	Welles, Orson	Muppet Movie, The (1979)	Lew Lord	21
5716376	Löwinger, Paul	Noch minderjährig (1957)		-1
5716455	Löwitsch, Klaus	Tatort - 3:0 für Veigl (1974) (TV)	Johann Strasser	12
5733718	Maillard, Henri	Ce que les Flots Racontent (1916)		2
5733738	Maillard, Marcel	They Nest (2000) (TV)	Al Crump	11
5734507	Maitland, Michael (I)	Edge of Night, The	Tommy Hatcher (1967)	11
5734526	Maiz, Jose	Pequeños gigantes, Los (1960)		-1
5734909	Majon, Juan	Monosabio, El (1977)	Contractor	25
5735243	Majors, Mike	Swami MD #1: Coming to America (1999) (V)		-1
5735455	Maka, Karl	Jin ye bu she fang	Guest	-1
5736134	Makláry, Zoltán	Amerikai cigaretta (1977)	The Scavenger	2
5736173	Makláry, Zoltán	Heten, mint a gonoszok (1943)	Kincses bácsi,ezredkürtös	-1
5737166	Malaspina, Michele	Vita da cani (1950)		9
5737611	Malbert, Albert	Bach détective (1936)	Le gendarme	28
5738178	Maldonado, Norman	General Hospital	Marino #1 (1995-1998)	5
5738974	Malikov, Grigori	34-j skoryj (1981)		10
5740231	Malloy, Larkin	Edge of Night, The	Jefferson 'Jeff' Brown (1980-1981)/Schuyler 'Sky' Whitney (1981-1984)	11
5740429	Malmsjö, Jan	Flicka med melodi (1954)	Bengt Bergvall	4
5740528	Malmsten, Birger	Ingen mans kvinna (1953)	Erland Klemensson	2
5740668	Malodobry, Pavel	Amoureux, Les (1994)	Kristof	18
5740685	Malonda, Salvador	Páginas en negro, Unas (1950)		-1
5740758	Malone, John James	Face in the Frame, The (1998)	William DeVoir	3
5741068	Maloney, Leo D.	Man's Soul, A (1914)		3
5741174	Maloney, Padraic	Only Fools Buy Horses	'Traverse' Owner	-1
5741303	Malouhos, Giannis	Jack o kavalaris (1979)	Andre o vlakas	6
5742386	Mammootty	Jagratha (1989)	Sethurama Iyer (Dy.s.p)	-1
5742657	Mamouni, Samir	Real Bullets (1990)		-1
5742900	Manaloto, Smokey	Basta Tricycle Driver... Sweet Lover (2000)		2
5743058	Manchen, Klaus	Tatort - Der vierte Mann (2004) (TV)		-1
5743312	Mancini, Ric	General Hospital	Nick (1989)	5
5743323	Mancino, Ric	Breakin' (1984)	Joe the Cook	16
5743491	Mandan, Robert	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	-1
5743496	Mandan, Robert	Edge of Night, The	Nathan Axelrod (1963)	11
5743743	Mander, Miles	Laddie (1940)	Mr. Pryor	6
5743842	Mandeville, William	Cap'n Eri (1915)		2
5744750	Manfredi, Nino	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Oreste Sabatini	9
5744768	Manfredi, Nino	Trastevere (1971)	Carmelo Mazzullo	1
5744920	Mangano, Anthony	General Hospital	Louie Cerullo (1994)	5
5748682	Manolache, Dinu	Cine ma striga? (1979)	Vasile	4
5748020	Mansfield, John (I)	General Hospital	Crenshaw (1991)	5
5748159	Manske, Wilhelm	Tatort - Der Fremdwohner (2002) (TV)	Dr. Jur. Manz	9
5748221	Manson, Alan	Edge of Night, The	Vic Price (1964)/Ken Emerson (1964-1968)	11
5748305	Manson, Maurice	General Hospital	Hank Pinkham (1969)	5
5748356	Manson, Paul (II)	Yeux ouverts, Les (1913)		-1
5748364	Manson, Ted	Bobby Jones, Stroke of Genius (2004)	Client	-1
5749005	Mansur, Sérgio	Semideus, O	Rui	-1
5749051	Mantee, Paul	Greatest, The (1977)	Carrara	13
5732316	Mahlich, Holger	Tatort - Leiche im Keller (1986) (TV)	Herbert Koslowski/Karl Koslowski	3
5732808	Mahoney, Tom (I)	Son-Daughter, The (1932)	Grimacing Policeman	-1
5732962	Mahu, Jos	Speelmeisje (1968)		-1
5750556	Mapother, William	Unknown Cyclist, The (1998)	By-Stander	15
5750640	Maquin, Loïc	Amoureux, Les (1994)	Ronan	4
5751063	Maraschal, Launce	Voices, The (1955) (TV)	Crandell	-1
5751286	Marble, Anthony	Warning: Parental Advisory (2002) (TV)	Record Store Clerk	19
5751399	Marc, Xavier	Años perdidos, Los		-1
5751820	March, Craig	They Nest (2000) (TV)	Paramedic	30
5751932	March, Hal	Atomic Kid, The (1954)	Agent Ray	10
5752218	Marchand, Henri	Bossu, Le (1934)		-1
5752561	Marchesson, Jean-Luc	Cheveux de ma mère, Les (2004)		7
5752582	Marchetti, Alfredo (I)	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Colonel Zappavigna	-1
5753193	Marcos, Clóvis	Palácio de Vênus (1980)		-1
5753633	Marcus, Mr.	Black Butt Sisters Do New Orleans, The (1995) (V)		5
5753814	Marcus, Mr.	Isis Blue 2 (1998) (V)		-1
5754097	Marcías, Ángel	Pequeños gigantes, Los (1960)		-1
5754224	Marecek, Heinz	Weiße Stadt, Die (1980) (TV)		-1
5754574	Mares, Václav (I)	Waterloo po cesku (2002)		17
5754831	Margara, Walter	Moglie in vacanza... l'amante in città, La (1980)		11
5755314	Margolis, Matthew	Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Host	1
5756008	Marielle, Jean-Pierre	Parfum d'Yvonne, Le (1994)	Dr. Rene Meinthe	1
5756690	Marinaro, Ed	Edge of Night, The	Packy Dietrich (1977)	11
5756771	Marinelli, Joe	General Hospital	Sorel (1999)	5
5757034	Marino, Ben	Making of a Male Model (1983) (TV)	Tony	-1
5757053	Marino, Dennis	Edge of Night, The	Packy Dietrich (1977)	11
5757144	Marino, Maurizio	Blume der Hausfrau, Die (1999)		-1
5757565	Marion, Oskar	Gebannt und erlöst (1919)		-1
5757954	Marischka, Georg	Mein Freund, der Scheich (1981)		-1
5758198	Mark, D. Neil	They Nest (2000) (TV)	Harbor Patrolman	18
5758356	Mark, Michael (II)	This Pretty Planet: Tom Chapin in Concert (1992) (V)	Himself	3
5758786	Markle, Stephen	Edge of Night, The	Lt. Ted Loomis (1982)	11
5759277	Marks, Freddy	Rainbow	Freddy (1980-1992) (singer)	-1
5759745	Marley, John	Greatest, The (1977)	Dr. Pacheco	-1
5760096	Marlowe, Frank	I Was a Communist for the FBI (1951)	Worker	-1
5760396	Marlé, Arnold	Man Who Could Cheat Death, The (1959)	Prof. Ludwig Weiss	4
5760653	Marnitz, Rudolf W.	Reise ohne Wiederkehr (1989)		-1
5760741	Marolakos, John	Tempest (1982)	New York Cafe Owner	-1
5761270	Marques, Celso	Rainha Louca, A		-1
5761121	Marquand, Serge	Goldsucher von Arkansas, Die (1964)		7
5761347	Marques, Manuel (I)	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	The Speaker	-1
5761562	Marquez, William	General Hospital	Dr. Silva (1989)	5
5761707	Marr, Eddie (I)	Torchy Plays with Dynamite (1939)	Denver Eddie	6
5762160	Marrocco, Gino	Beer (1985)	Frankie's Pop	23
5749111	Mantegna, Joe	Comrades of Summer, The (1992) (TV)	Sparky Smith	1
5749414	Mantooth, Randolph	General Hospital	Richard Halifax (1992-1993)	5
5749571	Manuel, José (II)	Valentina	Félix	-1
5749802	Manza, Ralph	Beer (1985)	Frankie's Grandfather	24
5749838	Manza, Ralph	General Hospital	Mike Costello (1963)	5
5764241	Marshall, Mort	Daikaijû Gamera (1965)	Jules Manning	-1
5764934	Marston, Joel	General Hospital	Owen Stratton (1974)	5
5765448	Martell, Alphonse	Tall, Dark and Handsome (1941)		-1
5765565	Martell, Karl	Premiere (1936)	Fred Nissen	3
5765791	Martens, Dirk (I)	Tatort - Lockvögel (1996) (TV)	Hauptkommissar Eifels	3
5765793	Martens, Dirk (I)	Tatort - Rattenlinie (2000) (TV)	Bruder Manfred	4
5766705	Martin, Bruce (II)	Edge of Night, The	Keith Whitney (aka Jonah Lockwood) (1970-1971)	11
5767099	Martin, David (I)	Parfois trop d'amour (1992)	Fernand	-1
5767784	Martin, J.V.	Cold Clues: Guilty Conscience (2002) (TV)	Narrator	-1
5767837	Martin, James (II)	Behind the Green Door, the Sequel (1986)		-1
5768125	Martin, John (V)	General Hospital	Jonathan "Jon" Russell (1991)	5
5768366	Martin, Ken Bruce	Edge of Night, The	Dr. Charles Weldon #2 (1970)	11
5768386	Martin, Kiel	Edge of Night, The	Raney Cooper (1977)	11
5768903	Martin, Ricky	General Hospital	Miguel Morez (1994-1995)	5
5769068	Martin, Speer	Patty (1962)	Sidy	6
5769122	Martin, Steve (I)	Muppet Movie, The (1979)	Insolent Waiter	18
5769277	Martin, Thierry	À la vitesse d'un cheval au galop (1992)	Le cuisinier	42
5769989	Martinelli, Gerson	Tudo é Música (1957)		-1
5770216	Martinez, A	General Hospital	Roy DiLucca #2 (1999-2002)	5
5770499	Martinez, Louis (I)	Spoonful of Sugar (2003)	Traven	5
5770689	Martinho, Gilberto	Tudo é Música (1957)		-1
5770719	Martinho, To-Zé	Enfant du secret, L' (1996) (TV)		-1
5771012	Martino, Tony (I)	Bare Ass Beach (1994) (V)		-1
5771678	Martinuzzi, John	General Hospital	Stavros Cassadine #1 (1983)	5
5772397	Martín, Alberto	Greatest, The (1977)	Doctor	29
5772857	Martín, Ricardo (I)	Páginas en negro, Unas (1950)		-1
5773067	Martínez de Hoyos, Jorge	Amantes frios, Los (1978)	Librado (segment "Los Amantes frios")	15
5773747	Martínez, Claudio	Trois couronnes du matelot, Les (1983)		-1
5773788	Martínez, Diego (I)	Titanes en el ring contraataca (1983)		-1
5773789	Martínez, Diego (I)	Alquibla		-1
5773813	Martínez, Enrique (I)	Caja 507, La (2002)	Pichín Rivera	33
5773887	Martínez, Ismael	Caja 507, La (2002)	Javier Landa	34
5774034	Martínez, Juan Ángel	Reed, México insurgente (1973)		-1
5774100	Martínez, Luis Alberto (III)	Gigli (2003)	Adult Care Resident	6
5774163	Martínez, Mario Iván	Valentina	Mauricio	-1
5774325	Martínez, Paco (I)	No te engañes corazón (1937)		-1
5774380	Martínez, Pedro Miguel (I)	Don Juan (1998)	Gusman	16
5774481	Martínez, Raúl (I)	Rage (1966)		-1
5774492	Martínez, Raúl (I)	General Hospital	Perez (1994)	5
5775121	Marvin, Lee	Killers, The (1964)	Charlie Strom	1
5775852	Marzo, Cláudio	Último Vôo do Condor, O (1982)		-1
5762358	Mars, Kenneth	Beer (1985)	A.J. Norbecker	3
5762699	Marsden, Gerry	Shindig! Presents British Invasion Vol. 2 (1992) (V)	Gerry and The Pacemakers	-1
5762779	Marsden, Jason	General Hospital	Alan 'A. J.' Quartermaine, Jr. #3 (1986-1988)	5
5762971	Marsh, Christopher (I)	Fratelli e sorelle (1991)	Steve	-1
5763342	Marsh, Walter	They Nest (2000) (TV)	Vinyl	14
5763428	Marshall, Andy (I)	Vow to Kill, A (1995) (TV)	Walter	-1
5777103	Masiulis, Algimantas	34-j skoryj (1981)		3
5777299	Masnay, Simon	Adieu au pirate, L' (2003)		-1
5777986	Mason, Jim (I)	Something to Think About (1920)	Country Masher	8
5778309	Mason, Madison	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Officer Jones	18
5778742	Massa, Sebastian	Lionheart (1990)	Ship's Engineer	18
5778983	Masset, Andrew	Bobby Jones, Stroke of Genius (2004)	Doctor Applegate	-1
5779670	Mastalerz, Andrzej	Moje miasto (2002) (TV)	Cichy	5
5780038	Masters, Rick (I)	Fat Beach Patrol (2000) (V)		-1
5780428	Mastroianni, Marcello	Amanti (1968)	Valerion	2
5780831	Masutomi, Nobutaka	Danchizuma hiasobi (1973)	Arakawa	5
5780842	Masutomi, Nobutaka	Toruko 110-ban: monzetsu kurage (1978)	Yakuza	-1
5781224	Mateo, Ervin	Basta Tricycle Driver... Sweet Lover (2000)		-1
5781341	Mateos, Héctor	Ladrona, La (1954)		-1
5781560	Mateu, Sergi	Telaraña, La (1990)		-1
5781712	Mather, George E.	Atomic Kid, The (1954)	1st Sergeant	11
5781836	Mathes, Arno	Komischer Heiliger, Ein (1979)	Protokollführer	6
5781880	Matheson, Don (I)	General Hospital	Cameron Faulkner (1975-1976)	5
5782144	Mathews, Allen	Who Killed Doc Robbin? (1948)	Motorcycle Cop	-1
5805930	McGann, Stephen	Help!	Tex	-1
5782548	Mathews, Walter	General Hospital	Clyde Bingham (1981)	5
5782818	Mathis, Judge Greg	General Hospital	Jon Hanley (1994-1996)	5
5783009	Mathot, Olivier	Échange de femmes pour le week-end (1985)		-1
5783320	Matinhos	Entre Mulheres e Espiões (1961)		10
5783461	Matos, Eddie	General Hospital	Ricky Garza (2001-2003)	-1
5783659	Matschoss, Ulrich	Reise ohne Wiederkehr (1989)		-1
5783669	Matschoss, Ulrich	Tatort - Der Tausch (1986) (TV)	Kriminalrat Karl Königsberg	4
5783695	Matschurat, Rainer	Tatort - Der Tausch (1986) (TV)	Simon	7
5783931	Matsukata, Hiroki	Showa onna bakuto (1972)		2
5784055	Matsumoto, Taisuke	Hatsukoi no koro (1925)		-1
5784755	Matteucci, Steve	General Hospital	Brenner (1990)	5
5785027	Matthews, A.E.	Quiet Wedding (1941)	Arthur Royd	4
5785342	Matthews, Francis	Do Not Disturb (1999)	Manager	10
5785446	Matthews, John (VII)	Boys of St. Vincent, The (1992) (TV)	Archbishop's Guest	40
5786749	Mau, Doan Chau	Yank in Viet-Nam, A (1964)	Col. Thai	10
5787032	Maule, Brad	General Hospital	Dr. Anthony 'Tony' Jones (1984-2003)	5
5787049	Maulini, Giorgio	Trastevere (1971)		-1
5787085	Mauloy, Georges	Valet maître, Le (1941)	Le comte des Bossons	8
5787628	Maurice, Richard (I)	Eleven P.M. (1928)	Sundaisy	1
5787809	Mauro Filho, Lúcio	Grande Família, A	Tuco	5
5787960	Maury, Harald	Point douloureux, Le (1979)		-1
5788068	Maury-Vancelle, Dominik	Cheveux de ma mère, Les (2004)		8
5788125	Mauthe, Florian	Tatort - Feuerwerk für eine Leiche (1988) (TV)		28
5775886	Marzo, Cláudio	Rainha Louca, A	Robledo	-1
5775974	Marán, Francisco	Melody Lingers On, The (1935)	Lt. Zetti	15
5776378	Masaaki, Uno	Ya shagayu po Moskve (1963)		-1
5776601	Mascarino, Pierrino	Edge of Night, The	Grady Perret	11
5776602	Mascarino, Pierrino	General Hospital	Drago (1990)	5
5776806	Mascolo, Joseph	General Hospital	Nicholas Van Buren (Domino) (1989)	5
5791828	Mayniel, Alain	Midnight Intruders (1987)	Husband	2
5792110	Mayo, Frank	Burnt Wings (1920)	Ned Templeton	2
5792317	Mayo, Frank	Torchy Plays with Dynamite (1939)	Detective	-1
5792570	Mays, Dawson	General Hospital	Mel Wilson (1982)	5
5792896	Mazhar, Ahmed	Bint min el banat (1968)		2
5793309	Mazursky, Paul	Tempest (1982)	Producer	23
5793684	Mazzinghi, Bernard	Parfois trop d'amour (1992)	Daniel	-1
5793692	Mazzinghi, Bernard	À la vitesse d'un cheval au galop (1992)	Le cousin breton	22
5794118	McAleer, Des	Picking up the Pieces	Bill Tansey	-1
5794156	McAlinney, Patrick	Tarnished Heroes (1961)	Reilly	3
5794181	McAllister, Chip	Greatest, The (1977)	Young Muhammad Ali	-1
5794872	McBeath, Tom	They Nest (2000) (TV)	Eamon Wald	5
5795260	McCabe, Shane	Making of a Male Model (1983) (TV)	Austin	-1
5795422	McCain, Ben L.	General Hospital	The McCain Brothers (1992)	-1
5795501	McCall, Malik	They Nest (2000) (TV)	Swanilli Crew #4	37
5797050	McCarthy, Kevin (I)	Making of a Male Model (1983) (TV)	Ward Hawley	3
5797388	McCartney, Paul	Ghosts of the Past (1991) (TV)		-1
5797551	McCarville, Patrick	Ned Kelly (1970)	Sportsman	-1
5797881	McClaren, Bill	Rugby Special	Commentator	-1
5798344	McCloskey, Leigh	General Hospital	Dr. Michael Baranski (1992)/Damian Smith (1993-1996)	5
5798961	McComas, Ralph	Flat Harmony (1917)		1
5799682	McCormick, Kelly (IV)	Bobby Jones, Stroke of Genius (2004)	Parking Valet	-1
5799917	McCormick, Merrill	Trails of the Golden West (1931)		6
5800012	McCormick, Scott	Chickboxin Underground (1999)	Rad Nadly	11
5800323	McCoy, Harry (I)	Obey the Law (1924)		2
5800553	McCoy, Tim (I)	Square Shooter (1935)	Tim Baxter	1
5800667	McCrae, Hilton	Bobby Jones, Stroke of Genius (2004)	Jimmy Maiden	14
5800725	McCrary, James	Junky's Christmas, The (1993)	Christmas dinner friend	-1
5800992	McCrerey, Roy	Bobby Jones, Stroke of Genius (2004)	Bob Gardner	32
5801692	McCurdy, Kevin	Team One (2003)	McCurdy	-1
5801722	McCurrach, Ian	Young Sherlock: The Mystery of the Manor House	Newbugs	-1
5801732	McCurry, John (I)	Daikaijû Gamera (1965)	A1C Hopkins	-1
5801860	McDaniel, George	Lionheart (1990)	Adjutant	9
5801867	McDaniel, George	General Hospital	Niven (1982)	5
5802020	McDaniel, Sam	Grand Central Murder (1942)	Third Railroad Yardman	-1
5802583	McDermott, Marc	Unsullied Shield, An (1913)	The Sleeping Descendant	1
5802732	McDillon, Walter	Primal Instinct (1996) (V)		11
5802809	McDonald, Christopher (I)	Breakin' (1984)	James	5
5788283	Mavridis, Stavros	Eglimata	Fotis Koutsoubas	-1
5788652	Maxey, Paul	They Won't Believe Me (1947)	Mr. 'Speed' Bowman	-1
5789110	Maxwell, Edwin	Son-Daughter, The (1932)	Chinese Priest	-1
5789164	Maxwell, Frank	General Hospital	Dan Rooney (1978-1990)	5
5789272	Maxwell, John (IV)	Grand Central Murder (1942)	Detective Strong	-1
5789597	May, Alexander	Tatort - Rattenlinie (2000) (TV)	Bruder Erich	5
5789779	May, Donald	Edge of Night, The	Adam Drake, Sr. (1967-1977)	1
5790869	Mayerhofer, Ferdinand	Premiere (1936)	Theaterarzt	9
5791370	Maynard, Kermit	Northwest Stampede (1948)		-1
5806335	McGee, Jack (I)	Unstrung Heroes (1995)	Lindquist	8
5806904	McGinley, Ted	Making of a Male Model (1983) (TV)	Gary Angelo	6
5807154	McGlothin, Bryan Lee	Warning: Parental Advisory (2002) (TV)	Hearing Reporter #2	26
5807355	McGonagle, Richard	General Hospital	Kincaid (1990)	5
5807798	McGowan, J.P.	Man's Soul, A (1914)		2
5807932	McGowan, Robert F.	Back Stage (1923)	Startled pedestrian	-1
5808216	McGrath, Brian	At Bertram's Hotel (1987) (TV)	Michael Gorman	11
5808603	McGrath, Paul (I)	Edge of Night, The	Gov. Kelly (1966)	11
5808839	McGregor, Alan	Bobby Jones, Stroke of Genius (2004)	St. Andrews Starter	41
5809154	McGuinn, Joe	Holt of the Secret Service (1941)	'Crimp' Evans	4
5809620	McGuire, Paul (I)	I Was a Communist for the FBI (1951)	McIntyre	-1
5809862	McGurk, Gary	General Hospital	Mark Carlin (1986)	5
5810183	McHugh, Frank	Three Men on a Horse (1936)	Erwin Trowbridge	1
5810191	McHugh, Frank	Valley of the Giants (1938)	'Fingers' McCarthy	3
5810401	McHugh, Matt	They Won't Believe Me (1947)	Tiny Old Man	-1
5810566	McInerney, Bernie	Edge of Night, The	Mark Faraday (1975)	11
5811538	McKay, Scott	Edge of Night, The	Claude Revanant (aka Gilbert Darcy) (1976-1977)	11
5827926	Mello, Jardel	Semideus, O		-1
5812019	McKee, Lafe	Man from New Mexico, The (1932)	Sheriff	5
5812230	McKee, Raymond (I)	Burglar, The (1928)	Jimmy Smith	3
5812264	McKee, Raymond (I)	He Won a Ranch (1914)	Dan Bell	2
5812526	McKellar, Don	Highway 61 (1991)	Pokey Jones	2
5813214	McKenzie, Richard (I)	Some Kind of Hero (1982)	Dr. Victor Bolkin, Base Psychiatrist	-1
5813392	McKenzie, Robert (I)	Rounding Up the Bandits (1923)	Sheriff	2
5813540	McKeon, Doug	Edge of Night, The	Timmy Ferraday #1 (1975-1976)	11
5813972	McKim, Sammy	Laddie (1940)	Leon Stanton	8
5814027	McKinley, J. Edward	Patty (1962)	Dr. Miller	2
5814254	McKinney, Kurt	General Hospital	Ned Ashton #1 (1988-1991)	5
5814363	McKinnon, Bruce	Bobby Jones, Stroke of Genius (2004)	St. Andrews Starter No. 2	42
5814541	McKnight, Geoff	Bobby Jones, Stroke of Genius (2004)	Reporter No. 9, Merrion	62
5814674	McLafferty, Michael	General Hospital	Brian Beck (2003-2004)	-1
5815500	McLean, Bob (I)	General Hospital	Wayne (1982)	5
5815617	McLean, Jack	Bondage of Barbara, The (1919)	Tony Grey	3
5816116	McMahon, David (I)	I Was a Communist for the FBI (1951)	Masowitch	-1
5816132	McMahon, David (I)	Patty (1962)	Father O'Brien	8
5803657	McDonald, Ryan (I)	Edge of Night, The	Cowboy (1964)	11
5803736	McDonnell, Babe	Not Tonight Henry (1961)	Cave Girl	8
5803796	McDonnell, Tom	Yeomen of the Guard, The (1978) (TV)	Sir Richard Cholmondeley	8
5803910	McDougall, Gordon (I)	Ned Kelly (1970)	Tarleton	-1
5804217	McDowell, Malcolm	Bobby Jones, Stroke of Genius (2004)	O.B. Keeler	4
5804863	McEnnan, Jamie	General Hospital	Skeeter McKee (1987)	5
5805357	McFadden, Tom (I)	General Hospital	Red Flynn (1986)	5
5805510	McFarland, George 'Spanky'	Our Gang Follies of 1936 (1935)	Spanky	1
5805664	McFarlane, David	Highway 61 (1991)	Satan's Neighbor	21
5805866	McGann, Mark (I)	Reise ohne Wiederkehr (1989)	Robert	-1
5825228	Meira, Tarcísio	Semideus, O	Hugo Leonardo/Raul	-1
5825373	Meismer, Mark	Gigli (2003)	Beach Dancer	40
5826158	Melby, Michael	Bradys, The	Mickey Logan	16
5826404	Mele, Nicholas	Some Kind of Hero (1982)	Officer	-1
5826729	Melet, Lionel	À la vitesse d'un cheval au galop (1992)	Le type au brushing	32
5826836	Melford, George	Tall, Dark and Handsome (1941)		-1
5827141	Melin, John	Hemliga Svensson (1933)	café owner	-1
5827685	Mellies, Otto	Tatort - Tod aus der Vergangenheit (1992) (TV)	Werner Weinkauf	4
5828496	Melocchi, Vince	Unstrung Heroes (1995)	Inspector Marshall	18
5829753	Mendenhall, David	General Hospital	Mike Webber (1980-1986)	5
5829763	Mendenhall, James	General Hospital	Mayor (1983)	5
5830543	Mendoza, José María	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)		4
5830552	Mendoza, Leandro	Amantes frios, Los (1978)	Campesino (segment "El Difunto al pozo y la viuda al gozo")	14
5831492	Menke, Jeff	Chickboxin Underground (1999)	Stavros the Club	12
5832038	Menthon, Louis de	Hurlevent (1985)	Monsieur Lindon	9
5832461	Menéndez, Ramón (II)	Tres historias de amor (1978)		8
5832692	Merasty, Billy	Virginian, The (2000) (TV)	Lee Talltrees	19
5832787	Meraz, Raúl	Valentina		-1
5834557	Merinero, Fernando	Agujetas en el alma (1998)	Actor manipulable	18
5835405	Merlo, Ramón	Agujetas en el alma (1998)	Actor chimpancé	37
5835654	Merrells, Jason	Do Not Disturb (1999)	Chris Mulder	8
5836668	Merton, John (I)	Two Roaming Champs (1950)		-1
5838013	Messe, Patrick	À la vitesse d'un cheval au galop (1992)	Routier 2	46
5839251	Metzler, Jim	Gun, a Car, a Blonde, A (1997)	Richard/Rick Stone	1
5839281	Metzler, Jim	Cutter to Houston	Dr. Andy Fenton	2
5840272	Meyer, Just	Do Not Disturb (1999)	Bum With Violin	-1
5840368	Meyer, Raoul	Brigitte Nielsen: The E! True Hollywood Story (2000) (TV)	Himself	-1
5840541	Meyer, Taro	Flying Blind (1990) (TV)		7
5841185	Meyn, Robert	Maulkorb, Der (1958)	Oberstaatsanwalt	7
5841688	Miano, Robert	General Hospital	Joe Scully (1994-1995)	5
5841725	Micacchio, Al	General Hospital	Dr. Wyatt (1995)	5
5842068	Michael, Paul (I)	General Hospital	George Pappas (1997)	5
5842213	Michael, Sean Day	Pick-up, The (1999)	Bobby	1
5816676	McManus, Mark	Ned Kelly (1970)	Joe Byrne	3
5816883	McMillan, Andrew	Edge of Night, The	Timmy Ferraday #2 (1978)	11
5817380	McMurray, Sam	Medicine Ball	Dr. Douglas McGill	-1
5817883	McNamara, Miles (I)	General Hospital	Johnny Morrissey (1982)	5
5818254	McNaughton, Stephen	Edge of Night, The	Brian Madison (1979)	11
5818656	McNichol, Jimmy	General Hospital	Josh Clayton (1984-1985)	5
5819438	McRae, Gordon	East Side, West Side (1927)	Engineer	17
5820199	McVey, Tyler	Killers, The (1964)	Steward	20
5820370	McWade, Edward	Son-Daughter, The (1932)	Sin Kai's Servant	-1
5821169	Meanes, John	Beer (1985)	CLIO Announcer	45
5823182	Medina, Ben	Greatest, The (1977)	Ronnie	12
5823912	Mehlhorn, Gottfried	Dumm gelaufen (1997)	Jäger	16
5824042	Mehmood	Loot Maar (1980)		-1
5824074	Mehmood	Qaid (1975)		-1
5849783	Miles, Steve (IV)	Spoonful of Sugar (2003)	Raul's Customer	10
5850473	Milford, John	General Hospital	Callahan (1989)	5
5851005	Milinkovic, Predrag	Poslednja trka (1979)		-1
5851442	Miljkovic, Zoran	Poslednja trka (1979)		-1
5851545	Millan, Robin	General Hospital	Veronica (1987)	5
5851572	Millan, Victor	Thunderbirds (1952)	Pvt. Joe Lastchance	25
5851744	Millar, Christopher	Boys of St. Vincent, The (1992) (TV)	Boy of St. Vincent	23
5851749	Millar, Gardiner	Critical Assembly (2003) (TV)	Crewcut	-1
5852012	Miller, Alexander	Blutjunge Verführerinnen 2 (1972)		10
5852057	Miller, Allan (I)	Edge of Night, The	Frank Pryor (1967)	11
5852059	Miller, Allan (I)	General Hospital	Quentin Quartermaine (1987-1988)	5
5852182	Miller, Barton	Egoists, The (2003)	Young Producer	19
5852526	Miller, Dave (VII)	Moonchild (1994) (V)		-1
5852843	Miller, Dick (I)	General Hospital	Hotel clerk (1982)	5
5853069	Miller, Glenn (VI)	Real Bullets (1990)	Sallini's Boduguard	20
5853140	Miller, Harold (I)	I Was a Communist for the FBI (1951)	Railroad Station Clerk	-1
5853608	Miller, John 'Skins'	Torchy Plays with Dynamite (1939)	S.F. Taxi Driver	-1
5853673	Miller, Jonathan (I)	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5866816	Mix, Tom	Never Again (1915)		1
5853937	Miller, Mark (I)	General Hospital	Randy Washburn (1964)	5
5854434	Miller, Peter (I)	General Hospital	Lt. Stoddard (1980)	5
5854915	Miller, Thomas (VI)	They Nest (2000) (TV)	Crying School Kid	38
5855777	Millican, James (I)	Big Tip Off, The (1955)	Det. Lt. George East	5
5855828	Millican, James (I)	I Was a Communist for the FBI (1951)	Jim Blandon	4
5855957	Milligan, Spencer	General Hospital	Ray Gibbons (1987)	5
5856699	Mills, Frank (I)	Holiday for Sinners (1952)	Tenant	-1
5856768	Mills, Frank (I)	Respect the Law (1941)	Dock Worker	-1
5857184	Mills, Mark (II)	Chickboxin Underground (1999)	Detective/Goofy-Eyed Guy	22
5857692	Miltern, John	East Side, West Side (1927)	Gerrit Rantoul	7
5857907	Miltsakakis, Stefanos	Lionheart (1990)	Jeep Driver	16
5857984	Milvain, Douglas	At Bertram's Hotel (1987) (TV)	Sir Ronald Graves	7
5858764	Minami, Mitsuaki	Akai yuhi ni terasarete (1925)	Spy	-1
5859010	Minder, Billy	Our Gang Follies of 1936 (1935)		-1
5842646	Michaels, Jacob	Nobody's Perfect (2002)	Frederic	3
5843106	Michaels, Sean	Primal Instinct (1996) (V)		10
5844348	Michelman, Ken	Bradys, The	Gary Greenberg	14
5844455	Michener, James	Musical Offering from the Vatican: A Papal Concert, A (1992) (TV)	Host	-1
5845283	Middleton, Charles (I)	Square Shooter (1935)	Jed Miller	5
5845532	Middleton, Travis	Substitute Wife, The (1994) (TV)	Preacher #3	19
5845581	Midkiff, Dale	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Buck Thurman	2
5847102	Mihalesco, Alexandre	Bach détective (1936)	L'extra	14
5847266	Mihashi, Tatsuya	Gurama-to no yuwaku (1959)	Urumeru	3
5847683	Mikeler, Eugene	Lady, Let's Dance (1944)		-1
5848016	Mikhalkov, Nikita	Ya shagayu po Moskve (1963)	Kolka	2
5848751	Mikulla, Tom	Und tschüss! - Ballermann olé (1997) (TV)	Raoul	4
5850375	Mileo, Alfredo	Casamiento de Chichilo, El (1938)		-1
5849478	Miles, Bernard	Quiet Wedding (1941)	PC	23
5863411	Mitchell, Chuck	General Hospital	Big Ralph (1981)	5
5863995	Mitchell, Grant (I)	Who Killed Doc Robbin? (1948)	Judge	15
5865081	Mitchell, Millard	Grand Central Murder (1942)	Arthur Doolin	14
5866011	Mitsui, Koji	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Mr. Kanemaki	6
5866096	Mittal, Mehar	Chann Pardesi (1980)		9
5866225	Mitterwurzer, Anton	Perle von Tokay, Die (1953)		23
5866248	Mittleman, Steve	Beer (1985)	Reemer	29
5866598	Mix, Art	Square Shooter (1935)	Baxter rider	-1
5866667	Mix, Tom	Cactus Jim's Shopgirl (1915)	Cactus Jim	1
5866996	Mixer, Randy	Tony's Big Brother (1993) (V)	Tony's boyfriend	5
5867002	Mixon, Alan	Edge of Night, The	Gerald Kincaid (1975)	11
5867545	Mizuhara, Koichi	Zatoichi sakate giri (1965)		7
5867651	Mizushima, Michitaro	Showa onna bakuto (1972)		3
5868305	Mochabee, Mark	Chickboxin Underground (1999)	Heineilickio	15
5869880	Moeller, Bryan Karl	General Hospital	Brian (1996)	5
5869399	Mohamed (I)	À la vitesse d'un cheval au galop (1992)	Le muezzin	48
5870573	Mohica, Victor	General Hospital	Dr. Borez (1994)	5
5871116	Mojic, Strahinja	Poslednja trka (1979)		-1
5871197	Mok, Siu Chung	Long Feng cha lou (1990)	Dragon Ching	-1
5871343	Mokry, Juraj	Andel milosrdenství (1994)	Sylvio	5
5871435	Molander, Jan	Flicka med melodi (1954)	Pontus Löfberg	6
5872115	Molina, Pere	Feliz cumpleaños (1987)		2
5872174	Molina, Rolando	Unknown Cyclist, The (1998)	Support Van Driver	18
5874670	Mong, William V.	Speed (1925)	Sam Whipple	3
5874672	Mong, William V.	Square Shooter (1935)	Ezra Root	-1
5876101	Montagnani, Renzo	Moglie in vacanza... l'amante in città, La (1980)		3
5876827	Montalembert, Thibault de	Grüne Heinrich, Der (1994)	Henri le Vert	1
5879421	Montgomery, Robert (I)	Harvest (1953) (TV)	Host	15
5879627	Montie, Dustin	Sk8 Life (2004)	Dustin	-1
5879714	Montiero, Edgar	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Fernando, a colonist	-1
5859271	Minervino, Paulo	Palácio de Vênus (1980)		-1
5859455	Ming, Moy	Son-Daughter, The (1932)	Extra at Meeting	-1
5859666	Minich, Robert Viktor	Tatort - Kindstod (2001) (TV)	Tarkowsky	6
5859667	Minich, Robert Viktor	Tatort - Lockvögel (1996) (TV)	Olaf Dehmels	7
5859844	Mink, Oliver	Tatort - Feuerzauber (1977) (TV)	Bernd	-1
5859988	Minoff, Marvin	Intimate Portrait: Bonnie Franklin (2003) (TV)	Himself	-1
5860112	Minor, Mike	Edge of Night, The	Lennie Small (1972)	11
5860410	Minéo, Jean-Marc	Pourquoi t'as fait ça? (2001)		-1
5860854	Miranda, Joel	Água e Sal (2002)	Rapazito	9
5861069	Miranda, Osvaldo	Mi marido y mi padrino		1
5861077	Miranda, Robert	Black Thunder (1997)	Rojar	-1
5861668	Miro, Richard	General Hospital	Armando Santiago (1994)	5
5862132	Mishima, Masao	Oushou (1948)		5
5862155	Mishino, Patrick	Coeurs de couleur (1989)	Joseph	5
5862268	Misiano, Pasquale	Vita da cani (1950)		10
5862973	Mitchell, Barry (III)	Tempest (1982)	Woody Allen Look-Alike	-1
5863186	Mitchell, Cameron (I)	All Mine to Give (1958)	Robert	2
5884204	Moore, Roger (II)	Respect the Law (1941)	Reporter	-1
5884843	Moorhouse, Bert	I Was a Communist for the FBI (1951)	Senator Gray	-1
5885230	Mora, Antonio (II)	Caja 507, La (2002)	Juan	6
5885580	Moral, Fernando del	Reed, México insurgente (1973)		-1
5886263	Moran, Frank (I)	Grand Central Murder (1942)	Mooch	-1
5886336	Moran, Frank (I)	Torchy Plays with Dynamite (1939)	Handler	-1
5886586	Moran, Lee (I)	Her Friend, the Doctor (1916)		3
5889027	Morell, André	Shadow of the Cat (1961)	Walter Venable	3
5889057	Morell, Henry	Old English (1930)	Meller, the Butler	11
5889736	Moreno, German	Basta Tricycle Driver... Sweet Lover (2000)		-1
5890004	Moreno, José Elías (I)	Rage (1966)	Fortunato	6
5890361	Moreno, Valentino	General Hospital	Juan (1994)	5
5890415	Morenzie, Leon	Edge of Night, The	Judge (1974-1975)	11
5890702	Morey, Bill	Some Kind of Hero (1982)	Major	-1
5890971	Morgado, Vasco	Pai Tirano, O (1941)		-1
5891213	Morgan, C.	Old English (1930)	Winkley	-1
5891281	Morgan, Cliff	Rugby Special	Commentator	-1
5892052	Morgan, Jack (III)	Dumb Luck (1926)		3
5892200	Morgan, Jonathan (I)	Bikini Beach (1993) (V)		-1
5892396	Morgan, Jonathan (I)	Primal Instinct (1996) (V)		12
5892754	Morgan, Paul (II)	Marine Crucible (1997)		-1
5892870	Morgan, Ralph	Son-Daughter, The (1932)	Fang Fou Hy	5
5893605	Mori, Ren	Help!	Kenta	5
5893942	Morier-Genoud, Philippe	Hurlevent (1985)	Joseph	6
5894364	Morina, Johnny	Boys of St. Vincent, The (1992) (TV)	Kevin Reevey	2
5894451	Morishige, Hisaya	Gurama-to no yuwaku (1959)	Tamehisa	1
5894556	Morishige, Hisaya	Shin kitsune no tameki (1962)		1
5895091	Morley, Chris (II)	General Hospital	Max Hedges (A.K.A. Sally Armitage) (1980)	5
5895102	Morley, Christopher (II)	Making of a Male Model (1983) (TV)	Female Impersonator #2	-1
5895477	Moro, Frank	Río de la muerte (1977)		5
5895481	Moro, Frank	Tu, mi amor... (1998)		1
5879914	Montllor, Ovidi	Feliz cumpleaños (1987)		5
5879937	Montllor, Ovidi	Telaraña, La (1990)		-1
5880169	Montoya, Alex	Santiago (1956)		-1
5880778	Moody, Nicholas	General Hospital	Lucas Stansbury Jones #1 (1989)	5
5881461	Mooney, William	Beer (1985)	Newscaster	12
5881584	Mooradian, Aram	Real Bullets (1990)	Sheriff's Deputy	54
5881586	Mooradian, Harry	Real Bullets (1990)	Sheriff's Deputy	60
5881751	Moore, Alvy	Littles, The	Grandpa Little	3
5882613	Moore, Dudley	Pleasure at Her Majesty's (1976) (TV)	Narrator	-1
5882655	Moore, Ed (I)	Edge of Night, The	Sam English (1972)	11
5882840	Moore, Jamie (III)	Bobby Jones, Stroke of Genius (2004)	Reporter No. 6, Philadelphia	59
5883043	Moore, Kennley	Edge of Night, The	Oscar (1979-1983)	11
5883192	Moore, Matt (I)	Bondage of Barbara, The (1919)	Harry Chambers	2
5883672	Moore, Owen	Married? (1926)	Dennis Shawn	1
5884039	Moore, Roger (I)	Fiction Makers, The (1968)	Simon Templar	1
5884182	Moore, Roger (II)	Grand Central Murder (1942)	Police Stenographer	-1
5895929	Morrell, David (II)	Where the Buffalo Roam (1966) (TV)	Willy's father	8
5896200	Morrell, George	They Won't Believe Me (1947)	Rancher	-1
5896556	Morris, Chester (I)	Bat Whispers, The (1930)	Detective Anderson	1
5896962	Morris, Garrett	General Hospital	Mouth	5
5897524	Morris, Paul (II)	Chickboxin Underground (1999)	Tex Birmingham	10
5897876	Morris, Thomas Q.	Virginian, The (2000) (TV)	The Piano Player	31
5897881	Morris, Tom (I)	Virginian, The (2000) (TV)	Piano Player	31
5897985	Morris, Wayne (I)	Valley of the Giants (1938)	Bill Cardigan	1
5898171	Morrison, Brett (I)	Edge of Night, The	Dist. Atty. Bruce Thompson (1957-1958)	11
5898309	Morrison, Ernest	Back Stage (1923)	Ernie/Sunshine Sammy	-1
5898666	Morrison, Maynard	General Hospital	Justice Ward #2 (2003-)	6
5898821	Morrison, Phil (I)	Vow to Kill, A (1995) (TV)	Swift-Way Delivery	-1
5900096	Mortensen, Kai (I)	Big Pile, The (1985)	The Dutchess of Marlborough	6
5900675	Morton, Georges	Bach détective (1936)	Olive	10
5901258	Morán, Eliseo	Titanes en el ring contraataca (1983)		-1
5902696	Moschidis, Giorgos	Tempest (1982)	Athens Cafe Owner	-1
5901884	Moses, Rick	General Hospital	Jefferson Smith Hutchins (1980)	5
5902136	Moskal, Zbigniew	Zycie za zycie (1991)		25
5902265	Mosley, Irvin	Killers, The (1964)	Mail Truck Guard	13
5902294	Mosley, Roger E.	Greatest, The (1977)	Sonny Liston	-1
5903704	Moten, Gary	Comrades of Summer, The (1992) (TV)	Ortega	28
5904054	Mottet, Alain	Point douloureux, Le (1979)		4
5904466	Moulin, Jean-Pierre	À la vitesse d'un cheval au galop (1992)	Le père de la mariée	19
5904540	Moulières, Jacques	Amants du Tage, Les (1955)	Manuel	8
5904565	Moullet, Luc	Imphy, capitale de la France (1995)	Himself	-1
5904591	Mouloudji, Marcel	58.2/B (1958)	Récitant/Narrator	-1
5904927	Mourao, Pedro	Enfant du secret, L' (1996) (TV)	I-Yau	-1
5905063	Mousoullis, Nicos	Tempest (1982)	Deck Hand	-1
5905530	Mowbray, Alan	Main Street Kid, The (1948)	The Great Martine	3
5905801	Mower, Jack	I Was a Communist for the FBI (1951)	Railroad Conductor	-1
5906031	Mower, Jack	Torchy Plays with Dynamite (1939)	2nd Officer arresting Torchy	-1
5906043	Mower, Jack	Valley of the Giants (1938)	Man with map	-1
5906183	Moy, Jules	Bach détective (1936)	L'usurier	13
5906940	Mu, Qi	Shadow Magic (2000)	Jewelry Tower	11
5907378	Muel, Jean-Paul	Beau temps mais orageux en fin de journée (1986)	Voisin	-1
5907962	Muhammad, W. Youngblood	Greatest, The (1977)	Himself	11
5908167	Muir, Gavin (I)	Tarzan Finds a Son! (1939)	Pilot	-1
5908382	Mukesh (IV)	Jagratha (1989)	Chacko	-1
5908572	Mukherjee, Indu	Rang Berang (1948)		-1
5908745	Mukherjee, Nitish	Rang Berang (1948)		-1
5909396	Mulhall, Jack	Failure at Fifty, A (1940)	Bit Role	-1
5909706	Mulhare, Edward	Knight Rider (1982) (TV)	Devon Miles	2
5909771	Mulhern, Scott	General Hospital	Larry Baker #2 (1977)	5
5909855	Mulholland, Ross	Gigli (2003)	Beach Dancer	41
5910093	Mull, Rodney	Bobby Jones, Stroke of Genius (2004)	U.S.G.A. Official	-1
5911608	Mulzer, Hubert	Tatort - Kalte Wut (2001) (TV)	Dr. Heitmann	-1
5911721	Muminov, Zakirzhan	Ukhodya, ostayutsya (1987)		13
5912316	Munguía, Roberto	Hija del hacendado, La (1997) (V)		-1
5912462	Munier, Ferdinand	Flight Lieutenant (1942)	Photographer	-1
5913200	Munson, Warren	Some Kind of Hero (1982)	Bank President	-1
5913591	Murad, Raza	Naag Nagin (1989)		-1
5914295	Murbach, Roger	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Thomas Bubner	12
5914570	Murdock, George (I)	Anarchy TV (1997)	Chief Cochon	12
5914702	Murdock, Kermit	Edge of Night, The	Judge Nelson R. Ramsey (1965-1968)	11
5915159	Murnik, Peter	Hungry Bachelors Club, The (1999)	Jethro Youngblood	6
5915268	Murolo, Lino	Trastevere (1971)		-1
5915736	Murphy, Charles (I)	Square Shooter (1935)	Miller rider	-1
5916393	Murphy, Joe (IV)	Dumb Luck (1926)		1
5917241	Murray, Charles (I)	Fatal Flirtation, A (1914)		-1
5917460	Murray, Christopher	General Hospital	Mountie McGraw (1995)	5
5917598	Murray, Douglas (V)	Good Shepherd, The (2004)	James	-1
5917947	Murray, Guillermo	Mi amor por ti		2
5918209	Murray, John T.	Skinny the Moocher (1939)		3
5918760	Murroni, Alberto	Caja 507, La (2002)	Hombre Largo	25
5919182	Musante, Tony	Intimate Portrait: Bonnie Franklin (2003) (TV)	Himself	-1
5919264	Muscat, Mike	General Hospital	Douglas Burke (1969)	5
5919324	Musco, Nino	Trastevere (1971)		-1
5919495	Muser, Michael	General Hospital	Warren Simon (1992)	5
5919507	Muser, Wolf	Pandora's Clock (1996) (TV)	Dr. zeitner	-1
5940078	Nazir, Prem	Picnic (1975)		-1
5919688	Musial, Wlodzimierz	Zycie za zycie (1991)		20
5920469	Mustarjo	Pendekar bujang lapok (1959)	Pendekar Mustar	4
5920519	Mustin, Burt	Killers, The (1964)	Elderly Man	17
5920659	Musäus, Peter	Meister Eder und sein Pumuckl	1. Polizist	-1
5920745	Muthert, René	Patty's Posse	Himself	2
5920971	Muxeneder, Franz	Kühne Schwimmer, Der (1957)	Xaver	9
5921024	Muxeneder, Franz	Meister Eder und sein Pumuckl	Herr Lechner	-1
5921031	Muyich, A.D.	Lionheart (1990)	Video Fighter #2	54
5921151	Muzzi, Andrea	Miei più cari amici, I (1998)		-1
5921894	My-Tin	Yank in Viet-Nam, A (1964)	Quon	8
5922070	Myers, Bill H.	General Hospital	Harry (1980-1986)/Bill Harrison (1987-1990)	5
5922112	Myers, Chris (II)	Face in the Frame, The (1998)	Renegade Agent 2	-1
5922287	Myers, Harry	On the High Card (1921)	Harry Holt	1
5922403	Myers, Keith	Roommates (2002) (V)	John	1
5922476	Myers, Mike	Bacharach: One Amazing Night (1998) (TV)	Himself	-1
5924002	Márquez, Rubén	Mujer de Benjamín, La (1991)	Galdino	-1
5924769	Méndez, Carlos	Reed, México insurgente (1973)		-1
5924880	Méndez, Héctor (I)	Perra, La (1967)	Alvaro Chavez	5
5924902	Méndez, José Carlos	Reed, México insurgente (1973)		-1
5925312	Möller, Gunnar	Kühne Schwimmer, Der (1957)	Dr. Richard Moebius	5
5925421	Mörtl, Gerhard	Tatort - Mordverdacht (1971) (TV)		-1
5925526	Møller, Flemming Quist	Ta' det som en mand, frue! (1975)	Bent	3
5926552	Müller, Wolfgang (III)	Maulkorb, Der (1958)	Karl	25
5926650	Müller-Stahl, Hagen	Reise ohne Wiederkehr (1989)		-1
5927363	Nadherny, Ernst	Perle von Tokay, Die (1953)	Rektor der Universtät	16
5928654	Nagato, Hiroyuki	Akitsu onsen (1962)	Shusaku Kawamoto	2
5928986	Nagesh (I)	Magalir Mattum (1994)	Dead body	-1
5913031	Munro, Neil (I)	John and the Missus (1987)	Tom Noble	7
5929104	Nagoya, Akira	Akitsu onsen (1962)	Shimamura	-1
5929539	Nahera, Rick L.	General Hospital	Juan (1987)	5
5929882	Nair, Thikkurisi Sukumaran	Alavuddinum Athbutha Vilakkum (1979)		-1
5930182	Nairnes, Carey	Lovely Way to Die, A (1968)	Harris	17
5930460	Naismith, Laurence	Solomon and Sheba (1959)	Hezrai	14
5930631	Najeh, Naji	Miel et cendres (1996)	Moha	5
5931055	Nakajima, Haruo	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		12
5931451	Nakamura, Katsuo	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Kotaro, Kiyoko's son	4
5931839	Nakano, Eiji	Akai yuhi ni terasarete (1925)	Spy	-1
5932428	Nalder, Reggie	Amants du Tage, Les (1955)	Hotel Manager	13
5932854	Nam, Leonardo	Nobody's Perfect (2002)	Teo	1
5933265	Nance, John J.	Pandora's Clock (1996) (TV)	Air Force Cheif	-1
5933428	Nandamuri, Rama Rao Taraka	Raju-Peda (1954)		1
5933577	Nanini, Marco	Grande Família, A	Lineu	1
5933937	Napier, Charles	Knight Rider (1982) (TV)	Carney	5
5934031	Napier, Hugo	General Hospital	Lord Larry Ashton (1988-1993)	5
5934867	Narita, Mikio	Hoero! Tekken (1982)	Reika	4
5935326	Nase, Marcos César	Em Cada Coração um Punhal (1970)	(segment "Clepsusana")	9
5935986	Nasser	Magalir Mattum (1994)	Pandian	4
5935996	Nasser	Varavu Ettana Selavu Pathana (1994)	Sivaraman	-1
5936989	Natison, Rick	Real Bullets (1990)	Thief	44
5937128	Natsios, Christos	Galazio diamanti, To		7
5937162	Natsuki, Junpei	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		13
5937542	Naujoks, Gerhard	Tatort - Der vierte Mann (2004) (TV)		-1
5937884	Nava, Pepe	Club de señoritas (1956)		-1
5938138	Navarre, René	Yeux ouverts, Les (1913)		-1
5938315	Navarro, Demetrius	Rave (2000)	Cisco	11
5938703	Navarro, Rafael (I)	Páginas en negro, Unas (1950)		-1
5938821	Nave, Ofer	Starwoids (2001)	Himself	-1
5939021	Navrátil, Oldrich	Waterloo po cesku (2002)	Doctor Hrubon	11
5939362	Nayo, Nello	Junior Cursillo (1968)		-1
5940165	Nazir, Prem	Thachali Marumakan Chandu (1974)		-1
5940859	Neale, David (I)	Critical Assembly (2003) (TV)	Customs inspector	-1
5941049	Neary, Robert	General Hospital	Officer Marino (1991)	5
5941057	Neate, Clifford	Ned Kelly (1970)	Living	20
5941982	Neff, Ralph	Patty (1962)	Doctor	21
5942175	Negley, Howard	I Was a Communist for the FBI (1951)	Guy Brennan, Union Chairman	-1
5942794	Neil, Robert	Thunderbirds (1952)	Keith Watson	8
5942845	Neilan, Marshall	For the Good of Her Men (1912)	First Brother	3
5943141	Neill, Richard (I)	Wall Street Tragedy (1916)	Ranson	2
5943375	Neise, George N.	Flight Lieutenant (1942)	Radio operator	-1
5943426	Nejame, George	General Hospital	Bill Woods (1981)	5
5944079	Nelson, Christopher Ren	General Hospital	Alan 'A. J.' Quartermaine, Jr. #4 (1988-1989)	5
5944762	Nelson, John Allen	Edge of Night, The	Jack Boyd (1983-1984)	11
5945529	Nemec, Miroslav	Tatort - Der Fremdwohner (2002) (TV)	Kriminalhauptkommissar Ivo Batic	1
5945531	Nemec, Miroslav	Tatort - Der Prügelknabe (2003) (TV)	Kriminalhauptkommissar Ivo Batic	1
6629296	Wells, Allen (I)	Big Tip Off, The (1955)		-1
5945910	Nenning, Hans-Georg	Tatort - Feuerwerk für eine Leiche (1988) (TV)		24
5946300	Nero, Franco	Fratelli e sorelle (1991)	Franco	1
5947861	Neto, Macedo	Semideus, O	Fausto	-1
5947264	Neugebauer, Alfred (I)	Perle von Tokay, Die (1953)	Notar Ferdinand Körös	10
5948329	Neuss, Wolfgang	Maulkorb, Der (1958)	Wilhelm	24
5948463	Neutze, Horst Michael	Tatort - Tödlicher Treff (1987) (TV)	Kommissar Schreitle	1
5948521	Nevada, Joe	Fleshtones (1985) (V)		6
5949176	Newberg, Larry	Breakin' (1984)	Producer #2	22
5949244	Newborn III, Phineas	Breakin' (1984)	Adam	6
5949259	Newburg, Fred	When Baby Forgot (1917)	John Watson	2
5949756	Newer, David	General Hospital	Rolf (1995)	5
5950213	Newman, Barry	Edge of Night, The	John Barnes (1964-1965)	11
5951178	Newman, Robert (I)	General Hospital	Prescott Harrell (1985)	5
5951190	Newman, Roger	Edge of Night, The	Joe (1967)	11
5950671	Newton, John (I)	Custody (2000)	Judge Alfred E. Newman	-1
5951802	Ng, Jan Wai	Ta lai zi hu zhi ming shi (1994)		-1
5951889	Ng, Man Tat	Long Feng cha lou (1990)	Kent	-1
5952139	Ngatia, Richard	Face to Face (1990) (TV)	Enjoro	-1
5952458	Ni, Kuang	Jin ye bu she fang	Host	2
5953157	Nicholls-Bates, Henry	Way of the World, The (1920)	Landlord	8
5953587	Nichols, Mike (V)	Marine Crucible (1997)		-1
5953653	Nichols, Robert (I)	Atomic Kid, The (1954)	Bob, technician in Blix's room	15
5953725	Nichols, Stephen (I)	General Hospital	Stefan Cassadine (1996-2002, 2003)	5
5953776	Nichols, Wade	Edge of Night, The	Police Chief Derek A. Mallory (1979-1984)	11
5954087	Nick'ell, Brad	Emmanuelle 5: A Time to Dream (1994)	Theo	-1
5954225	Nickel, Walter	Tatort - Tod aus der Vergangenheit (1992) (TV)	Sachverständiger	17
5954255	Nickels, Wally	Beer (1985)	Board Room Executive	33
5954579	Nicolai, Sergio	Tempest (1982)	Sailor	15
5954685	Nicolaï, Jean-Paul	Parfum d'Yvonne, Le (1994)	Diiscontented Neighbour	15
5954785	Nicolle, André	Veine, La (1928)		-1
5955189	Nielsen, Erik (I)	I Was a Communist for the FBI (1951)	Jackie	-1
5955897	Nielsen, Per Tønnes	Ta' det som en mand, frue! (1975)	Karens sekretær	20
5955976	Nielsen, Søren (III)	Ta' det som en mand, frue! (1975)		34
5956482	Nieto, Carlos	Club de señoritas (1956)		-1
5956734	Nieto, José (I)	Solomon and Sheba (1959)	Ahab	9
5956797	Nieto, Pepón	È già ieri (2004)	Bob	-1
5956966	Nigelsky, Jarvis	Sk8 Life (2004)	Jarvis	-1
5957787	Nikolaidis, Stavros	Eglimata	Michalakis Roupakas	5
5958232	Nikolussi, Johannes	Tatort - Hahnenkämpfe (1997) (TV)	Jakob Varanasi	3
5958483	Niland, Bryan	Ned Kelly (1970)	Mackey	-1
5958878	Nilsson, Mattias	Parfum d'Yvonne, Le (1994)	Alpine Chasseur	16
5959154	Nimoy, Leonard	General Hospital	Bernie (1963)	5
5959418	Nindel, Thorsten	Und tschüss! - Ballermann olé (1997) (TV)	Rüdiger	10
5959449	Nineteen, Johnny	Dream Jeans (1987)		-1
5959942	Nisfu, Ahmad	Pendekar bujang lapok (1959)	Tauke Sampan	5
5960261	Nishimura, Masahiko	Help!		3
5945552	Nemec, Miroslav	Tatort - Schwarzer Advent (1998) (TV)	Kriminalhauptkommissar Batic	1
5960695	Nitani, Hideaki	Ajia himitsu keisatsu (1966)	Ryutaro Saeki	1
5960798	Nitschke, Ronald	Grüne Heinrich, Der (1994)	Mephisto	13
5961033	Niven, David (I)	Happy Go Lovely (1951)	B.G. Bruno	1
5961224	Nixon, Christopher	Lionheart (1990)	German Investor	30
5961922	Noble, James (I)	Edge of Night, The	Vic Price #1 (1964)	11
5961948	Noble, Kevin	John and the Missus (1987)	Ted Pratt	17
5962307	Noel, Edwin	Tatort - 3:0 für Veigl (1974) (TV)	Lohse	6
5962500	Noggle, James	Big Pile, The (1985)	Jacques Braques	4
5962581	Nogueira, Rafael	Don Juan (1998)	Vieux baroudeur	22
5962636	Nogueras, Fernando	Familia Vila, La (1950)	Jorge Alsua	-1
5962710	Noguéro, José	Train de plaisir (1936)		-1
5963507	Nolan, Lloyd	Santiago (1956)	Clay Pike	3
5963834	Nolot, Jacques	Oublie-moi (1995)		7
5963940	Nolte, William L.	Man from New Mexico, The (1932)	Henchman Slink	12
5963948	Nolting, Frank	Caja 507, La (2002)	Corte Militar	27
5964016	Nomikos, Christos	Galazio diamanti, To		3
5964343	Noonan, Tom	Egoists, The (2003)	Bryon Bradley	2
5964435	Noone, Peter	Shindig! Presents British Invasion Vol. 2 (1992) (V)	Herman's Hermits	-1
5964842	Nordike, Mark	Unknown Cyclist, The (1998)	Diva	19
5965351	Noriega, Eduardo (I)	Ángeles de Puebla, Los (1968)	Carlos Reyes	6
5965871	Norman, Rolla	Veine, La (1928)		-1
5971784	Novi, Enrique	Valentina		-1
5966179	Norris, Buckley (I)	Trials of Life (1997) (TV)	Doctor #1	-1
5967111	North, Nolan	General Hospital	Chris Ramsey (1997-2003)	5
5968494	North, Peter (I)	Terminal Case of Love (1998) (V)		-1
5968729	Northam, Jeremy	Bobby Jones, Stroke of Genius (2004)	Walter Hagen	3
5969208	Norton, Cliff	General Hospital	Isaac Meyer (1983)	5
5969721	Norton, Richard (I)	Black Thunder (1997)	Rather	-1
5970569	Nounours	À la vitesse d'un cheval au galop (1992)	Nounours	14
5970674	Nourse, Allen	Edge of Night, The	Roger Harper (1957)/Roy Eaton (1964)/Roy Cameron (1965-1966)/Joe Pollock #2 (1973-1979)	11
5971152	Novan, René	Bach détective (1936)	Tony	23
5971339	Novarro, Ramon	Small Town Idol, A (1921)		-1
5971341	Novarro, Ramon	Son-Daughter, The (1932)	Tom Lee, aka Prince Chun	2
5971702	Novembre, Tom	Dernier mot, Le (1991) (TV)		-1
5971901	Novikov, K. (I)	Ya shagayu po Moskve (1963)		-1
5973018	Noy, Wilfred	Strictly Unconventional (1930)	Butler	8
5973094	Noyes, Nick	Big Pile, The (1985)	Matt Rolston	18
5973522	Nucci, Danny	Unknown Cyclist, The (1998)	Gaetano Amador	3
5973808	Nukumizu, Yôichi	Ijô no hitobito: Densetsuno nijino sankyôdai (1993)		6
5974092	Nunez, Domingo	Spoonful of Sugar (2003)	Bodega Cashier	8
5974144	Nunn, Ashley	Hungry Bachelors Club, The (1999)	Moses Grady	7
5975669	Nyström, Anders (I)	Maria på Kvarngården (1945)	Nils	13
5975917	Näslund, Torsten	Aldrig mera krig (1984)		-1
5975989	Næsted, Nicki	Ta' det som en mand, frue! (1975)		39
5976247	Nørbygård, Finn	Finn & Co. (2002) (V)	Himself/Various roles	1
5976782	O'Brian, Michael (II)	Home Is the Hero (1959)	1st Pub Customer	13
5977407	O'Brien, George	East Side, West Side (1927)	John Breen	1
5977653	O'Brien, Kenneth	Some Kind of Hero (1982)	Bartender	-1
5977717	O'Brien, Logan	General Hospital	Lucas Stansbury Jones #6 (1998-2002)	5
5977725	O'Brien, Michael (I)	Anarchy TV (1997)	Prisoner	31
5977811	O'Brien, Pat (I)	Flight Lieutenant (1942)	Sam J. Doyle	1
5979240	O'Brien, Vince	Edge of Night, The	Judge (1964-1965)	11
5979359	O'Brien, William J.	Strictly Unconventional (1930)	Footman	9
5979579	O'Casey, Ronan	Voices, The (1955) (TV)	McAllister	-1
5979890	O'Connell, Michael (I)	General Hospital	Officer Rick (1994, 1997-present)	5
5978267	O'Connor, Frank (I)	Who Killed Doc Robbin? (1948)	Squad Car Cop	-1
5978447	O'Connor, L.J.	Bromo and Juliet (1926)		5
5979983	O'Connor, Ray	Beer (1985)	Martin	16
5980251	O'Connor, Tim (I)	General Hospital	Jack Boland #2 (1994)	5
5981480	O'Flynn, Philip	Home Is the Hero (1959)	Trapper	8
5981513	O'Gatty, Jimmy	I Was a Communist for the FBI (1951)	Goon	-1
5982115	O'Hara, George (I)	Small Town Idol, A (1921)	Cameraman	12
5982308	O'Heochagan, Hector	Only Fools Buy Horses	Presenter	-1
5982455	O'Hurley, John	Edge of Night, The	Greg Shaeffer (1983-1984)	11
5982457	O'Hurley, John	General Hospital	Greg Bennett (1992)	5
5982700	O'Keefe, Dennis (I)	Up in Mabel's Room (1944)	Gary Ainsworth	2
5982796	O'Keefe, Raymond	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Sergeant Smith	19
5984420	O'Neill, Chris (I)	Sheetrock (1997)		-1
5984490	O'Neill, Dick	Daikaijû Gamera (1965)	Gen. O'Neill	-1
5984613	O'Neill, Edward	Laughing Cavalier, The (1917)	Governor Beresteyn	4
5984893	O'Neill, Jimmy	Shindig! Presents British Invasion Vol. 2 (1992) (V)	Host	-1
5985290	O'Reilly, Allen	Bobby Jones, Stroke of Genius (2004)	Grantland Rice	21
5985420	O'Reilly, Tex	On the High Card (1921)	Hank Saunders	2
5985781	O'Shea, Jack	Overland Riders (1946)	Vic Landreau	6
5986098	O'Shea, Rick (II)	Eclipse (1993) (V)		-1
5986892	Oakie, Jack (I)	Northwest Stampede (1948)	Mike Kirby (Clem)	3
5987213	Oakman, Wheeler	Square Shooter (1935)	Jim Thorne	7
5987396	Oatten, Harry	Where the Buffalo Roam (1966) (TV)	Policeman	18
5987716	Obermayr, Karl	Meister Eder und sein Pumuckl	Wirt	-1
5987808	Oberoi, Suresh	Santaan (1993)	The Judge	8
5988038	Obregón, Claudio	Reed, México insurgente (1973)		-1
5988392	Ocean, Ivory	General Hospital	Rakeem (1994)	5
5988891	Oddie, Bill	Pleasure at Her Majesty's (1976) (TV)	Various	-1
5990407	Oger, Franck	Trois couronnes du matelot, Les (1983)	L'aveugle	7
5991316	Ohle, David	Junky's Christmas, The (1993)	Christmas dinner friend	-1
5992359	Okamoto, Fujita	Kôsoku sentai Tâborenjâ		8
5993444	Oland, Warner	Son-Daughter, The (1932)	Fen Sha, aka The Sea Crab	4
5994694	Olivas, Joaquin	Don Juan (1998)	Cavalier de Don Alonse	25
5994811	Oliveira, Marcos	Grande Família, A	Abelardo (Beiçola)	7
5994930	Oliver, Barret	Knight Rider (1982) (TV)	Buddy	15
5995362	Oliver, John (I)	Comrades of Summer, The (1992) (TV)	Hamill	29
5995490	Oliver, Scott (I)	Bobby Jones, Stroke of Genius (2004)	Reporter No. 7, Merrion	60
5995494	Oliver, Scott (III)	Bobby Jones, Stroke of Genius (2004)	Merion Reporter #7	-1
5977657	O'Brien, Kevin (I)	Not a Penny More, Not a Penny Less (1990) (TV)	Nino	-1
5996805	Olsen, Moroni	Respect the Law (1941)	Dr. Walter Terriss	1
5996886	Olsen, Norman	Carnal Passion (2001) (V)	Older Gentleman	27
5996988	Olsen, Rolf	Go-Go-Girl vom Blow Up, Das (1969)		-1
5998024	Olsson, Ty	Critical Assembly (2003) (TV)	Jeff	-1
5998558	Omiadze, Aleqsandre	Magdanas lurja (1955)	Gigo	-1
5998686	Omundson, Timothy	Medicine Ball	Dr. Patrick Yates	-1
5999458	Onteniente, Enzo	À la vitesse d'un cheval au galop (1992)	Le bébé	41
5999476	Ontiveros, Mario	Pequeños gigantes, Los (1960)		-1
5999781	Opania, Marian	Weryfikacja (1987)		15
6000069	Oppedisano, Stefano	Trastevere (1971)		-1
6000115	Oppenheimer, Alan	Daikaijû Gamera (1965)	Dr. Contrare	-1
6001230	Ording, Jørn	Ingen mans kvinna (1953)	Thomas	-1
6001570	Orellana, Carlos (I)	No te engañes corazón (1937)		1
6001625	Orend, Jack	General Hospital	Dwight (1981)	5
6002195	Orlamond, William	Bromo and Juliet (1926)	The father	3
6002788	Ormeny, Tom	General Hospital	Det. Monahan (1992)	5
6003400	Orrell, Brian	Young Sherlock: The Mystery of the Manor House	Albert Bates	-1
6003640	Orsini, Umberto	Trastevere (1971)	L'attore	13
6003970	Ortega, Marco	Rebaño, El (1997)		6
6004274	Ortgies, Burghard	Barrings, Die (1955)	Archie mit 4 Jahren	-1
6004399	Orth, Frank	Respect the Law (1941)	Peter Brennan	3
6004439	Orth, Frank	Victim, The (1930)		1
6004785	Ortiz, Ignacio	Mujer de Benjamín, La (1991)	Old man	-1
6005477	Orzari, Romano	Fratelli e sorelle (1991)	Romano	-1
6006074	Osborne, Bud	Overland Riders (1946)	Sheriff Oliver	5
6006189	Osborne, Bud	Square Shooter (1935)	Tim's head man	-1
6006220	Osborne, Bud	They Were Four (1917)		5
6006765	Oscarito	Entre Mulheres e Espiões (1961)		1
6007249	Osmani, Toni	Handvoll Gras, Eine (2000)		-1
6007517	Osmu, Yves	Dame de lieudit, La (1993) (TV)		-1
6008045	Ostrosky, David	Valentina	David	-1
6008940	Other, Kain	Do Not Disturb (1999)	Bum	-1
6009044	Otho, Henry	Son-Daughter, The (1932)	Extra in Street	-1
6009054	Otho, Henry	Valley of the Giants (1938)	Man felling Fats about ship	-1
6009185	Otomo, Ryutaro	Oushou (1948)		4
6010277	Oulage	À la vitesse d'un cheval au galop (1992)	Le frère de la mariée	29
6010906	Overgaard, Peter Hesse	Hemmeligheder (1997)	Helles Far	4
6011070	Overton, Bill	Trials of Life (1997) (TV)	Mr. Fisher	18
6011611	Owen, Dillwyn	Where the Buffalo Roam (1966) (TV)	Policeman	17
6012315	Owens, Eamonn	General Hospital	Ralph Fletcher (1983)	5
6013239	Ozenne, Jean	Amants du Tage, Les (1955)	Lord Dicson	12
6013664	Ozzano, Renzo	Moglie in vacanza... l'amante in città, La (1980)		7
6013908	Paatso, Ilari	Käyntikorttini... (1964)		-1
6014172	Pachard, Henri	Eclipse (1993) (V)		-1
6014190	Pachard, Henri	Other Side of Chelsea, The (1993) (V)		-1
5995528	Oliver, Steven J.	General Hospital	Harper (1996)	-1
5996347	Ollivier, Alain	Point douloureux, Le (1979)		-1
5996694	Olsen, Larry (I)	Who Killed Doc Robbin? (1948)	William 'Curley' Benson	1
6014543	Pacino, Al	Gigli (2003)	Starkman	20
6014932	Padgett, Slim	End of the Circle, The (1913)		11
6014979	Padilha, Paulo	Semideus, O	Pontes	-1
6015089	Padilla, Dennis	Basta Tricycle Driver... Sweet Lover (2000)		1
6015178	Padilla, José Luis	Toda una vida	Don Porfirio Díaz	-1
6016626	Page, Harrison	Lionheart (1990)	Joshua	2
6016972	Pagonis, Thanasis	Tempest (1982)	Waiter	-1
6017222	Paige, Noelle	General Hospital	Dr. Tom 'Tommy' Hardy #1 (1989)	5
6017809	Paiva, Nestor	Tall, Dark and Handsome (1941)		-1
6018316	Palacios, Héctor	Casamiento de Chichilo, El (1938)		4
6019390	Palin, Michael	Pleasure at Her Majesty's (1976) (TV)	Various	-1
6019475	Paliouras, Thomas	Eglimata		-1
6021197	Palmer, Jim (I)	General Hospital	Davis (1995)	5
6021273	Palmer, Miguel	Toda una vida		-1
6021844	Palmiter, Brian	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		6
6022220	Palomo, Eduardo	Mujer de Benjamín, La (1991)	Leandro	5
6022524	Palun, Luc	Parfum d'Yvonne, Le (1994)	Jacky	11
6022698	Pampel, Wolfgang	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Dr. Feldig	-1
6023259	Pand, Michael	Tatort - Feuerwerk für eine Leiche (1988) (TV)		25
6023652	Panebianco, Richard	Flying Blind (1990) (TV)		1
6024982	Panzer, Paul	Torchy Plays with Dynamite (1939)	Audience at Wrestling Match	-1
6025527	Panzer, Paul	Valley of the Giants (1938)	Basque landowner	-1
6052433	Peláez, Juan (I)	Valentina		-1
6026521	Papayannis, Dimitris	Jack o kavalaris (1979)	Hans	7
6026912	Papendiek, Alexander	Blaulicht - Kindermörder (1960) (TV)		4
6027237	Papp, Zoltán (I)	Amerikai cigaretta (1977)	Painter	9
6027738	Parak, Peter	Noch minderjährig (1957)		3
6027987	Pardavé, Joaquín	Club de señoritas (1956)		-1
6028106	Pardavé, José	Ladrona, La (1954)		-1
6028409	Parducci, Paul	Gun, a Car, a Blonde, A (1997)	Bear/Petrovich	8
6028418	Parducci, Paul	Unknown Cyclist, The (1998)	Rocco	20
6028678	Parenti, Vince	General Hospital	Mareno bodyguard (1998)	5
6028712	Parets, Rick	Do Not Disturb (1999)	Detective	-1
6029948	Park, No-shik (I)	Utgo saneun Park Seo-bang (1972)		-1
6030454	Parker, Barnett	Tall, Dark and Handsome (1941)	Quentin	8
6030635	Parker, Chase	General Hospital	Young Nikolas Cassadine (1998)	5
6030726	Parker, Craig	Intrepid Journeys	Himself (host)	1
6031098	Parker, F. William	General Hospital	Groyden night clerk (1982)	5
6031142	Parker, Frank (I)	General Hospital	Paddy Kelly (1980)	5
6031619	Parker, Norman (I)	Edge of Night, The	David Cameron (1982-1983)	11
6031830	Parker, Tyler	General Hospital	Young Sonny (Corinthos) (1995)	5
6032248	Parks, Andrew	Wild Pair, The (1987)	Hank	13
6032402	Parks, Larry (I)	Flight Lieutenant (1942)	Sandy Roth	13
6032573	Parlapanides, Charley	Hook Up, The (2003)	Tony	-1
6033887	Parry, Harvey	Some Kind of Hero (1982)	Old Drunk	-1
6034339	Parsons, Milton	They Won't Believe Me (1947)	Court Clerk	-1
6034449	Parsons, Ray (I)	Holt of the Secret Service (1941)	John Severn, engineer	11
6034962	Paryla, Karl	Traum des Hauptmann Loy, Der (1961)	Oberst Markarov	7
6036225	Pasha, Kalla	Small Town Idol, A (1921)	Bandit Chief's Rival	10
6037108	Passarelli, Eduardo	Vita da cani (1950)		11
6038518	Passy, Antonio	Monosabio, El (1977)		16
6038570	Pasternack, Fred	Tempest (1982)	Doctor	-1
6038614	Pastko, Earl	Highway 61 (1991)	Mr. Skin (a.k.a. Satan)	3
6037746	Pataky, Jenö	Mai lányok (1937)	Németh Péter	-1
6037977	Patch, Wally	Quiet Wedding (1941)	Magistrate	18
6038014	Patch, Wally	Up in Mabel's Room (1944)		-1
6039282	Patiño, Antonio	Semideus, O	Horácio	-1
6039728	Patrick, Charles	Unstrung Heroes (1995)	In-crowd Boy	19
6040707	Patterson, Pat (I)	Greatest, The (1977)	Himself	19
6040750	Patterson, Patrick	Vow to Kill, A (1995) (TV)	Bob Lambert	-1
6040915	Pattison, Jay	Highway 61 (1991)	Bus Driver	36
6041055	Patton, Bill	Square Shooter (1935)	Miller rider	-1
6042114	Paul, Al (II)	I Could Go on Singing (1963)		14
6041523	Paul, Matthias	Dumm gelaufen (1997)	Günter	5
6041784	Paul, Val	Isle of Abandoned Hope (1914)		3
6043074	Pauli, Peter	Anna - annA (1993)		-1
6042509	Paulsen, Albert	General Hospital	Gen. Gastineau (1988)	5
6043771	Pavanelli, Livio	Ehestreik (1930)		-1
6043804	Pavanelli, Livio	Tänzer meiner Frau, Der (1925)	Claude Gerson	4
6044259	Pavicevic-Longa, Bozidar	Poslednja trka (1979)		-1
6044904	Pawley, Edward	Flight Lieutenant (1942)	Larsen	7
6044961	Pawley, William	Crime Takes a Holiday (1938)	Spike	8
6066959	Peti, Sándor	Iza néni (1933)		-1
6045005	Pawley, William	Tall, Dark and Handsome (1941)		-1
6045011	Pawley, William	Valley of the Giants (1938)	Si (man who wants to drink with Lee)	-1
6045511	Payer, Harry	Perle von Tokay, Die (1953)		14
6047105	Pearce, Al	Main Street Kid, The (1948)	Otis Jones	1
6047392	Pearl, Barry	Making of a Male Model (1983) (TV)	Clarence	-1
6047778	Pearson, Neil (I)	Lump in My Throat, A (2001) (TV)	John Diamond	-1
6048254	Peck, Brian (II)	Tarnished Heroes (1961)	Bernie White	7
6048901	Pedersen, René	Ta' det som en mand, frue! (1975)		33
6050541	Peixoto, Fernando	Tronco do Ipê, O	Conselheiro	-1
6050696	Peker, Henning	Tatort - Kalte Wut (2001) (TV)	Jan Hellwig	-1
6051064	Pelle, Tommy	New Orleans After Dark (1958)	Pat Conroy	4
6051366	Pellegrino, Angelo	Dottoressa sotto il lenzuolo, La (1976)		5
6051618	Pelletier, James	Big Pile, The (1985)	Classy Guest	26
6051821	Pellitier, James	Big Pile, The (1985)	Classy Guest	24
6052317	Pelz, Alexander	Tatort - Eiskalt (1997) (TV)	Grün	6
6053048	Pendleton, Austin	Muppet Movie, The (1979)	Max	7
6053094	Pendleton, David	Edge of Night, The	Julius Newcomb (1981-1982)	11
6053353	Pendleton, Wyman	Edge of Night, The	Dr. Gus Norwood (1977-1979)	11
6053503	Penghlis, Thaao	General Hospital	Victor Cassadine (1981)	5
6054286	Pennell, Larry	General Hospital	Hank Pulaski (1991)	5
6054348	Pennello, Anthony T.	General Hospital	Jack Russo (1994)	5
6054374	Penner, Jonathan	Anarchy TV (1997)	Jerry	1
6054426	Penney, Allan	Matchless (1973)	Victor	3
6054672	Pennington, Ronald K.	Trastevere (1971)		-1
6054710	Pennock, Christopher	General Hospital	Mitch Williams (1979-1980)	5
6055135	Penvern, André	Dame de lieudit, La (1993) (TV)	Le maire	9
6055500	Peppas, Sofocles	Skies sto peristilio		-1
6055547	Pepper, Bob (I)	They Won't Believe Me (1947)	Officer Guarding Larry	-1
6056098	Perchuk, Andrew	Big Pile, The (1985)	Wellington	19
6056134	Percival, John	Man Alive	Reporter	-1
6056736	Pereira, Seixas	Pai Tirano, O (1941)	Seixas	5
6057367	Perez, James	Spoonful of Sugar (2003)	Brother in the Park	11
6057439	Perez, Michael (II)	Spoonful of Sugar (2003)	Brother in the Park	12
6057520	Perez, Tony (I)	General Hospital	Commargo (1990)	5
6057523	Perez, Tony (I)	Trials of Rosie O'Neill, The	Pete Ramos	-1
6058173	Perkins, Gil	I Was a Communist for the FBI (1951)	Agitator in Fight	-1
6058521	Perkins, Ron	General Hospital	Barry Carter (1995)	5
6059059	Pernath, Hugues C.	Speelmeisje (1968)		-1
6059185	Perocevic, Edo	Hocu zivjeti (1982)		-1
6059863	Perrin, Jack	Holt of the Secret Service (1941)	Henchman	-1
6060326	Perrinoz, Roger	Dame de lieudit, La (1993) (TV)		-1
6060878	Perry, Bob (I)	Torchy Plays with Dynamite (1939)	Referee	-1
6060928	Perry, Charles (I)	I Was a Communist for the FBI (1951)	Communist Goon	-1
6061552	Perry, Lou (I)	Substitute Wife, The (1994) (TV)	Saloon Keeper	11
6062600	Persse, Thomas	Girls (1919)	George H. Sprague	6
6062640	Persson, Edvard	Hemliga Svensson (1933)	August Olsson	3
6063574	Pescucci, Gastone	Dottoressa sotto il lenzuolo, La (1976)		13
6063923	Peszek, Jan	Zycie za zycie (1991)		12
6064655	Peters, George (VII)	Teenage Mother (1968)	Mr. Taylor	-1
6064901	Peters, Karl-Heinz	Maulkorb, Der (1958)	Innenminister	23
6065335	Peters, Shawn (I)	Fleshtones (1985) (V)		1
6065501	Peters, Willy	Maria på Kvarngården (1945)	District Attorney	12
6065542	Peters-Arnolds, Henri	Margots Freier (1919)		-1
6065852	Petersen, Paul	General Hospital	Carruthers (1988)	5
6066293	Peterson, Gene	Edge of Night, The	George Holman (1962)	11
6066369	Peterson, Keith (I)	Ned Kelly (1970)	Referee	-1
6066722	Pethes, Ferenc	Mai lányok (1937)	Paraszt	-1
6066903	Petheö, Attila	Mai lányok (1937)	Zsuzsi nevelõapja	-1
6067402	Petlock, John	General Hospital	Judge Young #1 (1995)	5
6067463	Petran, Peter	Tatort - Das stille Geschäft (1977) (TV)	Schobel	-1
6067499	Petray, Pepito	Casamiento de Chichilo, El (1938)		-1
6067825	Petrie, George	Edge of Night, The	Sgt. Fisk (1957)/Peter Dalton #1 (1958)/Dist. Atty. (later Sen.) Peter 'Pete' Quinn (1960s-1970s)	11
6067826	Petrie, George	General Hospital	Judge Lowell (1978)	5
6067894	Petrie, Hay	Quiet Wedding (1941)		-1
6069163	Petrovic, Bogoljub (I)	Poslednja trka (1979)		-1
6069485	Petrovich, Iván	Orlow, Der (1927)		-1
6068802	Petráglia, Mário	Semideus, O		-1
6068847	Petschler, Erik A.	A.-B. gifta bort baron Olson (1928)	Baltzar Casimir von Gahl	1
6070818	Peña, Julio (I)	Solomon and Sheba (1959)	Zadok	15
6071127	Pfaff, Dieter	Handvoll Gras, Eine (2000)		-1
6071469	Pfitzmann, Günter	Nachts ging das Telefon (1962)		-1
6071479	Pfitzmann, Günter	Tatort - Feuerzauber (1977) (TV)	K.F. Kastrup	-1
6071744	Pharr, Frank	They Won't Believe Me (1947)	Patrick Collins	-1
6071937	Phelps, Brian	Adventures of Mark & Brian, The	Host	1
6072215	Phelps, Lee	Grand Central Murder (1942)	First Railroad Yardman	-1
6072483	Phelps, Lee	They Won't Believe Me (1947)	Bailiff	-1
6072693	Phelps, Tex	Square Shooter (1935)	Miller rider	-1
6072925	Philbin, Regis	Live with Regis and Kathie Lee	Himself	1
6073143	Philipp, Gunther	Go-Go-Girl vom Blow Up, Das (1969)		2
6073176	Philipp, Gunther	Kühne Schwimmer, Der (1957)	Otto von Senff	1
6073195	Philipp, Gunther	Nachts ging das Telefon (1962)		-1
6073332	Philippot, Marcel	Dame de lieudit, La (1993) (TV)		-1
6073677	Phillips, Augustus	Unsullied Shield, An (1913)		9
6073870	Phillips, Conrad (I)	Shadow of the Cat (1961)	Michael Latimer	1
6073987	Phillips, Eddie	Cross Country Run (1929)		2
6074093	Phillips, Eddie	Speed (1925)	Jack Cartwright	7
6074283	Phillips, Gregory	I Could Go on Singing (1963)	Matt	5
6074372	Phillips, Jeffre	Trials of Life (1997) (TV)	Counselor	-1
6074532	Phillips, Joseph C.	General Hospital	Justice Ward #1 (1994-1998)	5
6074828	Phillips, Neville	At Bertram's Hotel (1987) (TV)	Henry	12
6074997	Phillips, Robert (I)	Killers, The (1964)	George	10
6074999	Phillips, Robert (I)	Knight Rider (1982) (TV)	Symes	16
6075314	Philpott, Trevor	Man Alive	Reporter	-1
6075318	Philpps, Joey Alan	Edge of Night, The	Kelly McGrath (Pollock) #1 (1980)	11
6075863	Piani, Lorenzo	Mondo candido (1975)		12
6076944	Picerni, Paul (I)	I Was a Communist for the FBI (1951)	Joe Cvetic	7
6077630	Pickens, Slim (I)	Thunderbirds (1952)	Pvt. Shelby	15
6077775	Pickett, Jay	General Hospital	Frank Scanlon (1997)	5
6078264	Pidal, José	Ladrona, La (1954)		11
6078498	Pie, Darío T.	Valentina		-1
6078589	Pieczka, Franciszek	Zycie za zycie (1991)	Banasik	9
6078613	Pieczynski, Andrzej	Zycie za zycie (1991)	Marian	19
6078970	Pierce, Chris	Bobby Jones, Stroke of Genius (2004)	Husband	43
6079342	Pierce, Stack	Greatest, The (1977)	Johnson	10
6079417	Pierce, Tony (I)	Platoon Leader (1988)	Jan Shultz	6
6079583	Pieritz, Kurd	Tatort - Rattennest (1972) (TV)	Felix	11
6079704	Pieroni, Leonardo	Mister Jerico (1970) (TV)	Angelo	5
6080298	Pierson, Richard	Making of a Male Model (1983) (TV)	Leo	-1
6080552	Pietrzak, Jan (I)	Zycie za zycie (1991)	Marek	17
6080778	Pignol, Jean	Sainte farce, La (1972) (TV)	Victor Napoléon Alexandre	4
6081033	Pigozzi, Luciano	Trastevere (1971)	Righetto	11
6081166	Pike, Don (I)	Lionheart (1990)	BMW Passenger #1	55
6081939	Pilon, Daniel	Boys of St. Vincent, The (1992) (TV)	Boy of St. Vincent	24
6082427	Pimienta, Alberto	Accidente (1965)		-1
6082503	Pinalie, Olivier	Oublie-moi (1995)	Denis	6
6083758	Pingue, Joe	Rats, The (2002) (TV)	Karl	8
6084105	Pinkerton, Robert	Making of a Male Model (1983) (TV)	Scott	-1
6083437	Pinsent, Gordon	John and the Missus (1987)	John Munn	1
6083461	Pinsent, Gordon	Vow to Kill, A (1995) (TV)	Frank Waring	3
6084200	Pinto, Alexandre	Água e Sal (2002)	Alexandre	3
6085835	Piqueras, Pedro	Espejo público	Host (1996-1998)	1
6086030	Pirillo, Roberto	Semideus, O	Lulu	-1
6086262	Pirrín, Eusebio	No te engañes corazón (1937)		-1
6085322	Pisani, Remo	Edge of Night, The	Speed Taft (1961)	11
6085451	Piserchio, Gino	Lovely Way to Die, A (1968)	Michel	26
6086503	Pistoni, Goffredo	Trastevere (1971)		-1
6086834	Pitcher, Jeff	John and the Missus (1987)		26
6086970	Pitman, John (I)	Man Alive	Reporter	-1
6087160	Pitsilos, Notis	Jack o kavalaris (1979)		-1
6087433	Pittman, Wes	Junky's Christmas, The (1993)	Christmas dinner friend	-1
6087444	Pitts, Bill (II)	Egoists, The (2003)	Isabel's Doctor	18
6087639	Piven, Byrne	Pandora's Clock (1996) (TV)		12
6088167	Piéplu, Claude	Beau temps mais orageux en fin de journée (1986)	Jacques	-1
6088404	Piñar, Carlos	Vamos juntos	Claudio	-1
6088667	Placido, Michele	Amiche del cuore, Le (1992)	Padre di simona	-1
6089063	Plans, Carlos	Indio Pluma Roja, El (1975)		-1
6089390	Plathe, Walter	Staatsanwalt hat das Wort - Gefährliche Freundschaft, Der (1982) (TV)		-1
6089609	Platt, Edward (I)	General Hospital	Dr. Miller (1963)	5
6089849	Platte, Rudolf	Maulkorb, Der (1958)	Kriminalkommissar	6
6089896	Platte, Rudolf	Taxi-Gattin (1950)		6
6091982	Pniewski, Mike	Bobby Jones, Stroke of Genius (2004)	Mullen	44
6092319	Podbrey, Maurice	Boys of St. Vincent, The (1992) (TV)	Archbishop	13
6092510	Podhora, Roman	Comrades of Summer, The (1992) (TV)	Vlad	31
6092823	Poeten, Ihle	Premiere (1936)	2. Detektiv	-1
6094737	Polen, Nat	Edge of Night, The	Ephraim Webster (1967)	11
6113862	Price, Rob	Wastelands (1993)		-1
6094823	Poletti, Stephen	General Hospital	Mr. Williams (1993)	5
6095956	Pollak, Mario	Geheime Lüste blutjunger Mädchen (1978)		-1
6096281	Pollard, Alan	Warning: Parental Advisory (2002) (TV)	Businessman	-1
6096469	Pollard, Michael J.	Unknown Cyclist, The (1998)	Gabe Sinclair	5
6096691	Pollock, Alexander	They Nest (2000) (TV)	Henry S. Crump	12
6096800	Polo, Augusto (I)	Trials of Life (1997) (TV)	Doctor #2	-1
6097528	Pomerantz, Jeff	General Hospital	David Langton (1992)	5
6097657	Pompeo, Augusto	Tronco do Ipê, O	Martinho	-1
6098771	Pontón, Enrique	Amantes frios, Los (1978)	marido de Chona (segment El Soplador del vidrio)	5
6098845	Ponzini, Antony	Some Kind of Hero (1982)	Sal, Hood	-1
6098850	Ponzini, Antony	Edge of Night, The	Tony Wyatt (1965-1966)	11
6098852	Ponzini, Antony	General Hospital	Tony Perelli #2 (1980)	5
6099088	Poole, Roy (I)	Edge of Night, The	Paul Koslo (1967)	11
6099528	Pope, Bud	Square Shooter (1935)	Miller rider	-1
6099590	Pope, Leo	Eleven P.M. (1928)	Bennie Madison	-1
6100623	Popyordanov, Petar	Ispanska muha (1998)	Serzhat Milev	9
6102791	Poslof, Jim J.	Real Bullets (1990)	Jim	5
6102926	Post Jr., William	Edge of Night, The	Mr. Hull (1964)/Walter LePage (1974-1975)	11
6103116	Posthumus, André	Patty's Posse	Himself	5
6103161	Postlethwaite, Pete	Grass Arena, The (1991)	The Dipper	2
6103399	Potau, Joan	Agujetas en el alma (1998)	César	3
6103545	Potel, Victor	End of the Circle, The (1913)		6
6104134	Potter, Keith (I)	Chickboxin Underground (1999)	Spectator #1	-1
6104606	Poujouly, Georges	Esprits de famille (1975) (TV)	Victor Bichois	3
6104609	Poujouly, Georges	Guépiot, Le (1981)	Le docteur	-1
6105382	Powell, Brad	Love Potion (1987)	David	12
6105682	Powell, Don (V)	Trastevere (1971)		-1
6106827	Power, Tyrone (I)	Solomon and Sheba (1959)	Solomon (visible in long shots)	-1
6106914	Powers, Dave	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	13
6107281	Powers, Tom (I)	Auction Block, The (1917)	Bob Wharton	5
6107364	Powers, Tom (I)	They Won't Believe Me (1947)	Trenton	5
6108622	Prado, Osmar	Grande Família, A	Júnior	-1
6109138	Pralgo, Robert	Bobby Jones, Stroke of Genius (2004)	Pencil-Necked Reporter	53
6109317	Pran (I)	Main Awara Hoon (1983)		8
6109694	Prata, Joaquim	Pai Tirano, O (1941)	Prata	12
6110602	Prechtel, Volker	Meister Eder und sein Pumuckl	Herr Zacharias	-1
6111592	Presley, Brian	General Hospital	Jack Ramsey (2000-2003)	-1
6111846	Pressman, David (I)	Gigli (2003)	Assistant Director	21
6111932	Pressman, Lawrence	Edge of Night, The	Roger Castermore #1 (1969)	11
6111962	Presson, Jason	Trials of Life (1997) (TV)	Ren	5
6112080	Preston, Dave (II)	Rave (2000)		-1
6112176	Preston, John (II)	General Hospital	Gregory 'Greg' Howard (1988)	5
6112560	Preucil, Jan	Waterloo po cesku (2002)		13
6113900	Price, Serge	First Child on the Moon (2001)	Gary	2
6113996	Price, Stanley (I)	Holt of the Secret Service (1941)	Dent, Garrity thug	-1
6114556	Priestley, Jason	Warning: Parental Advisory (2002) (TV)	Charlie Burner	1
6114680	Prieur, Georges	Bach détective (1936)	Durandel	9
6115032	Prince Michael of Greece	Kongelig familie, En	Himself	-1
6115034	Prince of Hannover, Heinrich	Kongelig familie, En	Himself	-1
6115424	Prince, William	Edge of Night, The	Sen. Benjamin 'Ben' Travis #1 (1968-1969)	11
6116056	Prior, Herbert	Martyrdom of Philip Strong, The (1916)	Hikes	8
6116070	Prior, Herbert	Next (1912)		2
6116140	Prior, Herbert	Unsullied Shield, An (1913)		4
6116199	Prior, Tom	Warning: Parental Advisory (2002) (TV)	Senator Sam's Aide	17
6117512	Procopinho	Tudo é Música (1957)		-1
6117805	Proffitt, Donald	Our Gang Follies of 1936 (1935)		-1
6116966	Prokhanov, Sergei	Prival strannikov (1991)		-1
6117155	Pronker, Henry	Do Not Disturb (1999)	Skater	-1
6117161	Pronsky, Ben	Warning: Parental Advisory (2002) (TV)	Senator's Aide	-1
6117222	Propst, Lou	Junky's Christmas, The (1993)	Christmas dinner friend	-1
6117223	Propst, Wayne	Junky's Christmas, The (1993)	Christmas dinner friend	-1
6118106	Protheroe, Brian	Not a Penny More, Not a Penny Less (1990) (TV)	James Brigsley	-1
6118285	Prousalis, Athinodoros	Eglimata	Aristidis Mitropoulos	9
6118569	Provenza, Paul	Hungry Bachelors Club, The (1999)	Stanley Diggers	8
6118671	Provost, Jon	All Mine to Give (1958)	Bobby	18
6118896	Pruett, Harold	Medicine Ball	Harley Spencer	-1
6119358	Pryor, Nicholas	Edge of Night, The	Joel Gantry #2 (1973-1974)	11
6119415	Pryor, Richard	Muppet Movie, The (1979)	Balloon Vendor	19
6119430	Pryor, Richard	Some Kind of Hero (1982)	Cpl. Eddie Keller/Ted Segal	1
6119625	Przybylski, Jerzy	Zycie za zycie (1991)		11
6119858	Préjean, Albert	Amants du Tage, Les (1955)		6
6121016	Puchstein, Fritz	Premiere (1936)	1. Detektiv	-1
6121943	Pugliese, Al	Trials of Rosie O'Neill, The	George (1990-1991)	-1
6122181	Puig, Josep María	Feliz cumpleaños (1987)		4
6122636	Pulido, Óscar	Club de señoritas (1956)		-1
6122891	Pullman, Bill	Virginian, The (2000) (TV)	The Virginian	1
6123337	Puppe, Ole	Tatort - Rattenlinie (2000) (TV)	Gerd Löhden	8
6123559	Purcell, Dick	Valley of the Giants (1938)	Henchman Creel	9
6124029	Puri, Amrish	Chann Pardesi (1980)	Joginder Singh	4
6124317	Puri, Madan	Main Awara Hoon (1983)		9
6124409	Puri, Om	Chann Pardesi (1980)	Tulsi	6
6124667	Purvey, Bob	General Hospital	Frank (1985-1987)	5
6124714	Purwin, Steven R.	Lionheart (1990)	Airplane Pilot	36
6124820	Puskás, Tibor	Mai lányok (1937)	Inas	-1
6125430	Pyatkov, Aleksandr	Dva patrona na mamonta (1990)		10
6126073	Pál, Imre	Heten, mint a gonoszok (1943)	A gyerekzenekar tagja	-1
6126230	Pártos, Gusztáv	Iza néni (1933)		-1
6126845	Pérez Turrent, Tomás	Reed, México insurgente (1973)		-1
6126846	Pérez Turrent, Tomás	Tres historias de amor (1978)		5
6127231	Pérez, Miguel (I)	General Hospital	Father DeLeon (1995)	5
6128830	Pölhö, Esa-Matti	Angela ja ajan tuulet	Thomas Schmidt	-1
6127722	Qissi, Abdel	Lionheart (1990)	Attila	47
6127727	Qissi, Michel	Breakin' (1984)	Passerby in first dance sequence	-1
6127731	Qissi, Michel	Lionheart (1990)	Moustafa	8
6127817	Quade, John	Knight Rider (1982) (TV)	Dolan	7
6128017	Quaglio, José	Mondo candido (1975)		4
6128558	Quarmby, John	Not a Penny More, Not a Penny Less (1990) (TV)	Mr. Harrison	-1
6129785	Queiroz, Luiz Armando	Grande Família, A	Tuco	-1
6131049	Quinn, Aidan (I)	Bobby Jones, Stroke of Genius (2004)	Harry Vardon	72
6131362	Quinn, Billy (III)	Edge of Night, The	Billy Harper #1 (1956-1957)	11
6131852	Quinn, Teddy	General Hospital	Scotty 'Scott' Baldwin #2 (1966)	5
6132410	Quintiliani, John	Bobby Jones, Stroke of Genius (2004)	Bobby Jones' Caddy	-1
6132799	Quiroz, Luis Mario	Veneno para las hadas (1984)	David	-1
6133439	Ra, Karim	Nobody's Perfect (2002)	ER	6
6133624	Raacke, Dominic	Tatort - Der vierte Mann (2004) (TV)	Kommissar Till Ritter	-1
6134874	Rabourdin, Olivier	Amoureux, Les (1994)	Copain	22
6134925	Raby, John	Edge of Night, The	Lt. Victor Rhodes (1956-1957)	11
6134573	Rademacher, Ingo	General Hospital	Jasper 'Jax' Jacks (1996-2000, 2001-present)	5
6135427	Radichev, Anton	Ispanska muha (1998)	Chernata kachulka	6
6135522	Radio Rogues, Three	Big Idea, The (1934)	Themselves	7
6135751	Radmilovic, Zoran	Koze		-1
6135883	Radojevic, Zlatko	Poslednja trka (1979)		-1
6136911	Radó, Sándor	Iza néni (1933)		-1
6136924	Rae, Chris (II)	Rugby Special	Presenter	-1
6136410	Rafi, M.	Pendekar bujang lapok (1959)	Rafi (Samseng)	16
6136415	Rafi, Mohd.	Pendekar bujang lapok (1959)	Rafi (Samseng)	18
6136663	Rage, Nicholas	Bikini Beach (1993) (V)		-1
6121820	Puglia, Frank	Flight Lieutenant (1942)	Father Carlos	6
6121854	Puglia, Frank	Melody Lingers On, The (1935)	Giuseppe	13
6121938	Pugliese, Al	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Sergeant Kangas	20
6139906	Rajhona, Ádám	Amerikai cigaretta (1977)	Doctor	10
6140509	Rakhimov, Khoshim	Ukhodya, ostayutsya (1987)		9
6140548	Rakhmatov, Dias	Ukhodya, ostayutsya (1987)		7
6141823	Rameau, Emil	Main Street Kid, The (1948)	Max	6
6142085	Ramirez, Efren	Rave (2000)	Bookie	12
6142293	Ramlee, P.	Pendekar bujang lapok (1959)	Ramli	1
6142373	Ramoncín	Feliz cumpleaños (1987)		1
6142400	Ramone, Joey	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		19
6142799	Ramos, Paulo	Semideus, O	Renato	-1
6143821	Ramsden, David	Highway 61 (1991)	Satan's Other Neighbor	37
6142999	Ramsey, Logan	Edge of Night, The	Scofield Kilborn (1961-1962)	11
6143091	Ramsis, Tasos	Demonismeni, I (1975)		6
6143995	Ramírez, Ramiro (I)	Amantes frios, Los (1978)	Artesano II (segment"El Soplador del vidrio")	7
6144605	Randall, Bernard	Auction Block, The (1917)	Noble Bergman	12
6144675	Randall, David	Fiction Makers, The (1968)	Reporter	22
6146159	Ranger, Mike	Lights! Camera! Orgy! (1979)		-1
6146195	Ranger, Mike	Swedish Erotica 4 (1981)		-1
6146437	Ranisch, Volker	Tatort - Tod aus der Vergangenheit (1992) (TV)	Ralf Bohm	7
6146732	Rankin, Arthur	Speed (1925)	Dick Whipple	4
6147665	Rapley, Brooks	Highway 61 (1991)	Mother's Little Helper	18
6147922	Rappenglück, Peter	Tatort - Schwarzer Advent (1998) (TV)		-1
6148509	Rasmussen, Anders Fogh	Europa på spil (2002) (TV)	Himself - Prime Minister, Denmark	-1
6242229	Russek, Jorge	Rage (1966)		-1
6148971	Rast, Michael	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Josef Sawatzki	6
6149066	Rasuk, Silvestre	Spoonful of Sugar (2003)	Raul	2
6149107	Rasulala, Thalmus	General Hospital	Tangeneva (1989)	5
6150432	Raulin, Georges	Ce que les Flots Racontent (1916)		3
6151268	Ravikovich, Anatoli	Prival strannikov (1991)		-1
6151282	Ravina, Dax	Boyclops (2004)	Ritchie Lavina	2
6151630	Rawlings, Frederick	Man Who Could Cheat Death, The (1959)	Footman	-1
6151692	Rawlins, Lester	Edge of Night, The	Orin Hillyer (1966-1968, 1972-1973)	11
6152062	Rawlinson, Herbert	Valley of the Giants (1938)	Land Commissioner	-1
6152283	Raxel, Antonio	Ladrona, La (1954)		-1
6152526	Ray, Allan	Atomic Kid, The (1954)	1st MP	-1
6152632	Ray, Big Gene	Anarchy TV (1997)	Joe	21
6152753	Ray, Charles (I)	Paths of Genius, The (1914)		-1
6152774	Ray, Charles (I)	Shoal Light, The (1915)		-1
6153020	Ray, James (II)	Edge of Night, The	Bart Fletcher (1967)	11
6153716	Rayment, Adrian	Team One (2003)	Lewis Long	1
6153724	Rayment, Neil	Team One (2003)	George Long	2
6154187	Raymond, Ricky	John and the Missus (1987)	Robert Cahill	13
6155043	Rea, Stephen (I)	Good Shepherd, The (2004)	Henry McClure	3
6155329	Reagan, Ron	General Hospital	Brothel owner (1989)	5
6155418	Reagan, Ronald (I)	Killers, The (1964)	Jack Browning	7
6155654	Reams, David	Fleshtones (1985) (V)		7
6155657	Reams, Lee Roy	Intimate Portrait: Bonnie Franklin (2003) (TV)	Himself	-1
6137942	Rahim, A.	Pendekar bujang lapok (1959)	Rahim (Samseng)	11
6138747	Raine, Jack	Holiday for Sinners (1952)	Dr. Surtees	13
6139253	Raitt, John	Respect the Law (1941)	Pete, First Plague Victim	-1
6157747	Redko, Yevgeni	Dva patrona na mamonta (1990)		11
6157829	Redler, Thierry	Entre chats et loups (1985) (TV)	Éric Bonnot	6
6158378	Redzhimetov, Zukhritdin	Ukhodya, ostayutsya (1987)		12
6158521	Reed, Albert	Hombre del Gran Río, El (1980)		-1
6158912	Reed, George (I)	Trails of the Golden West (1931)		4
6159355	Reed, Michael James	Love Potion (1987)	Tony	16
6159601	Reed, Rick (I)	Real Bullets (1990)	Sheriff's Deputy	51
6159649	Reed, Robert (I)	Bradys, The	Mike Brady	2
6159806	Reed, Walter (I)	Thunderbirds (1952)	The Lieutenant	12
6160810	Reeves, Buster	Team One (2003)	Buster	-1
6161069	Reeves, Kynaston	Shadow of the Cat (1961)	The Grandfather (new family)	13
6161152	Reeves, Richard (I)	Double Deal (1950)	Det. Weber	-1
6161195	Reeves, Richard (I)	Thunderbirds (1952)	Ft. Sill Officer	-1
6161450	Regan, Barry	I Was a Communist for the FBI (1951)	Officer	-1
6162411	Rehberg, Hans-Michael	Tatort - Schwarzer Advent (1998) (TV)	Rudolf Wenisch	5
6162909	Reichel, Robinson	Tatort - Eiskalt (1997) (TV)	Zorowski	2
6162973	Reicher, Ernst	Dame von Paris, Die (1927)		2
6163521	Reichmuth, James	Fishing with Gandhi (1998)	Roy	2
6163523	Reichmuth, John	Fishing with Gandhi (1998)	Gil	1
6163801	Reid, Don (III)	General Hospital	Emil (1989)	5
6164773	Reilly, Eamon	Only Fools Buy Horses	Bloodstock Agent	-1
6164792	Reilly, Hugh	Edge of Night, The	Simon Jessup (1971-1973)	11
6164820	Reilly, John (I)	General Hospital	Sean Donely (1984-1994)	5
6165726	Reinhardt, Marcus	Fünfzig Minuten (2001)	Felix	1
6165903	Reinholdz, Carl	Hemliga Svensson (1933)	Young man	-1
6166662	Reintsch, Hans-Otto	Anna - annA (1993)		-1
6166925	Reiser, Hans	Tatort - 3:0 für Veigl (1974) (TV)	Feuerlein	24
6166099	Reitel, Enn	New Adventures of Lucky Jim, The		-1
6166158	Reiterer, Alfred	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Harald Fischer	7
6167605	Remotti, Remo	Tatort - Schimanskis Waffe (1990) (TV)	Giovanni Salvatore	-1
6167872	Renaday, Pete	General Hospital	John Jacks (1996)	5
6168197	Renaud, Gilles	Sous les draps, les étoiles (1989)		-1
6168658	Renella, Pat	General Hospital	Dr. Nelson (1980)	5
6170989	Resines, Antonio	Caja 507, La (2002)	Modesto Pardo	2
6170410	Resto, Ivan	Spoonful of Sugar (2003)	Bodega Customer	9
6170738	Retzer, Raoul	Noch minderjährig (1957)		-1
6172362	Rey, Alejandro (I)	Solomon and Sheba (1959)	Sittar	-1
6172902	Rey, José	General Hospital	Medina (1994)	5
6173443	Reyes, Jorge (I)	Club de señoritas (1956)		-1
6174361	Reynolds, Harrington (II)	Old English (1930)	Gilbert Farney	3
6174507	Reynolds, Liam	Ned Kelly (1970)	Lonigan	-1
6174777	Reynolds, Robert (I)	At Bertram's Hotel (1987) (TV)	Ladislaus Malinowski	13
6175082	Reynoso, David	Rage (1966)	Pancho	3
6176558	Rhudin, Fridolf	Hemliga Svensson (1933)	Fridolf Svensson	1
6177869	Ricard, Eduardo	Lionheart (1990)	Spanish Investor	31
6155724	Reardon, Michael	Love Potion (1987)	Victim	-1
6178240	Ricciardi, Marcos	Palácio de Vênus (1980)		-1
6178267	Ricciarduli, Pablo	Clemi flüchtet (1994)		-1
6178289	Riccio, Frederick	Teenage Mother (1968)	Duke Markell	2
6178349	Rice, Brett	Bobby Jones, Stroke of Genius (2004)	Big Bob Jones	6
6178669	Rice, Jack	Hot Foot (1943)	Brother-in-Law	3
6178684	Rice, Jack	Lady, Let's Dance (1944)	Given	11
6178764	Rice, Jack	They Won't Believe Me (1947)	Tour Conductor	-1
6179702	Richard, Henri (I)	Valet maître, Le (1941)	Le marquis de Lazergues	-1
6180022	Richard, Philippe (I)	Valet maître, Le (1941)	Castaneix	-1
6180432	Richards, Addison	Tall, Dark and Handsome (1941)	Commandant	16
6180450	Richards, Addison	Valley of the Giants (1938)	Hewitt (bank examiner)	16
6180496	Richards, Aubrey	Where the Buffalo Roam (1966) (TV)	Grandad	4
6180535	Richards, Cabral	Rats, The (2002) (TV)	Rookie conductor	17
6180549	Richards, Charles David	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Officer Davis	21
6180664	Richards, Frank (I)	Atomic Kid, The (1954)	Thug	-1
6180726	Richards, Frank (I)	Tall, Dark and Handsome (1941)		-1
6180858	Richards, J. August	Critical Assembly (2003) (TV)	Allan	3
6181184	Richards, Michael (I)	Unstrung Heroes (1995)	Danny Lidz	3
6181372	Richards, Tony (VI)	Warning: Parental Advisory (2002) (TV)	Press Club Reporter	27
6181830	Richardson, Jack (I)	For the Good of Her Men (1912)	Second Brother	4
6181900	Richardson, Jack (I)	Man from New Mexico, The (1932)	Jim Fletcher	4
6182006	Richardson, Jack (I)	Small Town Idol, A (1921)		-1
6182042	Richardson, Jack (I)	Torchy Plays with Dynamite (1939)	Taxi Driver	-1
6182050	Richardson, Jack (I)	Valley of the Giants (1938)	Land Office clerk	-1
6182177	Richardson, Jay (I)	General Hospital	Sam (1998)	5
6182616	Richardson, Robin	Anarchy TV (1997)	Prisoner	-1
6183652	Richter Jr., Thomas	Chickboxin Underground (1999)	Bubba	24
6183829	Richter, Hans (I)	Maulkorb, Der (1958)	Maler Ali	11
6183889	Richter, Horst	Tatort - Tödlicher Treff (1987) (TV)		13
6184233	Richter, Walter	Tatort - Mordverdacht (1971) (TV)		-1
6184520	Ricketts, Tom	Forgotten (1933)	Old Crony	9
6184531	Ricketts, Tom	Girls (1919)	Mr. Dennett	7
6184915	Ricks, Shawn	Cafe Fantasy (1996)		-1
6184925	Ricks, Shawn	Eclipse (1993) (V)		-1
6184940	Ricks, Shawn	Other Side of Chelsea, The (1993) (V)		-1
6185027	Rickson, Joe	They Were Four (1917)		1
6185298	Riddell, Leif	General Hospital	Cal Atkins (1992)	5
6185462	Rider, Michael (I)	Platoon Leader (1988)	Don Pike	9
6185772	Ridgely, John (I)	Torchy Plays with Dynamite (1939)	Reporter at the Sportland Arena	12
6186514	Rieger, Paul	À la vitesse d'un cheval au galop (1992)	Tartas	25
6186740	Riek	Premiere (1936)	3. Detektiv	-1
6186774	Rielo, Luis	Brigadista, El (1977)		-1
6187394	Rietty, Robert	I Could Go on Singing (1963)		10
6187635	Rifkin, Ron	Trials of Rosie O'Neill, The	Ben Meyer	-1
6188139	Rigg, Carl	General Hospital	Dr. Gregory Knight	4
6190261	Rilla, Walter	Voices, The (1955) (TV)	Dr Werner	-1
6189629	Rimsky, Nicolas	Prokliatiye millioni (1917)		-1
6190425	Rinn, Charlie	Tatort - Rattenlinie (2000) (TV)		19
6190613	Rinne, Tommi	Vatsa sisään, rinta ulos! (1959)	Pvt. Pöntinen	-1
6191153	Ripper, Michael	Man Who Could Cheat Death, The (1959)	Morgue Attendant	-1
6191664	Riquelme, Carlos	Mi amor por ti		6
6191705	Riquier, Georges	Entre chats et loups (1985) (TV)	L'organisateur des concerts	10
6191740	Risavy, Rudi	Illusion in Moll (1952)		15
6192193	Riss, Dan	Atomic Kid, The (1954)	Jim, FBI Chief Agent	8
6193037	Ritter, John	Gun, a Car, a Blonde, A (1997)	Duncan/The Bartender	5
6193099	Ritter, John	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	1
6194375	Rivera, Jean	Chompin' at the Bit (1997) (V)		-1
6194917	Rivero, Jorge	Río de la muerte (1977)		1
6195043	Rivero, Julian	Melody Lingers On, The (1935)	Argentine Reporter	22
6195673	Rizzo, Mike	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		5
6196526	Roach, Bert	Grand Central Murder (1942)	Tubby	-1
6196665	Roach, Bert	Small Town Idol, A (1921)	Martin Brown	4
6196752	Roach, Daryl	General Hospital	Remondo (1990)	5
6198160	Robards, Sam	Tempest (1982)	Freddy	7
6198407	Robbins, Fred (II)	Thrills of Music: Skitch Henderson and His Orchestra (1948)	Himself, Disc Jockey Emcee	2
6197921	Robeling, Albin	They Won't Believe Me (1947)	Headwaiter	-1
6197928	Robello, Mike	General Hospital	Grandpa Cerullo (1994)	5
6198514	Roberling, Alben	They Won't Believe Me (1947)	Headwaiter	-1
6198714	Robert, François	Josse (1974) (TV)	Un maçon	9
6199053	Roberts, Andy (II)	Thrills of Music: Skitch Henderson and His Orchestra (1948)	Himself, Band Singer	4
6248453	Rábago, Luis	Toda una vida		-1
6199058	Roberts, Arnold	Muppet Movie, The (1979)	Cowboy	30
6199103	Roberts, Arthur (II)	General Hospital	James Duvall (1981)	5
6199395	Roberts, Dave (X)	Bobby Jones, Stroke of Genius (2004)	Sportswriter	45
6199445	Roberts, Davis	Killers, The (1964)	Maitre D'	15
6200056	Roberts, Jack (II)	End of the Circle, The (1913)		-1
6200170	Roberts, Joe (I)	Blacksmith, The (1922)	Blacksmith	2
6200455	Roberts, Mark (I)	General Hospital	Charles Sutton (1982)	5
6200490	Roberts, Michael D.	Knight Rider (1982) (TV)	Jackson, Car-Thief	8
6200808	Roberts, Roy (I)	I Was a Communist for the FBI (1951)	Father Novac	-1
6201093	Roberts, Theodore	Something to Think About (1920)	Luke Anderson	4
6201179	Roberts, Tony (I)	Edge of Night, The	Lee Pollock #3 (1964-1967)	11
6201497	Robertson, Cliff	Overboard (1978) (TV)	Mitch Garrison	-1
6201620	Robertson, Dennis (I)	General Hospital	Charles McKee (1987)	5
6201918	Robertson, Robbie (I)	Road Songs: A Portrait of Robbie Robertson (2001) (TV)	Himself	-1
6202575	Robinow, Tony	Boys of St. Vincent, The (1992) (TV)	Dermot Moher	20
6203039	Robinson, Chris (I)	General Hospital	Dr. Rick Webber #2 (1978-1986, 2002)	5
6204069	Robinson, Paul Michael	Emmanuelle 5: A Time to Dream (1994)	Captain Haffron Williams	1
6204283	Robinson, Sonny (II)	Nebraska Supersonic (2001)	Cal	-1
6204934	Robles, Germán	Río de las ánimas, El (1964)		-1
6205531	Rocca, Joe	Atomic Kid, The (1954)	2nd MP	-1
6206488	Rocha, Enrique	Vamos juntos	Juan Cristóbal	-1
6206187	Rochelle, Bob	Real Bullets (1990)	Bob	8
6207028	Rock, Chris (II)	Marine Crucible (1997)	Drill Sergeant	-1
6207209	Rock, Tony (I)	Big Tip Off, The (1955)		-1
6207482	Rocksavage, David	4 aventures de Reinette et Mirabelle (1987)	L'anglais	12
6209323	Rodrigues, Milton	Vamos juntos	Mauro	-1
6209379	Rodrigues, Roque	Palácio de Vênus (1980)		-1
6210518	Rodríguez 'El Sevilla', Miguel Ángel	Tu-no (1999)		3
6210775	Rodríguez, Ismael (III)	No te engañes corazón (1937)		-1
6211273	Rodríguez, Milton	Vamos juntos	Mauro	-1
6211380	Rodríguez, Nicolás	Grandes ilusiones		9
6211811	Roebuck, Tiny	Torchy Plays with Dynamite (1939)	Bone Crusher	16
6211998	Roerick, William	Lovely Way to Die, A (1968)	Loren Westabrook	11
6212056	Roever, Luitpold	Komischer Heiliger, Ein (1979)	Rechtsanwalt	3
6212393	Rogers, Brooks	Edge of Night, The	Dr. Hugh Lacey (1969-1977)	11
6212773	Rogers, John (I)	Old English (1930)	Budgeon, a Shareholder	-1
6212805	Rogers, John (VI)	Lovely Way to Die, A (1968)	Cooper	18
6213352	Rogers, Tristan	General Hospital	Robert Scorpio (1980-1992, 1995)	5
6213845	Rohas, Morgan	General Hospital	Baby Angie Cerullo (1994)	5
6213869	Rohde, Armin	Dumm gelaufen (1997)	Polizist Hansen	12
6213948	Rohde, Uwe	Dumm gelaufen (1997)	Jäger	15
6214010	Rohmer, Eric	4 aventures de Reinette et Mirabelle (1987)	Man in Supermarket (cameo)	-1
6214179	Roil, Wilm	Tatort - Kein Kinderspiel (1980) (TV)	Bagel	12
6214617	Rojas, Rafael (I)	Valentina	Julio	-1
6215280	Rolant, Albert	Tatort - Mord auf Raten (1980) (TV)	Inspektor Berntner	-1
6216329	Rolston, Mark	Comrades of Summer, The (1992) (TV)	Voronov	4
6216690	Roman, Niklas	Prins hatt under jorden (1980)		22
6217385	Romanoff, Constantine	Holt of the Secret Service (1941)	Henchman	-1
6217492	Romanov, Dimitri	Kongelig familie, En	Himself	-1
6217593	Romanov, Nikolai	Kongelig familie, En	Himself	-1
6218497	Romero, Cesar	Happy Go Lovely (1951)	John Frost	3
6218535	Romero, Cesar	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Himself	-1
6218568	Romero, Cesar	Tall, Dark and Handsome (1941)	Shep Morrison	1
6219038	Romine, David	Big Pile, The (1985)	Romine	8
6219406	Román, Ricardo	Club de señoritas (1956)		-1
6220561	Rooney, Mickey (I)	Atomic Kid, The (1954)	Barnaby 'Blix' Waterberry	1
6220871	Rooney, Ted (II)	Making of a Male Model (1983) (TV)	Roy	-1
6220916	Roop, Jeff	Critical Assembly (2003) (TV)	Stoop	4
6220934	Roope, Fay	Atomic Kid, The (1954)	Gen. Lawlor	12
6221466	Root, Stephen (I)	Pandora's Clock (1996) (TV)	Mark Hastings	4
6222644	Rosario, Bert	Knight Rider (1982) (TV)	Brown, Car-Thief	8
6223244	Rose, Hank	Eclipse (1993) (V)		-1
6223287	Rose, Jason (II)	General Hospital	Dr. Chitepo	-1
6223435	Rose, Norman (I)	Edge of Night, The	Alex Gura (1967)	11
6223703	Rose, Willi	Tatort - Feuerzauber (1977) (TV)	Treitschke	-1
6223942	Rosemann, Sascha	Reise ohne Wiederkehr (1989)		-1
6224630	Rosenbloom, Max 'Slapsie Maxie'	Two Roaming Champs (1950)		2
6224655	Rosenborg, Valdemar Count of	Kongelig familie, En	Himself	-1
6225637	Rosqui, Tom	General Hospital	Civil Defense chief (1981)	5
6208536	Rodgers, Anton	Tarnished Heroes (1961)	Don Conyers	2
6208865	Rodine, Alex	Making of a Male Model (1983) (TV)	Maitre D'	-1
6209177	Rodrigues, Artur	Pai Tirano, O (1941)		25
6226176	Ross, Gordon (I)	General Hospital	Joe Green (1985)	5
6226215	Ross, Hector	Happy Go Lovely (1951)	Harold	16
6226594	Ross, John (VII)	Chompin' at the Bit (1997) (V)		-1
6226596	Ross, John (VII)	Marine Crucible (1997)		-1
6226831	Ross, Michael (I)	I Was a Communist for the FBI (1951)	Foreman	-1
6226880	Ross, Michael (XI)	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	10
6227873	Rossi, Frank (I)	General Hospital	Michael Becker (1997)	-1
6228481	Rossilli, Paul	General Hospital	David Gray	5
6228530	Rossington, Norman	Tea at the Ritz (1963) (TV)	George Podmore	1
6229389	Roth, Daniel (I)	Luftschiff, Das (1983)		-1
6230676	Rouabhi, Mohamed	Adieu (2003)	Ismaël	5
6230832	Roubert, Matty	Tall, Dark and Handsome (1941)		-1
6232498	Roux, Philippe	Adieu (2003)	Gérard-Georges	12
6232712	Roveder, Arthur	Palácio de Vênus (1980)		-1
6233223	Rowe, John (I)	Love Potion (1987)	Samphire	2
6233339	Roweiss, Antônio	Tronco do Ipê, O	Lúcio	-1
6234461	Royal, David	Spoonful of Sugar (2003)	Jewlery Vendor	7
6236696	Rubio, Juan (II)	Agujetas en el alma (1998)	Actor magia negra (Black magic actor)	28
6236716	Rubio, Martxelo	Agujetas en el alma (1998)	Aitor	1
6237462	Rudge, Dennis	Cowboy uit Iran (1999) (TV)		-1
6237626	Rudman, David	Otherwise Known as Sheila the Great (1989) (TV)	Marty	-1
6237723	Rudnick, Thomas	Tatort - Tod aus der Vergangenheit (1992) (TV)	Tommi	11
6237849	Rudolph, Claude-Oliver	Und tschüss! - Ballermann olé (1997) (TV)	Achmed	7
6238204	Rueckert, Rick	Bobby Jones, Stroke of Genius (2004)	Worchester Official	49
6238246	Rueff, David	Real Bullets (1990)	Sallini's Boduguard	19
6238291	Ruelas, Zeke	Gigli (2003)	Beach Dancer	44
6239360	Ruhl, William	Who Killed Doc Robbin? (1948)	Homicide Squad Inspector	-1
6239575	Ruiz Vélez, Pepe	Club de señoritas (1956)		-1
6239711	Ruiz, Christopher (II)	Spoonful of Sugar (2003)	Richie	6
6239747	Ruiz, Fidel	Pequeños gigantes, Los (1960)		-1
6239750	Ruiz, Francisco (II)	Santiago (1956)	Juanito	11
6239872	Ruiz, José Carlos	Mi amor por ti		9
6240416	Rumph, Sky	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	C.J. Age 5	43
6240749	Runyeon, Frank	General Hospital	Simon Romero (1992)	5
6242076	Russ, William	Beer (1985)	Merle Draggett	5
6243512	Russell, Ty	Tony's Big Brother (1993) (V)	Friend	3
6244064	Russo, Mario (II)	Vita da cani (1950)		12
6244273	Rust, Richard (I)	General Hospital	Jason Vining #1 (1975)	5
6244487	Ruth, Marshall	Who Killed Doc Robbin? (1948)	Police Sergeant	-1
6246109	Ryan, Bob (I)	Grand Central Murder (1942)	Lieutenant	-1
6245967	Ruíz, Alejandro	Valentina	Pablo	-1
6245348	Ryan, James Dale	General Hospital	Minister (1980)	5
6245460	Ryan, John P.	Lovely Way to Die, A (1968)	Harry Samson	23
6225788	Ross, Bruce (VI)	Inner Glow of Things, The (2003)	Nathaniel	1
6225933	Ross, Clark (IV)	Grand Central Murder (1942)		-1
6245528	Ryan, Lee (I)	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Officer Avery	22
6245554	Ryan, Marcus	Chompin' at the Bit (1997) (V)		-1
6246267	Ryan, Mitch	General Hospital	Frank Smith #2 (1993-1994)	5
6247158	Rydell, Mark	Edge of Night, The	Walt Johnson (1956) (original cast)	11
6247294	Ryder, Eddie	General Hospital	Slick Jones (1981-1983)	5
6247391	Ryder-Futcher, David	Young Sherlock: The Mystery of the Manor House	Dr. Sowerbutts	-1
6247700	Rylance, Mark	Grass Arena, The (1991)	John Healy	1
6247973	Ryter, Frederick	Man from New Mexico, The (1932)	Pancho	10
6248190	Ryusaki, Bill M.	Some Kind of Hero (1982)	Basketball Player	-1
6248222	Ryzhakov, Valeri	34-j skoryj (1981)		9
6248242	Ryzhenkov, Alexander	34-j skoryj (1981)		5
6248523	Rátkai, Márton	Iza néni (1933)		-1
6248616	Ráz, Vladimír	Velké prání (1981)		2
6249260	Résimont, Philippe	Quand on est amoureux c'est merveilleux (1999)		-1
6249716	Röhner, André	Fast perfekt verlobt (2003) (TV)	Patrick	3
6250154	Rüger, Günter	Anna - annA (1993)	Mr. Fricker	6
6250368	Rühmkorf, Gerhard	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Mario Nemeth	11
6251344	Sabatino, Joe	General Hospital	Miller (1989-1991)	5
6251404	Sabato Jr., Antonio	General Hospital	Jagger Cates (1992-1994, 1995)	5
6251781	Sablack, Sam	General Hospital	Dave Morrison (1968)	5
6251999	Sabourin, Marcel	Sous les draps, les étoiles (1989)		-1
6252050	Sabri, Samir	Bint min el banat (1968)		5
6252162	Sacadura, Jorge	Água e Sal (2002)	Homem	12
6252163	Sacane, Jay	General Hospital	Lucas Stansbury Jones #4 (1994-1996)	5
6255842	Saito, Tatsuo	Oushou (1948)		3
6252610	Sachter-Zeltzer, Ari	Meister Eder und sein Pumuckl	Herr Windlechner	-1
6253042	Sada, Keiji	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Shiro Arisawa, Kiyoko's husband	2
6254079	Sagdiyev, Yedgor	Ukhodya, ostayutsya (1987)		5
6254418	Sagols, Jean	Sainte farce, La (1972) (TV)	Tourraine	8
6254611	Sahara, Kenji	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		9
6254673	Sahenkari, Pekka	Käyntikorttini... (1964)		-1
6255215	Saillard, Georges	Valet maître, Le (1941)	Le président du jockey-club	-1
6255278	Saint Ryan, John	General Hospital	McBride (1996)	5
6255286	Saint, Jan	Beer (1985)	Drunk	41
6255502	Saint-Macary, Hubert	Dame de lieudit, La (1993) (TV)		-1
6255588	Saint-Macary, Xavier	Point douloureux, Le (1979)	Le serveur restaurant	8
6256015	Sajjan	Qaid (1975)		-1
6256185	Sakai, Frankie	Gurama-to no yuwaku (1959)	Tamenaga	2
6256254	Sakai, Frankie	Shin kitsune no tameki (1962)		2
6256693	Sakandelidze, Karlo	Magdanas lurja (1955)	Vano	-1
6257832	Salazar, Leopoldo	Río de las ánimas, El (1964)		-1
6258309	Salem, Kario	Some Kind of Hero (1982)	Young Soldier	-1
6259216	Salinger, Emmanuel	Oublie-moi (1995)	Antoine	4
6259414	Salkind, Ilya	Making of 'The Prince and the Pauper', The (1978) (TV)	Himself	-1
6259941	Salminen, Esko	Angela ja ajan tuulet	Erik Anders	5
6259961	Salminen, Kristo	Angela ja ajan tuulet	Jakob Anders, as adult	-1
6260597	Salter, Mark (II)	Do Not Disturb (1999)	Receptionist	-1
6260992	Salvatore, Steve	Day & Date	Health Reporter	3
6261796	Sambrell, Aldo	Hombre del Gran Río, El (1980)		-1
6262077	Sammel, Raymond	They Nest (2000) (TV)	Dr. Bill	25
6262291	Samora, Rogério	Enfant du secret, L' (1996) (TV)		-1
6262749	Sams, Jeffrey D.	Medicine Ball	Clate	-1
6262932	Samuel, Andy	Back Stage (1923)		-1
6263013	Samuels, Bob (II)	New Orleans After Dark (1958)	Pete	11
6263482	San Martín, Conrado	Toda una vida		-1
6263611	Sanada, Hiroyuki	Hoero! Tekken (1982)	Joji/Toru	1
6264534	Sand, Hank	Making of a Male Model (1983) (TV)	Bartender	-1
6265220	Sanderford, John	General Hospital	Ian Shelton (1982)	5
6265234	Sanders, Abel	Do Not Disturb (1999)	Policeman on the roof	-1
6265826	Sanders, Alex	Trapped (1996) (V)	David	6
6265932	Sanders, Andrew	Ned Kelly (1970)	Farrell	-1
6265964	Sanders, Byron	Edge of Night, The	David Gideon #2 (1967)	11
6266188	Sanders, George (I)	Solomon and Sheba (1959)	Adonijah	3
6266315	Sanders, Hugh	I Was a Communist for the FBI (1951)	Clyde Garson	11
6266714	Sanderson, Martyn	Ned Kelly (1970)	Fitzpatrick	22
6268020	Sandvik, Espen	Caravan (2002)	Morten	2
6268422	Sanford, Ralph (I)	Torchy Plays with Dynamite (1939)	1st Officer arresting Torchy	-1
6268815	Sankaran, Karthik	Big Pile, The (1985)	Chip N' Dale's Dancer	15
6269150	Sansom, Ken	Littles, The		-1
6269347	Santagatti, Massimo	Blume der Hausfrau, Die (1999)		-1
6269795	Santana, Vasco	Pai Tirano, O (1941)	Mestre José Santana	1
6270142	Santiago, Hugo (I)	Trois couronnes du matelot, Les (1983)	Voice	-1
6270224	Santiago, Rodrigo	Em Cada Coração um Punhal (1970)	(segment "Clepsusana")	7
6270687	Santonastaso, Pippo	Moglie in vacanza... l'amante in città, La (1980)		8
6270806	Santorico, Michael	General Hospital	Gerald Cerullo (1994)	5
6271162	Santos, Jaime (I)	Amants du Tage, Les (1955)		-1
6271435	Santos, Rey-Phillip	Pandora's Clock (1996) (TV)		14
6271590	Santos, Ênio	Semideus, O		-1
6272014	Sanyal, Pahadi	Rang Berang (1948)		-1
6272046	Sanyutei, Kimba	Joyu to shijin (1935)		-1
6272485	Saporsantos, Patrick	Basta Tricycle Driver... Sweet Lover (2000)		-1
6272749	Saraceno, Blues	Anarchy TV (1997)	Prisoner	30
6272909	Saraiva, Pereira	Pai Tirano, O (1941)		26
6273709	Sargent, Frederick	Laughing Cavalier, The (1917)	Nicholas Beresteyn	5
6273744	Sargent, Lewis	Man from New Mexico, The (1932)	Bob Langton	7
6274028	Sarin, Gautam	Ratnadeep (1979)		8
6274536	Sarno, Hector	They Won't Believe Me (1947)	Nick	-1
6274708	Sarracino, Ernest	Santiago (1956)	Jose Marti	13
6274718	Sarradet, Richard	General Hospital	Howard Lansing (1978-1981)	5
6275302	Sasaki, Katsuhiko	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		7
6275600	Sasse, Heribert	Grüne Heinrich, Der (1994)	Roemer	10
6275640	Sassi, Jamel	Miel et cendres (1996)		-1
6276510	Sattar, Aziz	Pendekar bujang lapok (1959)	Aziz	3
6276544	Satterfield, Paul (II)	General Hospital	Paul Hornsby (1991-1994)	5
6276836	Satô, Kenta	Kôsoku sentai Tâborenjâ	Riki Honô/Red-Turbo	1
6261356	Salzmann, Lutz	Albert Einstein (1990) (TV)	Dr. Rolf Schnittke	-1
6277551	Saum, Cliff	Torchy Plays with Dynamite (1939)	Bailiff	-1
6277555	Saum, Cliff	Valley of the Giants (1938)	Driver with Pipe	-1
6277775	Saunders, Paul (I)	Team One (2003)	Crusher	-1
6277831	Saunders, Russell (II)	Santiago (1956)	Ferguson	-1
6279119	Savage, John (I)	They Nest (2000) (TV)	Jack Wald	3
6279124	Savage, John (I)	Virginian, The (2000) (TV)	Steve	3
6279136	Savage, Jon	Midnight Intruders (1987)	Cop	9
6279161	Savage, Michael (II)	General Hospital	Vince (1986)	5
6280089	Savalas, Telly	Muppet Movie, The (1979)	El Sleezo Tough	20
6279735	Savior, Paul (I)	Edge of Night, The	Vincent Kayle (1984)	11
6279736	Savior, Paul (I)	General Hospital	Tom Baldwin, Sr. #1 (1967-1972)	5
6283127	Sazatornil, José	Si las mujeres mandaran (o mandasen) (1982)		-1
6285903	Schall, Ekkehard	Traum des Hauptmann Loy, Der (1961)	Baron Studnitz-Sternberg	6
6285913	Schall, Thomas (I)	Edge of Night, The	Benedict Croft (1984)	11
6285983	Schallert, William	Holiday for Sinners (1952)		-1
6286113	Schamula, Ralf	Gesundheit (1978) (TV)		-1
6286977	Scheich, Helmut	Meister Eder und sein Pumuckl	Einer von 3 Buben	-1
6287092	Scheider, Roy	Edge of Night, The	Kenny (1962)	11
6287194	Schejbal, Jerzy	Farba (1998)		-1
6287629	Schembri, Jubal	Vita da cani (1950)		13
6287755	Schenck, Wolfgang	Tatort - Aus der Traum (1986) (TV)	Kurt	-1
6287947	Schenk, Udo	Tatort - Kalte Wut (2001) (TV)	Lothar Seiler	-1
6288418	Scheuer, Walter	Tatort - Feuerwerk für eine Leiche (1988) (TV)		26
6288766	Schick, Horst	Tatort - Das stille Geschäft (1977) (TV)	Muhlhard	-1
6309163	Segar, Stim	Rage (1966)		-1
6288768	Schick, James	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		1
6289124	Schiffer, Jim	Eclipse (1993) (V)		-1
6289312	Schildt, Henrik	Maria på Kvarngården (1945)	Erik Lundgren	7
6289366	Schilinger, Joseph	Hurlevent (1985)	Le chasse-garde	11
6289749	Schillinsky, Estanislao	No te engañes corazón (1937)		-1
6289848	Schimpf, Rolf	Tatort - Kein Kinderspiel (1980) (TV)		17
6289903	Schindell, Cy	Boobs in Arms (1940)	Enemy Soldier	-1
6289976	Schindell, Cy	Skinny the Moocher (1939)		9
6290049	Schinschke, Gerhard	Tatort - Rattennest (1972) (TV)		16
6290720	Schley, Karl Maria	Tatort - 3:0 für Veigl (1974) (TV)	Madlmeier	14
6291059	Schmauser, Thomas	Tatort - Der Prügelknabe (2003) (TV)	Wolfgang Hackl	-1
6291068	Schmeck, Jancsi	Heten, mint a gonoszok (1943)	A gyerekzenekar tagja	-1
6291121	Schmid, Andreas (I)	Grüne Heinrich, Der (1994)	Henri le Vert, enfant	2
6291306	Schmid-Wildy, Ludwig	Meister Eder und sein Pumuckl	Herr Meier	-1
6291392	Schmidseder, Ludwig	Perle von Tokay, Die (1953)		20
6291531	Schmidt, Carol (I)	Junky's Christmas, The (1993)	Christmas dinner friend	-1
6291862	Schmidt, Ole	Skal vi være kærester? (1997)	The conductor	-1
6292035	Schmidt, Wilhelm	Perle von Tokay, Die (1953)		13
6292261	Schmiedel, Fritz	Noch minderjährig (1957)		-1
6292284	Schmieder, Heinrich	Tatort - Kalte Wut (2001) (TV)	Kommissar Tobias von Sachsen	2
6292559	Schmucker, Ernst	Meister Eder und sein Pumuckl	1. Feuerwehrmann	-1
6277060	Saucedo, Michael	General Hospital	Juan Santiago (1999-2001)	5
6293937	Schoenhals, Albrecht	Illusion in Moll (1952)	Werner Alsbacher	5
6294613	Schoneberger, William	Some Kind of Hero (1982)	Technician	-1
6294651	Schooley, Mark	They Nest (2000) (TV)	Johnnie Skee	6
6294977	Schottky, Alexander	Tatort - Willkommen in Köln (1997) (TV)		-1
6295229	Schrader, Paul (I)	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Himself	-1
6296236	Schroth, Carl-Heinz	Seine beste Rolle (1989) (TV)	Paul Ritter	1
6296769	Schubert, Alexander (I)	Und tschüss! - Ballermann olé (1997) (TV)	José	8
6297015	Schuchter, Georg	Tatort - Hahnenkämpfe (1997) (TV)	Hans Xaver	-1
6297236	Schuller, Svatopluk	Waterloo po cesku (2002)	Veterinarian	7
6297632	Schultz, Robert (II)	Gigli (2003)	Beach Dancer	45
6297674	Schulweis, Rabbi Harold M.	Unstrung Heroes (1995)	Rabbi Blaustein	16
6297719	Schulz, Fritz	Jagd nach der Wahrheit, Die (1920)		4
6297968	Schulze-Erdel, Werner	Tatort - Kein Kinderspiel (1980) (TV)	Aulich	13
6297969	Schulze-Erdel, Werner	Tatort - Schlußverkauf (1978) (TV)	Uwe Wagner	-1
6298083	Schumacher, Werner	Tatort - 3:0 für Veigl (1974) (TV)	Kommissar Lutz	28
6298090	Schumacher, Werner	Tatort - Kein Kinderspiel (1980) (TV)	Kommissar Lutz	1
6298334	Schumm, Hans	I Was a Communist for the FBI (1951)	Communist Party Member	-1
6298862	Schwaiger, Andreas	Tatort - Der Fremdwohner (2002) (TV)	Bartl	5
6299061	Schwartz, Greg 'Magic'	Lionheart (1990)	Raquetball Fighter	45
6299672	Schwarz, Josef	Meister Eder und sein Pumuckl	2. Feuerwehrmann	-1
6299696	Schwarz, Norbert	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Bauersfeld	-1
6299956	Schwarzkopf, Klaus	Meister Eder und sein Pumuckl	Dr. Schredelbach	-1
6300025	Schweid, Mark	Wedding on the Volga, The (1929)		1
6300431	Schwill, Ernst-Georg	Anna - annA (1993)	Janitor	7
6300473	Schwill, Ernst-Georg	Tatort - Der vierte Mann (2004) (TV)		-1
6301026	Schönböck, Karl	Perle von Tokay, Die (1953)	Aladar Féhérvary, Gutsbesitzer	2
6301088	Schöne, Reiner	Fast perfekt verlobt (2003) (TV)	Herby Kreschninski	2
6301180	Schönemann, Horst	Tatort - Tod aus der Vergangenheit (1992) (TV)	Gerichtsmediziner	18
6302275	Scofield, Dean	Black Thunder (1997)	Captain Jones	-1
6302539	Scopelliti, Carmelo	Amoureux, Les (1994)	Carmelo	26
6303009	Scott, Bryan (I)	Dead Wrong: The John Evans Story (1984) (TV)	Richie	7
6303150	Scott, Colin	General Hospital	Nikolas Cassadine #2 (1999-2003)	5
6303193	Scott, David (I)	Melody Lingers On, The (1935)	Guido aka Carlo Prescott	8
6303308	Scott, Douglas (III)	Happy Go Lovely (1951)	Dancer	22
6303470	Scott, Geoffrey (I)	General Hospital	David McAllister #2 (1989)	5
6303783	Scott, Jake (III)	Fleshtones (1985) (V)		4
6303827	Scott, Jeff (I)	Beer (1985)	Mail Boy	44
6303994	Scott, Judson Earney	General Hospital	Peter Harrell (1985)	5
6304664	Scott, Simon (I)	General Hospital	Fred Fleming (1963)	5
6292697	Schnabel, Stefan	Im Schlaraffenland (1965) (TV)	James Louis Türckheim	3
6293154	Schneider, Mark (I)	General Hospital	Mitch Wright (1998)	5
6293359	Schnell, Georg H.	Jagd nach der Wahrheit, Die (1920)		5
6293652	Schoderböck	Premiere (1936)	4. Autor	-1
6308417	Seeböck, Herwig	Tatort - Mordverdacht (1971) (TV)		-1
6308501	Seel, Bob	Bobby Jones, Stroke of Genius (2004)	Billy McAfee	-1
6308601	Seely, Donald	Yank in Viet-Nam, A (1964)	Kastens	6
6309202	Segawa, Gincho	Hatsukoi no koro (1925)		-1
6309928	Seifert, Kurt	Taxi-Gattin (1950)		4
6310343	Seipold, Manfred	Tatort - Tödlicher Treff (1987) (TV)		4
6311246	Selekman, Yavuz	Karaoglan - Camoka'nin intikami (1966)		4
6311467	Selkirk, Willie	Highway 61 (1991)	Motel Clerk	27
6311901	Sellier, Georges	Valet maître, Le (1941)	Un membre du club des 'Patineurs'	-1
6312404	Selzer, Milton	General Hospital	Pop Snyder (1979)	5
6312784	Semels, Harry	Tall, Dark and Handsome (1941)		-1
6313100	Semmelrogge, Willy	Tatort - Rattennest (1972) (TV)	Der Dicke	12
6314248	Senf, Jochen	Tatort - Veras Waffen (2003) (TV)	Max Palu	1
6314269	Senftleben, Werner	Blaulicht - Kindermörder (1960) (TV)		3
6314758	Sennett, Mack	Voice of Hollywood No. 3, The (1929)	Himself	-1
6315305	Seppänen, Severi	Käyntikorttini... (1964)		-1
6315943	Serbagi, Richard	Edge of Night, The	Lt. Andy Anderson (1971-1972)	11
6316540	Serfaty, Daniel	Anarchy TV (1997)	Punker	-1
6316834	Sergott, Matt	Gigli (2003)	Beach Dancer	47
6317638	Serra, Raymond	Edge of Night, The	Eddie Lorimar (1982)	11
6317853	Serrano, Enrique	Mi marido y mi padrino		3
6317855	Serrano, Eugenio (III)	Casting de maduras (2001) (V)		2
6318100	Serrat, Xavier	Caja 507, La (2002)	Roberto Crecci	22
6319310	Server, Eric	General Hospital	Gordon Bradford Gray #2 (1974)	5
6318732	Seth, Roshan	General Hospital	Dr. Narasjee	-1
6319649	Seum, Peter	Tatort - Feuerzauber (1977) (TV)	Kai	-1
6320267	Sevillano, Ángel	General Hospital	Bradley Ward (1994)	5
6320946	Seymour, Doug	John and the Missus (1987)	Old Man	21
6320951	Seymour, Gregory R.	Halfway to Heaven and Hell (2003)	That Guy	-1
6321561	Shackelford, David	Hungry Bachelors Club, The (1999)	Marlon	9
6321902	Shafer, Ross	Pandora's Clock (1996) (TV)		14
6323137	Sham, John	Jin ye bu she fang		-1
6323376	Shamsuddin, S.	Pendekar bujang lapok (1959)	Sudin	2
6323845	Shanks, T.J.	Critical Assembly (2003) (TV)	Swat Team Leader	-1
6323975	Shannon, Frank	Torchy Plays with Dynamite (1939)	Inspector McTavish	8
6323991	Shannon, George	General Hospital	Kinley (1988)	5
6305353	Scotti, Dave	General Hospital	(2000)	5
6305375	Scotti, Nick	New York Nick	Nick	1
6305433	Scotti, Tino	Vita da cani (1950)		17
6305558	Scotty, Alf	Never Again (1915)	Alf	-1
6305822	Scribani, Federico	Amore imperfetto, L' (2002)	Sironi	3
6307088	Seay, James	Flight Lieutenant (1942)	Lt. Anderson	-1
6307339	Sebastianelli, Ivo	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Benedetto Campi	-1
6307847	Sedan, Rolfe	Bromo and Juliet (1926)	Stage manager	7
6308145	Sedita, Ron	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		9
6308227	Sedlmaier, Anton	Komischer Heiliger, Ein (1979)		-1
6308260	Sedlmayr, Walter	Mein Freund, der Scheich (1981)		-1
6326876	Shaw, Denis	Man Who Could Cheat Death, The (1959)	Tavern Customer	-1
6327257	Shaw, Robert 'Buddy'	I Was a Communist for the FBI (1951)	Lawyer	-1
6327569	Shawn, Dick	Beer (1985)	Talk Show Host	9
6327816	Shawzin, Barry	Man Who Could Cheat Death, The (1959)	Doctor	-1
6327999	Shayne, Konstantin	I Was a Communist for the FBI (1951)	Gerhardt Eisler	6
6328318	Shcherbinin, Oleg	Dva patrona na mamonta (1990)		4
6328907	Shearer, Jack	Unknown Cyclist, The (1998)	Martin	22
6329161	Sheehan, Doug	General Hospital	Joe Kelly (1979-1982)	5
6329327	Sheehan, John (I)	Torchy Plays with Dynamite (1939)	Desk Sergeant, O'Toole	-1
6329683	Sheen, Martin	Edge of Night, The	Roy Sanders (1967)	11
6330045	Sheffield, Reginald	Old English (1930)	Bob Pillin	4
6330224	Sheinkopf, David	Anarchy TV (1997)	Reporter	24
6330886	Shelton, Timothy	Making of a Male Model (1983) (TV)	Mark	-1
6331657	Shepard, John	General Hospital	Nick Barnes #2 (1991)	5
6331920	Shepherd, John (V)	Bobby Jones, Stroke of Genius (2004)	Bob Woodruff	-1
6332058	Shepley, Michael (I)	Private Secretary, The (1935)	Henry Marsland	6
6332059	Shepley, Michael (I)	Quiet Wedding (1941)	Marcia's Husband	13
6331228	Sheppard, William Morgan	Hungry Bachelors Club, The (1999)	Mr. Ringold	10
6332545	Sherlock, Charles (I)	I Was a Communist for the FBI (1951)	Bit Part	-1
6333693	Sherwood, George	They Won't Believe Me (1947)	Highway Cop	-1
6334652	Shifres, Ed	King and Me, The (1999)	Elvis Presley	-1
6334847	Shiina, Kippei	Over Time	Tatsuhiko Kuga	8
6335036	Shilov, V.	Ya shagayu po Moskve (1963)		-1
6335262	Shimada, Ryuzo	Zatoichi sakate giri (1965)		6
6335800	Shimomoto, Tsutomu	Akitsu onsen (1962)	Army Doctor	-1
6335940	Shimura, Takashi	Jiraiya (Ninjutsu sanyôden) (1937)		5
6336515	Shin, Sung-il	Utgo saneun Park Seo-bang (1972)		-1
6336685	Shin, Yeong-gyun	Mokmeyeo bulleobwado (1969)		1
6337303	Shing, Fui-On	Zhong huan ying xiong (1991)	Mad Bo	-1
6338844	Shipp, Robert	Wild Pair, The (1987)	Bear	19
6337526	Shishido, Jo	Ajia himitsu keisatsu (1966)	Georgie Eaton	2
6337969	Shkurin, V.	Ya shagayu po Moskve (1963)		-1
6338098	Shoberg, Richard	Edge of Night, The	Kevin Jameson #1 (1972-1975)	11
6339154	Short, Antrim	Married? (1926)	Chuck English	6
6339457	Shorter, Ken	Ned Kelly (1970)	Aaron Sherritt	23
6324082	Shannon, Harry (I)	Northwest Stampede (1948)		-1
6324148	Shannon, Jack (I)	Square Shooter (1935)	Baxter rider	-1
6324739	Sharian, John	Do Not Disturb (1999)	Bodyguard	-1
6324978	Sharkey, Ray	Some Kind of Hero (1982)	Sgt. VInnie DiAngelo (Eddie's cellmate in prison camp)	3
6325224	Sharman, Jason	Rats, The (2002) (TV)	Subway passenger	-1
6325571	Sharp, Monti	General Hospital	Justus Ward #2 (1998-1999)	5
6325588	Sharp, Richard D.	Love Potion (1987)	Carson	23
6325674	Sharpe, David (I)	Air-Tight (1931)		3
6325818	Sharpe, John (I)	Face in the Frame, The (1998)	Police Officer 1	-1
6326301	Shaughnessy, Charles	General Hospital	Alistair Durban (1983)	5
6326731	Shaw, C. Montague	Holt of the Secret Service (1941)	Chief John W. Malloy	9
6345937	Silva, Adriano	Palácio de Vênus (1980)		-1
6347893	Silva, David (I)	Rage (1966)	Bus Driver	10
6347990	Silva, Eduardo (I)	Tronco do Ipê, O		-1
6346613	Silva, João Salaviza	Enfant du secret, L' (1996) (TV)		-1
6346721	Silva, Palmerin	Tudo é Música (1957)		-1
6347077	Silveirinha	Entre Mulheres e Espiões (1961)		8
6346146	Silver, Joe	Edge of Night, The	Davey Davidson (1962)/Danny Fenton (1966)	11
6346243	Silver, Robert (I)	Gigli (2003)	Man in Debt	5
6346381	Silvera, Joey	Addicted to Love (1988)		-1
6347161	Silvera, Joey	Eclipse (1993) (V)		-1
6347351	Silvera, Joey	Other Side of Chelsea, The (1993) (V)		-1
6348735	Silvestre, Armando	Rage (1966)	Antonio	4
6348761	Silvestre, Armando	Thunderbirds (1952)	Cpl. Ralph Mogay	7
6348973	Sim, Alastair	Private Secretary, The (1935)	Mr. Nebulae	7
6349011	Sim, Gerald	I Could Go on Singing (1963)	Assistant Mgr. at the Palladium	11
6349119	Sima, Oskar	Frau, nach der man sich sehnt, Die (1929)	Charles Leblanc	4
6349303	Simac, Silvio	Team One (2003)	Silvio Simac	-1
6349341	Simanovsky, Aleksei	Prival strannikov (1991)		-1
6349375	Simari, Leopoldo	Casamiento de Chichilo, El (1938)		1
6349956	Simko, Juraj	Andel milosrdenství (1994)	Krystof	2
6350200	Simmons, Dick (I)	Thunderbirds (1952)	Capt. Norton	11
6350489	Simmons, Richard (I)	General Hospital	Himself (1979)	5
6350698	Simms, Hal	Edge of Night, The	Sub-Announcer (Between 1966 and 1972)/Announcer (1972-1984)	-1
6351696	Simone, Ralph	Flight Lieutenant (1942)	Bartender	-1
6351767	Simonet, Raphaël	Parfum d'Yvonne, Le (1994)	O.A.S. Man	22
6351796	Simonetti, Enrico	Amanti (1968)		7
6351825	Simonian, Robert	Real Bullets (1990)	Sheriff's Deputy	53
6352307	Simplício	Tudo é Música (1957)		-1
6352586	Simpson, Ivan F.	Old English (1930)	Joe Pillin	7
6353215	Simpson, Russell	Valley of the Giants (1938)	'Mac' McKenzie	11
6353418	Sims, Milton	Flat Harmony (1917)		3
6353491	Sims, Warwick	General Hospital	Basil Durban (1982)	5
6353589	Simun, Peter	Andel milosrdenství (1994)	Fero	4
6354418	Sinclair, Ken (I)	Highway 61 (1991)	Rock Band Member #4	32
6354673	Sindiyo, Davis	Face to Face (1990) (TV)	Photographer at Press Conference	-1
6339983	Shriner, Kin	General Hospital	Scotty 'Scott' Baldwin #6 (1977-1980, 1981-1984, 1988-1993, 2000-2003)	5
6340128	Shroff, Jackie	Return of Jewel Thief (1996)	CBI Officer Jatin Kumar	-1
6340157	Shrog, Maurice	Beer (1985)	Bartender Eddie	15
6341275	Shumway, Lee	Valley of the Giants (1938)		-1
6341382	Shurupov, V.	Ya shagayu po Moskve (1963)		-1
6342647	Sicari, Joseph R.	General Hospital	Freddy (1995)	5
6343102	Siedhoff, Joost	Tatort - Tödlicher Treff (1987) (TV)		8
6343448	Siegert, Kristopher	Carnal Passion (2001) (V)	Party Guest	25
6345104	Sikking, James	General Hospital	Dr. James Hobart (1973-1976)	5
6345252	Silbar, Stuart	General Hospital	Henderson (1986)	5
6345522	Siles, Mario	Monosabio, El (1977)	Taylors' employee	23
6355008	Singer, León	Vamos juntos	Renato	-1
6355360	Singh, Dara	Ramayan	Hanuman	3
6355481	Singh, K.N.	Qaid (1975)		-1
6356933	Sirgo, Louis	New Orleans After Dark (1958)	Detective John Conroy	2
6357709	Sites, Brian	Gigli (2003)	High School Kid #2	11
6357872	Sitka, Emil	Two Roaming Champs (1950)		-1
6358240	Sixto, Marlon	They Nest (2000) (TV)	Swanilli Crew #3	36
6358880	Skaldov, A.	Tetri mkhedari (1929)	Giorgi, labourer	1
6359431	Skelton, Roy	Rainbow	Zippy/George (1973-1992)	-1
6360289	Sklenka, Johann	Weiße Stadt, Die (1980) (TV)	Reznicek	4
6360720	Skopecek, Jan	Waterloo po cesku (2002)	Pensionary Krobot	8
6360927	Skousen, Niels	Ta' det som en mand, frue! (1975)	Sekretær	17
6360954	Skovhus, Arne	Ta' det som en mand, frue! (1975)	Personalechef	11
6361062	Skraup, Karl	Premiere (1936)	Requisiteur Lohrmann	8
6361111	Skripek, Frantisek	Velké prání (1981)	Jan Poncar	1
6361654	Slaff, Jonathan	Beer (1985)	Board Room Executive	34
6362061	Slater, Christian	Good Shepherd, The (2004)	Father Daniel Clemens	1
6362296	Slattery, Charles	Unmasked (1929)	Inspector Collins	4
6362421	Slaughter, Jeri	Gigli (2003)	Beach Dancer	48
6362474	Slaughter, Sgt.	WWF Attitude (1999) (VG)	Himself	-1
6362618	Slavin, Slick	Atomic Kid, The (1954)	Corporal	-1
6363508	Slonka, Jerzy	Zycie za zycie (1991)		24
6363955	Smaila, Umberto	Miei più cari amici, I (1998)		-1
6364133	Smalley, Phillips	Bargain, The (1912)		1
6365318	Smirnov, Aleksei	Ya shagayu po Moskve (1963)		12
6365613	Smith, A.J.	Platoon Leader (1988)	Lt. Riley	14
6366186	Smith, Bubba (I)	Wild Pair, The (1987)	Benny Avalon	2
6367426	Smith, Eugene (I)	Edge of Night, The	Steven Adler (1984)	11
6367862	Smith, Hal	Hey There, It's Yogi Bear (1964)	Corn Pone	-1
6368660	Smith, Joseph Darr	I Was a Communist for the FBI (1951)	Goon	-1
6368909	Smith, Kevin (I)	Starwoids (2001)	Himself	-1
6368864	Smith, Kerr	Critical Assembly (2003) (TV)	Bobby	2
6369174	Smith, Nicholas	Fiction Makers, The (1968)	Bishop	7
6370491	Smith, Ron (IX)	Chickboxin Underground (1999)	Fine Dressed Personal Manager	31
6371317	Smith, William (I)	Platoon Leader (1988)	Major Flynn	10
6371881	Smolka, Ken	General Hospital	Charlie Lutz (1980)	5
6372000	Smoorenburg, Ron	Good, the Bad & the Innocent, The (2001)	The Bad?	1
6372371	Smythe, Marcus	General Hospital	Ross (1990)	5
6372399	Smytt, Benno	Perle von Tokay, Die (1953)		12
6372691	Snell, David (II)	Edge of Night, The	Peter Nevins (1983-1984)	11
6372729	Snell, James	Not a Penny More, Not a Penny Less (1990) (TV)	Philip Izard	-1
6372830	Snider, Dee	Warning: Parental Advisory (2002) (TV)	Himself	3
6373138	Snow, Norman	Edge of Night, The	Matth Sharkey #1 (1980)	11
6373139	Snow, Norman	General Hospital	Broxton (1986)	5
6373291	Snyder, Billy	Atomic Kid, The (1954)	Croupier	-1
6373551	Snäckan	Prins hatt under jorden (1980)	Horse	7
6373906	Sobecki, Dariusz	Do Not Disturb (1999)		-1
6374372	Sobrinho, Grijó	Tudo é Música (1957)		-1
6374534	Sodann, Peter	Tatort - Tod aus der Vergangenheit (1992) (TV)	Hauptkommissar Ehrlicher	1
6374635	Soderling, Walter	Grand Central Murder (1942)	The Coroner	-1
6376142	Soldan, Louis	Noch minderjährig (1957)		-1
6376268	Solenghi, Tullio	Moglie in vacanza... l'amante in città, La (1980)		5
6376455	Soler, Andrés	Río de las ánimas, El (1964)		-1
6376761	Soler, Fernando	Ángeles de Puebla, Los (1968)	Rodolfo Ibanez Renteria	5
6377229	Sollima, Sergio	Revolver: Calling the Shots (2002) (V)	Himself	-1
6377423	Solomin, Yuri	Prival strannikov (1991)		-1
6377548	Solomon, Timothy	Breakin' (1984)	Electro Rock 2	8
6379398	Son, Seung-hwan	Jeolmeun shigyetab (1982)	Kim Sang-cheol	1
6379761	Sonnenschein, Klaus	Tatort - Rattennest (1972) (TV)	Rudi	10
6379919	Soo Hoo, Hayward	Some Kind of Hero (1982)	Soldier	-1
6380096	Soper, Mark	Tempest (1982)	Mark	20
6380327	Sordi, Alberto	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Fausto Di Salvio	1
6380886	Soriano, Juan Manuel	Páginas en negro, Unas (1950)		-1
6381014	Sorimachi, Takashi	Over Time	Soichiro Kaede	1
6381217	Sorokozov, V.	Ya shagayu po Moskve (1963)		-1
6381450	Sorribas, Jaume	Feliz cumpleaños (1987)		6
6382064	Sotirov, Nikolai	Duhat na bashta mi (1998) (TV)	Skulptorat	4
6382776	Soto, Richard (I)	General Hospital	Nick Barnes #1 (1990)	5
6383221	Souglakos, Apostolos	Jack o kavalaris (1979)		-1
6384157	Sovagovic, Fabijan	Hocu zivjeti (1982)		-1
6384488	Sowerbutts, Peter	Rainbow	Peter the Postman (1988)	-1
6384588	Soydan, Murat	Kara gözlüm efkarlanma (1968)		-1
6384792	Space, Arthur	Grand Central Murder (1942)	Detective with Doolin	-1
6385471	Spain, Douglas	Rave (2000)	Daffy	1
6386575	Spano, Vincent	Rats, The (2002) (TV)	Jack Carver	2
6386583	Spano, Vincent	Unknown Cyclist, The (1998)	Frank Cavatelli	2
6386686	Sparks, Adrian	Grandma Didn't Wave Back (1984) (TV)	Dad	3
6386191	Speakman, Jeff	Lionheart (1990)	Mansion Security Man	35
6433905	Suarez, Miguel	Toda una vida		-1
6387274	Specht, Ernst	Tatort - Kein Kinderspiel (1980) (TV)	Gruber	18
6389232	Spiegel, Scott	Lionheart (1990)	Pool Fight Bookie	38
6390029	Spinella, Stephen	Unknown Cyclist, The (1998)	Doug Stein	4
6390159	Spinetti, Victor	Infidelities (1983) (TV)		-1
6390833	Spivak, Lawrence E.	Keep Posted	Himself/panelist	2
6390952	Spoletini, Guglielmo	Trastevere (1971)		-1
6391643	Springborg, Mark	Hjem til fem	Viktor	-1
6391765	Springfield, Rick	General Hospital	Dr. Noah Drake (1981-1983)	5
6392672	Srdoc, Milan	Hocu zivjeti (1982)		-1
6392803	Sreekumar, Jagathi	Jagratha (1989)	Vikram	-1
6393362	St. Clair, Maurice	Lady, Let's Dance (1944)	Manuelo	7
6393705	St. Esprit, Patrick	Wild Pair, The (1987)	Commando	27
6393796	St. Jacques, Raymond	Wild Pair, The (1987)	Ivory	5
6393843	St. James, David	General Hospital	Soames (1997)	5
6393858	St. James, Mark	General Hospital	The Edge (1990-1991)	5
6393880	St. James, Scott (II)	Eclipse (1993) (V)		-1
6394163	St. John, Andrew (II)	General Hospital	Kyle Ratcliffe (2003)	5
6394165	St. John, Anthony (II)	They Nest (2000) (TV)	Swanilli Crew #1	34
6394675	St. Patrick, Mathew	General Hospital	Det. Marcus Taggart #2 (1997)	5
6395610	Stadlbauer, Hans	Meister Eder und sein Pumuckl	Postbode	-1
6395663	Stadlober, Robert	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Marco Pabst	-1
6395722	Stadtmüller, Hans	Meister Eder und sein Pumuckl	Rentner/Herr Schwertfeger	-1
6395734	Stadvec, Michael	General Hospital	Jack Kensington, Jr. (1992)	5
6395931	Stage, Benjamin	Anna - annA (1993)	Adrian #2	10
6395932	Stage, Manuel	Anna - annA (1993)	Adrian #1	9
6396552	Stait, Brent	Virginian, The (2000) (TV)	Griffin	9
6396777	Stallone, Frank	Brigitte Nielsen: The E! True Hollywood Story (2000) (TV)	Himself	-1
6396850	Stallone, Sylvester	Brigitte Nielsen: The E! True Hollywood Story (2000) (TV)	Himself	-1
6397062	Stamler, Keith	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Trauma Team Doctor #2	34
6397075	Stamm, Raimund	Comrades of Summer, The (1992) (TV)	Russian Ump	33
6397134	Stamos, John	General Hospital	Blackie Parrish (1982-1984)	5
6397562	Standing, Gordon	Married? (1926)	Clark Jessup	-1
6397822	Standing, Richard	Picking up the Pieces	Michael Lowther	-1
6398695	Stanley, Charles (I)	Shadow of the Cat (1961)	Dobbins	-1
6399257	Stanley, Sargeant	Way of the World, The (1920)	Bill Swayne	6
6400153	Stany, Jacques	Moglie in vacanza... l'amante in città, La (1980)		9
6400257	Stapenhorst, Steve	General Hospital	Nelson (1995)	5
6400641	Stardust, Cesar	Carnal Passion (2001) (V)	Party Guest	20
6400765	Stark, Don	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Officer Driscoll	23
6400791	Stark, Don	General Hospital	Ripley (1988)	5
6400998	Stark, Michael J.	Edge of Night, The	Barry Gillette (aka Sully) (1983)	11
6401221	Starmers-Smith, Nigel	Rugby Special	Presenter/Commentator	-1
6402972	Steblov, Yevgeni	Ya shagayu po Moskve (1963)	Sasha	4
6403050	Steck, Dietz Werner	Tatort - Kein Kinderspiel (1980) (TV)		16
6403101	Steckel, Leonard	Nachts ging das Telefon (1962)		-1
6403343	Steed, Jake	Cafe Fantasy (1996)		-1
6403470	Steed, Jake	Isis Blue 2 (1998) (V)		-1
6403716	Steel, Anthony	Goldsucher von Arkansas, Die (1964)	Lopez	13
6404262	Steele, David	Virginian, The (2000) (TV)	Shorty	33
6404438	Steele, Lee	Edge of Night, The	Mr. Hoffman (1981)	11
6404443	Steele, Lexington	2 On 1 (1998) (V)	Himself	-1
6405108	Steele, Tommy	Yeomen of the Guard, The (1978) (TV)	Jack Point	1
6405558	Steenbeke, Laus	Do Not Disturb (1999)	Fireman	-1
6405981	Stefanakis, Kostas	Galazio diamanti, To	Thief	-1
6406146	Stefanini, Fúlvio	Tronco do Ipê, O	Barão	-1
6406518	Steffler, Paul	John and the Missus (1987)	Pianist	23
6406570	Stegemann, Bernd	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Hans Mertens	5
6406832	Stehli, Edgar	Edge of Night, The	Connolly (1957)/Mr. Keys (1964)	11
6406838	Stehlin, Jack	General Hospital	Davis Reese (1997)	5
6406907	Steigberg, Uli	Tatort - 3:0 für Veigl (1974) (TV)	Nissel	10
6406909	Steigberg, Uli	Tatort - Schlußverkauf (1978) (TV)	Hausmeister	-1
6406912	Steigberg, Uli	Meister Eder und sein Pumuckl	2. Polizist	-1
6407485	Stein, Saul	Beer (1985)	Frankie Falcone	6
6407505	Stein, Saul	General Hospital	Stan (1986)	5
6407587	Steinbeck, Walter	Premiere (1936)	Director	7
6407729	Steinberg, Wolfgang	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Cheftechnologe	-1
6409625	Stenstrom, David	General Hospital	Neil Johnson (1986)	5
6408887	Stephan, Aram	Amants du Tage, Les (1955)		-1
6409707	Stephens, J.M.	Eleven P.M. (1928)	Reverend Hacket	-1
6410027	Stephenson, Anders	Big Pile, The (1985)	Chip N' Dale's Dancer	17
6410146	Stephenson, Henry	Tarzan Finds a Son! (1939)	Sir Thomas Lancing	5
6410287	Stephenson, John (I)	Littles, The		-1
6410578	Steppling, John (I)	Guardian's Luck, A (1912)		1
6410942	Sterling, Ford	Gusher, The (1913)		-1
6411229	Sterling, Philip	Edge of Night, The	Johnny The Hitman (1968)	11
6411966	Stetson, Bob	Wild Pair, The (1987)	Dennis	22
6412180	Stevens, Alex (I)	Lovely Way to Die, A (1968)	Lumson	20
6412308	Stevens, Bert (I)	I Was a Communist for the FBI (1951)	Communist at Meeting	-1
6413233	Stevens, Leon B.	Edge of Night, The	Buck Lange (1964)/Carlton DeWtt (1973)	11
6413685	Stevens, Ronnie	Tea at the Ritz (1963) (TV)	Arnold Barnes	2
6413707	Stevens, Roy K.	Beer (1985)	Board Room Executive	35
6414047	Stevenson, Bob (I)	Tall, Dark and Handsome (1941)		-1
6414058	Stevenson, Bob (I)	Valley of the Giants (1938)		-1
6414260	Stevenson, Hayden	Cross Country Run (1929)		4
6416102	Stewart, Paul (I)	Tempest (1982)	Phillip's Father	8
6416242	Stewart, Rod (I)	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Song Performer "Da Ya Think I'm Sexy?"	20
6416626	Stickan, Walter	Dumm gelaufen (1997)	Jäger	14
6417655	Stillwell, Kevin	Bobby Jones, Stroke of Genius (2004)	Reporter No. 5	58
6418610	Stockdale, Carl	End of the Circle, The (1913)		-1
6419175	Stockwell, Dean	They Nest (2000) (TV)	Sheriff Hobbs	2
6421365	Stone, Fred (III)	Shadow of the Cat (1961)	Ambulance Man	-1
6421607	Stone, Hank	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Joe	24
6440111	Surendra (I)	1857 (1946)		-1
6421810	Stone, Julian (I)	General Hospital	Jerry Jacks (1998-1999)	5
6421984	Stone, Kyle	Other Side of Chelsea, The (1993) (V)		-1
6422247	Stone, Leonard	General Hospital	Packy Moore (1982)	5
6422369	Stone, Lewis	Son-Daughter, The (1932)	Dr. Dong Tong	3
6422377	Stone, Lewis	Strictly Unconventional (1930)	Clive Champion-Cheney	4
6422417	Stone, Mark (I)	Quiet Wedding (1941)		-1
6423134	Stoney, Jack	I Was a Communist for the FBI (1951)	Jack, Communist Goon	-1
6423189	Stoney, Kevin	Shadow of the Cat (1961)	Father	-1
6423191	Stoney, Kevin	Voices, The (1955) (TV)	Dr Wooley	-1
6423260	Stopar, Daniel	Crni kisobran (1969)		-1
6424511	Stoskov, Yuri	Prival strannikov (1991)		-1
6424532	Stoss, Franz	Tatort - Mordverdacht (1971) (TV)		-1
6425606	Strandberg, Claus	Ta' det som en mand, frue! (1975)	Harry	8
6425695	Strandler, Lewis	Edge of Night, The	Daniel Morrissey (1961)	11
6426074	Strang, Harry	They Won't Believe Me (1947)	Ryan	-1
6426799	Strassner, Fritz	Tatort - 3:0 für Veigl (1974) (TV)	Richter	15
6426808	Strassner, Fritz	Meister Eder und sein Pumuckl	Herr Lederer	-1
6427502	Strauss, Michel	Ángeles de Puebla, Los (1968)	El Joven	15
6427554	Strauss, Robert (I)	Atomic Kid, The (1954)	Stan Cooper	2
6408264	Steinhauer, Erwin	Tatort - Hahnenkämpfe (1997) (TV)	Herzig	-1
6409407	Stemmer, Roland	Tatort - Schwarzer Advent (1998) (TV)		-1
6428983	Strocchio, Jacques	Not a Penny More, Not a Penny Less (1990) (TV)		-1
6428985	Strochero, Sergio	Asesinato en tres variantes con dos incógnitas y un maniquí (1987)		-1
6429129	Stroinski, Krzysztof	Moje miasto (2002) (TV)	Gozdzik's father	3
6429150	Stroka, Michael	Edge of Night, The	Dr. Quentin Henderson (1975-1976)	11
6429543	Strong, Michael (I)	Overboard (1978) (TV)	Bernie Bertelli	-1
6429552	Strong, Michael (I)	Edge of Night, The	Oliver 'Ollie' Barbour (1957-1958)/Dick Appleman (1959)	11
6429559	Strong, Patrick (I)	General Hospital	David McAllister #1 (1989)	5
6429936	Stroy, Eric	Anarchy TV (1997)	African-American Family	40
6430073	Struebin, Michael	Tatort - Kein Kinderspiel (1980) (TV)	Olaf	10
6431302	Stuart, Frank	À la vitesse d'un cheval au galop (1992)	M. Derouin	27
6431375	Stuart, Ian (I)	Happy Go Lovely (1951)	Principal Dancer	24
6431760	Stuart, Roy	General Hospital	Roland (1984)	5
6431799	Stuart, Sylvesta	They Nest (2000) (TV)	Ensign	33
6432058	Studds, Patrick	Chompin' at the Bit (1997) (V)		-1
6432096	Studer, Hal	Edge of Night, The	Joey (1964)/Doug Hastings (unknown)	11
6432271	Stuhr, Jerzy	Zycie za zycie (1991)	Pralat	8
6433705	Stübner, Veit	Tatort - Der vierte Mann (2004) (TV)		-1
6434071	Subik, Péter	Heten, mint a gonoszok (1943)	A gyerekzenekar tagja	-1
6434321	Sucharipa, David	Waterloo po cesku (2002)		15
6434545	Sudarmadji, S.	Pendekar bujang lapok (1959)	Samseng	19
6434633	Sudhakar (IV)	Raju-Peda (1954)		2
6435531	Suhrmann, Emil	Taxi-Gattin (1950)		2
6436317	Sullivan, Brick	Holiday for Sinners (1952)	Bartender	-1
6436318	Sullivan, Brick	I Was a Communist for the FBI (1951)	Worker in Fight	-1
6436371	Sullivan, Brick	Who Killed Doc Robbin? (1948)	Cop	-1
6442421	Suzuki, Kazumasa	Help!		7
6436530	Sullivan, Charles (I)	I Was a Communist for the FBI (1951)	Crowd Extra	-1
6436706	Sullivan, Charles (I)	Torchy Plays with Dynamite (1939)	Charlie	-1
6437146	Sullivan, James (VI)	Eclipse (1993) (V)		-1
6437160	Sullivan, Jeremiah (I)	General Hospital	Michel (1986)	5
6437217	Sullivan, John M.	Three Men on a Horse (1936)	Bookie	-1
6437325	Sullivan, Liam (II)	General Hospital	Dr. Wallace (1988)	5
6437446	Sullivan, Roy	General Hospital	Roy Lansing #2 (1964)	5
6438127	Summers, Bo	Marine Crucible (1997)		-1
6438423	Summers, Yale	General Hospital	Dr. Bob Ayres (1964-1965)	5
6438703	Sumner, Josef	Reise ohne Wiederkehr (1989)		-1
6438723	Sumner, Peter	Ned Kelly (1970)	Tom Lloyd	25
6439695	Sung, Mark	Team One (2003)	Shanghi Charlie	-1
6439707	Sunga, George	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	14
6439900	Supernaw, W.M.	Beer (1985)	Board Room Executive	36
6440461	Surowiec, Sonny	Black Thunder (1997)	Elias	-1
6427805	Strecker, Frank	Tatort - Kein Kinderspiel (1980) (TV)	Assistent Wagner	2
6427997	Streibel, Alfons	Bücher (1986)	Himself	-1
6428295	Strickler, Jerry	Edge of Night, The	Lonnie Winters #1 (1966)	11
6428706	Stritzel, Oliver	Meister Eder und sein Pumuckl	Motorbootfahrer	-1
6428798	Strljic, Milan	Hocu zivjeti (1982)	Filip	-1
6442473	Suzuki, Kazuo	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		14
6442726	Suárez, Alejandro	Amantes frios, Los (1978)	Marcolino (segment "El Difunto al pozo y la viuda al gozo")	12
6442838	Suárez, Enrique (II)	Pequeños gigantes, Los (1960)		-1
6443055	Suárez, Luis (V)	Reed, México insurgente (1973)		-1
6443174	Suárez, Sonsoles	Espejo público	Host (2002-)	3
6443290	Svartdal, Egil	SøndagsÅpent	Programleder (1993-)	1
6443663	Svensson, Christian	General Hospital	Joey (1990)	5
6444135	Svoronos, Nikos	Teleftea Sinentefxi tou Nikou Svoronou: O Nikos Svoronos Milai gia ton Niko Poulantza (1988)	Himshelf	-1
6445585	Swartz, Aaron	Do Not Disturb (1999)	Lt. Winter	11
6444952	Sweeney, James R.	General Hospital	Mr. Kosko (1995)	5
6445121	Sweet, Dolph	Lovely Way to Die, A (1968)	Haver	13
6445138	Sweet, Dolph	Edge of Night, The	Harry Constable (1967-1968)	11
6445190	Sweet, Harry	Dollar's Worth, A (1921)		1
6445983	Swetland, William	Edge of Night, The	Role Unknown (year unknown)	12
6446003	Swettenham, Neal	Not a Penny More, Not a Penny Less (1990) (TV)	Simon	-1
6447701	Switzer, Carl 'Alfalfa'	Our Gang Follies of 1936 (1935)	Alfalfa	-1
6447759	Switzer, Harold	Our Gang Follies of 1936 (1935)		-1
6447949	Szakácsi, Sándor	Amerikai cigaretta (1977)	Editor	7
6448277	Szczepkowski, Andrzej	Zycie za zycie (1991)	Górecki	6
6450414	Sáenz, Armando	Ladrona, La (1954)		5
6450628	Sáez, Rufino	Monosabio, El (1977)	Aguayo	24
6450859	Sánchez Navarro, Rafael	Valentina	Renato	-1
6450967	Sánchez Polack, Fernando	Verano azul	Frasco	-1
6451300	Sánchez, Jordi (I)	Un per l'altre, L'	Toni	1
6451446	Sánchez, Martín (II)	Rebaño, El (1997)		4
6451655	Sánchez, Salvador	Toda una vida		-1
6451772	Sárdy, János	Heten, mint a gonoszok (1943)	Galuska,hintáslegény	-1
6452173	Séria, Joël	Conte à regler (1978)		-1
6452482	Söderström, Clärenore	Im Auto durch zwei Welten (1929)		-1
6452629	Sörös, Sándor	Amerikai cigaretta (1977)	Boy	11
6452865	Sørensen, Mogens (II)	H.O.P.L.A.	Pianist	-1
6454027	Tadic, Ljuba (I)	Nocna kafana (1967) (TV)		-1
6454473	Taft, Woody	Bobby Jones, Stroke of Genius (2004)	Jess Sweetser	50
6454606	Tager, Aron	Rats, The (2002) (TV)	Janitor	10
6454744	Taggart, Ben	Skinny the Moocher (1939)		5
6454808	Taggart, Joe	General Hospital	Vito (1988)	5
6454965	Taguchi, Tomorowo	Ijô no hitobito: Densetsuno nijino sankyôdai (1993)		3
6455545	Tajes, Juan Carlos	Cowboy uit Iran (1999) (TV)		-1
6455552	Tajima, Hiroshi	Kata (1990)	Sensei	1
6455763	Takada, Minoru	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		11
6456685	Takashima, Tadao	Shin kitsune no tameki (1962)		8
6441555	Sutton, Brad (I)	Martyrdom of Philip Strong, The (1916)	Hooks	11
6441725	Sutton, Grady (I)	Air-Tight (1931)		2
6442041	Sutton, Michael (I)	General Hospital	Michael (Mike) 'Stone' Cates (1993-1995)	5
6442089	Sutton, Paul (I)	Tall, Dark and Handsome (1941)		-1
6442274	Suwita, Omar	Pendekar bujang lapok (1959)	Omar (Samseng)	14
4472326	Aames, Willie	Edge of Night, The	Robbie Hamlin (1983)	11
4471697	Abashidze, Dodo	Magdanas lurja (1955)		-1
4471930	Abaza, Rushdy	Tamr henna (1957)		-1
4472591	Abbasov, Dilmurad	Ukhodya, ostayutsya (1987)		14
4472885	Abbott, J.F.	Just Jim (1915)		-1
4473019	Abbott, Norman (I)	Grand Central Murder (1942)		-1
4470915	Abbott, Philip	General Hospital	Dr. Alex Baker (1987)	5
4473138	Abe, Goro	Jiraiya (Ninjutsu sanyôden) (1937)		3
4473541	Abel, Ervin	Noor pensionär (1972) (TV)	Noor pensionär	-1
4474526	Abercrombie, Ian	General Hospital	Clive Durban (1993)	5
4473629	Abildgaard, Ulver Skuli	Hjem til fem	Ulrik	-1
4473837	Abolins, Tálvialdis	Albert Einstein (1990) (TV)	Albert Einstein	-1
4474075	Abraham, Jake (II)	Help!	Davva	-1
4475131	Abreu, Gustavo	Reed, México insurgente (1973)		-1
4477206	Acaiabe, João	Tronco do Ipê, O	Benedito	-1
4477209	Acajou	Overboard (1978) (TV)	Fisherman	-1
4475189	Accorsi, Stefano	Fratelli e sorelle (1991)		6
4476135	Acosta, Balbino	Agujetas en el alma (1998)	Actor tocón	43
4476230	Acosta, Hugo (I)	Valentina	José Manuel	-1
4478636	Acree, Donald	Beer (1985)	Michael Morrison	18
4478015	Adair, Dwight	Warning: Parental Advisory (2002) (TV)	Frank Zappa's Manager	29
4479078	Adam, Ronald	Man Who Could Cheat Death, The (1959)	Doctor	-1
4479356	Adams, Arthur (I)	Greatest, The (1977)	Cassius Clay Senior	5
4477357	Adams, Buck	Bare Ass Beach (1994) (V)		-1
4477422	Adams, Buck	Eclipse (1993) (V)		-1
4477595	Adams, Casey (II)	Chompin' at the Bit (1997) (V)		-1
4477629	Adams, Corky	Chompin' at the Bit (1997) (V)		-1
4477691	Adams, David (I)	Some Kind of Hero (1982)	The Kid	8
4479754	Adams, Ernie (I)	Square Shooter (1935)	Himself	-1
4479952	Adams, Jason (I)	Lionheart (1990)	François	11
4481122	Adams, Joel (II)	General Hospital	Mr. Broussard	5
4481511	Adams, Richard (II)	Team One (2003)	Light Brigade One	-1
4480085	Adams, Stanley (I)	Atomic Kid, The (1954)	Wildcat Hooper	14
4480273	Adams, Ted (I)	Holt of the Secret Service (1941)	Quist	5
4480421	Adams, Tom (I)	General Hospital	Dr. Wallman	-1
4480437	Adams, Tony (II)	General Hospital	Dr. Neville Bywaters	3
4480627	Adamson, James (I)	I Was a Communist for the FBI (1951)	Picket	-1
4482159	Addison, Walter	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Bailiff	29
4482305	Addy, Wesley	Edge of Night, The	Dr. Hugh Campbell (1958-1959)	11
4482503	Adelstein, Jim	Deadlock: A Passion for Murder (1997)	Collins	13
4482020	Adolphson, Edvin	Maria på Kvarngården (1945)	Birger Jern	1
4482706	Adorf, Mario	Goldsucher von Arkansas, Die (1964)	Matt Ellis	1
4485031	Affleck, Ben	Gigli (2003)	Larry Gigli	1
4485269	Afonso, Yves	À la vitesse d'un cheval au galop (1992)	Ulysse	1
4483637	Afritsch, Viktor	Illusion in Moll (1952)		9
4483698	Agadzhanyan, Varuzhan	9:30 (2003)	Grocer	-1
4484004	Agelakos, Kiriakos	Teleftea Sinentefxi tou Nikou Svoronou: O Nikos Svoronos Milai gia ton Niko Poulantza (1988)	Narrator	-1
4485670	Aguilar, Francisco (III)	Pequeños gigantes, Los (1960)		-1
4486771	Ahlapuro, Ossi	Käyntikorttini... (1964)		-1
4487964	Aicher, Marius	Go-Go-Girl vom Blow Up, Das (1969)		13
4488684	Ainsley, Paul	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	-1
4489718	Akey, Matt	Face in the Frame, The (1998)	Police Officer 2	-1
4490077	Akins, Claude	Killers, The (1964)	Earl Sylvester	5
4490599	Aksenov, V.	Vo l'dakh okeana (1953)	Narrator	1
4490634	Aktan, Ali Tevfik	Izmir sokaklarinda (1953)		4
4490662	Akutsu, Kentaro	Help!		9
4490994	Alacid, José Antonio	Monosabio, El (1977)	Priest	20
4490999	Aladdin, Johnny	New Orleans After Dark (1958)	Fighter	7
4491247	Alan, George	Carnal Passion (2001) (V)	Party Guest	13
4491322	Alane, Bernard	Dame de lieudit, La (1993) (TV)	Demos	3
4491400	Alaniz, Rico	Santiago (1956)	Dominguez	-1
4491789	Alatorre, Enrique	Reed, México insurgente (1973)		-1
4491839	Alaznispireli, A.	Magdanas lurja (1955)		-1
4492216	Albanese, Antonio	È già ieri (2004)	Filippo	1
4492293	Albany, David	Help!	Lenny	-1
4492402	Albee, Denny	Edge of Night, The	Det. Steve Guthrie (1976-1980)	11
4492959	Albert, Eddie	General Hospital	Jack Boland #1 (1993)	5
4494064	Albrecht, Josef	Maulkorb, Der (1958)	Kriegsminister	22
4494109	Albright, Dan	Bobby Jones, Stroke of Genius (2004)	Robert Tyre Jones, Sr.	7
4494432	Alcaide, Jean-Louis	Conte à regler (1978)		-1
4494555	Alcaraz, Eduardo	Ladrona, La (1954)		7
4495930	Alder, Thomas	Goldsucher von Arkansas, Die (1964)	Erik Brendel	6
4496182	Alderson, Erville	Square Shooter (1935)	Dr. Wayne	3
4496811	Alegro, Arturo	Toda una vida		-1
4496837	Alejandro	Casting de maduras (2001) (V)		6
4497024	Aleksandrov, Vadim	Dva patrona na mamonta (1990)		9
4497251	Aleksiev, Stoyan	Duhat na bashta mi (1998) (TV)	Bashtata	2
4497410	Alemán, Julio	Perra, La (1967)	Lucas	2
4497445	Alemán, Julio	Ángeles de Puebla, Los (1968)	Leonardo Reyes	1
4497763	Aletter, Frank	General Hospital	Mayor Richmond (1991)	5
4498428	Alexander, Georg (I)	Dame von Paris, Die (1927)		4
4498433	Alexander, Georg (I)	Ehestreik (1930)		-1
4498505	Alexander, Georg (I)	Orlow, Der (1927)		-1
4498565	Alexander, Gordon (III)	Team One (2003)	Alexander the Great	-1
4499315	Alexander, Rolf	Happy Go Lovely (1951)	Principal Dancer	23
4499466	Alexander, Terence	Voices, The (1955) (TV)	Sir Alton Berkeley	-1
4499541	Alexander, Zbigniew	Rot in Zanzibar (1954)	Bartender	-1
4499908	Alexandris, Dimitris	Eglimata	Thomas	-1
4500335	Alfonso, Kenny	Bobby Jones, Stroke of Genius (2004)	Eben Byers	10
4500930	Ali, Muhammad	Greatest, The (1977)	Himself	1
4501528	Ali, Rahaman	Greatest, The (1977)	Himself	7
4501100	Aljinovic, Boris	Tatort - Der vierte Mann (2004) (TV)	Kommissar Felix Stark	-1
4501406	Allan, Jed	General Hospital	Edward L. Quartermaine #3 (2004-)	-1
4502124	Allard-Graham, Gabriel	Boys of St. Vincent, The (1992) (TV)	Boy of St. Vincent	22
4502456	Allen, Alfred	Speed (1925)	Nat Armstrong	5
4503205	Allen, Jack (I)	Ned Kelly (1970)	Melbourne	-1
4503595	Allen, Marty	Mister Jerico (1970) (TV)	Wally	4
6629440	Wells, David (I)	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Minister	30
6629520	Wells, Gene N.	General Hospital	Pritchett (1987)	5
6629666	Wells, Juan	Patty's Posse	Himself	3
6629729	Wells, Lloyd	Greatest, The (1977)	Himself	15
6630085	Welsh, Bill (I)	Atomic Kid, The (1954)	Commentator	13
6628393	Welsh, Ronnie	Edge of Night, The	Lee Pollock #1 (1962-1964)	11
6630880	Wenck, Ewald	Margots Freier (1919)		-1
6631131	Wendt, George (I)	Anarchy TV (1997)	Abbey Archer	9
6631780	Wepper, Fritz	Go-Go-Girl vom Blow Up, Das (1969)		7
6631891	Werich, Jan	Medved (1961)		1
6632009	Werner, Douglas	Edge of Night, The	Dr. Chris Neely (1976-1977)	11
6630459	Weschke, Wilfried	Tatort - Tod aus der Vergangenheit (1992) (TV)	Arzt	20
6633406	West, Bernard	Three's Company: The E! True Hollywood Story (1998) (TV)	Himself	11
6634304	West, Lockwood	Man Who Could Cheat Death, The (1959)	First Doctor	-1
6634367	West, Martin (I)	General Hospital	Dr. Phil Brewer #5 (1967-1975)	5
6632499	West, Randy (I)	Bikini Beach (1993) (V)		-1
6632633	West, Randy (I)	Eclipse (1993) (V)		-1
6635551	West, Tue	Overland Riders (1946)	Henchman	-1
6635454	Weström, Lars	Tatort - Schwarzer Advent (1998) (TV)		-1
6636621	Wetzel, Thomas	Romeo und Julia auf dem Dorfe (1984)		-1
6636644	Wewerka, Christian	Reise ohne Wiederkehr (1989)		-1
6636822	Weyman, Teo	Rats, The (2002) (TV)	Big kid	20
6637030	Whaley, Frank	Flying Blind (1990) (TV)		4
6637626	Whalin, Justin	General Hospital	Alan 'A. J.' Quartermaine, Jr. #5 (1988)	5
6637943	Wheatley, Alan (II)	Shadow of the Cat (1961)	Inspector Rowles	9
6638130	Wheeler, Andrew (I)	They Nest (2000) (TV)	Dr. Mark Drayton	22
6638430	Wheelwright, Ernie	Greatest, The (1977)	Bossman Jones	18
6637197	Whipp, Joseph	General Hospital	Marty (1991)	5
6637474	Whitaker, Johnny	General Hospital	Scotty 'Scott' Baldwin #1 (1965)	5
6638681	Whitaker, Slim	Man from New Mexico, The (1932)	Henchman Russ	9
6638711	Whitaker, Slim	Overland Riders (1946)	Jeff Barkley	4
6638791	Whitaker, Slim	Square Shooter (1935)	Henchman	-1
6639220	White, Charles (I)	Edge of Night, The	Undertaker (1967)	11
6639121	White, Bernard (I)	General Hospital	Ric Ortega (1992)	5
6639788	White, Ian (II)	General Hospital	Dr. Peter Ridge (1975)	-1
6639897	White, Jackie (II)	Our Gang Follies of 1936 (1935)		-1
6640106	White, John Patrick	Black Thunder (1997)	Winston	-1
6641424	Whiteford, Blackie	Booty and the Beast (1953)		-1
6641519	Whiteford, Blackie	Man from New Mexico, The (1932)	Henchman Bat Murchison	8
6641969	Whitelaw, Sandy	Conte à regler (1978)		-1
6642047	Whiteman, Frank	General Hospital	Dr. Cunningham (1983)	5
6642068	Whiteman, Paul (I)	Voice of Hollywood No. 3, The (1929)	Himself	-1
6642918	Whitman, Charles (I)	Junky's Christmas, The (1993)	Christmas dinner friend	-1
6643125	Whitman, Kipp	Edge of Night, The	Chip Beamer (1977-1978)	11
6643546	Whitmore, Steve	General Hospital	Al Barker (1982)	5
6644193	Whittle, Peter	Ned Kelly (1970)	Devine	-1
6644310	Whu, Tom	Team One (2003)	Tome Whu	-1
6644556	Wichmann, Wolf-Dieter	Tatort - Kalte Wut (2001) (TV)		-1
6644701	Wickes, Dennis	Yeomen of the Guard, The (1978) (TV)	Wilfred Shadbolt	7
6644866	Wickland, Lyons	Unmasked (1929)	Larry Jamieson	6
6645174	Widestedt, Ragnar	Hemliga Svensson (1933)	Levenius	7
6645423	Widule, Steffen	Blume der Hausfrau, Die (1999)		-1
6645718	Wieland, Guido	Noch minderjährig (1957)		-1
6645732	Wieland, Guido	Weiße Stadt, Die (1980) (TV)		-1
6646813	Wilcots, Joey	Trials of Life (1997) (TV)	Paris at 11	15
6647038	Wilcox, Frank	Thunderbirds (1952)	Uncle Dave	21
6647793	Wilcoxon, Henry	Tarzan Finds a Son! (1939)	Mr. 'Sandee' Sande	7
6647934	Wild, Steffen	Egoists, The (2003)	Dag	8
6648243	Wilde, Tim	Tatort - Kalte Wut (2001) (TV)	Gerd Brehm	-1
6648421	Wilder, Glenn R.	Wild Pair, The (1987)	Bertender	18
6649049	Wiley, Rod	General Hospital	Dan Weene (1995)	5
6649089	Wilhelm, Scott	Looking in the Fishbowl (2001)	Mane	-1
6649987	Wilkins, Martin	They Won't Believe Me (1947)	Jamaican Sailor	-1
6650542	Willard, Fred	Teenage Mother (1968)		-1
6650993	Willey, Walt	Edge of Night, The	Guard (1983)	-1
6651463	Williams, Barry (I)	Bradys, The	Greg Brady	6
6651464	Williams, Barry (I)	General Hospital	Hannibal (1984)	5
6652369	Williams, Cole	Harry and Max (2004)	Max	2
6653040	Williams, Eugene (II)	Eleven P.M. (1928)	Harry Brown	-1
6653625	Williams, H. Marion	Eleven P.M. (1928)	Roy Stewart	-1
6653872	Williams, Ieuan Rhys	Where the Buffalo Roam (1966) (TV)	Police Inspector	11
6654024	Williams, Jake (I)	Other Side of Chelsea, The (1993) (V)		-1
6654380	Williams, John Warner	General Hospital	Anthony Hand (1982)	5
6654663	Williams, Kevin (XII)	Real Bullets (1990)	Sheriff's Deputy	55
6654740	Williams, Larry (III)	Torchy Plays with Dynamite (1939)	Reporter	13
6654815	Williams, Lloyd T.	Comrades of Summer, The (1992) (TV)	Sims	36
6654900	Williams, Marc D.	Lionheart (1990)	N.Y. Homeless Fighter #1	39
6655036	Williams, Matthew (IV)	Bobby Jones, Stroke of Genius (2004)	Caddy	-1
6655293	Williams, Paul (III)	Muppet Movie, The (1979)	El Sleezo Pianist	22
6655511	Williams, R.J.	General Hospital	Rowdy (1989-1991)	5
6656238	Williams, Ronnie (I)	Where the Buffalo Roam (1966) (TV)	Newsreader	15
6656392	Williams, Sifu	Lionheart (1990)	Street Gang Member #3	50
6656730	Williams, Tony 'Satch'	Lionheart (1990)	Garage Fighter	42
6656971	Williams, William (IV)	Chickboxin Underground (1999)	Nose Ring Punk Guy	34
6657259	Williamson, Harold	Man Alive	Reporter	-1
6657644	Willingham, Noble	Cutter to Houston	Mayor Warren Jarvis	-1
6657947	Willis, J. Cooper	Wall Street Tragedy (1916)	The Rat	6
6658214	Willis, Nathan	CTV	Host	-1
6658734	Willrich, Rudolph	General Hospital	Phil Cusack #1 (1994)	5
6658829	Wills, Chill	Northwest Stampede (1948)	Mileaway James	4
6658846	Wills, Chill	Santiago (1956)	Sidewheel	4
6659327	Wilmot, Harvey	They Nest (2000) (TV)	Swanilli Crew #2	35
6659580	Wilsey, Mark	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		11
6661126	Wilson, Georges	Entre chats et loups (1985) (TV)	Vladimir Seweryn	2
6661215	Wilson, Grant (I)	General Hospital	Bill Garrett (1985)	5
6661475	Wilson, Harry (I)	Valley of the Giants (1938)	Landowner	-1
6661770	Wilson, Ken (III)	Making of a Male Model (1983) (TV)	Cinematographer	-1
6661785	Wilson, Kevin (VII)	Gigli (2003)	Beach Dancer	56
6663426	Wilson, Theodore R.	Greatest, The (1977)	Gardener	-1
6662609	Wilson, Tom (I)	I Was a Communist for the FBI (1951)	Barfly/Union Meeting Extra	-1
6662721	Wilson, Tom (I)	Valley of the Giants (1938)	Landowner	-1
6662770	Wilson, Tovaris	Gigli (2003)	Beach Dancer	58
6664692	Winfield, Paul	Greatest, The (1977)	Lawyer	-1
6665134	Wingreen, Jason	General Hospital	Judge Matson (1991)	5
6665412	Winkler, Henry	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Introduction	25
6666025	Winslow, Dick	Atomic Kid, The (1954)	2nd Sergeant	-1
6666280	Winston, Matt (I)	Anarchy TV (1997)	Frank	3
6667599	Winters, Time	Gun, a Car, a Blonde, A (1997)	Ed/Catalina Eddie	11
6667641	Wintersole, William	General Hospital	Ballantine (1980)	5
6667770	Winton, Larry	Old English (1930)	Clerk	-1
6670034	Witta, Frédéric	Amoureux, Les (1994)	Copain	21
6669574	Wladyniak, Marcin	Farba (1998)	Cyp	2
6669585	Wlaschiha, Tom	Fast perfekt verlobt (2003) (TV)	Nikas Kollege	-1
6669587	Wlaschiha, Tom	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Stefan	6
6669627	Wlodarczyk, Marek	Tatort - Lockvögel (1996) (TV)	Hashimi	-1
6669843	Wohl, David (I)	Beer (1985)	Stanley Dickler	8
6669848	Wohl, David (I)	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Nagel	7
6668573	Wolberg, Robert	Beer (1985)	Smythe	13
6670750	Wolfe, Bud	They Won't Believe Me (1947)	Truck Driver	-1
6670922	Wolfe, Ian	Holiday for Sinners (1952)	The Monsignor	-1
6671073	Wolff, Rüdiger	Tatort - Rattenlinie (2000) (TV)	TV-Reporter	13
6671290	Wolheim, Dan	East Side, West Side (1927)	Grogan	10
6671664	Wolos-Fonteno, David	Rats, The (2002) (TV)	Ray Jarrett	5
6671819	Wolter, Ralf	Goldsucher von Arkansas, Die (1964)	Tim Fletcher	5
6671853	Wolter, Ralf	Maulkorb, Der (1958)	Theurnagel	9
6673870	Wong Chau-Sang, Anthony	Zhong huan ying xiong (1991)	Nerd's Brother	-1
6672581	Wong, Chi Yeung	Jiang shi zhi zun (1987)	Shek's Pupil	-1
6672640	Wong, Daniel May	Some Kind of Hero (1982)	Guard	-1
6672747	Wong, Gabriel	Zhong huan ying xiong (1991)	Nerd in Bar	-1
6672884	Wong, James (I)	Jin ye bu she fang	Host	1
6673233	Wong, Melvin	Ta lai zi hu zhi ming shi (1994)	Kiu	-1
6673332	Wong, Parkman	Long Feng cha lou (1990)	Triad Boss	-1
6673395	Wong, Raymond (I)	Jin ye bu she fang	Guest	-1
6673412	Wong, Ronald (I)	Jiang shi zhi zun (1987)	Wanchi	-1
6674369	Woo, Fung	Ghost in the House (1988)		4
6675486	Wood, Mark (IV)	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Himself	-1
6675565	Wood, Patricio	Brigadista, El (1977)		-1
6675592	Wood, Ray (I)	Keep Posted	Himself/panelist	3
6675669	Wood, Salvador	Brigadista, El (1977)		-1
6675913	Woodard, Bill	Wild Pair, The (1987)	Butcher	20
6676094	Woodburn, Eric	I Could Go on Singing (1963)		9
6676717	Woods, Charles	Roar, Navy, Roar (1942)	Narrator	2
6676948	Woods, Harry	Crime Takes a Holiday (1938)	Stoddard	10
6677031	Woods, Harry	New Orleans After Dark (1958)	Carl	6
6677144	Woods, Ira Buck	They Won't Believe Me (1947)	Waiter	-1
6677400	Woods, Middleton	Man Who Could Cheat Death, The (1959)	Little Man	-1
6677435	Woods, Rayder	Death of a Demon, The (2000)	Billy Ree	1
6677450	Woods, Richard (I)	Lovely Way to Die, A (1968)		29
6678238	Woolen, Thomas	Rave (2000)	Bouncer #1	26
6678765	Wootton, Stephen	All Mine to Give (1958)	Jimmy	11
6679153	Work, Dan (I)	Last Enchantment (1995)	Merlin	-1
6679414	Worne, Duke	Just Jim (1915)	Undetermined Role	5
6679943	Worthy, Richard (I)	Love Potion (1987)	Dr. James	19
6680091	Wouterse, Jack	Do Not Disturb (1999)	Taxi Driver	-1
6680308	Wray, Dean	They Nest (2000) (TV)	Josiah Bean	8
6680334	Wray, John (I)	Crime Takes a Holiday (1938)	Howell	7
6681140	Wright, Humberston	Way of the World, The (1920)	Manager	9
6682006	Wright, Will (I)	Holiday for Sinners (1952)	The Man with a Cigar	12
6682658	Wu, Tom	Team One (2003)	Slice-en-dice	-1
6682794	Wulff, Kai	General Hospital	Hendrick (1983)	5
6684257	Wynn, Keenan	Holiday for Sinners (1952)	Joe Piavi	2
6684864	Wågstam, Tarzan	Prins hatt under jorden (1980)		24
6685056	Wüpper, Thomas	Dumm gelaufen (1997)	Jäger	18
6685110	Wüstenhagen, Harry	Tatort - Feuerzauber (1977) (TV)	Röhricht	-1
6685126	X, Baby	Tarzan Finds a Son! (1939)	Boy as a younger child.	-1
6685183	Xabier, Gilen	Caja 507, La (2002)	Vigilante'Las Zarzuelas'	29
6685582	Xia, Yu	Shadow Magic (2000)	Liu Jinglun (Liu Zhonglun)	2
6686005	Yabe, Kyôsuke	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)		-1
6686139	Yaconelli, Frank	Santiago (1956)		-1
6686154	Yaconelli, Frank	Voice of Hollywood No. 3, The (1929)	Himself	-1
6686344	Yaffe, David	Carnal Passion (2001) (V)	Party Guest	26
6686689	Yakovlev, Sergei	Prival strannikov (1991)		-1
6687021	Yalovich, Gennadi	Ya shagayu po Moskve (1963)		-1
6687191	Yama, Michael	General Hospital	Kimo (1981)	5
6687769	Yamada, Katsurou	Danchizuma hiasobi (1973)	Yoichi Ihara	2
6687570	Yamamoto, Togo	Something to Think About (1920)	Servant	9
6687598	Yamamura, Sô	Akitsu onsen (1962)	Mikami	-1
6688309	Yamashiko, Junichirô	Daikaijû Gamera (1965)	Aoyagi	-1
6689461	Yang, Tom	Team One (2003)	Sensi	-1
6690130	Yapp, Peter	Mister Jerico (1970) (TV)	Felipe	6
6691607	Yee, Tung-Shing	Ghost in the House (1988)	Ah B	2
6692963	Yezepov, Vyacheslav	34-j skoryj (1981)		12
6693101	Yigit, Tamer	Kislalar doldu bugün (1968)		-1
6693300	Yin, Francis	Ned Kelly (1970)	Sympathizer	-1
6693342	Ying, Fang	Ajia himitsu keisatsu (1966)	Yang Ming Hua	4
6693835	Yohnka, Merritt	Real Bullets (1990)	Merritt	4
6694346	York, Duke (I)	Respect the Law (1941)	Bereaved Man	-1
6694427	York, James (I)	General Hospital	Dr. Mark Dante #1 (1976)	5
6694502	York, John J.	General Hospital	Mac Scorpio (1991-present)/James Meadows (1997-1998)	5
6694672	York, Powell	Old English (1930)	Clerk	-1
6694853	Yoshida, Teruo	Akitsu onsen (1962)	News reporter	-1
6695574	Young, Bruce A.	General Hospital	Rory Banks (1991)	5
6695787	Young, Carleton	Double Deal (1950)	Reno Sebastian	6
6695946	Young, Charley (I)	Back Stage (1923)	Outside worker	-1
6696109	Young, Corey	General Hospital	Dr. Walt Benson (1987-1989)	5
6696356	Young, Gig	Holiday for Sinners (1952)	Jason Kent	1
6696499	Young, Jacob (II)	General Hospital	Lucas Lorenzo 'Lucky' Spencer #2 (2000-2003)	5
6697297	Young, Ric	General Hospital	Jacques (1990)	5
6697437	Young, Robert (I)	They Won't Believe Me (1947)	Larry Ballentine	2
6697970	Youngblood, Rob	General Hospital	Pierce Dorman #1 (1996)	5
6698374	Yrigoyen, Frank	Square Shooter (1935)	Baxter rider	-1
6698418	Yrigoyen, Joe	Square Shooter (1935)	Baxter rider	-1
6698994	Yueh, Hua	Long Wei shan zhuang (1980)		-1
6699253	Yuen, Galen	Lionheart (1990)	Desk Bookie	34
6699268	Yuen, Jung	Lei ting zhan jing (2000)	Lee (Coolio's bodyguard)	11
6699742	Yule, Joe	Grand Central Murder (1942)	Stage Hand	-1
6699870	Yulin, Harris	Virginian, The (2000) (TV)	Judge Henry	4
6700032	Yun, Il-bong	Jeolbeun poong gin ibyeol (1984)		3
6700057	Yun, Il-bong	Seokhwachon (1972)		3
6700177	Yung, Sai-Kit	Zhong huan ying xiong (1991)	Yung	-1
6700463	Yurdakul, Reha	Eli masali (1966)		4
6701917	Zacharias, Steffen	Mondo candido (1975)	Il saggio	5
6701930	Zacharias, Steve	Daikaijû Gamera (1965)	Sen. Billings	-1
6701954	Zachary, Justin (II)	Harry and Max (2004)	Jordan	6
6702033	Zacher, Rolf	Tatort - 3:0 für Veigl (1974) (TV)	Wolferl	21
6702069	Zacher, Rolf	Meister Eder und sein Pumuckl	Gasmann	-1
6702238	Zafalon, Luís Eduardo	Tronco do Ipê, O	Padre Carneiro	-1
6702527	Zaharatos, Antonis	Eglimata		-1
6703353	Zakirov, Bakhtiyer	Ukhodya, ostayutsya (1987)		3
6703419	Zaks, Jerry	Edge of Night, The	Louis Van Dine (1983-1984)	11
6703544	Zaleski, Krzysztof	Zycie za zycie (1991)	Olszanski	5
6703770	Zamara, Eligio	Dottoressa sotto il lenzuolo, La (1976)		3
6704034	Zammit, Eddie	General Hospital	Ron Engle (1980)	5
6707349	Zdybal, Leszek	Farba (1998)		-1
6704100	Zamora, Antonio	Amantes frios, Los (1978)	Liborio (segment "El Difunto al pozo y la viuda al gozo")	11
6704206	Zamora, Ramon	Basta Tricycle Driver... Sweet Lover (2000)		-1
6704439	Zan, Hüseyin	Kara gözlüm efkarlanma (1968)		-1
6704954	Zannino	Jack o kavalaris (1979)		-1
6705377	Zappa, Ahmet	Anarchy TV (1997)	Officer Sweitzer	19
6705390	Zappa, Dweezil	Anarchy TV (1997)	Sid	4
6705513	Zaqariadze, Bukhuti	Magdanas lurja (1955)		-1
6706577	Zarzo, Manuel	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Padre Tomeo	3
6707856	Zeiger, Hans Wolfgang	Tatort - Das stille Geschäft (1977) (TV)	Lokowski	-1
6708174	Zeller, Jean-François	Adieu (2003)	Le vieux prêtre	10
6709442	Zentara, Edward	Zycie za zycie (1991)	Maximilian Kolbe	1
6709645	Zepeda, Heraclio	Reed, México insurgente (1973)	Pancho Villa	-1
6709928	Zerega, Tony	Chompin' at the Bit (1997) (V)		-1
6710134	Zervos, Pantelis	Amartoles (1962)		-1
6710402	Zeussel, Werner	Meister Eder und sein Pumuckl	Hausmeister	-1
6710413	Zevic, Stanley	Voices, The (1955) (TV)	Balatov	-1
6709143	Zhang, Yukui	Shadow Magic (2000)	Lao Chang	8
6709288	Zhao, Yuhua	Huan le ren jian (1959)	Wang, Shouren	-1
6710661	Zheng, Zhongwei	Shadow Magic (2000)	Fu Guan	10
6711078	Zhuravlyov, Dmitri (II)	Dva patrona na mamonta (1990)		1
6711621	Ziembinski, Zbigniew	Rainha Louca, A	Zacarias	-1
6711625	Ziembinski, Zbigniew	Semideus, O	Frei Miodek	-1
6711696	Ziener, Bruno	Frau, nach der man sich sehnt, Die (1929)	Diener	7
6712319	Zimbler, Jason	Edge of Night, The	Jamie Swift (1984-1985)	11
6712360	Zimmeck, Ludwig	Tatort - Der vierte Mann (2004) (TV)		-1
6712987	Zinser, Leo	New Orleans After Dark (1958)	Caprini	9
6713199	Zirner, August	Tatort - Der Fremdwohner (2002) (TV)	Pieringer	4
6713682	Zivkovic, Vladan	Poslednja trka (1979)		-1
6715072	Zorica, Josip	Daikaijû Gamera (1965)	Russian Ambassador	-1
6715839	Zuccheroso, Ettore	Boys of St. Vincent, The (1992) (TV)	Boy of St. Vincent	28
6715968	Zucco, George	Who Killed Doc Robbin? (1948)	Doc Robbin	8
6716028	Zucker, Marcos	Casamiento de Chichilo, El (1938)		-1
6717644	Ács, Imre	Heten, mint a gonoszok (1943)	A gyerekzenekar tagja	-1
6717763	Álvarez Bianchi, Guillermo	Amantes frios, Los (1978)	Don Marcial (segment El Soplador del vidrio)	4
6718222	Álvarez, Félix (III)	Caja 507, La (2002)	Ramón	4
6718416	Álvarez, Roberto (III)	Trials of Life (1997) (TV)	Junior	11
6719208	Åström, Curt 'Minimal'	Flicka med melodi (1954)	Jocke	5
6720169	Öz, Vahi	Kislalar doldu bugün (1968)		-1
6720404	Öze, Lajos	Amerikai cigaretta (1977)	Editor in chief	6
6720603	Özkul, Münir	Kara gözlüm efkarlanma (1968)		-1
6719703	Ünel, Birol	Tatort - Lockvögel (1996) (TV)	Gürkan Agban	6
4500907	Ali, Mohd	Kommissar X jagt den roten Tiger (1971)	Supt. Ali	4
4616693	Bekhterev, Sergei	Gadzho (1992)		1
4620273	Belli, Melvin	Wild in the Streets (1968)	Himself	-1
4626679	Bennett, Bruce (I)	Dark Passage (1947)	Bob	3
4636011	Berlinger, Warren	Joey Bishop Show, The	Larry Barnes (1961-1962)	-1
4642102	Bertozzi, Giacomo	Enrico IV (1984)		8
4669520	Blossom, Alvin	Darkest Light, The (1999)	Caver	8
4688381	Borsche, Dieter	Muss i denn zum Städtele hinaus (1962)		-1
4695583	Bouvet, Jean-Christophe	Passagers, Les (1999)	Le Voyageur	7
4706569	Brandenburg, Otto	Trællenes oprør (1979)  (voice)		-1
4711955	Bredow, Erwin	Europas neue Musikparade 1958 (1958)		14
4737826	Bubák, Zdenek	Blade II (2002)	Reaper	30
4751626	Burton, Jay	Young Nurses, The (1973)	Chicken's Manager	11
4768038	Cakarli, Mesut	Vizontele (2001)	Rifat	-1
4770053	Callahan, E.J.	Kid, The (2000)	Principal Branch	33
4771635	Calvo, Armando	Gitana tenías que ser (1953)		10
4794295	Carraway, James	Playing Mona Lisa (2000)	Mohammed	25
4814388	Celano, Hélio	Dupla do Barulho, A (1953)		-1
4817222	Ceylan, Hasan	Daglar bizimdir (1965)		-1
4852161	Clair, Richard	Movie Star, American Style or; LSD, I Hate You (1966)	David Erickson, Writer	-1
4872213	Collet, Joris	Voorjaarsontwaken (1976) (TV)	Prof. Vetzak	-1
4887710	Cooper, Bigelow	Great Bradley Mystery, The (1917)	Tony	4
4891490	Corbett, Glenn (I)	Road West, The	Chance Reynolds	3
4938289	Dallas, Nikos	Lista gamou		15
4993676	Deslandes, Robert	Ce soir on improvise (1975) (TV)	Le patron du café	14
5001116	Diamant, Otto	Praise Marx and Pass the Ammunition (1970)	Italian	16
5001303	Diamond, Dustin	Attack of the Killer B-Movies (1995) (TV)	Himself	-1
5002463	Diberti, Luigi	Ritornare a volare (1998) (TV)	Avv. Ferri	4
5033349	Dreyfus, Jean-Claude	Fitzcarraldo (1982)	Opera Singer	-1
5061083	Edelman, Herb	Picking Up the Pieces (1985) (TV)	Mac Goodman	7
5078529	Emery, Gilbert (I)	Lady's from Kentucky, The (1939)	Pinckney Rodell	10
5118707	Fernández, José Luis (II)	Espaldas mojadas (1953)		21
5130667	Fiorentini, Al	Diana: A Tribute to the People's Princess (1998) (TV)	Mohammed Al Fayed	8
5180048	Fáy, Béla	Bors István (1939)	Võlegény	-1
5198212	Gargan, Edward	Earl Carroll Vanities (1945)	Policeman	16
5204399	Gauditz, Uwe	Zausel (1983) (TV)		-1
5212310	George, John (I)	Babes in Toyland (1934)	Barnaby's Minion	-1
5219430	Gibson, Hoot	Texas Kid, The (1920)		-1
5241663	Gonzaga, Castro	Corrida do Ouro	Onofre	-1
5254306	Goyer, David S.	Magra, La (1998) (V)  (as David Goyer)	Himself	-1
5306083	Hall, Aaron (I)	5th Annual Soul Train Music Awards, The (1991) (TV)	Himself/presenter	-1
5309973	Hallez, Daniel	Cuando besa mi marido (1950)		-1
5315633	Hammond, J. Michael	Last Night at the Alamo (1984)	Steve	4
5346143	Hayter, David	X-Men (2000)	Museum Cop	48
5369004	Hewitt, Henry	Old Iron (1938)	Wilfred	-1
5379715	Hirokawa, Akemi	Umi no Triton (1979)	Pipi	-1
5404654	Houplain, Cyril	Kung-Fu master (1987)	Un jeune	6
5409021	Howells, Martin	Counter Measures (1985)		-1
5415532	Hughes, J. Anthony	Murder in the Fleet (1935)	Reporter Walter Drake	-1
5445328	Ivanov, Matey	Sinyata lampa		11
5461964	Jarsky, Joris	Vampire High	Marty Strickland	5
5463453	Jay, Tony	Austin Powers: The Spy Who Shagged Me (1999)  (voice)	Narrator	-1
5475705	Johnson, Arthur V.	Lines of White on a Sullen Sea (1909)		-1
5490222	Joyce, Declan	Macabre Theatre Halloween Special (2003) (TV)	Fred	-1
5501709	Kalyagin, Aleksandr	Esop (1982) (TV)	Esop	-1
5505968	Kaplan, Harley	Mrs. Stevens Hears the Mermaids Singing (2004)	Mar Hemmer	2
5506058	Kaplan, Mike E.	Player, The (1992)	Marty Grossman	21
5508367	Karaer, Haydar	Belali torun (1962)		-1
5530056	Kennedy, George	Shenandoah (1965)	Colonel Fairchild	14
5531482	Kenny, Colin	My Brother Talks to Horses (1947)	Passenger on Trolley	-1
5546776	King Jr., Dennis	Scarlet Coat, The (1955)	Boatswain's Mate	-1
5676163	Lipsius, Adam	What a Man Wouldn't Do for a Woman (2001)		-1
5680087	Lizárraga, Juan	Flamencos, Los (1968)	Matón	22
5686568	Lohmann, Henry	Tro, håb og trolddom (1960)		24
5691311	Lonsdale, Michael (I)	Sotto falso nome (2004)	David Ginsberg	5
5719162	MacDonald, J. Farrell	Arizonian, The (1935)	Marshal Andy Jordan	6
5725990	MacQuarrie, Murdock	Her Grave Mistake (1914)	Roger Grant	1
5734640	Majd, Mohamed	Mille et une nuits, Les (1990)	The Blind Man	24
5765468	Martell, Alphonse	Woman's Secret, A (1949)	Algerian Waiter	-1
5782653	Mathieson, Alistair	Love Is the Devil (1998)	Person at the Paris Opening	41
5803715	McDonell, Geoffrey	Sweet Kitty Bellairs (1930)	Lord Northmore	-1
5830933	Menez, Bernard	Pleure pas la bouche pleine (1973)	Alexandre	1
5840531	Meyer, Russ (I)	Hollywood Women	Himself	-1
5883108	Moore, Kieron	Three Sundays to Live (1957)	Frank Martin	1
5907801	Mues, Wanja	Heimatgeschichten - Herr Petermann (2000) (TV)	Tobias Georg	3
5911784	Mumy, Bill	Alfred Hitchcock Presents (1985) (TV)	Supermarket Clerk (segment "Bang! Your're Dead!")	20
5937075	Natsios, Christos	Agrafos nomos, O (1987) (V)	Night club owner	9
5968046	North, Peter (I)	North Pole #11 (1999) (V)		-1
6011236	Ovey, George	Stratton Story, The (1949)	Person in Theatre	-1
6078058	Pickup, Ronald	Nightmare Years, The	Putzi Hanfstaengl	-1
6089179	Plaovic, Radomir 'Rasa'	Opstinsko dete (1953)	Vladika	-1
6104500	Pou, José María	Espada negra, La (1976)		-1
6122959	Pulone, Gianni	Zorro, El (1968)		-1
6128434	Qualtinger, Helmut	Schloß, Das (1968)	Burgel	5
6128559	Quarmby, John	Prince Caspian and the Voyage of the Dawn Treader (1989) (TV)	Gumpas	-1
6137214	Rafe	Dangerous Pleasures (2001)	Greg	6
6159916	Reehm, George	Revenge (1912)		1
6162582	Rehman (I)	Aandhi (1975)	K. Bose (Aarti's father)	3
6199042	Roberts, Alec	Family in Crisis: The Elian Gonzales Story, A (2000) (TV)	Elian Gonzalez	5
6221933	Roquemore, Henry	Texas Buddies (1932)	Race starter	-1
6226293	Ross, Howard (I)	Ultima chance, L' (1975)	Mike	5
6257891	Salazar, Russell	Twisted (1986)	Yeager Child	34
6268737	Sanjay (VI)	1942 A Love Story (1993)	Revolutionary	33
6293299	Schneider, Stephen (II)	To Life! (2004)	School Janitor 2	-1
6294913	Schott, Werner	Flötenkonzert von Sans-souci, Das (1930)	Frazoesischer Gesandter	32
6303344	Scott, Dred	Detour (2001) (V)		-1
6307375	Sebban, Thierry	Petit week-end entre amis (2002)		-1
6309676	Seibt, Siegfried	Polizeiruf 110 - Das Haus an der Bahn (1972) (TV)		-1
6312141	Selsner, Peter	Attende, Den (1996)	Politimand på skadestue	40
6343776	Siemaszko, Casey	Silence of the Heart (1984) (TV)	Jeff	18
6393356	St. Clair, Malcolm	Yankee Doodle in Berlin (1919)  (as Mal St. Clair)	The Crown Prince	3
6431956	Stubbs, Richard	Late Report, The	Himself	1
6495454	Tiu Dai Yue, Michael	Ai ye nu peng you (1992)	John	-1
6507213	Toscano, Manuel	Gatas tienen frío, Las (1970)		10
6534518	Undari, Claudio	Antes llega la muerte (1964)  (as Robert Hundar)	Ringo	2
6543877	Vallès, Benoît	Jacotte	Toulouse	4
6556896	Vaughn, Judson	Simple Twist of Fate, A (1994)	Politician #2	34
6561185	Venkatramaiah, Relangi	Missamma (1955)	Devayya	5
6626464	Weisser, Norbert	Down Twisted (1987)	Deltoid	-1
6626918	Welborne, Homer	Follow the Sun (1951)	Announcer	-1
6655445	Williams, Philip (I)	Gridlock (1996) (TV)	Lou McCullough	28
6665567	Winkler, Robert (I)	True to Life (1943)	Radio Sonny	-1
6670211	Witter, Frank	Kein Mann für eine Nummer (2002) (TV)	Telefonverkäufer	-1
6681115	Wright, Humberston	Peacemaker, The (1922)	George Brownlow	7
6720953	Újvári, Csaba	Jó éjt királyfi (1993)	Péter	-1
7564122	Hasselhoff, David	Knight Rider (2008)	Michael Knight	-1
\.


--
-- Data for Name: actress; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.actress (id, name, movie_id, role, "position") FROM stdin;
4012154	Lawrence, Delphi	Man Who Could Cheat Death, The (1959)	Margo Phillipe	5
4012191	Lawrence, Elizabeth (I)	Edge of Night, The	Constance Johnson (1961-1963)	11
4013060	Lawson, Kate Drain	Torchy Plays with Dynamite (1939)	County Jail Guard	-1
4013284	Laxmi (I)	1857 (1946)		-1
4013525	Layne, Mary	Edge of Night, The	Camilla Devereaux (1983)	11
4013809	Lazareno, Norma	Valentina	Alicia	-1
4015076	Leachman, Cloris	Muppet Movie, The (1979)	Lord's Secretary	17
4015405	Leal, Ângela	Semideus, O	Carmem	-1
4015452	Leander, Zarah	Premiere (1936)	Carmen Daviot	1
4015544	Leardini, Christina	Anarchy TV (1997)	Anchorperson	26
4015603	Learn, Bessie	Unsullied Shield, An (1913)		5
4015752	Leavy, Donna Lynn	General Hospital	Vanessa (1991)	5
4016030	Leblanc, Libertad	Perra, La (1967)	Renee de Johnson	1
4016544	Leclerc, Ginette	Amants du Tage, Les (1955)	Maria	9
4016547	Leclerc, Ginette	Bach détective (1936)	Zita	8
4016772	Ledbetter, Bertha	They Won't Believe Me (1947)	Mrs. Oaks	-1
4017082	Ledoyen, Germaine	Josse (1974) (TV)	Mme Jessicaud	4
4017511	Lee, Anna (I)	General Hospital	Lila Quartermaine (1978-present)	5
4017623	Lee, Bin-hwa	Mulmangcho (1960)		3
4017958	Lee, Dorothy (I)	Laddie (1940)	Bridesmaid	-1
4017985	Lee, Dottie	New Orleans After Dark (1958)	Stripper	-1
4018318	Lee, Hae-rang	Korea (1954)		4
4018413	Lee, Heather (II)	Weekend In Diego (2000) (V)		-1
4018550	Lee, Hyo-jeong (II)	Jeolbeun poong gin ibyeol (1984)		2
4019114	Lee, Kelly (III)	Swami MD #1: Coming to America (1999) (V)		-1
4019201	Lee, Lela	Rave (2000)	Lisa	7
4020725	Lee, Stefani	General Hospital	Young girl (2001-present)	5
4020968	Lee, Virginia Ann	General Hospital	Mai-Lin (1974)	5
4021286	Leeds, Elissa	Edge of Night, The	Lisa (1976)	11
4021362	Leela	1857 (1946)		-1
4021527	Lees, Tamara	Vita da cani (1950)	Franca	4
4021636	Leeves, Jane	Pandora's Clock (1996) (TV)	Rachel Sherwood	3
4021741	Lefko, Camille	Tempest (1982)	Guard	-1
4021946	Legarreta, Andrea	Valentina		-1
4022019	Leger, Cecilia	Amantes frios, Los (1978)	Anciana ("Los Amantes frios")	29
4022038	Leger, Cecilia	Club de señoritas (1956)		-1
4023318	Leigh, Cricket	Terra (2003)	Mala	-1
4023740	Leigh, Kasey	Bobby Jones, Stroke of Genius (2004)	Coed No. 2	40
4024288	Leighton, Roberta	General Hospital	Shirley Pickett (1983)	5
4024509	Leist, Bernardine Prissi	Edge of Night, The	Dr. Phoebe Smith Jameson #4 (1972-1976)	11
4024558	Leite, Ana Maria	Em Cada Coração um Punhal (1970)	(segment "O Filho da Televisão")	12
4024726	Leitão, Maria Celeste	Pai Tirano, O (1941)		18
4025309	Lemerdy, Edith	Quand on est amoureux c'est merveilleux (1999)		-1
4025872	Lenard, Grace	I Was a Communist for the FBI (1951)	Wife	-1
4026649	Lenz, Kay	Gun, a Car, a Blonde, A (1997)	Peep/Madge	3
4027491	Leonhard, Sandra	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Doris	4
4027673	Leopold, Ethelreda	Andy Clyde Gets Spring Chicken (1939)		9
4027818	Lepe, Ana Bertha	Ladrona, La (1954)		6
4027950	Lepori, Gabriella	Dottoressa sotto il lenzuolo, La (1976)		10
4027982	Leppard, Jean	Love Potion (1987)	Nurse Rached	9
4028808	Lerel, Laurence	Parfum d'Yvonne, Le (1994)	Cintra Barmaid	21
4028985	LeRoy, Zoaunne	Unstrung Heroes (1995)	Mrs. Kantruitz	17
4029213	Leska, Rita	Gesundheit (1978) (TV)		-1
4028423	Leslie, Joan	Northwest Stampede (1948)	Christine 'Honey' Johnson	1
4028631	Lesniak, Ewa	Moje miasto (2002) (TV)	Jezierska	11
4029298	Lester, Eleese	Warning: Parental Advisory (2002) (TV)	PMRC Receptionist	24
4029444	Lester, Lidia	For the Good of Her Men (1912)	The Mother	5
4029508	Lester, Vickie	Tall, Dark and Handsome (1941)	Sales Girl	20
4029614	Letherman, Lindze	General Hospital	Georgianna 'Georgie' Jones #5 (2002-present)	5
4029690	Lettich, Micheline	Lionheart (1990)	Homeless Child	33
4029731	Leung, Angela	Jin ye bu she fang	Guest	-1
4030098	Leveridge, Lynn Ann	Edge of Night, The	Tango Humphries #2 (1970)	11
4030234	Levin, Bryna	Big Pile, The (1985)	Yuppie Girl	7
4030646	Levy, Barbie	Big Pile, The (1985)	Dotie Fields	1
4030662	Levy, Deena	Beer (1985)	Make Up Girl	26
4031455	Lewis, Judy (I)	General Hospital	Barbara Vining (1975-1976, 1978)	5
4031615	Lewis, Louise (II)	General Hospital	Mrs. Taylor (1992)	5
4031669	Lewis, Melanie (II)	Gigli (2003)	Beach Dancer	37
4032066	Lewis, Vera	Torchy Plays with Dynamite (1939)	Landlady	-1
4032323	Leyva, Mery	Monosabio, El (1977)	Rafa's mother	17
4032682	Li Chi, Nina	Ghost in the House (1988)	The friendly ghost	3
4032712	Li Chi, Nina	Jin ye bu she fang	Guest	-1
4032733	Li, Bin (I)	Shadow Magic (2000)	Empress Ci Xi	13
4032915	Li, Pat	General Hospital	Noriko (1992)	5
4033040	Liao, Joanna	Egoists, The (2003)	Byron Bradley's Assistant	15
4033905	Lifthiz, Aliza	Vida total	Health Reporter	-1
4022266	Legrand, Annie	À la vitesse d'un cheval au galop (1992)	La directrice des Eglantines	44
4022489	Legrá, Adela	Brigadista, El (1977)		-1
4022706	Lehmann, Edie	General Hospital	Katherine Delafield (1989-1990)	5
4022707	Lehmann, Eva (I)	Marocain (1989) (TV)	Malika	-1
4511416	von Porembsky, Alexa	Taxi-Gattin (1950)		8
4022756	Lehner, Helga	Go-Go-Girl vom Blow Up, Das (1969)		11
4022799	Lehou, Katerina	Eglimata		-1
4022969	Lei, Leanni	Cumback Pussy 21 (1999) (V)		-1
4035336	Linares, Antoñita	Monosabio, El (1977)	Antoñita	3
4035442	Lincoln, Caryl	Man from New Mexico, The (1932)	Sally Langton	2
4035821	Lindau, Lisl	Noor pensionär (1972) (TV)	Employment officer	-1
4036152	Lindell, Johanna	Prins hatt under jorden (1980)	Child	11
4036650	Lindfors, Viveca	Maria på Kvarngården (1945)	Maria	1
4036740	Lindgren, Lisa (I)	General Hospital	Kathy Summers (1980)	5
4036916	Lindley, Audra	Edge of Night, The	Barbara Barnett (1962)	11
4037003	Lindner, Marianne	Tatort - Schlußverkauf (1978) (TV)	Elsa Rothermund	-1
4037143	Lindorff, Lone	Ta' det som en mand, frue! (1975)	Ellens kollega på kontoret	10
4037271	Lindroth, Helen	Under a Flag of Truce (1912)		5
4038023	Liné, Helga	Verano azul	Luisa	13
4038804	Lisa, Mona (I)	To Please One Woman (1920)	Leila	5
4040214	Little, Joyce	Making of a Male Model (1983) (TV)	Isabella	-1
4040440	Littleton, Twyla	Making of a Male Model (1983) (TV)	Amanda	-1
4040751	Liubomirova, Dobrina	Valentina	Debora	-1
4040932	Liviakis, Vicki	Day & Date	Host	4
4041039	Livingston, Natalia	General Hospital	Emily Bowen Quartermaine #2 (2003-present)	5
4041076	Livingstone, Laura	Yeomen of the Guard, The (1978) (TV)	Elsie Maynard	2
4041238	Lizaran, Anna	Telaraña, La (1990)		-1
4041510	Llausás, Leonor	Amantes frios, Los (1978)	Mujer III (segment "Los Amantes frios")	28
4041567	Llausás, Leonor	Veneno para las hadas (1984)	La Bruja	3
4041924	Lloyd, Doris	Old English (1930)	Mrs. Rosamund Larne	2
4042708	Lloyd, Rita	Edge of Night, The	Toby Marshall (1962-1963)/Jessica Webster (1967)	11
4042799	Lloyd, Susan	Ned Kelly (1970)	Kate Kelly	18
4042593	Lockhart, June	General Hospital	Maria Ramirez (1984-1986, 1988, 1990-1992, 1998)	5
4043400	Lockwood, Margaret	Quiet Wedding (1941)	Janet Royd	1
4043659	Loe, Judy (I)	General Hospital	Dr. Helen Sanders	-1
4044604	Lohr, Vera	Tatort - Rattenlinie (2000) (TV)		17
4044702	Loiselle, Hélène	Sous les draps, les étoiles (1989)		-1
4044763	Lojodice, Giuliana	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Marisa Sabatini	7
4044922	Lolita (IV)	Kühne Schwimmer, Der (1957)	Singer	12
4045034	Lollobrigida, Gina	Solomon and Sheba (1959)	Sheba	2
4045043	Lollobrigida, Gina	Vita da cani (1950)	Margherita	2
4045266	Lombard, Inez	Overboard (1978) (TV)	Tiari	-1
4045639	Lommel, Ruth	Maulkorb, Der (1958)		-1
4045646	Lommel, Ruth	Taxi-Gattin (1950)		7
4046187	Long, Alexi	Ned Kelly (1970)	Grace Kelly	17
4046379	Long, Brandy	Not Tonight Henry (1961)	Lucrezia Borgia	3
4046381	Long, Brooke	Gigli (2003)	Beach Dancer	38
4034160	Likhobabina, N.	Ya shagayu po Moskve (1963)		-1
4034331	Lillesøe, Britta	Ta' det som en mand, frue! (1975)		30
4034827	Limburg, Olga	Tänzer meiner Frau, Der (1925)		8
4034984	Lin, Brigitte	Jin ye bu she fang	Guest	-1
4035054	Lin, Feng-Jiao	You jian chin tian (1981)	Fang Yi-Ting	1
4035071	Lin, Jennifer	Lei ting zhan jing (2000)	Jennifer	10
4035202	Lin, Ruby	Lei ting zhan jing (2000)	Ruby Lin	6
4035235	Lina (II)	Casting de maduras (2001) (V)		3
4049082	Loren, Trinity	Transaction (1986) (V)		-1
4049236	Lorente, Lydie	À la vitesse d'un cheval au galop (1992)	Enfant	37
4049259	Lorentowicz, Malgorzata	Weryfikacja (1987)		11
4049276	Lorenz, Christa	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Richterin	-1
4050092	Lorring, Lotte	Provinzonkel, Der (1926)		-1
4050942	Loughlin, Lori	Edge of Night, The	Jody Travis #1 (1980-1983)	11
4051500	Louwaard, Brechtje	Cowboy uit Iran (1999) (TV)		-1
4051576	Love, Alyssa	Terminal Case of Love (1998) (V)		-1
4052820	Lowe, Jane	Young Sherlock: The Mystery of the Manor House	Mrs. Cunliffe	-1
4053722	Lu, Liping	Shadow Magic (2000)	Madame Ren	5
4053940	Luber, Ursula	Meister Eder und sein Pumuckl	Frau Reinicke	-1
4054015	Lubosch, Ute	Tatort - Kindstod (2001) (TV)	Dr. Hildebrandt	7
4054923	Ludlow, Nellie	Boys of St. Vincent, The (1992) (TV)	Donating Woman	35
4055157	Luft, Lorna	I Could Go on Singing (1963)	Extra on boat	-1
4055487	Lukaszewicz, Karolina	Farba (1998)	Celina	4
4056735	Lund, Deanna	General Hospital	Peggy Lowell (1976)	5
4056904	Lundberg, Greta	Hemliga Svensson (1933)	Waitress on boat	-1
4057065	Lundi, Monika	Go-Go-Girl vom Blow Up, Das (1969)		16
4057428	Lustigova, Petra	Waterloo po cesku (2002)	Majka	12
4058296	Lyel, Viola	Quiet Wedding (1941)		-1
4058492	Lyman, Dorothy	Edge of Night, The	Elly Jo Jameson (1972-1973)	11
4058969	Lynde, Janice	General Hospital	Gloria #3 (1990)	5
4059378	Lynn, Barbara (I)	Tall, Dark and Handsome (1941)		-1
4059510	Lynn, Dani	Patty (1962)	Patty	3
4059697	Lynn, Jennifer (I)	Trials of Life (1997) (TV)	Robin	14
4059757	Lynn, Krysti (I)	Other Side of Chelsea, The (1993) (V)		-1
4059841	Lynn, Mercedes	Hard to Thrill (1991) (V)		-1
4059997	Lynn, Nikki (I)	Terminal Case of Love (1998) (V)		-1
4060176	Lynn, Porsche	Tortured Passions (1994) (V)		-1
4060523	Lynne, Ethel	Her Friend, the Doctor (1916)		5
4060672	Lynwood, Ardda	Who Killed Doc Robbin? (1948)	Ardda	4
4060680	Lynx, Chelsea	Other Side of Chelsea, The (1993) (V)		-1
4060721	Lyon, Lisa	Trois couronnes du matelot, Les (1983)	Mathilde	5
4060736	Lyon, Priscilla	Our Gang Follies of 1936 (1935)		-1
4060934	Lyons, Jenny	Edge of Night, The	Sarah Albright (1979)	11
4061037	Lyons, Tina	Big Pile, The (1985)	Mona	25
4062637	López, Paca	Caja 507, La (2002)	Funcionaria	30
4062680	López, Pilar (III)	Caja 507, La (2002)	Giannina	21
4063052	Lösch, Erika	Komischer Heiliger, Ein (1979)		9
4046455	Long, Joyce	Platoon Leader (1988)	Mother With Child	18
4047071	Longstreth, Emily	Flying Blind (1990) (TV)	Ramona	2
4047361	Loos, Anna (II)	Tatort - Willkommen in Köln (1997) (TV)	Lissy	5
4047738	Lopez, Jennifer (I)	Gigli (2003)	Ricki	8
4048109	Lorane, Mireille	Valet maître, Le (1941)		-1
4048192	Lord, Justine	Fiction Makers, The (1968)	Galaxy Rose	3
4048216	Lord, Lisa	General Hospital	Antoinette (1996)	5
4048544	Lords, Traci	Laser Moon (1993)	Barbara Fleck	1
4048869	Loren, Trinity	Best of Breasts 3 (1995) (V)		-1
4049000	Loren, Trinity	Leave It to Cleavage 2 (1989)		-1
4064997	Machalissa, Birgit	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Herta Fischer	6
4065011	Machavariani, N.	Chirveuli mezoblebi (1945)		-1
4065519	Mack, Marion	Voice of Hollywood No. 3, The (1929)	Herself	-1
4065623	Mackasey, Susan	Boys of St. Vincent, The (1992) (TV)	Nurse	34
4065739	MacKellar, Helen	Valley of the Giants (1938)	Mrs. Lorimer	15
4066618	MacMahon, Aline	I Could Go on Singing (1963)	Ida	4
4067224	MacRae, Elizabeth	General Hospital	Med Bentley #2 (1969-1970, 1972-1973)	5
4067305	MacRae, Sheila	General Hospital	Madelyn Richmond (1991)	5
4067903	Madhoo	Return of Jewel Thief (1996)	Madhoo	-1
4068976	Mafalda, Eloísa	Grande Família, A	Nenê	-1
4069125	Magagnoli, Gigi	Edge of Night, The	Cheri Colton (1962)	11
4069239	Magalhães, Yoná	Semideus, O	Adriana	-1
4070275	Mahler, Margot	Tatort - 3:0 für Veigl (1974) (TV)	Lisa	22
4070294	Mahler, Margot	Meister Eder und sein Pumuckl	Haushälterin im Schloss	-1
4070584	Maia, Cinira	Palácio de Vênus (1980)		-1
4070597	Maia, Leonor	Pai Tirano, O (1941)	Tatão	3
4071573	Maimu, Lene	Ta' det som en mand, frue! (1975)	Demonstratør af skønhedsmiddel	14
4072096	Majani, Sandra	Parfum d'Yvonne, Le (1994)	Yvonne Jacquet	3
4072293	Majorova, Yelena	34-j skoryj (1981)		2
4073358	Malcolm, Robyn	Intrepid Journeys	Herself (Host)	2
4073450	Maldonado, Norma	Gun, a Car, a Blonde, A (1997)	Adele/Bunny	4
4073455	Maldonado, Norma	General Hospital	Marina Rojas (1994-1995)	5
4074106	Malini, Hema	Ratnadeep (1979)		-1
4074144	Malinka, Ingrid	Tatort - Feuerwerk für eine Leiche (1988) (TV)		23
4074632	Malle, Anna	Southern Comfort (1995) (V)		-1
4075072	Malmlöf, Wilma	Ingen mans kvinna (1953)	Woman at Henriksson's	-1
4075361	Malone, Maeve	Deadlock: A Passion for Murder (1997)	Cop #1	11
4076037	Malyon, Eily	Melody Lingers On, The (1935)	Sister Maria	16
4076060	Malyon, Eily	Three Men on a Horse (1936)	Miss Burns, a Nurse	14
4076434	Manchise, Tina	Chickboxin Underground (1999)	Monica Kane	4
4076591	Mancini, Carla	Mondo candido (1975)		11
4076798	Mandakini	Naag Nagin (1989)		-1
4076837	Mandan, Cynthia	Ángeles de Puebla, Los (1968)	Laura	8
4077088	Mane, Iro	Eglimata	Flora Prosoutsani-Mitropoulou	4
4077458	Mangold, Erni	Maulkorb, Der (1958)	Gutsituierte dame	13
4077462	Mangold, Erni	Tatort - Mord im Ministerium (1974) (TV)	Kora Wiesiewicz	-1
4077959	Mann, Etta Reese	Edge of Night, The	Iris Schultz (1961)	11
4078366	Manners, Missy	Behind the Green Door, the Sequel (1986)		1
4063068	Lössl, Claudia	Tatort - Der Fremdwohner (2002) (TV)	Claudia Ruhland	8
4063292	Lúcia, Vera (I)	Palácio de Vênus (1980)		-1
4063422	M-G-M Dancing Girls	Big Idea, The (1934)	Themselves	9
4063831	Macaria	Vamos juntos	María Elena	-1
4064308	MacDonald, Susan (I)	Edge of Night, The	Jinx Avery Mallory #2 (1981-1982)	11
4064391	MacDowell, Andie	Unstrung Heroes (1995)	Selma Lidz	1
4064528	Macedo, Rita (I)	Veneno para las hadas (1984)	Jaime's Grandmother	-1
4064802	MacGraw, Ali	Lovely Way to Die, A (1968)	Melody	28
4064907	Machado, Djenane	Grande Família, A	Bebel	-1
4081865	March, Kendall	Edge of Night, The	Tracy Carroll	11
4082030	Marchand, Corinne	Parfum d'Yvonne, Le (1994)	Tilleuls Patron	6
4082145	Marchand, Nancy	Edge of Night, The	Edna Mae Carroll (1962)/Judge Barbara Curtis (1970)	11
4082457	Marcil, Vanessa	General Hospital	Brenda Barrett Jacks Morgan (1992-1998, 2000, 2002-2003)	5
4083760	Margrethe II	Dronningens nytårstale (1999) (TV)	Herself	-1
4083793	Margrethe II	Kongelig familie, En	Herself	-1
4084101	Maria, Graça	Pai Tirano, O (1941)	Gracinha	4
4084226	Maria, Nívea	Semideus, O	Soninha	-1
4084441	Mariani, Carolyn	Egoists, The (2003)	Girl on Treadmill	22
4084898	Marie, Lisa (III)	General Hospital	Jennifer Smith #1 (1980)	5
4084955	Marie, Madeleine	À la vitesse d'un cheval au galop (1992)	Marie Cadeau	13
4085051	Marie-France (III)	Go-Go-Girl vom Blow Up, Das (1969)		9
4086046	Mariscal, Lucila	Valentina		-1
4086049	Mariscal, Rosa	Agujetas en el alma (1998)	Actriz casting	50
4086720	Markham, Marcella	General Hospital	Beatrice LeSeur (1984)	5
4088384	Marque, Susan	General Hospital	Various	-1
4088702	Marqués, María Elena	Ángeles de Puebla, Los (1968)	Angelica Torres Aranda	4
4089397	Marsh, Kyle	Real Bullets (1990)	Jim's Henchman	33
4089444	Marsh, Mae	Bondage of Barbara, The (1919)	Barbara Grey	1
4089919	Marshall, Elizabeth (II)	Greatest, The (1977)	Sponsor's Wife	25
4089936	Marshall, Heather	Chickboxin Underground (1999)	Contorting Performance Chick	18
4090083	Marshall, Mary (III)	Ned Kelly (1970)	Mrs. Barry	-1
4090152	Marshall, Mona (I)	Littles, The		-1
4090239	Marshall, Paula	Gun, a Car, a Blonde, A (1997)	Deborah/Girl In Photograph	9
4090399	Marshall, Tonie	Beau temps mais orageux en fin de journée (1986)	Brigitte	-1
4090612	Marshell, Helen	Nationaal songfestival (1989) (TV)	Herself	-1
4090721	Marsteiner, Terri	General Hospital	Mrs. Lansbury (2003-present)	-1
4091716	Martin, Elizabeth (I)	Egoists, The (2003)	Priscilla Pavlove	4
4091832	Martin, Hertha	Weiße Stadt, Die (1980) (TV)	Anni	3
4091866	Martin, Janet	Main Street Kid, The (1948)	Jill Jones	2
4092080	Martin, Lucy	Edge of Night, The	Tiffany Whitney Douglas (1970-1971, 1973-1976)	11
4092263	Martin, Marion (I)	Tall, Dark and Handsome (1941)	Dawn	13
4092569	Martin, Nancy (I)	Some Kind of Hero (1982)	Hilda Munson, Nursing Home Director	26
4092800	Martin, Sharlene	Comrades of Summer, The (1992) (TV)	Connie	27
4093052	Martinek, Lisa	Handvoll Gras, Eine (2000)	Gaby	4
4093210	Martinez, Angela (II)	Warning: Parental Advisory (2002) (TV)	Morning TV Show Host	21
4078750	Mannix, Julie	General Hospital	Heather Turner (1972)	5
4079108	Manorama (II)	Idu Namma Alu (1988)		-1
4079307	Manríquez, Silvia	Río de la muerte (1977)		3
4079375	Mansfield, Alma	I Was a Communist for the FBI (1951)	Teacher	-1
4080308	Manzano, Celia	Grandes ilusiones		8
4080724	Mara, Adele	Main Street Kid, The (1948)	Gloria	4
4080819	Mara, Renée	Tudo é Música (1957)		-1
4080827	Mara, Suzanne	Hungry Bachelors Club, The (1999)	Hortense	5
4081234	Marbury, Simone	Chickboxin Underground (1999)	Loretta	20
4081300	Marcas, Dominique	Consultation, La (1985)		2
4098056	Mastrangi, Matilde	Palácio de Vênus (1980)		-1
4098535	Matenopoulos, Debbie	General Hospital	Woman at party (1998)	5
4098537	Mateo, Anabel	Agujetas en el alma (1998)	Actriz perezosa	22
4099018	Mathias, Peta	Intrepid Journeys	Herself (Host)	3
4100442	Matteson, Ruth	Edge of Night, The	Rose Pollock #1 (1962-1963)	11
4100515	Matthews, DeLane	General Hospital	Janine Walsh (2001-2002)	5
4101101	Mattson, Robin	General Hospital	Heather Grant Webber #3 (1980-1983)	5
4101278	Matz, Johanna	Perle von Tokay, Die (1953)	Lilly, Studentin	1
4101835	Mauranen, Rea	Angela ja ajan tuulet	Karin Berggren, os. Anders	3
4102092	Maurice, Wanda	Eleven P.M. (1928)	Little Hope Sundaisy	-1
4102169	Maurin, Annalena	Prins hatt under jorden (1980)		21
4102421	Maven, Media	Comrades of Summer, The (1992) (TV)	Celia-Louise Martin	26
4102694	Maxie, Judith	They Nest (2000) (TV)	Dr. Ryersbach	24
4103722	May, Michaela	Meister Eder und sein Pumuckl	Charlottes Mutter	-1
4105063	Mayr, Rosl	Meister Eder und sein Pumuckl	Frau Reiter/2. Dame	-1
4105583	Mazursky, Betsy	Tempest (1982)	Betsy Bloomfield	22
4105913	Maës, Tove	Ta' det som en mand, frue! (1975)	Ellen Rasmussen	1
4106281	McArdle, Kip	Edge of Night, The	Ann Kelly #2 (1964-1965)	11
4106502	McBain, Diane	General Hospital	Claire Howard (1988)	5
4106605	McBride, Martina	General Hospital	Herself (1994)	5
4107394	McCarthy, Regan	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		3
4107433	McCarthy, Sheila (I)	Rats, The (2002) (TV)	Miss Paige, Susan's boss	6
4107663	McCay, Peggy	General Hospital	Iris Fairchild (1967-1970)	5
4107937	McClendon, Afi	Spoonful of Sugar (2003)	Devina	4
4108460	McConnell, Judith	General Hospital	Augusta McLeod (1973-1975)	5
4108474	McConnell, Marina	Young Sherlock: The Mystery of the Manor House	Queen Victoria	-1
4108585	McCord, Jocelyn	They Nest (2000) (TV)	E.R. Resident	32
4108710	McCormack, Patricia	All Mine to Give (1958)	Annabelle	4
4109291	McCullough, Kimberly	General Hospital	Robin Scorpio (1985-1996, 1997-1998)	5
4109321	McCullough, Shanna	Addicted to Love (1988)		-1
4109488	McCullough, Shanna	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Herself	-1
4110249	McDonald, Teru	Pandora's Clock (1996) (TV)	Amamda Lynch	-1
4110617	McDowell, Claire	Failure at Fifty, A (1940)	Bit Role	-1
4110742	McDowell, Claire	Respect the Law (1941)	Nun	-1
4110763	McDowell, Claire	Something to Think About (1920)	Housekeeper	5
4094607	Martínez, Alma	General Hospital	Sharon Garcia (1982)	5
4094723	Martínez, Evangelina	Buzos diamantistas, Los (1988)		-1
4094746	Martínez, Evangelina	Toda una vida		-1
4094882	Martínez, Maribel	Agujetas en el alma (1998)	Actriz ataque de risa	31
4095974	Marín, Gloria	Mi amor por ti		8
4096114	Masamitsu, Cathy	General Hospital	Dr. Kramer (1995)	5
4096837	Mason, Margaret	General Hospital	Gloria #1 (1990)	5
4097018	Mason, Renee	Trauma (1962)	Carla	10
4097386	Masselli, Fiorella	Dottoressa sotto il lenzuolo, La (1976)		11
4097873	Masters, Natalie	Santiago (1956)	Governess	-1
4097921	Masterson, Chase	General Hospital	Ivy Lief (1994)	5
4115598	McNair, Barbara	General Hospital	Aunt Bettina (1984)	5
4115607	McNair, Heather	Making of a Male Model (1983) (TV)	Denise	-1
4116358	McSwain, Kim	Gigli (2003)	Beach Dancer	39
4116370	McSweeney, Kathleen	Moonchild (1994) (V)		-1
4117217	Meche, Carreño	Tres historias de amor (1978)		-1
4117243	Mecklenburg-Solodkoff, Donata	Kongelig familie, En	Herself	-1
4117392	Medel, Aya	Basta Tricycle Driver... Sweet Lover (2000)		-1
4117826	Medina, Ofelia	Toda una vida		1
4117952	Mednyánszky, Ági	Heten, mint a gonoszok (1943)	Éva, a hoteltulajdonos lánya	-1
4119263	Mejia, Tania	Deadlock: A Passion for Murder (1997)	Annette	15
4119329	Mejías, Rosalba	Casting de maduras (2001) (V)		1
4119814	Melgar, Lilly	General Hospital	Lily Rivera (1995-1996)/Lily's Ghost aka Marcella (2003-)	5
4120175	Mellinger, Leonie	Infidelities (1983) (TV)	Silvia	-1
4120288	Mello, Tamara	Rave (2000)	Nette	10
4120436	Melnikova, Yelena	Ya shagayu po Moskve (1963)		-1
4121580	Menezes, Glória	Semideus, O	Angela	-1
4122397	Mercedes (VIII)	Fuck Pigs 6 (2002) (V)		-1
4122807	Mercier, Mary	Unstrung Heroes (1995)	Waitress	25
4123446	Merian, Christel	Reise ohne Wiederkehr (1989)	Irmgard	-1
4123509	Meriko, Maria	Josse (1974) (TV)	Valérie	2
4123520	Meriko, Maria	Sainte farce, La (1972) (TV)	Moreno	3
4123591	Merinero, Carmen	Agujetas en el alma (1998)	Hija Aitor (Aitor's daughter)	15
4123727	Merkel, Una	Bat Whispers, The (1930)	Dale Van Gorder	2
4124094	Merlini, Marisa	Moglie in vacanza... l'amante in città, La (1980)		6
4124522	Merrick, Dawn	General Hospital	Samantha Wells (1985-1989)	5
4124643	Merrill, Dina	Greatest, The (1977)	Velvet Green	-1
4125007	Mersereau, Violet	Wives of the Prophet, The (1926)	Alma	3
4125359	Meskill, Katherine	Edge of Night, The	Mattie Lane Grimsley #3 (1967-1971)	11
4125558	Messinger, Gertrude	Air-Tight (1931)		5
4125901	Metasi, Allison	Sk8 Life (2004)		-1
4126174	Metz, Cathy	Moonchild (1994) (V)		-1
4126241	Meunier, Andrée	Monsieur mon chauffeur (1926)		-1
4126515	Meyer, Dorothy	Greatest, The (1977)	Odessa Clay	6
4110857	McDowell, Lorna	Our Gang Follies of 1936 (1935)		-1
4111213	McFaller, Maria	Real Bullets (1990)	Alice	46
4111254	McFarland, Vachelle	Anarchy TV (1997)	African-American Family	37
4111550	McGilligan, Judith	Edge of Night, The	Josephine Travis Harper (1976-1977)	11
4112333	McGuire, Maeve	Edge of Night, The	Nicole Travis Stewart Drake Cavanaugh #1 (1968-1974, 1975-1977)	11
4112670	McIntosh, Yanna	Rats, The (2002) (TV)	Doctor	11
4113657	McKenna, Margo	Edge of Night, The	Emily Gault Michaels (1980-1981)	11
4113786	McKenzie, Eva	Andy Clyde Gets Spring Chicken (1939)		5
4114085	McKeon, Nancy	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Tracey Thurman	1
4114436	McKinsey, Beverlee	General Hospital	Myrna Slaughter (1994)	5
4114546	McLain, Joan	Old English (1930)	Molly, the Maid	10
4114643	McLaughlin, Emily	General Hospital	Jesse Brewer, R.N. (1963-1990) (original cast)	2
4115010	McLeod, Julie	Beer (1985)	Norpecker Girl	-1
4115152	McLoughlin, Marian	Grass Arena, The (1991)	Mrs. Healy	4
4130747	Mila (I)	Isis Blue 2 (1998) (V)		-1
4130773	Mila (I)	Terminal Case of Love (1998) (V)		-1
4130932	Milano, Christina	Fishing with Gandhi (1998)	Bronte	6
4131219	Miles, Joanna	Edge of Night, The	Gerry McGrath Pollock #2 (1964-1965)	11
4131480	Milestone, Isobel	Tiddly-Winks (1927)		2
4132164	Miller, Amy (IV)	Chickboxin Underground (1999)	Lucy	21
4132690	Miller, J. Robin	General Hospital	Lydia Karenin-Cassadine #2 (2003)	-1
4132880	Miller, Kathy	Sk8 Life (2004)	Miller	-1
4132919	Miller, Kristi	Roommates (2002) (V)	Nicole	2
4133206	Miller, Michelle (I)	Mondo candido (1975)	Cunegonda	2
4134141	Mills, Angela (I)	Trials of Life (1997) (TV)	Paris' Mother	20
4134409	Mills, Juliette	Guépiot, Le (1981)	La supérieure	-1
4134493	Mills, Shayne	Carnal Passion (2001) (V)	Party Guest	23
4134668	Millán, María José	Marta y alrededores (1999)	Alicia	-1
4134916	Milos, Greta	Assman 5 (1998) (V)		-1
4135026	Milovanoff, Sandra	Veine, La (1928)		-1
4136908	Miquel, Joëlle	4 aventures de Reinette et Mirabelle (1987)	Reinette	1
4137224	Miranda, Dianna	General Hospital	Diana (Alcazar's nurse) (2002)	5
4137330	Miranda, Julia	Em Cada Coração um Punhal (1970)	(segment "Clepsusana")	6
4137606	Miriel, Verónica	Río de la muerte (1977)		4
4137715	Miros, Gilda	Rage (1966)		-1
4137746	Miroshnichenko, Irina	Ya shagayu po Moskve (1963)		8
4138473	Missy (I)	Southern Comfort (1995) (V)		-1
4140269	Mitra, Sipra	Rang Berang (1948)		-1
4140451	Mittelstaedt, Tessa	Tatort - Kindstod (2001) (TV)	Franziska	8
4140653	Miyagi, Mariko	Gurama-to no yuwaku (1959)	Ai	-1
4140895	Miyashita, Junko	Danchizuma hiasobi (1973)	Masako Ihara	1
4141255	Mizui, Yumi	General Hospital	Girl with bag	5
4141269	Mizuki, Arisa	Help!	Nana	1
4141646	Mladeck, Kyra	Tatort - Schlußverkauf (1978) (TV)	Eva-Maria Wagner	-1
4141801	Mo, Teresa	Zhong huan ying xiong (1991)	Miss Mui	-1
4142042	Mocha	Isis Blue 2 (1998) (V)		-1
4142283	Modugno, Enrica Maria	Fratelli e sorelle (1991)		7
4126836	Meyers, Bess	Torchy Plays with Dynamite (1939)	Night Matron	-1
4127309	Mia, Rosa	Junior Cursillo (1968)		-1
4127807	Michaels, Jeanna	General Hospital	Constance Townley (1983)	5
4127984	Michaels, Roxanne	Chickboxin Underground (1999)	Argula	2
4128205	Michaud, Françoise	Scènes d'amour en Bavière (1995)		1
4128445	Michel, Lilia	Amantes frios, Los (1978)	Eustolia (segment "Los Amantes frios")	16
4128690	Michell, Helena	At Bertram's Hotel (1987) (TV)	Elvira Blake	3
4128930	Michelsen, Claudia	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Leah Sanders	1
4129523	Midler, Bette	Edge of Night, The	Unknown (late 1960s)	11
4129565	Midori (II)	Isis Blue 2 (1998) (V)		-1
4142685	Moglia, Cristina	Miei più cari amici, I (1998)		-1
4142946	Moistsrapishvili, L.	Magdanas lurja (1955)	Sopo	2
4143348	Molina, Aurora	Grandes ilusiones		2
4143363	Molina, Aurora	Valentina		-1
4143390	Molina, Carmen	No te engañes corazón (1937)		-1
4144060	Molter, Kathy	General Hospital	Molly (1989)	5
4144072	Molto, Mercedes	Valentina		-1
4144264	Monaco, Kelly	General Hospital	Samantha McCall (2003-)	-1
4144628	Mondragón, Flory	Club de señoritas (1956)		-1
4145009	Mongenet, Emilie	Guépiot, Le (1981)	Viviane 'le guépiot'	1
4145051	Monica (III)	2 On 1 (1998) (V)		-1
4145165	Monique (I)	Cumback Pussy 21 (1999) (V)		-1
4145196	Monique (I)	Isis Blue 2 (1998) (V)		-1
4146085	Monroe, Tami	Swedish Erotica 4 (1981)		-1
4146250	Montagnani, Nerina	Trastevere (1971)	Claudia	12
4146317	Montaigu, Sandra	Hurlevent (1985)	Hélène	3
4146692	Monteiro, Dóris	Tudo é Música (1957)		-1
4146732	Monteiro, Marlene	Semideus, O	Nurse	-1
4146818	Montejo, Carmen	Río de las ánimas, El (1964)		-1
4146992	Montenegro, Arlete	Palácio de Vênus (1980)		-1
4147153	Montenegro, Regina	Pai Tirano, O (1941)		21
4147273	Montero, Clara	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Maria Carmen	-1
4147457	Monteros, Rosenda	Vamos juntos	Otilia	-1
4147597	Montes, Lina	Amantes frios, Los (1978)	Juventina (segment "Los Amantes frios")	19
4148022	Montgomery, Elizabeth (I)	Face to Face (1990) (TV)	Dr. Diana Firestone	-1
4148042	Montgomery, Eve	Demon Possessed (1993)	Lissa	5
4149044	Monti, Maura	Rage (1966)		-1
4149249	Montilla, Miriam	Caja 507, La (2002)	Angela	3
4149353	Montoya, Alicia	Club de señoritas (1956)		-1
4149439	Montoya, Alicia	Valentina		-1
4149555	Montreal, Huguette	Amants du Tage, Les (1955)	Alban, Françoise	-1
4148574	Montés, Elisa	Luftschiff, Das (1983)		-1
4148600	Montés, Elisa	Verano azul	Carmen	11
4148633	Mood, Uschi	Go-Go-Girl vom Blow Up, Das (1969)		10
4148712	Moody, Lynne	Some Kind of Hero (1982)	Lisa Keller	5
4148715	Moody, Lynne	Trials of Life (1997) (TV)	Penny	1
4148721	Moody, Lynne	General Hospital	Florence Campbell (2000)	5
4148793	Moolecherry, Elisa	Rats, The (2002) (TV)	Nyla	7
4149659	Moor, Mary	Edge of Night, The	Betty Jean Battle Lane (1956-1960) (original cast)	11
4150380	Moore, Demi	General Hospital	Jackie Templeton (1982-1983)	5
4150507	Moore, Ellen (II)	New Orleans After Dark (1958)	Jean Conroy	-1
4150919	Moore, Judy	Real Bullets (1990)	Sheriff's Wife	36
4150977	Moore, Julianne	Edge of Night, The	Carmen Engler (1984)	11
4150980	Moore, Julie (II)	Bobby Jones, Stroke of Genius (2004)	Attractive Woman	37
4151609	Moore, Melissa	Scream Queens Swimsuit Sensations (1992) (V)	Herself	1
4151903	Moore, Sheila (I)	Virginian, The (2000) (TV)	Mrs. Henry	10
4152158	Moore, Vera	Edge of Night, The	Matilda Lukes (1970)	11
4152339	Moorhead, Natalie	Forgotten (1933)	Myrtle Strauss	6
4152495	Moosholzer, Ingeborg	Meister Eder und sein Pumuckl	Freundin	-1
4154001	Mordvinova, Amaliya	Samozvantsy		4
4154072	More, Camilla	General Hospital	Anna Devane Scorpio Heyward #2 (1991-1992)	5
4154470	Moreira, Ana (I)	Água e Sal (2002)	Emília	10
4154574	Morel, Diana	Rainha Louca, A		-1
4155480	Moreno, Marguerite	Train de plaisir (1936)		-1
4155898	Morett, Maria	Valentina	Diana	-1
4156120	Morgan, Anita (I)	Rage (1966)		-1
4156343	Morgan, Debbi	General Hospital	Dr. Ellen Burgess (1997-1998)	5
4157056	Morgan, Shelley Taylor	General Hospital	Lorena Sharpe (1984-1986)	5
4157479	Mori, Rumiko	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		8
4158382	Morley, Rita	Edge of Night, The	Dr. Ursula Bower (1962)	11
4159380	Morris, Megan (II)	Lights! Camera! Orgy! (1979)		-1
4159584	Morrison, Ann (I)	I Was a Communist for the FBI (1951)	Miss Nova	-1
4159596	Morrison, Ann (I)	General Hospital	Mrs. Nelson (1971)	5
4159773	Morrison, Shelley (I)	General Hospital	Mrs. Ramirez (1982)	5
4159835	Morrissey, Lori	Emmanuelle 5: A Time to Dream (1994)	Jay	-1
4159859	Morriston, Elinor	Not a Penny More, Not a Penny Less (1990) (TV)	Hotel Receptionist	-1
4160250	Mortimer, Caroline	Amanti (1968)	Maggie	3
4160381	Morton, Gabrielle	Hampton Court Palace (1926)	Katherine Howard	1
4160687	Moser, Diane	General Hospital	Lori (1987)	5
4160725	Moses, Clare (II)	General Hospital	Lesley Lu 'Lulu' Spencer [#2] (1995)	5
4160743	Moses, Maribel	General Hospital	Lesley Lu 'Lulu' Spencer [#2] (1995)	5
4162052	Motta, Zezé	Em Cada Coração um Punhal (1970)	(segment "Transplante de Mãe")	5
4162948	Moxley, Gina	Clash of the Ash, The (1987)		-1
4161566	Moór, Marianna	Amerikai cigaretta (1977)	Mrs. Ebes	3
4164693	Mun, Hie	Mokmeyeo bulleobwado (1969)		2
4164759	Mun, Kyeong-hie	Milhaeng (1975)		2
4164997	Munguia, Jessica	Ángeles de Puebla, Los (1968)	Modelo	12
4165388	Munroe, Carmen	General Hospital	Sister Washington	-1
4166128	Murillo, Christine	Enfant du secret, L' (1996) (TV)	Conception	-1
4166978	Murphy, Tara	Real Bullets (1990)	Dancer	47
4167416	Murray, Tyler	Knight Rider (1982) (TV)	Sally	19
4169552	Myles, Meg	Lovely Way to Die, A (1968)	Mrs. Magruder	10
4169560	Myles, Meg	Edge of Night, The	Sid Brennan (1981-1982)	11
4169805	Mynx, Tiffany	Bikini Beach (1993) (V)		-1
4169970	Myojo, Masako	Zatoichi sakate giri (1965)		4
4170006	Myral, Nina	Valet maître, Le (1941)	Agathe	5
4170213	Myslíková, Míla	Zahrada (1968)	Mary	3
4170324	Mzali, Samia	Miel et cendres (1996)	Naima	2
4171046	Mérida, Yolanda	Valentina		-1
4171248	Mézières, Myriam	Agujetas en el alma (1998)	Myriam	10
4171901	Müller-Lincke, Anna	Margots Freier (1919)		-1
4172260	Nacher, Matilde	Páginas en negro, Unas (1950)		-1
4172692	Naff, Lycia	General Hospital	Phoebe Dawson (1989)	5
4172845	Nagazumi, Vasuko	Making of a Male Model (1983) (TV)	Receptionist	-1
4173781	Nakajima, Hiroko	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)		-1
4174022	Nakamura, Masako (I)	Akitsu onsen (1962)	Harue	-1
4174987	Nanh, Kieu	Yank in Viet-Nam, A (1964)	Madame The	13
4175000	Naniwa, Chieko	Gurama-to no yuwaku (1959)	Shige Sasaki	-1
4175148	Nanty, Isabelle	Amoureux, Les (1994)	Maryline	12
4175531	Narayan, Prema	Ratnadeep (1979)		4
4175603	Nardini, Giorgina	Vita da cani (1950)		25
4176293	Nastou, Stella	Tempest (1982)	Secretary	-1
4176604	Nathanael, Elena	Galazio diamanti, To		2
4176733	Natoli, Carlotta	Amiche del cuore, Le (1992)	Morena	-1
4176899	Natsukawa, Shizue	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Mrs. Natori	8
4177323	Navales, Mayte	Agujetas en el alma (1998)	Actriz discoteca (Disco actress)	33
4177430	Navarro, Bertha	Reed, México insurgente (1973)		-1
4177537	Navarro, Lidia	Agujetas en el alma (1998)	Actriz ojo vendado	30
4178992	Needle, Karen	Edge of Night, The	Poppy Johnson (1982-1983)	11
4179049	Neelam (I)	Santaan (1993)		4
4179342	Negoda, Natalya	Comrades of Summer, The (1992) (TV)	Tanya	2
4180697	Nelson, Karlotta (I)	General Hospital	Margaret Ward (1994)	5
4182055	Nettleton, Lois	General Hospital	Virginia Benson (1996-1998)	5
4182189	Neubauer, Christine	Meister Eder und sein Pumuckl	Bedienung	-1
4182207	Neubauer, Ilse	Tatort - Schlußverkauf (1978) (TV)	Frau Seidl	-1
4182221	Neubauer, Ilse	Meister Eder und sein Pumuckl	Hausmeisterin	-1
4182677	Neuwirth, Bebe	Edge of Night, The	Member of the Whitney Dance Theatre (1981)	11
4182846	Neville, Daphne	At Bertram's Hotel (1987) (TV)	Woman at airport	23
4183170	Newbould, Tanya	Unknown Cyclist, The (1998)	By-Stander	16
4183496	Newman, Jaime Ray	General Hospital	Kristina Carter Cassadine (2001-2002)	5
4184014	Newton-John, Olivia	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Song Performer "Rest Your Love On Me" and "The Key"	19
4184318	Ng, Carrie	Jiang shi zhi zun (1987)	Li	-1
4184567	Nguyen, Phi	Warning: Parental Advisory (2002) (TV)	Charlie's Intern	-1
4185006	Nicholls-King, Melanie	Vow to Kill, A (1995) (TV)	Car Rental Agent	-1
4185452	Nichols, Stacey (I)	Hard to Thrill (1991) (V)		-1
4185618	Nicholson, Michele	Caja 507, La (2002)	Mujer Francesa	11
4186214	Nicole, Lydia	Rave (2000)	Rosa	20
4186355	Nicoletti, Susi	Tatort - Mord im Ministerium (1974) (TV)	Gerda Radler	-1
4186813	Nielsen, Brigitte	Brigitte Nielsen: The E! True Hollywood Story (2000) (TV)	Herself	-1
4187952	Nikita (IV)	Casting de maduras (2001) (V)		-1
4188167	Nikolic, Minja	Hocu zivjeti (1982)		-1
4188193	Nikolic, Mirjana	Poslednja trka (1979)		-1
4188808	Nilsson, Anna Q.	Under a Flag of Truce (1912)	Rose Neville	2
4189387	Nipar, Yvette	General Hospital	Sandy Stryker (1986-1987)	5
4189602	Nishida, Naomi	Over Time	Haruko Kaede	6
4190453	Noad, Jessica	Ned Kelly (1970)	Mrs. Scott	21
4191744	Nolsøe, Gunnvor	Ta' det som en mand, frue! (1975)	Ekspedient i slagterforretning	26
4192300	Nordgreen, Cæcilie (I)	Ta' det som en mand, frue! (1975)	Frk. With	4
4192945	Normand, Mabel	Drummer's Vacation, The (1912)		3
4192976	Normand, Mabel	Gusher, The (1913)		-1
4193262	Norris, Christopher (I)	Edge of Night, The	Sarah Louise Capice #2 (1968-1970)	11
4193559	North, Patricia	General Hospital	Constance Chapman (1992)	5
4193771	Norton, Mary (II)	Wall Street Tragedy (1916)	Lois Norton	4
4193891	Norwood, Alana	General Hospital	Georgiana 'Georgie' Jones (#1) (1995)	5
4193919	Norwood, Marina	General Hospital	Georgiana 'Georgie' Jones (#1) (1995)	5
4194073	Notarfrancesco, Adriana	Big Pile, The (1985)	Vera	5
4195721	Nucci, Natalie	General Hospital	Dee Dee Cerullo (1994)	5
4195889	Nunes, Maria Cristina	Grande Família, A	Bebel	-1
4195897	Nunes, Maria Cristina	Semideus, O		-1
4196190	Nur, Muhterem	Kara gözlüm efkarlanma (1968)		-1
4197585	Nájera, Maricruz	Valentina	Gloria	-1
4196940	Nüchtern, Maxi	Meister Eder und sein Pumuckl	Bub	-1
4197904	O'Brien, Mary (VI)	General Hospital	Heather Grant Webber #2 (1977-1979)	5
4197991	O'Brien, Shauna	Deadlock: A Passion for Murder (1997)	Kirsty	2
4198317	O'Connell, Brittany	Other Side of Chelsea, The (1993) (V)		-1
4198462	O'Connell, Laura	Chickboxin Underground (1999)	Personal Manager's Date for the Evening	-1
4199241	O'Dell, Nancy	General Hospital	Female police officer (1998)	5
4199371	O'Donnell, Maire	Home Is the Hero (1959)	Maura Green	5
4199503	O'Driscoll, Martha	Laddie (1940)	Sally Pryor	10
4199840	O'Hara, Joan	Home Is the Hero (1959)	Josie O'Reilly	4
4200271	O'Leary, Molly	Dead Wrong: The John Evans Story (1984) (TV)	Terry	10
4200426	O'Malley, Kathleen	Killers, The (1964)	Receptionist	11
4200455	O'Malley, Kathleen	General Hospital	Mrs. Moss (1982)	5
4201730	O'Sullivan, Maureen	Tarzan Finds a Son! (1939)	Jane	2
4202354	Oberhorner, Traudl	Meister Eder und sein Pumuckl	Frau am Steeg	-1
4202382	Oberly, Charlet	Grandma Didn't Wave Back (1984) (TV)	Mrs. Stern	5
4202423	Obermaierová, Jaroslava	Waterloo po cesku (2002)		14
4202578	Obodiac, Hadley	Highway 61 (1991)	Customs Agent #2	7
4202619	Oborne, Jenni	Gigli (2003)	Beach Dancer	42
4204057	Oginome, Keiko	Ijô no hitobito: Densetsuno nijino sankyôdai (1993)		2
4204124	Ogonek, Monika	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Sekretärin im VEB	-1
4204175	Oh, Eun-ju	Wonhanui gongdongmyuji (1983)		4
4204812	Okada, Mariko	Akitsu onsen (1962)	Shinko	1
4205408	Olar, Susan	Making of a Male Model (1983) (TV)	Margo	-1
4205805	Olin, Kersti	Prins hatt under jorden (1980)		18
4205987	Olive, Sylvie	À la vitesse d'un cheval au galop (1992)	La fiancée du handicapé	34
4206242	Oliver, Nicole	Vow to Kill, A (1995) (TV)	Linda Mason	6
4206781	Ollilainen, Maiju	Käyntikorttini... (1964)		-1
4206865	Olmos, Sabina	Casamiento de Chichilo, El (1938)		6
4207240	Olsen, Sara Møller	Hjem til fem		-1
4207259	Olsen, Susan (I)	Bradys, The	Cindy Brady	5
4207853	Omilami, Elizabeth	Bobby Jones, Stroke of Genius (2004)	Camilla Brown	-1
4207929	Omura, Ayako	Help!		4
4208475	Ooms, Amanda	Ginevra (1992)	Cecilia	-1
4208672	Opert, Sylvia	Dance Comique (1945)		-1
4209784	Orlowski, Teresa	Videostar: The Magazine On Tape (1992) (V)		-1
4209805	Orléans, Jenny	Josse (1974) (TV)	La prostituée	5
4210353	Orsini, Monica	Primal Instinct (1996) (V)		3
4210551	Ortega, Esther	È già ieri (2004)	Marta	-1
4211583	Ortiz, Natalia	No te engañes corazón (1937)		-1
4211768	Orzazewski, Kasia	I Was a Communist for the FBI (1951)	Mrs. Cvetic	-1
4211016	Osburg, Gabriele	Reise ohne Wiederkehr (1989)		-1
4212006	Osterwald, Bibi	General Hospital	Nanny McTavish #1 (1982)	5
4212815	Otsuki, Tamayo	Anarchy TV (1997)	Tiffanny	8
4212976	Ottiano, Rafaela	Married? (1926)	Maid	-1
4213007	Otto, Denise	Matchless (1973)	Annie	2
4213307	Out, Elvira	Do Not Disturb (1999)	Policewoman on the roof	-1
4213529	Overing, Jos	Do Not Disturb (1999)	Lady in striking gown	-1
4213542	Overman, Ion	General Hospital	Gabriela Garza (2000-2002)	-1
4213700	Owen, Catherine Dale	Strictly Unconventional (1930)	Elizabeth	1
4214306	Ozden, Sheila	Tempest (1982)	Belly Dancer	-1
4214674	Pabella, Anna	Vita da cani (1950)		22
4214784	Pace, Tiffany	Carnal Passion (2001) (V)	Party Guest	24
4215060	Packer, Netta	Holiday for Sinners (1952)	Rosa	-1
4215076	Packer, Netta	They Won't Believe Me (1947)	Spinster	-1
4216160	Page, Anita	Voice of Hollywood No. 3, The (1929)	Herself	-1
4216505	Page, Laurel	Littles, The	Mrs. Bigg	9
4217131	Paige, Janis	General Hospital	Aunt Iona Huntington (1989)	5
4217430	Painter, Nell	Shattering the Silences: The Case for Minority Faculty (1997)	Herself	-1
4217681	Pakarinen, Kaija	Angela ja ajan tuulet	Alma	-1
4217751	Pakulnis, Maria	Weryfikacja (1987)		5
4218085	Palange, Inez	Melody Lingers On, The (1935)	Louisa	12
4219001	Palmer, Corliss	Bromo and Juliet (1926)	Madge	2
4219452	Palmer, Patricia Fass	Intimate Portrait: Bonnie Franklin (2003) (TV)	Herself	-1
4219702	Palmgren, Aurore	Ingen mans kvinna (1953)	Arne's Mother	4
4220003	Palou, Matilde	Ladrona, La (1954)		9
4220357	Pamphili, Mirella	Amanti (1968)	Party guest	5
4220980	Pandolfi, Claudia	Amiche del cuore, Le (1992)	Claudia	-1
4221998	Papadopoulou, Dimitra	Eglimata	Athina Nikolaidou	-1
4222532	Pappa, Vicky	Jack o kavalaris (1979)	Kleoniki	9
4222543	Pappas, Cassie	Live with Regis and Kathie Lee	Host (2001)	3
4223277	Parent, Manda	Colombes, Les (1972)	Armande	-1
4223413	Parets, Adriana	Solo y conmigo (2000)		-1
4224027	Parish, Diane	Picking up the Pieces	Lisa Gee	-1
4224191	Park, Am	Jeolbeun poong gin ibyeol (1984)		4
4224212	Park, Am	Mulmangcho (1960)		4
4224250	Park, Am	Wonhanui gongdongmyuji (1983)		3
4224358	Park, Jin-yeong	Maechun 3 (1993)		1
4224606	Parker, Cecilia	Grand Central Murder (1942)	Constance Furness	3
4224677	Parker, Dorothee	Goldsucher von Arkansas, Die (1964)	Jane Brendel	4
4225175	Parker, Molly (I)	Good Shepherd, The (2004)	Madeline	2
4225304	Parker, Patty (II)	Fat Beach Patrol (2000) (V)		-1
4225372	Parker, Sarah	Chickboxin Underground (1999)	Nun	28
4225630	Parkkomäki, Marika	Angela ja ajan tuulet	Angela Anders	1
4226225	Parris, Patricia	Littles, The	Helen Little	2
4226256	Parrish, Elizabeth	Edge of Night, The	Zelda Moffett (1981)/Buffy Revere (1982)	11
4226855	Parton, Dorothea	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Inspektor Winter	4
4226981	Parvathi (II)	Jagratha (1989)	Ashwathy	-1
4227897	Pasquel, Silvia	Años perdidos, Los		-1
4228263	Pastor, Maite	Agujetas en el alma (1998)	Actriz irlandesa (Irish actress)	34
4229040	Paton, Laurie	Comrades of Summer, The (1992) (TV)	Cynthia	30
4229078	Patra, Cleo	Primal Instinct (1996) (V)		5
4229315	Patrick, Gail	Up in Mabel's Room (1944)	Mabel Essington	3
4230073	Patton, Mary	Patty (1962)	Myra	13
4230161	Paudler, Maria	Ehestreik (1930)		-1
4230880	Paul, Christiane	Dumm gelaufen (1997)	Sabrina Rotenbacher	2
4231015	Paul, Nancy	Love Potion (1987)	Delaware	1
4231302	Paulová, Jana	Waterloo po cesku (2002)	Visen	5
4230428	Pavan, Marisa	Solomon and Sheba (1959)	Abishag	4
4230605	Pavlova, A.	Ya shagayu po Moskve (1963)		-1
4230746	Pavlow, Muriel	Quiet Wedding (1941)	Miranda	14
4231485	Pawar, Lalita	Grihasthi (1963)		-1
4231490	Pawar, Lalita	Hatyare (1989)		-1
4232013	Payne, Ashlee	Looking in the Fishbowl (2001)	Sage	-1
4232448	Payton, Lucy	Pamela Congreve (1914)		5
4232464	Payton-Noble, Jo Marie	Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Herself	-1
4233257	Pearson, Andrea C.	General Hospital	Gia Campbell #2 (2002-2003)	5
4233421	Pease, Joy	Real Bullets (1990)	Phone Operator	39
4233558	Pechernikova, Irina	34-j skoryj (1981)		8
4234058	Peeples, Nia	General Hospital	Carla Escobar (1983-1994)	5
4234507	Pekkala, Rauni	Käyntikorttini... (1964)		-1
4235333	Pelikan, Lisa	Lionheart (1990)	Hélène Gaultier	4
4235626	Pelletier, Dee	Four Simples Rules (2003)		-1
4235736	Pellicer, Pilar	Amantes frios, Los (1978)	Jacinta (segment "El difunto al pozo y la viuda al gozo")	10
4234759	Pelmelay, Justine	Nationaal songfestival (1989) (TV)	Herself	-1
4234813	Peltonen, Pirkko	Käyntikorttini... (1964)		-1
4235023	Peluffo, Ana Luisa	Reportero, El (1987)		3
4235226	Pena, Lula	Água e Sal (2002)	Senhora	11
4235791	Pencheva, Anya	Ispanska muha (1998)	Rusata vdovitza	4
4236002	Penhaligon, Jean	Love Potion (1987)	Mrs. Hoskins	20
4236257	Pennington, Marla	General Hospital	Samantha Livingston Chandler #2 (1976-1979)	5
4236294	Penny, Prudence	Penny's Picnic (1938)		-1
4236414	Penteado, Tony	Em Cada Coração um Punhal (1970)	(segment "O Filho da Televisão")	16
4236630	Pepper, Barbara	Thunderbirds (1952)	Louise Braggart	17
4237317	Perdue, Derelys	Small Town Idol, A (1921)		-1
4239440	Perry, Jessie	Torchy Plays with Dynamite (1939)	Bailiff	-1
4239494	Perry, Kay	General Hospital		5
4239757	Perschy, Maria	General Hospital	Maria Schuller (1977)	5
4240307	Pescow, Donna	General Hospital	Gertrude Morgan (1999-2001)	5
4240688	Peters, Beth (I)	General Hospital	Agnes Whitaker (1980-1982, 1994)	5
4240873	Peters, Jennifer (I)	General Hospital	Martha Taylor #2 (1978)	5
4241959	Petit, Brigitte	Parfum d'Yvonne, Le (1994)	Nude Dancer	17
4242313	Petrelli, Marcella	Moglie in vacanza... l'amante in città, La (1980)		14
4242383	Petri, Hella	Entre chats et loups (1985) (TV)	Sonia Karpova	1
4242449	Petri, Nina	Fünfzig Minuten (2001)	Mutter (Off)	5
4242485	Petri, Nina	Tatort - Schimanskis Waffe (1990) (TV)	Martina Spilonska	4
4242710	Petro, Lori	In the Mind of...	Cassie	-1
4242805	Petrov, Vera	Geile Früchtchen (1992) (V)		-1
4243042	Petrovna, Sonia	Edge of Night, The	Martine Duval Crown (1980-1981)	11
4243119	Petrusenko, Liana	Dva patrona na mamonta (1990)		3
4243524	Petty, Cherry	Warning: Parental Advisory (2002) (TV)	Curtis's Assistant	28
4243866	Peyser, Penny	Pandora's Clock (1996) (TV)	Lisa Erickson	9
4244103	Peña, Florencia	Banda de Cantaniño, La	Host (2002)	1
4244495	Pfeil-Klee, Silke	Reise ohne Wiederkehr (1989)		-1
4244508	Pfenning, Wesley	General Hospital	Cynthia Elliot (1982)	5
4244561	Pflieger, Jean	General Hospital	Mrs. Williams (1993)	5
4244742	Pharris, Chrystee	General Hospital	Katie (2000)	5
4244939	Philipp, Barbara	Tatort - Der Fremdwohner (2002) (TV)	Ana Gramm	6
4245535	Phillips, Dorothy	Rosary, The (1911)	Ruth Martin	2
4245709	Phillips, Julianne	Vow to Kill, A (1995) (TV)	Rachel Waring	2
4245781	Phillips, Mackenzie	Intimate Portrait: Bonnie Franklin (2003) (TV)	Herself	-1
4245841	Phillips, Michelle (I)	Harry and Max (2004)	Mother	5
4245971	Phillips, Ruth (I)	General Hospital	Janet Fleming (1963)	5
4246006	Phillips, Samantha	Behind Closed Doors (2002) (TV)		1
4246016	Phillips, Samantha	Love Potion (1987)	Chrissy	10
4246207	Phillpotts, Ambrosine	Happy Go Lovely (1951)	Lady Martin	17
4246344	Phoenix, Rain	Harry and Max (2004)	Nikki	3
4246436	Piaget, Cristina	Inner Glow of Things, The (2003)	Olympia	2
4246916	Piccolo, Ottavia	Trastevere (1971)	Nanda	7
4247621	Pickman, Deb	They Nest (2000) (TV)	Peggy Crump	13
4247659	Picon, Molly	Grandma Didn't Wave Back (1984) (TV)	Grandma	1
4247848	Pielou, Shelley	Love Potion (1987)	Sarah	11
4247849	Pielou, Shelley	Not a Penny More, Not a Penny Less (1990) (TV)	Judith Tipton	-1
4248635	Pietsch, Monika	Tatort - Tod aus der Vergangenheit (1992) (TV)	Lore Ehrlicher	10
4248891	Piipponen, Anja	Vatsa sisään, rinta ulos! (1959)	Singing schoolgirl	-1
4249556	Pinal, Jacky	General Hospital	Lydia Morez (1994)	5
4249918	Pinkerton, Nancy	Edge of Night, The	Beth Moon Anderson Barnes (1963-1967)	11
4250142	Pinson, Julie	Unstrung Heroes (1995)	Nurse Franklin	28
4250221	Pinto, Maria	Pai Tirano, O (1941)		22
4250239	Pintor, Isabel	Agujetas en el alma (1998)	Actriz discoteca (Disco actress)	26
4250310	Pious, Minerva	Edge of Night, The	Nicole's landlady (1972)	11
4250358	Piovani, Pina	Vita da cani (1950)		18
4250660	Pirelli, Elli	Tatort - Leiche im Keller (1986) (TV)		-1
4250705	Pires, Glória	Semideus, O	Ione	-1
4250761	Pires, Míriam	Semideus, O	Dulce Leonardo	-1
4252065	Pizzorno, Antonietta	Imphy, capitale de la France (1995)	Herself	-1
4252703	Plauensteiner, Lieselotte	Tatort - Mord auf Raten (1980) (TV)		-1
4253233	Ploteny, Mirjam	Tatort - Hahnenkämpfe (1997) (TV)	Beatrice	-1
4253492	Plumb, Eve	Bradys, The	Jan Brady Covington	4
4253948	Podestà, Rossana	Santiago (1956)	Isabella	2
4254205	Poggi, Grace	Melody Lingers On, The (1935)	Carmen	11
4254515	Pointer, Priscilla	Cry for Help: The Tracey Thurman Story, A (1989) (TV)		9
4254613	Poirier, Kim	Rats, The (2002) (TV)	Jay	13
4254727	Poivre, Annette	Esprits de famille (1975) (TV)	Aline Rouzac	4
4255783	Pollitt, Katrin	Tatort - Kalte Wut (2001) (TV)	Heike Hellwig	-1
4256057	Polskikh, Galina	Ya shagayu po Moskve (1963)	Alyona	3
4256399	Pomykala, Dorota	Moje miasto (2002) (TV)	Gozdzik's mother	4
4256404	Pomykala, Dorota	Weryfikacja (1987)		1
4256506	Poncheville, Alice de	Hurlevent (1985)	Isabelle	4
4256593	Ponder, Tilomai	Real Bullets (1990)	Phone Operator	40
4257300	Poolman, Marylu	Albert Einstein (1990) (TV)	Elsa Einstein	-1
4257594	Popesco, Elvire	Valet maître, Le (1941)	Antonia	1
4258794	Porter, Lillian	Tall, Dark and Handsome (1941)		-1
4259332	Post, Leigh Ann	Hungry Bachelors Club, The (1999)	Dr. Woo	-1
4259427	Postel, Sabine	Tatort - Kalte Wut (2001) (TV)	Hauptkommissarin Inga Lürsen	1
4260213	Poupard, Paulette	Premiere (1936)	Singer	-1
4260233	Pouret, Marine	Cheveux de ma mère, Les (2004)		9
4260355	Powell, Brittney	General Hospital	Summer Holloway (2002-2003)	5
4260528	Powell, Katie	General Hospital	Louise Knotts (1988)	5
4260675	Power, De'Ann	Deadlock: A Passion for Murder (1997)	Lisa	4
4260781	Power, Udana	General Hospital	Fran Woods (1988)	5
4261976	Prager, Emily	Edge of Night, The	Laurie Ann Karr Lamont Dallas #4 (1968-1972)	11
4261985	Prager, Sally	General Hospital	Priscilla (1991)	5
4262052	Pramas, Elpida	Eglimata	Joan	-1
4262566	Praxie, Vera	Tronco do Ipê, O	Ada	-1
4262413	Pratt, Susan (I)	General Hospital	Anne 'Annie' Logan, R.N. (1978-1982)	5
4263274	Presle, Micheline	Beau temps mais orageux en fin de journée (1986)	Jacqueline	-1
4263440	Presley, Priscila	Férias de Laura (1986)		-1
4263484	Press, Gwynn	Edge of Night, The	Inez Johnson (1977)	11
4263687	Preston, Cynthia	General Hospital	Faith Rosco (2002-present)	5
4263991	Prevost, Marie	Small Town Idol, A (1921)	Marcelle Mansfield	7
4264817	Priest, Natalie	Edge of Night, The	Juror (1976)	11
4264871	Prieto, Adriana	Rainha Louca, A		-1
4265290	Princess of Preussia, Louise	Kongelig familie, En	Herself	-1
4265291	Princess of Rumainia, Margarita	Kongelig familie, En	Herself	-1
4265293	Princess of Ysenburg and Büdingen, Elisabeth	Kongelig familie, En	Herself	-1
4265481	Pringle, Joan	General Hospital	Dr. Patricia Mason (1982-1984)/Elizabeth Jackson (1994)	5
4265640	Pritchard, Elizabeth	Highway 61 (1991)	Louise Watson	14
4266492	Proulx, Denise	Hey Babe! (1980)	Miss Dolphine	-1
4266563	Prout, Eva	Guardian's Luck, A (1912)		2
4266808	Pruitt, Katie	Warning: Parental Advisory (2002) (TV)	Media	-1
4267816	Pullman, Maesa	Virginian, The (2000) (TV)	Alice Bell	25
4268178	Purcill, Karen	General Hospital	Jill Streeter (1977)	5
4268354	Purnima (I)	Ratnadeep (1979)		6
4269962	Pöppelmann, Kerstin	Meister Eder und sein Pumuckl	Charlotte	-1
4270119	Quackenbush, Anne	Warning: Parental Advisory (2002) (TV)	Rock Journalist	22
4270356	Quattrini, Paola	Fratelli e sorelle (1991)		2
4270477	Queen Anne-Marie	Kongelig familie, En	Herself	-1
4270636	Queen Victoria	Kongelig familie, En	Herself	-1
4271850	Quinlan, Maeve	General Hospital	Betsy Kensington (1993)	5
4272018	Quinn, Dayna	Real Bullets (1990)	Sallini's Mistress	24
4272079	Quinn, Martha	Bradys, The	Tracy Brady	13
4272762	Quo, Beulah	General Hospital	Olin (1985)	5
4272831	Qvistgaard, Berthe	Ta' det som en mand, frue! (1975)	Karen	5
4272872	Raab, Natasa	Martori disparuti (1988)		-1
4272941	Raadhika	Varavu Ettana Selavu Pathana (1994)	Lakshmi	-1
4273021	Raakhee	Loot Maar (1980)		-1
4273634	Radding, Brooke	General Hospital	Brooke Lynn Ashton (1999-2001)	5
4273959	Radner, Gilda	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Introduction	24
4275308	Rahn, Patsy	General Hospital	Dr. Monica Bard Webber Quartermaine #1 (1976-1977)	5
4275326	Rahouadj, Farida	Amoureux, Les (1994)	Linda	15
4276220	Raitt, Anne	White Peak Farm	Madge Tanner	-1
4276560	Rakhimova, Gulbakhor	Ukhodya, ostayutsya (1987)		8
4276976	Ralston, Esther	To Please One Woman (1920)		-1
4277034	Ralston, Marcia	Crime Takes a Holiday (1938)	Pegqy Stone	2
4277327	Rambausek, Else	Perle von Tokay, Die (1953)	Monika, Wirtschafterin beim General	6
4277677	Ramirez, Marisa	General Hospital	Gia Campbell #1 (2000-2002)	5
4277727	Ramlo, Gertrud	Tatort - Mord im Ministerium (1974) (TV)	Frau Grete	-1
4277733	Rammo, Leida	Noor pensionär (1972) (TV)		-1
4277889	Ramos, Helena (III)	Palácio de Vênus (1980)		-1
4278100	Rampling, Charlotte	Infidelities (1983) (TV)	Flaminia	-1
4278219	Ramsden, Frances	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Herself	-1
4278289	Ramsey, Gail	General Hospital	Susan Moore Baldwin (1978-1983)	5
4278391	Ramírez Harris, Cecilia	Vida total	Host	1
4278411	Ramírez, Arcelia	Mujer de Benjamín, La (1991)	Natividad	2
4278685	Rancic, Alenka	Poslednja trka (1979)		-1
4278872	Randall, Marilyn	Edge of Night, The	Teresa 'Tree' Worthington, R. N. (1976-1977)	11
4279663	Rangel, Lucy	General Hospital	Rosa Fernandez (1987)/Adela Corinthos (1995)	5
4280024	Rannikko, Irja	Vatsa sisään, rinta ulos! (1959)	Cleaning woman	-1
4280242	Ranzi, Galatea	Água e Sal (2002)	Ana	1
4280597	Rares, Marietta	Cine ma striga? (1979)		-1
4280715	Raschka, Hely	Premiere (1936)	Polly	10
4281591	Rausch, Lotte	Maulkorb, Der (1958)	Frau Tigges	10
4281993	Raven, Elsa	General Hospital	Tessie (1986)	5
4282274	Ray, Allene	On the High Card (1921)		1
4282322	Ray, Connie	Bobby Jones, Stroke of Genius (2004)	Clara Jones	5
4282452	Ray, Leslie (I)	Edge of Night, The	Babs Micelli (1973)	11
4284284	Recasner, Marie-Alise	General Hospital	Ellen Burgess #2 (1998-1999)	5
4284896	Redlich, Bettina	Tatort - Der Fremdwohner (2002) (TV)	Anita Mecke	7
4285118	Rednikova, Yekaterina	Samozvantsy		3
4285475	Reed, Kira	Behind Closed Doors (2002) (TV)		2
4285588	Reed, Nancy (III)	Thrills of Music: Skitch Henderson and His Orchestra (1948)	Herself, Band Singer	3
4285942	Reen, Barbera	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		8
4287170	Reichelt, Edith	Fünfzig Minuten (2001)	Oma	4
4287497	Reid, Frances (I)	Edge of Night, The	Rose Pollock #2 (1964)	11
4288065	Reimer, Elin	H.O.P.L.A.	Herself	-1
4288183	Reinecke, Renate	Staatsanwalt hat das Wort - Gefährliche Freundschaft, Der (1982) (TV)		-1
4288799	Reit, Ursula	Meister Eder und sein Pumuckl	Cousine Irma	-1
4289099	Relin, Marie-Theres	Dernier mot, Le (1991) (TV)	Theresa	-1
4289146	Remaeus, Eva	Prins hatt under jorden (1980)	Princess	3
4289962	Renee, Ashley	Puppet File, The (1994) (V)		-1
4289992	Renee, Ashley	Tortured Passions (1994) (V)		-1
4290193	Rennard, Deborah	Lionheart (1990)	Cynthia	3
4290329	Reno, Daisey	Chickboxin Underground (1999)	Maria No Habla	7
4274848	Rage, Julie	Trapped (1996) (V)	Gal in bedroom	4
4291787	Revert, Angelica	Agujetas en el alma (1998)	Novia de Aitor (Aitor's girlfriend)	6
4292211	Rey, Lee	Forbidden Under the Censorship of the King (1972)		-1
4293168	Reynolds, Karen	Anarchy TV (1997)	Punker	41
4293266	Reynolds, Marjorie	Up in Mabel's Room (1944)	Geraldine Ainsworth	1
4293274	Reynolds, Marthe	Trois couronnes du matelot, Les (1983)		-1
4293461	Reynoso, Lucero	Valentina	Carmen	-1
4293564	Rezin, Livia	Vita da cani (1950)		21
4293707	Rhey, Ashlie	Deadlock: A Passion for Murder (1997)	Debbie	7
4293738	Rhinehart, Joanna	Egoists, The (2003)	Shiela Verdon	12
4294677	Ribeiro, Lourdes	Tudo é Música (1957)		-1
4294714	Ribeiro, Neide	Palácio de Vênus (1980)		-1
4294934	Ricard, Kelly	Boys of St. Vincent, The (1992) (TV)	Social Worker	17
4295935	Richard, Frida	Frau, nach der man sich sehnt, Die (1929)	Mme. Leblanc	3
4295947	Richard, Frida	Jagd nach der Wahrheit, Die (1920)		8
4296029	Richard, Nathalie	Amoureux, Les (1994)	Viviane	1
4296323	Richards, Carol (III)	Edge of Night, The	Rosella Gray (1970-1971)	11
4296618	Richards, Lorri	Trauma (1962)	Emmaline Garrison	3
4296746	Richards, Robyn	General Hospital	Mariah Maximilliana 'Maxie' Jones [#4] (1993-2002, 2002-)	5
4296864	Richardson, Cheryl	General Hospital	Jenny Eckert Ashton Hornsby (1991-1994, 1997)	5
4297464	Richman, Caryn	Bradys, The	Nora Brady	12
4297732	Richter, Julia	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Andrea	2
4297749	Richter, Julia	Tatort - Schwarzer Advent (1998) (TV)	Yvette	4
4297987	Rico, Beatriz	È già ieri (2004)	Candela	-1
4298329	Ridgeway, Suzanne	Big Tip Off, The (1955)		-1
4298564	Rieffel, Lisa	Trials of Rosie O'Neill, The	Kim Ginty	-1
4299317	Rijn, Elle van	Do Not Disturb (1999)	Hooker	-1
4300186	Ringwald, Molly	Tempest (1982)	Miranda Dimitrius	6
4300695	Ripa, Kelly	Live with Regis and Kathie Lee	Herself (2001-)	2
4301422	Ritter, Gudrun	Luftschiff, Das (1983)		-1
4301771	Rivas Cacho, Lupe	Club de señoritas (1956)		-1
4301864	Rivas, María (I)	Mi amor por ti		1
4302688	Rives, Sophie	Entre chats et loups (1985) (TV)	Une pianiste	12
4302768	Rivière, Marie	4 aventures de Reinette et Mirabelle (1987)	L'arnaqueuse/The Swindler	9
4303561	Robert, Alice	Perle von Tokay, Die (1953)	Margit, Magd bei Aladar	7
4303773	Roberts, Allene	Thunderbirds (1952)	Margie Hanford	19
4304012	Roberts, Doris	Lovely Way to Die, A (1968)	Feeney	16
4304748	Roberts, Nanci	General Hospital	Casey Parker (1980)	5
4305333	Robertson, Margaret	Love Potion (1987)	Mrs. Camden	22
4305667	Robins, Eva (I)	Miei più cari amici, I (1998)		-1
4305773	Robinson, Alexia	General Hospital	Meg Lawson #1 (1990-1994)	5
4306243	Robinson, Harriet (I)	Love Potion (1987)	Billie	13
4306621	Robinson, Ruth (I)	Torchy Plays with Dynamite (1939)	Head Matron	-1
4290462	Renschke, Camilla	Tatort - Kalte Wut (2001) (TV)	Helen	-1
4290479	Renström, Annika	Ingen mans kvinna (1953)	Imber's younger sister	-1
4291671	Revathi	Magalir Mattum (1994)	Sathya	1
4291776	Revere, Anne	Edge of Night, The	Dorothy Stewart #1 (1969-1970)	11
4308014	Rocher, Karole	Adieu (2003)	Servanne	8
4308164	Rochon, Lela	Breakin' (1984)	Extra in first scene	-1
4308188	Rochon, Lela	Wild Pair, The (1987)	Debby	7
4308267	Rockafellow, Marilyn	General Hospital	Dr. Ellen Cahill (1994)	5
4308546	Rodger, Kate	General Hospital	Tess Meadows (1998)	5
4308826	Rodrigues, Alice	Pai Tirano, O (1941)		24
4308833	Rodrigues, Alzira	Tudo é Música (1957)		-1
4308836	Rodrigues, Amália	Amants du Tage, Les (1955)	Amália	4
4308901	Rodrigues, Elvira	Tudo é Música (1957)		-1
4308963	Rodrigues, Karin	Rainha Louca, A		-1
4309743	Rodríguez, Maribel (I)	Brigadista, El (1977)		-1
4310128	Roemer, Kate	Unmasked (1929)	Madam Ramon	10
4310264	Roger, Germaine	Train de plaisir (1936)		-1
4310697	Rogers, Jane (III)	General Hospital	Tess (1997-1998)	5
4310706	Rogers, Jane A.	General Hospital	Celeste (1987)/Tess (1997-1998)	5
4311352	Rohini (III)	Magalir Mattum (1994)	Papamma	3
4311720	Rojas, Mayra	Valentina		-1
4311774	Rojo, Ana Patricia	Veneno para las hadas (1984)	Graciela	1
4311987	Roker, Roxie	Making of a Male Model (1983) (TV)	Madge Davis	4
4313342	Romand, Béatrice	4 aventures de Reinette et Mirabelle (1987)	L'inspectrice	8
4313603	Romanoff, Olga	Kongelig familie, En	Herself	-1
4313605	Romanoff, Princess Olga	Kongelig familie, En	Herself	-1
4313967	Rome, Gina	Trapped (1996) (V)	Della	3
4315090	Ronald, Babs	Way of the World, The (1920)	Angela, as a child	4
4315160	Rondelli, Rose	Entre Mulheres e Espiões (1961)		3
4315212	Rone, Doria	Deadlock: A Passion for Murder (1997)	Allison	8
4315437	Rooney, Maureen	Virginian, The (2000) (TV)	Mrs. Ogden	18
4315549	Roos, Joanna	Edge of Night, The	Victoria Dana (1966)	11
4316234	Rosar, Annie	Perle von Tokay, Die (1953)	Rosa, Zimmerfrau	5
4316614	Rose, Charlotte-Pascal	Dame de lieudit, La (1993) (TV)		-1
4317008	Rose, Lacy	Bikini Beach (1993) (V)		-1
4317093	Rose, Lana	Fuck Pigs 6 (2002) (V)		-1
4317264	Rose, Reva	Edge of Night, The	Ruth Prentiss Tuttle #2 (1968)	11
4317578	Roseanne	General Hospital	Jennifer Smith #2 (1994)	5
4317818	Rosen, Michaela	Fast perfekt verlobt (2003) (TV)	Frau von Seckbach	6
4318457	Rosing, Bodil	Son-Daughter, The (1932)	Woman	-1
4319175	Ross, Merrie Lynn	General Hospital	Emma Luts (1981-1984)	5
4319807	Rossi, Stefania	Età da sballo, Un' (1983)		2
4319837	Rossi, Sylva	Vatsa sisään, rinta ulos! (1959)	Cleaning woman	-1
4319933	Rossmann, Anja	Tatort - Leiche im Keller (1986) (TV)	Ella Klein	8
4321226	Rouland, Carole	À la vitesse d'un cheval au galop (1992)	La cousine bretonne	23
4321290	Rountree, Martha	Keep Posted	Herself/Moderator (1951-1954)	1
4306685	Robinson, Tumara	Overboard (1978) (TV)	Mahura	-1
4307100	Robson, May	She-Wolf, The (1931)	Harriet Breen	1
4307131	Robson, Raven	Virginian, The (2000) (TV)	9 Year Old Girl	35
4307150	Robson, Zuleika	Young Sherlock: The Mystery of the Manor House	Charlotte	-1
4307174	Roby, Teresa	Enfant du secret, L' (1996) (TV)		-1
4307759	Rocha, Neide	Tronco do Ipê, O	Maria	-1
4321412	Rousseau, Louisette	Josse (1974) (TV)	La patronne	7
4321824	Roux, Carol	Edge of Night, The	Mollie (1964)	11
4322002	Rovick, Jody	Moonchild (1994) (V)		-1
4322274	Rowe, Kimberly	Emmanuelle 5: A Time to Dream (1994)	Angie	-1
4322333	Rowe, Pippa	General Hospital	Staff Nurse Holland	-1
4322571	Rowlands, Gena	Tempest (1982)	Antonia Dimitrius	2
4323183	Roy, Nirupa	Amar Raj (1946)		-1
4323262	Roy, Nirupa	Grihasthi (1963)		-1
4323319	Roy, Nirupa	Loot Maar (1980)		-1
4323329	Roy, Nirupa	Main Awara Hoon (1983)		5
4323556	Roy, Renuka	Rang Berang (1948)		-1
4323923	Royle, Amanda	At Bertram's Hotel (1987) (TV)	BEA stewardess	18
4324064	Rozakis, Nancy	Carnal Passion (2001) (V)	Party Guest	22
4325579	Rudolph, Julie	Lionheart (1990)	Homeless Mother	32
4325656	Rudy, Ania	Und tschüss! - Ballermann olé (1997) (TV)	Theresa	11
4326151	Ruiz de la Prada, Isabel	Agujetas en el alma (1998)	Única	11
4326266	Ruiz, Clarisse	Palácio de Vênus (1980)		-1
4326523	Rule, Janice	Holiday for Sinners (1952)	Susan Corvier	3
4327479	Ruskin, Jeanne	Edge of Night, The	Laurie Ann Karr Lamont Dallas #5 (1973-1975)	11
4327610	Ruspoli, Esmeralda	Amanti (1968)	Attorney's wife	6
4327905	Russell, Evangeline	Married? (1926)	Kate Pinto	3
4328063	Russell, Jenna	Picking up the Pieces	Bernadette Wallace	-1
4328744	Russo, Marcele	Semideus, O		-1
4328907	Ruta, Maria Teresa	Moglie in vacanza... l'amante in città, La (1980)		12
4329204	Rutherford, Margaret	Quiet Wedding (1941)	Magistrate	19
4329928	Ryan, Deborah	General Hospital	Angela (1982)	5
4330005	Ryan, Fran	General Hospital	Sister Agatha (1979)	5
4330660	Ryan, Remy	Ava's Magical Adventure (1994)	Eddie	-1
4332084	Río, Alicia	Bikini Beach (1993) (V)		-1
4332447	Röhr, Sarina	Caja 507, La (2002)	Mujer Rubia	9
4332967	Saady, Betty	Semideus, O		-1
4333109	Saavedra, Beatriz	Ladrona, La (1954)		8
4333140	Saavedra, Manola	Valentina	Doña Irene	-1
4334188	Sachse, Dagmar	Dumm gelaufen (1997)	Marlies	20
4334420	Sadiq, Laara	They Nest (2000) (TV)	Nurse #1	26
4334602	Sadriyeva, Zainab	Ukhodya, ostayutsya (1987)		10
4336638	Sakai, Wakako	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		2
4337202	Salaberry, Zilka	Rainha Louca, A	Condesa	-1
4337234	Saladin, Monique	Regard des autres, Le (1980)	Host	1
4337695	Sale, Virginia	Three Men on a Horse (1936)	Chambermaid	11
4338339	Salem, Tahiye	Kislalar doldu bugün (1968)		-1
4338858	Salonen, Kerttu	Mies Marseillesta (1937)	Miss Lily	6
4339311	Salviati, Vanna	General Hospital	Grandma Cerullo (1994)	5
4339816	Samms, Emma	General Hospital	Holly Sutton Scorpio (1982-1985, 1992-1993)	5
4340146	Sampson, Holly	Carnal Passion (2001) (V)	Monique Dulane	1
4340372	Samuel, Renée (I)	À la vitesse d'un cheval au galop (1992)	Mme Demange	16
4340477	Samussenko, Marika	Noor pensionär (1972) (TV)		-1
4341139	Sanchís, Clara	Agujetas en el alma (1998)	Actriz irlandesa (Irish actress)	13
4341272	Sand, Rebecca	Edge of Night, The	Teresa Vetter (1960-1961)	11
4341302	Sanda, Dominique	Grüne Heinrich, Der (1994)	La mère	9
4341567	Sanders, Lena	General Hospital	Autumn Clayton (1987)	5
4342109	Sandra (III)	2 On 1 (1998) (V)		-1
4342427	Sandrock, Adele	Gebannt und erlöst (1919)		-1
4342649	Sands, Lana	Cafe Fantasy (1996)		-1
4343103	Sanford, Julie (I)	General Hospital	Alexis Grant (1995)	5
4343394	Sanromán, Rebeca	Club de señoritas (1956)		-1
4343720	Santander, María	Veneno para las hadas (1984)	Miss Aragón	5
4343799	Santesmases, Rosario	Agujetas en el alma (1998)	Actriz compra	17
4344628	Santos, María (II)	Agujetas en el alma (1998)	Actriz composit	44
4344674	Santos, Sofía	Pai Tirano, O (1941)		20
4344887	Santoveña, Hortensia	Veneno para las hadas (1984)	Sor Eulalia	-1
4344998	Sanz, Ana (II)	Caja 507, La (2002)	Enfermera	19
4345036	Sanz, Margarita	Toda una vida		-1
4345264	Sapundzhieva, Maria	Duhat na bashta mi (1998) (TV)		5
4345600	Sarandon, Susan	Tempest (1982)	Aretha	3
4346355	Sarno, Janet	Edge of Night, The	Mrs. Arnold (1981)	11
4346791	Sassen-Haase, Ingeborg	Meister Eder und sein Pumuckl	Nachbarin	-1
4346968	Sathya	Magalir Mattum (1994)	Madhavi	-1
4347529	Saunders, Jacqueline	Three Men on a Horse (1936)	Carver's Secretary	-1
4347990	Savage, Caressa	Cafe Fantasy (1996)		-1
4348066	Savage, Elizabeth (I)	General Hospital	Lynx Henshaw (1989)	5
4348754	Savidge, Jennifer	Pandora's Clock (1996) (TV)	Barb Rollins	7
4349156	Sawa, Ranko	Hatsukoi no koro (1925)		-1
4349520	Sawicka, Teresa	Farba (1998)		-1
4349681	Sawyer, Sheila	Warning: Parental Advisory (2002) (TV)	Charlie's Assistant	-1
4349818	Say, Figen	Karaoglan - Camoka'nin intikami (1966)		2
4349854	Sayar, Leyla	Dertli irmak (1958)		3
4350003	Sayo, Fukuko	Akitsu onsen (1962)	Osumi	-1
4350077	Saß, Katrin	Dreimal die Woche... (1994) (TV)		-1
4350290	Scagnetti, Franca	Trastevere (1971)		-1
4350358	Scala, Delia	Vita da cani (1950)	Vera	3
4350586	Scanlon, Caitlin	Big Pile, The (1985)	Bonnie Sweringden	24
4351249	Schade, Betty	Isle of Abandoned Hope (1914)		6
4351682	Schall, Johanna	Luftschiff, Das (1983)		-1
4352276	Scheir, Sandi	Bobby Jones, Stroke of Genius (2004)	Nurse	35
4352397	Schell, Maria	Dernier mot, Le (1991) (TV)	Maria Wagner	-1
4352653	Scheres, Lucienne	Repelsteeltje (1973)		-1
4352733	Scheschonk, Anna	Grüne Heinrich, Der (1994)	Anna, enfant	4
4352871	Schiaffino, Rosanna	Trastevere (1971)	Caterina Peretti	4
4352941	Schick, Pat	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		2
4353914	Schmid, Colette	Valet maître, Le (1941)		-1
4354061	Schmidt, Antje	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Sabine (Ehefrau von Uwe)	5
4354517	Schmitz, Sybille	Illusion in Moll (1952)	Maria Alsbacher	2
4355224	Schoberová, Olga	Goldsucher von Arkansas, Die (1964)	Mary Brendel	4
4355254	Schoder, Andrea	Barrings, Die (1955)	Wirtschafterin Charlotte	-1
4355692	Schooler, Heidi	General Hospital	Sara (Maple Clinic Teen) (1987)	5
4355759	Schorn, Christine	Grüne Heinrich, Der (1994)	Mama Rosa	7
4356057	Schreffler, Marilyn	Littles, The		-1
4356124	Schreier, Jessica	They Nest (2000) (TV)	Mrs. Hobbs	16
4356249	Schroeder, Caroline	Tatort - Tödlicher Treff (1987) (TV)		2
4356658	Schubert, Karin	Dottoressa sotto il lenzuolo, La (1976)	Laura Bonetti	1
4357177	Schultze, Jeanette	Taxi-Gattin (1950)		1
4357281	Schulz, Chrissy	Und tschüss! - Ballermann olé (1997) (TV)	Silke	3
4357314	Schulz, Ilona	Anna - annA (1993)	Mother	3
4357324	Schulz, Ilona	Tatort - Eiskalt (1997) (TV)	Frau Grün	7
4357401	Schumacher, Maren	Dreimal die Woche... (1994) (TV)		-1
4357680	Schwam, Helen	Man's Soul, A (1914)		4
4358518	Schön, Bettina	Tatort - Feuerzauber (1977) (TV)	Linda Kastrup	-1
4358687	Schöner, Ingeborg	Goldsucher von Arkansas, Die (1964)	Ilona	9
4358820	Schörg, Gretl	Im Schlaraffenland (1965) (TV)	Lizzi Laffé	10
4359819	Scott, Brenda	General Hospital	Dr. Gina Dante Lansing #2 (1978)	5
4360198	Scott, Judith (I)	Jake 2.0: The Tech (2003) (TV)	Louise Beckett	5
4360501	Scott, Margaretta	Quiet Wedding (1941)	Marcia	7
4360560	Scott, Martha	General Hospital	Jennifer Talbot (1985-1986)	5
4361028	Scream, Sandra	Hard to Thrill (1991) (V)		-1
4361299	Seaforth Hayes, Susan	General Hospital	Dorothy Bradley (1963)	5
4361591	Seaskull, Cecil	Starwoids (2001)	Herself	2
4362266	Sedgwick, Eileen	Flat Harmony (1917)		2
4362725	Seedorff, Jytte	Ta' det som en mand, frue! (1975)		36
4362774	Seeger, Jenny	Gigli (2003)	Beach Dancer	46
4363365	Segre, Michelle	Big Pile, The (1985)	Shy Guest	19
4363370	Segré, Michelle	Big Pile, The (1985)	Diana Wallis	21
4511046	von Martens, Lena	Vatsa sisään, rinta ulos! (1959)		-1
4363709	Seidl, Lea	Tänzer meiner Frau, Der (1925)	Mad. Ivonne Trieux	3
4363865	Seigler, Eleanor	Bobby Jones, Stroke of Genius (2004)	Perry's Girlfriend	-1
4364345	Seka	Swedish Erotica 4 (1981)		-1
4364532	Selbie, Evelyn	End of the Circle, The (1913)	Juanita	4
4364643	Selbuz, Nursen	Tatort - Lockvögel (1996) (TV)		-1
4365454	Selwynne, Clarissa	Girls (1919)	Mrs. Dennett	8
4366549	Seo, Ok-mo	Wonhanui gongdongmyuji (1983)		1
4367209	Sergyl, Yvonne	Ce que les Flots Racontent (1916)		4
4367346	Serna, Assumpta	Grüne Heinrich, Der (1994)	Judith	5
4368344	Seseña, Nathalie	Agujetas en el alma (1998)	Nathalie	4
4368644	Seth, Sushma	Chann Pardesi (1980)	Jassi - Joginder Singh's wife	7
4368986	Severn, Maida	General Hospital	Mrs. Andrews (1972)	5
4369037	Severo, Marieta	Grande Família, A	Nenê	2
4369233	Sevilla, Ninón	Club de señoritas (1956)		-1
4369527	Seyler, Athene	Quiet Wedding (1941)	Aunt Mary	5
4369609	Seymour, Anne	General Hospital	Beatrice Hewitt (1984)	5
4370267	Shaffer, Louise	Edge of Night, The	Serena Travis Faraday/Josie (1975-1976)	11
4370312	Shaga, Lad	Highway 61 (1991)	Gun Dealer	33
4370646	Shakespeare, Tracy	Lionheart (1990)	Heckler's Date	22
4371202	Shang, Kuan	Long Wei shan zhuang (1980)		-1
4371334	Shannah	Nationaal songfestival (1989) (TV)	Herself	-1
4371776	Sharada (I)	Abhimanavanthulu (1973)		-1
4372295	Sharma, Rajni	Chann Pardesi (1980)	Nimmo	5
4372380	Sharon, Fran	Edge of Night, The	Elaine 'Cookie' Pollock Thomas Christopher #1 (1962-1972)	11
4373147	Shaw, Crystal	Laser Moon (1993)	Jacelyn	-1
4373290	Shaw, Janet (I)	They Won't Believe Me (1947)	Susan Haines, Verna's Roommate	-1
4373509	Shaw, Reta	All Mine to Give (1958)	Mrs. Runyon	10
4373665	Shaw, Victoria (I)	General Hospital	Kira Faulkner (1974-1975)	5
4374015	Shayne, Cari	General Hospital	Karen Wexler #1 (1992-1994, 1995)	5
4374262	Shear, Pearl	Some Kind of Hero (1982)	Customer	-1
4375186	Shelley, Barbara	Shadow of the Cat (1961)	Beth Venable	2
4375225	Shelley, Colleen	General Hospital	Gretchen (1986)	5
4376118	Shepis, Tiffany	Chickboxin Underground (1999)	Xerxes	1
4376148	Sheppard, Barbara Ann	Face in the Frame, The (1998)	Andrea Fitzgerald/Amanda Fraun	2
4376572	Sheridan, Nancy	Harvest (1953) (TV)	Louise	9
4376852	Sherman, Jenny	General Hospital	Sally Grimes (1975)	5
4377092	Sherwood, Madeleine	Edge of Night, The	Ann Kelly #1 (1964)	11
4377103	Sherwood, Phyliss	Wild Pair, The (1987)	Waitress	15
4377585	Shigedomi, Christina	Overboard (1978) (TV)	Drug Store Clerk	-1
4377649	Shihomi, Etsuko	Hoero! Tekken (1982)	Chihiro	3
4377942	Shimanskaya, Marina	34-j skoryj (1981)		7
4378548	Shiozawa, Toki	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)		10
4378568	Shipman, Ann	Highway 61 (1991)	Pickerel Falls Reporter	19
4379206	Shirodkar, Shilpa	Return of Jewel Thief (1996)	Sonu	-1
4379576	Shoemaker, Pamela	Edge of Night, The	Shelley Franklyn (1983-1984)	11
4379651	Shoop, Pamela Susan	Knight Rider (1982) (TV)	Maggie	4
4380590	Shuman, Danielle	Little Women in Transit (1996)	Lisa	3
4381599	Siegel, Claudia	Big Pile, The (1985)	Skye (Mime Model)	23
4381625	Siegel, Margrit	Blutjunge Verführerinnen 2 (1972)		4
4381721	Sielisch, Ute	Taxi-Gattin (1950)		9
4381869	Sierra (I)	Bikini Beach (1993) (V)		-1
4382086	Sigalho, Lúcia	Água e Sal (2002)	Senhora	5
4382359	Sihol, Caroline	Enfant du secret, L' (1996) (TV)	Blanche	1
4382534	Silas, Carolyn J.	Vow to Kill, A (1995) (TV)	Air Freight Clerk	-1
4384429	Silva, Nair (I)	Tronco do Ipê, O	Florência	-1
4383135	Silver, Elaine	General Hospital	Mariah Maximilliana 'Maxie' Jones [#3] (1992-1993)	5
4383178	Silver, Melanie	General Hospital	Mariah Maximilliana 'Maxie' Jones [#3] (1992-1993)	5
4383246	Silver, Tracey	General Hospital	Chiara Montgomery (1995)	5
4383446	Silvern, Bea	Breakin' (1984)	Jennifer Sweet	18
4383623	Silvetti, Anna	Veneno para las hadas (1984)	Fabiola's Mother	-1
4385427	Simmons, Sarah (I)	Some Kind of Hero (1982)	Nurse	-1
4385428	Simmons, Sarah (I)	General Hospital	Zelda Bernstein (1979-1980)	5
4384778	Simon, Maria	Fast perfekt verlobt (2003) (TV)	Nika Kreschninski	1
4386021	Simony	No Limits 4 (2003) (V)		-1
4387179	Sinclair, Peggy	General Hospital	Sister Ellen Chapman	-1
4387445	Singer, Maria	Meister Eder und sein Pumuckl	Frau Lrchner/Frau Berger/Hartl	-1
4387541	Singerl, Erni	Meister Eder und sein Pumuckl	Frau Eichinger	-1
4388239	Sinjen, Frauke	Tatort - Tödlicher Treff (1987) (TV)		12
4388240	Sinjen, Frauke	Meister Eder und sein Pumuckl	Frau Gruber	-1
4388364	Sinn, Nikki	Eclipse (1993) (V)		-1
4388415	Sinn, Nikki	Other Side of Chelsea, The (1993) (V)		-1
4390333	Skipworth, Alison	Strictly Unconventional (1930)	Lady Catherine Champion-Chene	6
4390434	Skobtseva, Irina	Ya shagayu po Moskve (1963)		-1
4390956	Sky, Jennifer	General Hospital	Sarah Webber #1 (1997-1998)	5
4391553	Sleeper, Martha	Bromo and Juliet (1926)		-1
4391620	Sleete, Gena	Substitute Wife, The (1994) (TV)	Hattie Donahue	9
4391732	Slezak, Brigitte	Tatort - Feuerwerk für eine Leiche (1988) (TV)		20
4391936	Sloan, Lisa	Edge of Night, The	Nicole Travis Stewart Drake Cavanaugh #3 (1981-1983)	11
4392232	Sládecková, Marta	Andel milosrdenství (1994)	Hilda	6
4392864	Smiley, Tava	General Hospital	Chloe Morgan Ashton (1999-2001)	5
4392944	Smirnova, Lidiya	U nikh yest rodina (1950)		-1
4393577	Smith, Constance (I)	Big Tip Off, The (1955)	Penny Conroy	2
4393695	Smith, Dwan	General Hospital	Dr. Irma Foster (1987)	5
4393707	Smith, Ebonie	General Hospital	Susie Matthews (1987)	5
4393781	Smith, Erin (V)	Bobby Jones, Stroke of Genius (2004)	Alexa Stirling (m)	-1
4394238	Smith, Keely Shaye	General Hospital	Valerie Freeman (1989)	5
4394410	Smith, Laverne	New Orleans After Dark (1958)	Herself	-1
4394480	Smith, Lindsay (III)	Ned Kelly (1970)	McIntyre	24
4394628	Smith, Lois (I)	Edge of Night, The	Mrs. Oates (1983)	11
4395024	Smith, Patricia (I)	Making of a Male Model (1983) (TV)	Mrs. Rockwell	-1
4395968	Smyrner, Ann	Go-Go-Girl vom Blow Up, Das (1969)	Wilma	6
4396646	Snyder, Connie	Demon Possessed (1993)	Karen	3
4397230	Sofer, Rena	General Hospital	Lois Cerullo Ashton Ashton (1993-1997, 1998)	5
4397341	Softley, Melissa	Virginian, The (2000) (TV)	Flower Girl	37
4397852	Sokolova, Lyubov	Ya shagayu po Moskve (1963)		-1
4397933	Sokolovskaya, Yuliya	Dva patrona na mamonta (1990)		2
4398638	Soler Leal, Amparo	Telaraña, La (1990)	Mercedes Rigau	-1
4398721	Soler, Juana	Familia Vila, La (1950)	Elvira	-1
4398923	Soliaman, Samira	Kühne Schwimmer, Der (1957)	Singer	15
4399646	Somers, Suzanne	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	3
4399840	Sommer, Elke	Nachts ging das Telefon (1962)		-1
4400110	Somogyi, Nusi	Heten, mint a gonoszok (1943)	Lujza néni,az ikrek nagynénje	-1
4400303	Song, Jia	Qiu tian de yin xiang (1983)	Qian Wanjun	-1
4400442	Sonja (VIII)	No Limits 4 (2003) (V)		-1
4400459	Sonja, Queen	Kongelig familie, En	Herself	-1
4400572	Sonnsjö, Gull	Prins hatt under jorden (1980)		23
4401041	Soray, Türkan	Eli masali (1966)		1
4401292	Sorel, Louise	Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Herself	-1
4401309	Sorel, Nancy	Critical Assembly (2003) (TV)	FBI agent	-1
4401367	Soremekun, Kai	Medicine Ball	Nia	-1
4401383	Sorensen, Jill	Inner Glow of Things, The (2003)	Clara	3
4402337	Soto, Grace	Wild Pair, The (1987)	Spanish lady	25
4402512	Souchon, Janine	Dame de lieudit, La (1993) (TV)		-1
4402935	Sourdel, Josephine	Parfum d'Yvonne, Le (1994)	Daisy Marchi	18
4402947	Souren, Ingrid	Nationaal songfestival (1989) (TV)	Herself	-1
4388713	Siqueira, Helena	Em Cada Coração um Punhal (1970)	(segment "Clepsusana")	8
4389324	Sitzani, Dora	Episimi agapimeni (1969)		1
4405373	Sperber, Traudel	Tatort - Leiche im Keller (1986) (TV)	Suse Brockmoeller	7
4405590	Spiegel, Barbara	Four Simples Rules (2003)		-1
4408259	St. James, Sydney	Eclipse (1993) (V)		-1
4408596	St. Mauer, Adele	Melody Lingers On, The (1935)	Celeste	18
4408882	Stack, Rosemarie	Making of a Male Model (1983) (TV)	Lila Chandler	-1
4409010	Stadler, Maria	Meister Eder und sein Pumuckl	Frau Steinhausen	-1
4409389	Stafford, Tamara	Making of a Male Model (1983) (TV)	Linda	-1
4409565	Stainer, Maria Helena	Tronco do Ipê, O	Paula	-1
4409951	Stamper, Sumer	Unstrung Heroes (1995)	Nancy Oppenheim	14
4410107	Stanek, Barbara	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Brischidd Neuker	-1
4410691	Stanger, Barbara	Edge of Night, The	Dr. Gail Driscoll (1975)	25
4410835	Stankova, Maruska	Hey Babe! (1980)	Miss Wolf	-1
4411109	Stanley, Pat	Edge of Night, The	Eileen Goodman #2 (1981-1982)	11
4412342	Starrett, Valerie	General Hospital	Diana Maynard Taylor, R. N. #1 (1969-1977)	5
4413393	Steeger, Ingrid	Blutjunge Verführerinnen 2 (1972)		1
4414039	Steen, Jessica	John and the Missus (1987)	Faith	4
4414243	Steenstrup, Henriette	Caravan (2002)	Marianne	1
4414285	Stefanelli, Simonetta	Amiche del cuore, Le (1992)	Giuliana	-1
4415297	Stehli, Penny	Ned Kelly (1970)	Mrs. Curnow	-1
4415378	Steimarová, Evelyna	Waterloo po cesku (2002)		16
4414399	Stein, Carmen	Veneno para las hadas (1984)	Nana	4
4414747	Steiner, Frauke	Tatort - Schwarzer Advent (1998) (TV)		-1
4414784	Steiner, Riley	General Hospital	Page Bowen (1995, 2003)	5
4415584	Stelzer, Mimi	Perle von Tokay, Die (1953)		-1
4416008	Stenke, Claudia	Real Bullets (1990)	Claudia	9
4416196	Stephan, Grit	Romeo und Julia auf dem Dorfe (1984)		-1
4416237	Stephan, Ruth	Kühne Schwimmer, Der (1957)	Karin Biedermann	4
4416550	Stephens, Megan	Gigli (2003)	Beach Dancer	49
4416619	Stephens, Zena Dell	General Hospital	Francine Cerullo (1994)	5
4416880	Sterian, Marioara	Cine ma striga? (1979)	Ina	1
4417880	Stevens, April (I)	Big Tip Off, The (1955)	Herself	12
4418093	Stevens, Connie	Mister Jerico (1970) (TV)	Susan/Claudine/Georgina	2
4418309	Stevens, Jackie	General Hospital	Teenage runaway (1988)	-1
4418414	Stevens, K.T.	General Hospital	Peggy Mercer (1963-1965)	5
4418883	Stevens, Stella	Rage (1966)	Perla	2
4418908	Stevens, Stella	General Hospital	Jake (1996, 1999)	5
4418989	Stevens, Tabitha (II)	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Herself	-1
4419709	Stewart, Danica	General Hospital	Macemelia 'Maxie' Jones #5 (2002)	5
4420347	Stewart, Sara	Meaningful Sex (2000) (TV)	Mistress Monica	-1
4420936	Stimpson, Viola Kates	General Hospital	Sadie (1990)	5
4420966	Stinnette, Dorothy	Edge of Night, The	Nadine Alexander Scott (1976-1977, 1980)	11
4403195	Southwick, Shawn	Knight Rider (1982) (TV)	Lonnie	13
4403405	Sowl, Paula	I Was a Communist for the FBI (1951)	Student	-1
4404024	Sparks, Stephanie	Bobby Jones, Stroke of Genius (2004)	Alexa Stirling	22
4405056	Spence, Merrie Nell	Trials of Life (1997) (TV)	Starr	8
4405120	Spencer, Gillian	Edge of Night, The	Lyn Wilkins Warren #1 (1962-1963)	11
4422266	Stone, Karen (I)	General Hospital	Kate Johnson, R. N. (1996-1998)	5
4423027	Stonehouse, Ruth	Wives of the Prophet, The (1926)	Rachael	5
4424228	Strachota, Grazyna	Zycie za zycie (1991)	Olszanska	13
4424484	Stranahan, Julie	General Hospital	Officer Paula Parker (2001-2002)	-1
4425617	Stresser, Guta	Grande Família, A	Bebel	6
4425770	Strickland, Helen	Martyrdom of Philip Strong, The (1916)	Mrs. Alden	5
4426002	Stritch, Elaine	Edge of Night, The	Mrs. DeGroot (1984)	11
4426725	Struthers, Sally	General Hospital	Jennifer Smith #3 (2002)	5
4427036	Stuart, Anna	General Hospital	Dr. Gina Dante Lansing #1 (1977)	5
4427395	Stuart, Katie (II)	General Hospital	Cindy (2003)/Sage Alcazar #2 (2003-)	-1
4427432	Stuart, Madge	Question of Trust, A (1920)	Stephanie	1
4427525	Stuart, Maxine	Edge of Night, The	Grace O'Keefe (1956) (original cast)	11
4427528	Stuart, Maxine	General Hospital	Mrs. Dawson #1 (1968)	5
4427950	Stupica, Mira	Nocna kafana (1967) (TV)		-1
4428000	Sturges, Sandy	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Herself	-1
4428133	Stylander, Eva	Eglimata	Gountrouh	-1
4428189	Styles, Susan (I)	Cutter to Houston	Nurse Patty Alvarez	6
4428422	Stömmer, Franziska	Meister Eder und sein Pumuckl	Bäurin	-1
4428479	Su, Margo	Club de señoritas (1956)		-1
4428731	Suckling, Jenny Lynn	Gigli (2003)	Beach Dancer	50
4429102	Sugata, Michiko	Daikaijû Gamera (1965)	Nobuyo	-1
4429152	Sugg, Kimberly	Carnal Passion (2001) (V)	Party Guest	21
4429437	Suite, Annie	Substitute Wife, The (1994) (TV)	Mrs. Van Der Meer	7
4429807	Sul-Te-Wan, Madame	Torchy Plays with Dynamite (1939)	Ruby, Black Woman	-1
4430130	Sullivan, Maggie	General Hospital	Kathryn Corbin Dante (1977-1978)	5
4430303	Sulochana	Ratnadeep (1979)		7
4430828	Summer, Donna	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Song Performer "Mimi's Song"	21
4430873	Summer, Karen	Dream Jeans (1987)		-1
4431083	Summers, Amanda	General Hospital	Girl (2001)	5
4431461	Summers, Kristyn	General Hospital	Girl (2001)	5
4431844	Sundahl, Debi	Behind the Green Door, the Sequel (1986)		-1
4432309	Suraiya	1857 (1946)		-1
4432845	Sutcliffe, Irene	At Bertram's Hotel (1987) (TV)	Miss Gorringe	10
4433001	Sutter, Sonja	Barrings, Die (1955)	Gisa von Eyff	4
4433016	Sutter, Sonja	Weiße Stadt, Die (1980) (TV)	Lepa	2
4434513	Suzuki, Honami	Ichigensan (1999)	Kyoko	-1
4434621	Suzuki, Sarina	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)		-1
4434864	Swanson, Gloria	Something to Think About (1920)	Ruth Anderson	2
4435790	Sweet, Thee	Fat Beach Patrol (2000) (V)		-1
4436255	Swift, Stephanie	Terminal Case of Love (1998) (V)		-1
4436505	Swit, Loretta	Beer (1985)	B.D. Tucker	1
4421370	Stockfeld, Betty	Amants du Tage, Les (1955)	Maisie	10
4421858	Stole, Mink	Anarchy TV (1997)	Ms. Dickman	13
4421924	Stoler, Shirley	Edge of Night, The	Frankie (1980)	11
4421929	Stoley, Marilyn	General Hospital	Wendy (1989)	5
4422016	Stolyarskaya, Danuta	Ya shagayu po Moskve (1963)		-1
4437224	Syms, Sylvia	Fiction Makers, The (1968)	Amos Klein	2
4437304	Syniawa, Laura	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Lena	-1
4438028	Szepes, Lia	Mai lányok (1937)	Hanzély Zsuzsi	-1
4438066	Szeterlak, Nina	Tatort - Schwarzer Advent (1998) (TV)	Natascha Gruber	7
4438678	Sáez, Victoria	Agujetas en el alma (1998)	Secretaria	8
4438929	Sánchez, Ana (I)	Breakin' (1984)	Electro Rock 3	9
4440335	T., Jayshree	Qaid (1975)		-1
4440442	Tabatabai, Jasmin	Clemi flüchtet (1994)		-1
4441019	Taggart, Millee	Edge of Night, The	Geraldine 'Geri' McGrath Pollock #3 (1966-1968)	11
4441344	Tai, Kobé	Trapped (1996) (V)	Linda	1
4441986	Takahashi, Toyoko	Akitsu onsen (1962)	Geisha	-1
4442037	Takaishvili, Sesil	Chirveuli mezoblebi (1945)	Manana	4
4442112	Takami, Kyôko	Kôsoku sentai Tâborenjâ		6
4442281	Takamine, Hideko	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Kiyoko Arisawa	1
4443187	Taki, Eiko	Zatoichi sakate giri (1965)		3
4442548	Talbot, Nita	General Hospital	Delfina (1981-1982)	5
4442746	Tallent, Jenny	Flying Blind (1990) (TV)	Pregnant Folksinger	-1
4444050	Tamblyn, Amber	General Hospital	Emily Bowen Quartermaine #1 (1995-2001)	5
4444521	Tanaka, Lydia	Carnal Passion (2001) (V)	Hotel Guest	8
4444622	Tanaka, Rena	Over Time	Rina Kamiya	10
4446137	Tara, Suzanne	General Hospital	Remi Sinclair (1990)	5
4446277	Tarbuck, Barbara	General Hospital	Jane Jacks (1996)	5
4446754	Tasha (II)	Trapped (1996) (V)	A new maid	5
4446943	Tassell, Reba	Harvest (1953) (TV)	Arlene	7
4447150	Tatiana (II)	Valentina		-1
4448533	Taylor, Elizabeth (I)	General Hospital	Helena Cassadine #1 (1981)	5
4448739	Taylor, Holland	Unknown Cyclist, The (1998)	Celia	-1
4448746	Taylor, Holland	Edge of Night, The	Denise Norwood Cavanaugh, R.N. (1977-1978;1980)	11
4448813	Taylor, Jana	General Hospital	Angie Costello (1963-1965) (original cast)	5
4448827	Taylor, Jean (II)	Just Jim (1915)	Rose	2
4448856	Taylor, Jennifer (I)	Edge of Night, The	Det. Chris Egan Gantz (1983-1984)	11
4449319	Taylor, Mary Lou	Harvest (1953) (TV)	Fran	10
4449576	Taylor, Russi	Littles, The		-1
4450332	Teague, Christina	Grand Central Murder (1942)		-1
4450387	Teare, Shanna	Real Bullets (1990)	Bikini Girl in Car	41
4450629	Tedrow, Irene	They Won't Believe Me (1947)	First Woman	-1
4450779	Tegeler, Melitta	Blutjunge Verführerinnen 2 (1972)	Nelly	8
4451001	Teixeira, Silvana	Tronco do Ipê, O	Alice	-1
4451345	Teleky, Zsofi	Pick-up, The (1999)	Farm Girl	3
4451348	Telemaque, Chi-en	General Hospital	Desiree (1990)	5
4451645	Telmzart, Zola	Wall Street Tragedy (1916)	Yvette	5
4453224	Terrah	General Hospital	Electra (1990)	5
4453545	Terry, Kim	General Hospital	Rita Jones Lloyd (1990)	5
4453747	Terwin, Johanna	Premiere (1936)	Mrs. Helder	11
4454352	Texada, Tia	Unknown Cyclist, The (1998)	Lola	23
4454381	Textorius, Elsa	Ingen mans kvinna (1953)	Woman at Henriksson's	-1
4454571	Thalbach, Anna	Tatort - Kindstod (2001) (TV)	Gaby Bergmann	3
4455147	Thayer, Brynn	General Hospital	Kylie Quinlan (1994)	5
4455688	Theoval, Anna	Coeurs de couleur (1989)	Cécilia	2
4455821	Thesman, Giggi	Gigli (2003)	Beach Dancer	51
4456616	Thomas, Amber	General Hospital	Student Nurse Stevens	-1
4457054	Thomas, Jeanine	New Orleans After Dark (1958)	Sandra	-1
4457533	Thomas, Sharon (I)	General Hospital	Mabel (1982)	5
4457540	Thomas, Sheila (II)	General Hospital	Nurse In Admitting (2002)	5
4457937	Thompson, Andrea	Gun, a Car, a Blonde, A (1997)	The Blonde/Jade Norfleet	6
4458138	Thompson, Ellia (I)	General Hospital	Ashley (1998)	5
4458357	Thompson, Lea	Substitute Wife, The (1994) (TV)	Amy Hightower	2
4458360	Thompson, Lea	Unknown Cyclist, The (1998)	Melissa Cavatelli	1
4458387	Thompson, Lisa	Gigli (2003)	Beach Dancer	52
4459716	Thorsell, Karen	Edge of Night, The	Margie Gibson (1961-1963)	11
4459818	Thouin, Lise	Colombes, Les (1972)	Josianne Boucher	-1
4459846	Thrasher, Marisa	Anarchy TV (1997)	Angela	16
4460146	Thurman, Mary	Wives of the Prophet, The (1926)	Laura Neil	9
4461081	Tierney, Maura	Flying Blind (1990) (TV)	Donna	3
4461120	Tiesi, Brianna	Unknown Cyclist, The (1998)	Lemonade Stand Girl #2	9
4461410	Tikkanen, Aino-Maija	Sininen imettäjä (1985)	Maria	-1
4461695	Tiller, Nadja	Barrings, Die (1955)	Gerda von Eyff	2
4461725	Tiller, Nadja	Illusion in Moll (1952)	Vera	10
4461786	Tillet, Lynn	Reed, México insurgente (1973)		-1
4461877	Tilly, Jennifer	Do Not Disturb (1999)	Cathryn Richmond	2
4462114	Timberg, Nathália	Rainha Louca, A	Imperatriz Charlote do México	-1
4462179	Timková, Ingrid	Andel milosrdenství (1994)	Anezka	1
4462300	Timoska, Sirkka	Käyntikorttini... (1964)		-1
4462384	Tinard, Isabelle	Parfum d'Yvonne, Le (1994)	Tounette	10
4462398	Tincher, Fay	All Wet (1930)		1
4462440	Tincher, Fay	Dumb Luck (1926)		2
4463215	Titova, I.	Ya shagayu po Moskve (1963)		-1
4463299	Titus, Jane	Egoists, The (2003)	Dagis Acting Teacher	13
4463417	Titus-Adams, Troy	Team One (2003)	Trojan	-1
4463507	Tkacz, Krystyna	Moje miasto (2002) (TV)	Halina Kurkowa	6
4463669	Tobias, Sydney	Unknown Cyclist, The (1998)	Woman at Wake	21
4463687	Tobie, Ellen	Edge of Night, The	Grace Endicott (1982)	11
4463759	Tobin, Kara	Team One (2003)	Toby One	-1
4463863	Toda, Haruko	Joyu to shijin (1935)		-1
4464450	Todoroki, Yukiko	Gurama-to no yuwaku (1959)	Tatsu Kitagawa	-1
4465047	Toledo, Goya	Caja 507, La (2002)	Mónica Vega	16
4465056	Toledo, Goya	È già ieri (2004)	Rita	2
4465558	Tom, Nicholle	Rave (2000)	Sadie	3
4466314	Tompkins, Angel	General Hospital	Dr. Erna Morris (1985)	5
4466348	Tompkins, Joan	General Hospital	Elizabeth Maynard (1977)	5
4466978	Toolan, Rebecca	They Nest (2000) (TV)	Mrs. Bartle	15
4467367	Torena, Lyllah Michael	Midnight Intruders (1987)	Catwoman	4
4468074	Torres, Blanca	Mi amor por ti		11
4468121	Torres, Cristina	Monosabio, El (1977)	Raimunda	22
4468126	Torres, Cristina	Verano azul	Desi	4
4468273	Torres, Laura	Monosabio, El (1977)	Juanita	21
4468462	Torres, Pilar (II)	Verano azul	Bea	3
4469618	Towers, Constance	General Hospital	Helena Cassadine #3 (1997-2002)	5
4470233	Tracy, Keegan Connor	Jake 2.0: The Tech (2003) (TV)	Diane Hughes	6
4470287	Traeger, Evelyne	Blutjunge Verführerinnen 2 (1972)		2
4471117	Travolta, Ellen	General Hospital	Gloria Cerullo (1994-1996)	5
4471688	Treen, Mary	Tall, Dark and Handsome (1941)	Martha	19
4472453	Trevor, Claire	Valley of the Giants (1938)	Lee Roberts	2
4472527	Triant, Catherine	Big Pile, The (1985)	Gilda Gilmour	11
4473673	Trotter, Laura	Amiche del cuore, Le (1992)	Letizia	-1
4474517	Trunnelle, Mabel	Martyrdom of Philip Strong, The (1916)	Sarah Strong	2
4474528	Trunnelle, Mabel	Next (1912)		1
4474569	Trunnelle, Mabel	Unsullied Shield, An (1913)		3
4474940	Tschechowa, Olga	Barrings, Die (1955)	Amelie von Eyff	8
4475081	Tschechowa, Vera	Maulkorb, Der (1958)		-1
4475086	Tschechowa, Vera	Noch minderjährig (1957)		2
4475239	Tserodze, Dudukhana	Chirveuli mezoblebi (1945)	Postwoman	7
4475247	Tserodze, Dudukhana	Magdanas lurja (1955)	Magdana	1
4475640	Tsuji, Imari	Akitsu onsen (1962)	Woman in Okayama	-1
4476027	Tsutsunava, Tsetsilia	Chirveuli mezoblebi (1945)	Pepela	3
4476046	Tsuzuki, Keiko	Danchizuma hiasobi (1973)	Minako	3
4476146	Tuazon, Nikki	Gigli (2003)	Beach Dancer	53
4476162	Tubelle, Laura	Dead Wrong: The John Evans Story (1984) (TV)	Cindy	8
4476323	Tucker, Jane	Rainbow	Jane (1974-1992) (singer)	-1
4476771	Tummers, Scarlet	First Child on the Moon (2001)	Julia	1
4477186	Turakainen, Elsa	Vatsa sisään, rinta ulos! (1959)	Principal of girls' boarding school	-1
4477669	Turlure, Marcelle	À la vitesse d'un cheval au galop (1992)	Denise Prugneaux	17
4477777	Turner, Anthea	Anthea Turner Body Basics (1996) (V)	Herself	1
4477938	Turner, Elizabeth	Dottoressa sotto il lenzuolo, La (1976)		12
4478194	Turner, Janine	General Hospital	Laura Templeton (1982-1983)	5
4479200	Tvestmann, Hanne	Ta' det som en mand, frue! (1975)		38
4479733	Tyler, Anna Marie	No Reservations (1995) (V)		-1
4480596	Tzadka, Sofi	Kasefet, Ha-	Co-Host (2002-)	-1
4481267	Tüschen, Katharina	Selbstbedienung (1968) (TV)		-1
4481961	Uhl, Nadja	Grüne Heinrich, Der (1994)	Agnes	12
4481972	Uhl, Nadja	Tatort - Eiskalt (1997) (TV)	Petra Schächter	3
4482069	Uhlen, Gisela	Meister Eder und sein Pumuckl	Gräfin	-1
4482935	Umemura, Yôko	Akai yuhi ni terasarete (1925)	Barmaid	-1
4482951	Umer, Magda	Weryfikacja (1987)		13
4484234	Urquhart, Molly	Happy Go Lovely (1951)	Madame Amanda's Assistant	18
4484419	Urvashi	Magalir Mattum (1994)	Janaki	2
4484625	Usmani, Chand	Kadambari (1976)		3
4484672	Ustinova, Valeriya	Prival strannikov (1991)		-1
4484686	Utagawa, Yaeko	Hatsukoi no koro (1925)		-1
4485068	Vachkova, Martina	Ispanska muha (1998)		11
4486543	Valen, Nancy	Black Thunder (1997)	Mela	-1
4486798	Valentin, Barbara	Meister Eder und sein Pumuckl	Frau Risselmeier	-1
4486956	Valentine, Kim	General Hospital	Dawn Winthrop #1 (1988-1989)	5
4486975	Valentine, Nadia	À la vitesse d'un cheval au galop (1992)	L'aide-soignante	43
4487576	Valeri, Marcella	Trastevere (1971)		-1
4487601	Valeria (I)	Eclipse (1993) (V)		-1
4487917	Valevskaya, Zoya	Prokliatiye millioni (1917)		-1
4487964	Valier, Françoise	4 aventures de Reinette et Mirabelle (1987)	Visitor	15
4488040	Valkama, Ritva	Vatsa sisään, rinta ulos! (1959)	Cooker	-1
4488087	Valkyra	Not Tonight Henry (1961)	Henry's Wife	2
4488411	Vallejo, Teresa	Agujetas en el alma (1998)	Actriz sex-shop (Sex-shop actress)	41
4488622	Valli, Virginia	East Side, West Side (1927)	Becka Lipvitch	2
4488720	Vallin, Bekki	Demon Possessed (1993)	Bessie	7
4488755	Vallon, Kay	Andy Clyde Gets Spring Chicken (1939)		10
4488798	Vallow, Kara	Big Pile, The (1985)	Sassy Stylist	12
4488799	Vallow, Kara	Breakin' (1984)	Break Dancer	-1
4488804	Vallow, Kristen	Big Pile, The (1985)	Marina Gold	9
4489671	van Bergen, Ingrid	Maulkorb, Der (1958)	Modell Mariechen	14
4489687	van Bergen, Ingrid	Tatort - Rattennest (1972) (TV)	Petra	7
4489935	Van Dam, Chantal	Agujetas en el alma (1998)	Actriz chimpancé	24
4490731	van der Wardt, Jacqueline	Patty's Posse	Herself	4
4490798	van Dijk, Angelina	Nationaal songfestival (1989) (TV)	Herself	-1
4491162	van Gilst, Kelly Lee	Do Not Disturb (1999)	Screaming Fan	-1
4491235	van Heil, Caroline	General Hospital	Georgiana 'Georgie' Jones [#3] (1996)	5
4491236	van Heil, Elizabeth	General Hospital	Georgiana 'Georgie' Jones [#3] (1996)	5
4492881	Vanderveer, Ellinor	Bromo and Juliet (1926)	Lady on bus	8
4493966	Vardund, Ingerid	Ingen mans kvinna (1953)	Mimmi	10
4494739	Varon, Edith	Anarchy TV (1997)	Mrs. Harris	15
4495164	Vasilescu, Tora	Cine ma striga? (1979)	Anica	2
4495408	Vasilyeva, Vera (I)	Ya shagayu po Moskve (1963)		-1
4495538	Vasquez, Isabel	Amantes frios, Los (1978)	Bruja Indigena ('El Soplador del vidrio")	9
4495560	Vasquez, Leticia	General Hospital	Anita (1990)	5
4495847	Vaszary, Piroska	Heten, mint a gonoszok (1943)	Éva anyja	-1
4496358	Vaughn, Heidi	Edge of Night, The	Dr. Phoebe Smith Jameson #1 (1965-1967)	11
4496729	Vazzoler, Alessandra	Moglie in vacanza... l'amante in città, La (1980)		10
4497148	Vega, Isela	Rage (1966)		-1
4498022	Velez, Desiree Marie	Number's Alive! (1996) (TV)	Ellie The Tutor	2
4498251	Vellani, Siria	Vita da cani (1950)		24
4499564	Vera, Julia	General Hospital	Marta Morez (1994)	5
4499642	Vera-Ellen	Happy Go Lovely (1951)	Janet Jones	2
4499664	Veracruzana, Chispita	Mujer de Benjamín, La (1991)	Drunk woman	-1
4500090	Verdú, Maribel	Feliz cumpleaños (1987)		3
4501811	Veryán, Nora	Río de las ánimas, El (1964)		-1
4501827	Verástegui, Sofía	Agujetas en el alma (1998)	Actriz irlandesa (Irish actress)	39
4502630	Viator, Antonie	Margots Freier (1919)		-1
4502858	Vichniakoff, Catherine	Entre chats et loups (1985) (TV)	Lise	7
4503081	Victor, Dee	Lovely Way to Die, A (1968)	Mrs. Gordon	14
4503524	Vidali, Mary	Jack o kavalaris (1979)	Natali	10
4503789	Vij, Rama	Chann Pardesi (1980)	Kammo	2
4504071	Vilard, Marie-Claire	Cheveux de ma mère, Les (2004)		6
4504367	Villadsen, Siri Stampe	Hjem til fem	Silke	-1
4504553	Villame, Hanna	Basta Tricycle Driver... Sweet Lover (2000)		-1
4505716	Vilmar, Olga	Solo y conmigo (2000)		-1
4505939	Vincent, Dominique	Sainte farce, La (1972) (TV)	Libellule	7
4505956	Vincent, Eugenie	Anarchy TV (1997)	Environmentalist	22
4506280	Vincz, Melanie	General Hospital	Corinne (1981)	5
4506510	Vinot, Marthe	Yeux ouverts, Les (1913)		-1
4506698	Violic, Nina	Letac Joe i Marija smjela (1996)	Marija	-1
4508045	Viveros, Celia	Amantes frios, Los (1978)	Mujer II (segment "Los Amantes frios")	27
4508058	Viveros, Celia	Club de señoritas (1956)		-1
4508188	Viviana (I)	Hard to Thrill (1991) (V)		-1
4508221	Viviani, Sonia	Mondo candido (1975)		10
4508328	Vixxxen	Eclipse (1993) (V)		-1
4509172	Voigts, Henrietta	At Bertram's Hotel (1987) (TV)	Alice	-1
4509600	Volkmann, Elisabeth	Meister Eder und sein Pumuckl	Frau Hoffmann	-1
4509856	Volpe, Antonia	Casamiento de Chichilo, El (1938)		-1
4509867	Volpe, Rosa	Casamiento de Chichilo, El (1938)		-1
4510132	von Bismarck, Maria	Dumm gelaufen (1997)	Prostituierte	23
4510744	von Humboldt, Christa (II)	Club de señoritas (1956)		-1
4511035	von Manteuffel, Monika	Meister Eder und sein Pumuckl	Bärbel	-1
4511455	von Quast, Veronika	Meister Eder und sein Pumuckl	Frau schladerer	-1
4512086	von Weitershausen, Gila	Meister Eder und sein Pumuckl	1. Frau	-1
4512133	von Zerneck, Danielle	General Hospital	Louisa 'Lou' Swenson (1983-1984)	5
4512294	Vorbrodt, Nina	Tatort - Kindstod (2001) (TV)	Andrea	11
4513207	Vukicevic, Nadezda	Poslednja trka (1979)		-1
4513322	Vukotic, Milena	Trastevere (1971)	Delia, la moglie del professore	6
4513440	Vultaggio, Lisa	General Hospital	Hannah Scott (1999-2001)	5
4513850	Vásáryová, Emília	Waterloo po cesku (2002)	Japan woman	4
4514285	Vézinet, Christine	Amoureux, Les (1994)	La mère	10
4514694	Wackernagel, Erika	Tatort - Schlußverkauf (1978) (TV)	Elfriede Draxel	-1
4515014	Wadkins, Catherine	General Hospital	Mary Bishop (2004-)	-1
4515444	Wagner, Kristina	General Hospital	Felicia Scorpio Jones (1984-2003, 2004-)	5
4516349	Walcamp, Marie	Isle of Abandoned Hope (1914)		2
4516431	Walcher, Lena	Tatort - Der Fremdwohner (2002) (TV)	Lina	12
4518220	Walker, Tonja	Making of a Male Model (1983) (TV)	Alma Rockwell	-1
4518224	Walker, Tonja	General Hospital	Olivia St. John Jerome (1988-1990)	5
4518432	Wall, Lucille	General Hospital	Lucille March Weeks, R.N. (1963-1976, 1982)	4
4520123	Walter, Kelsey	Bobby Jones, Stroke of Genius (2004)	Little Clara Jones	-1
4520244	Walters, Andrea	General Hospital	Patti Peters (1995)	5
4520705	Walther, Gretchen	Edge of Night, The	Caroline Egan (1984)	11
4520912	Walton-Walker, Peggy	General Hospital	Betsy Quartermaine (1988)	5
4521084	Wandrey, Donna	Edge of Night, The	Allison Perry (1980)	11
4521465	Warburton, Doreen	Ned Kelly (1970)	Mrs. Jones	26
4521600	Ward, B.J. (II)	Littles, The	Ashley Little (1984-1986)	7
4521963	Ward, Lily	Never Again (1915)	Tiny	-1
4522342	Ward, Valerie (II)	Dame von Paris, Die (1927)		3
4522405	Warder, Cari Anne	General Hospital	Amy Vining, R. N. #1 (1975-1976)	5
4523168	Warren, Elena	They Won't Believe Me (1947)	Mrs. Bowman	-1
4523473	Warren, Mary (I)	Girls (1919)	Violet	2
4523840	Warwick, Dionne	Bacharach: One Amazing Night (1998) (TV)	Herself	-1
4523909	Warwick, Virginia	Roped by Radio (1925)		-1
4524953	Waters, Mira	Greatest, The (1977)	Ruby Sanderson	-1
4525573	Watson, Susan (I)	General Hospital	Rita McKee (1987)	5
4525652	Watt, Billie Lou	Edge of Night, The	Florence Hatcher (1967)	11
4525693	Watters, Alithea	Highway 61 (1991)	Minnie Watson	16
4526176	Wayborn, Kristina	General Hospital	Dr. Greta Ingstrom (1987)	5
4526596	Weatherhead, Chris	Edge of Night, The	Alica Van Dine (aka Faith King) (1983-1984)	11
4527110	Webb, Rita	Tea at the Ritz (1963) (TV)	Mrs. Gutter	4
4527341	Weber, Lois	Bargain, The (1912)		2
4527746	Wedgeworth, Ann	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	9
4527751	Wedgeworth, Ann	Edge of Night, The	Angela 'Angie' Talbot (1966-1967)	11
4527802	Weeden-Washington, April	General Hospital	Faith Burns (1994)	5
4528582	Weimer, Liliana	Solo y conmigo (2000)		-1
4528683	Weingarten, Isabelle	Consultation, La (1985)		1
4529134	Weiser, Grethe	Taxi-Gattin (1950)		5
4529231	Weiskopf, Kim	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	12
4529370	Weiss, Tali	Carnal Passion (2001) (V)	Party Guest	16
4529402	Weisse, Hanni	Ehestreik (1930)		-1
4529869	Welch, Kristie	Making of a Male Model (1983) (TV)	Pam	-1
4530499	Welling, Marge	Not Tonight Henry (1961)	Delilah	4
4530528	Wellman, Cathy	General Hospital	Christie (1988)	5
4530607	Wells, Betty	Grand Central Murder (1942)	Baby Delroy	11
4531046	Wells, Mary K.	Edge of Night, The	Sgt. Helen Kilbourne (1956-1957)/Louise Grimsley Capice #2 (1961-1970)	11
4531268	Welter, Ariadna	Rage (1966)	Blanca	5
4531484	Wendl, Annemarie	Meister Eder und sein Pumuckl	Frau Altenweger	-1
4531696	Wensch, Hildegard	Tatort - Feuerzauber (1977) (TV)	Wirtin	-1
4531697	Wensch, Hildegard	Tatort - Kalte Wut (2001) (TV)		-1
4531698	Wensch, Hildegard	Tatort - Rattennest (1972) (TV)		17
4531936	Werckmeister, Vicky	Margots Freier (1919)		-1
4532333	Wesley, Janne	Ned Kelly (1970)	Caitlyn	27
4532442	Wessely, Paula	Noch minderjährig (1957)		1
4533687	Westermann, Antje	Tatort - Der vierte Mann (2004) (TV)		-1
4533696	Western, Hilary	Yeomen of the Guard, The (1978) (TV)	Kate, Dame Carruthers' Niece	10
4533800	Westlake, Eva	Laughing Cavalier, The (1917)	Lady Stoutenberg	6
4533838	Westley, Helen	Melody Lingers On, The (1935)	Franceska Manzoni	5
4534084	Weston, Celia	Unstrung Heroes (1995)	Amelia	7
4534180	Weston, Mildred	Guardian's Luck, A (1912)	The Child	3
4534187	Weston, Mildred	Pals (1911)		-1
4534684	Wharton, Wally Ann	Eclipse (1993) (V)		-1
4534776	Wheeler, Colleen (I)	They Nest (2000) (TV)	Jane, Dr. Drayton's Assistant	23
4534789	Wheeler, Dorothy	Auction Block, The (1917)	Mrs. Peter Knight	3
4534803	Wheeler, Jane	Boys of St. Vincent, The (1992) (TV)	Receptionist	36
4535870	White, Jane (I)	Edge of Night, The	Lydia Holliday, RN (1968-1969)	11
4536244	White, Pearl	Going Some (1914)		-1
4523650	Warrenton, Lule	Isle of Abandoned Hope (1914)		7
4523696	Warrick, Lee	General Hospital	Mary Ellen Dante (1976-1977)	5
4537244	Whitfield, Lynn	Trials of Rosie O'Neill, The		-1
4537813	Whittaker, Yolanda	Trials of Life (1997) (TV)	Jennifer	-1
4537940	Whittingham, Sheila	Tarnished Heroes (1961)	Josette	8
4538286	Wick, Norma Jean	Critical Assembly (2003) (TV)	TV anchor	-1
4538455	Wicks, Victoria	Not a Penny More, Not a Penny Less (1990) (TV)	Georgina Oakley	-1
4538519	Widdowson-Reynolds, Rosina	General Hospital	Noelle Van Stadt (1981)	5
4538985	Wienzierl, Monica	Ingen mans kvinna (1953)	Ella Persson	-1
4538998	Wiersum, Sheila	Do Not Disturb (1999)	Woman In Elevator	-1
4539285	Wiggins, Penny	Real Bullets (1990)	Girl on Beach	42
4540162	Wilcox, Lisa	General Hospital	Kay (1987)	5
4540384	Wild, Rebecca	Bare Ass Beach (1994) (V)		-1
4539871	Wilder, Crystal	Bikini Beach (1993) (V)		-1
4540812	Wiley, Wanda	Yearning for Love (1926)		1
4541505	Wille, Barbara	Blaulicht - Kindermörder (1960) (TV)		5
4541694	Willett, Annie	Roommates (2002) (V)	Anne	3
4541742	Williams, Ann (I)	Edge of Night, The	Nurse (1959)/Margo Huntington Dorn (1978-1980)	11
4543857	Williams, Sindee	Fat Beach Patrol (2000) (V)		-1
4543900	Williams, Stephanie (I)	Trials of Life (1997) (TV)	Lynn Fisher	-1
4543902	Williams, Stephanie (I)	General Hospital	Dr. Simone Ravella Hardy #2 (1990-1993)	5
4544206	Willice, Lisa	Trials of Life (1997) (TV)	April Fisher	13
4544213	Williford, Patti	Carnal Passion (2001) (V)	Hotel Guest	11
4544261	Willis, Alicia Leigh	General Hospital	Courtney Matthews Quartermaine Morgan (2001-present)	5
4545955	Wilson, Marie (II)	General Hospital	Karen Wexler #3 (1999-2003)	-1
4546298	Wilson, Tara (II)	Gigli (2003)	Beach Dancer	57
4546555	Wimmer, Maria	Im Schlaraffenland (1965) (TV)	Adelheid Türckheim	1
4547015	Windsor, Claire	To Please One Woman (1920)	Alice Granville	1
4547112	Windsor, Marie	Double Deal (1950)	Terry Miller	1
4547171	Windsor, Marie	General Hospital	Dr. Vivian Collins (1982)	5
4548233	Winslow, Kathryn	Rats, The (2002) (TV)	Queen	9
4548244	Winslow, Leah	She-Wolf, The (1931)	Mrs. Talbot	7
4548321	Winston, Dayna	Trials of Rosie O'Neill, The	Valerie Whittaker (1991)	-1
4548344	Winston, Hattie	Edge of Night, The	Veronique (1976)	11
4549473	Wisniewska, Ewa	Zycie za zycie (1991)	Klara	18
4549881	Withey, Sarah	Face to Face (1990) (TV)	Jean Strong	-1
4550137	Wittner, Meg	General Hospital	Gloria #2 (1990)	5
4550719	Wolf, Gusti	Tatort - Mord auf Raten (1980) (TV)	Widow Lisa	-1
4550806	Wolf, Marcia I.	Making of a Male Model (1983) (TV)	Lisa	-1
4551448	Wolston, Dianne	Real Bullets (1990)	Dianne	13
4551485	Wolter, Sherilyn	General Hospital	Celia Quartermaine Putnam Holt (Andrews) (1983-1986)	5
4551507	Wolz, Else	Illusion in Moll (1952)		14
4551892	Wong, Joey (I)	Jin ye bu she fang	Guest	-1
4551901	Wong, Kea	Critical Assembly (2003) (TV)	Activist girl	-1
4536337	White, Pearl	Only Woman in Town, The (1912)		1
4536461	White, Ruth (II)	Lovely Way to Die, A (1968)	Biddy, Cook	7
4536796	White, Yolanda	All Mine to Give (1958)	Elizabeth	13
4537093	Whiteside, Ann	Edge of Night, The	Matron Eleanor Marcheck (1968)	11
4555325	Wright, Edith	Martyrdom of Philip Strong, The (1916)	Loreen	10
4555637	Wright, Mabel	Wall Street Tragedy (1916)	Mrs. Norton	3
4555810	Wright, Olive	Martyrdom of Philip Strong, The (1916)	May Hikes	9
4555960	Wright, Tracy	Highway 61 (1991)	Margo	9
4556355	Wurgaft, Joy	Our Gang Follies of 1936 (1935)		-1
4556583	Wyatt, Sharon	General Hospital	Elsie Mae Crumholz Donely (aka Tiffany Hill) (1981-1984, 1986-1995)	5
4556865	Wyllie, Meg	General Hospital	Doris Roach, R. N. (1975)/Lila Morgan Tolliver Quartermaine (1994) (temporary replacement)	5
4556962	Wyman, Jane	Torchy Plays with Dynamite (1939)	Ellen 'Torchy' Blane	1
4557023	Wyndham, Anne	General Hospital	Caroline Murray (1972-1973)	5
4557196	Wynne, Peggy	Main Street Kid, The (1948)	Young Woman	-1
4557448	Wyte, Alison	Fuck Pigs 6 (2002) (V)		-1
4557652	Wörl, Franziska	Komischer Heiliger, Ein (1979)		-1
4557785	Wüst, Ida	Barrings, Die (1955)	Tante Ulrike	9
4557869	Wüst, Ida	Taxi-Gattin (1950)		3
4558237	Xing, Yufei	Shadow Magic (2000)	Ling	3
4558342	Xu, Ruiping	Qiu tian de yin xiang (1983)	Yang Xiaozhi	-1
4558456	Yachigusa, Kaoru	Gurama-to no yuwaku (1959)	Tomiko	3
4558594	Yahee	Edge of Night, The	Star Wilson Stoner (1978-1982)	11
4558955	Yamada, Judith	They Nest (2000) (TV)	Trauma Nurse #2	29
4560590	Yates, Deborah (I)	Warning: Parental Advisory (2002) (TV)	Pamela Stone	4
4560751	Yatimah, Rose	Pendekar bujang lapok (1959)	Rose	6
4560877	Yazar, Gönül	Kara gözlüm efkarlanma (1968)		-1
4561009	Yearsley, Joanna	Rave (2000)	Georgia	23
4561369	Yen, Tricia	Eclipse (1993) (V)		-1
4561601	Yesipova, Raisa	Tetri mkhedari (1929)	Natasha, wife of Giorgi	2
4562223	Yma, Yvonne	Bach détective (1936)	Madame Estrade	17
4562795	Yma, Yvonne	Valet maître, Le (1941)	La cuisinière au bal	-1
4563272	York, Francine	General Hospital	Thelma (1982)	5
4562308	York, Samantha	Desert of Fear (1993) (V)	Writer	-1
4562621	Yoshikawa, Mitsuko	Akitsu onsen (1962)		-1
4562677	Yoshimura, Mari	Akitsu onsen (1962)	Yoko	-1
4562729	Yoshino, Kimika	Help!		10
4563854	Young, Evelyn	Boobs in Arms (1940)	Sergeant's Wife	5
4563879	Young, Genii	Not Tonight Henry (1961)	Indian Maiden	10
4563944	Young, Janis	Edge of Night, The	Millie (1967)	11
4564820	Yourman, Alice	Edge of Night, The	Anita Borkowitz (1957)	11
4565321	Yuen, Fennie	Zhong huan ying xiong (1991)	Fanny	-1
4565629	Yun, In-ja	Korea (1954)		3
4565800	Yun, Jeong-hie	Utgo saneun Park Seo-bang (1972)		-1
4566012	Yung, Kitty	Sleeping with Seattle (1993) (V)		-1
4566148	Yusen, Susan	Edge of Night, The	Diana Selkirk (1978-1979)	11
4552431	Wood, Jordan	General Hospital	Lisa (1997)	5
4552527	Wood, Lynn	General Hospital	Aunt Janet (1987)	5
4553105	Woodell, Barbara	Lady, Let's Dance (1944)	Dolores	13
4553581	Woods, Lesley (I)	Edge of Night, The	Evelyn Dark (1964)	11
4553584	Woods, Lesley (I)	General Hospital	Mrs. Edna Hadley (1977)	5
4553635	Woods, Ren	Beer (1985)	Mary Morrison	10
4553680	Woods, Susan	Not Tonight Henry (1961)	Indian Maiden	11
4555212	Wright, Amy (I)	Beer (1985)	Stacy	19
4569496	Zee, Eleanor	Breakin' (1984)	Judge	12
4569570	Zee, Ona	Eclipse (1993) (V)		-1
4569965	Zeki, Noemi	Vita da cani (1950)		20
4570327	Zeman, Jacklyn	Edge of Night, The	Bobbi (tthe stewardess) (1976)	11
4570328	Zeman, Jacklyn	General Hospital	Barbara Jean 'Bobbie' Spencer Brock, R. N. (1977-present)	5
4570438	Zenaide	Tronco do Ipê, O	Felícia	-1
4570590	Zerah, Colette	Entre chats et loups (1985) (TV)	Une pianiste	11
4571258	Zhou, Fang Qing	Shadow Magic (2000)	Widow Jiang	-1
4571303	Zhu, Judith	Good, the Bad & the Innocent, The (2001)	The Innocent	-1
4572160	Zima, Vera	Hocu zivjeti (1982)		-1
4572263	Zimmer, Beatrix	Reise ohne Wiederkehr (1989)		-1
4572325	Zimmer, Sonja (I)	Und tschüss! - Ballermann olé (1997) (TV)	Maria	5
4572456	Zimmermann, Johanna	Wette um eine Seele, Die (1918)		-1
4573216	Zohra, Fathma	Marocain (1989) (TV)		-1
4574246	Zuniga, Daphne	Pandora's Clock (1996) (TV)	Dr. Roni Sanders	2
4574421	Zurita, Norah	Tu, mi amor... (1998)		2
4574718	Zázvorková, Stella	Medved (1961)		2
4574912	Ágay, Irén	Iza néni (1933)	Paksy, Jolán	-1
4575067	Álvarez, Ines	Semideus, O	Raquel	-1
4576158	Ômura, Mayumi	Kôsoku sentai Tâborenjâ		7
4566512	Zabala, Zeny	Bulung-Bulungan (1962)		-1
4567016	Zakirova, Rano	Ukhodya, ostayutsya (1987)		6
4567092	Zala, Karola	Iza néni (1933)		-1
4568337	Zanni, Chiara	Critical Assembly (2003) (TV)	Pretty protester	-1
4568628	Zappa, Diva	Anarchy TV (1997)	Courtney	18
4568639	Zappa, Moon Unit	Anarchy TV (1997)	Katie	5
4569435	Zech, Rosel	Tatort - Veras Waffen (2003) (TV)	Marion von Pahl	4
3858542	Haney, Anne	Some Kind of Hero (1982)	Monica Lewis, Jesse's Friend at Nursing Home	22
3859287	Hansen, Aase	Ta' det som en mand, frue! (1975)	Dame på AF-kontor	13
3859343	Hansen, Bente (I)	Ta' det som en mand, frue! (1975)		44
3859345	Hansen, Bernice	100 Pigmies and Andy Panda (1940)	Andy Panda	-1
3859482	Hansen, Ellen (I)	Edge of Night, The	Debbie Martin (1969-1970)	11
3859682	Hansen, Litten	Ta' det som en mand, frue! (1975)	Deltager I strejkemøde	25
3860251	Hara, Etsuko	Toruko 110-ban: monzetsu kurage (1978)	Choma	-1
3860415	Harabor, Manuela	Martori disparuti (1988)	Roxana	-1
3860635	Harbour, Vanita	General Hospital	Dara Jensen (1996-2000, 2003)	5
3861368	Hardy, Cherry	Way of the World, The (1920)	Angela Barton	5
3861404	Hardy, Françoise (I)	Colombes, Les (1972)		-1
3861633	Harell, Marte	Tatort - Mord im Ministerium (1974) (TV)	Frau Ehmann	-1
3862332	Harmer, Lillian	She-Wolf, The (1931)	Maria Peppy	6
3862534	Harned, Victoria	Knight Rider (1982) (TV)	Doris	20
3862690	Harout, Magda	General Hospital	Therese (1999)	5
3863005	Harper, Stacey (I)	Gigli (2003)	Beach Dancer	30
3863281	Harring, Laura	General Hospital	Carla Greco (1990-1991)	5
3863287	Harrington, Amanda	General Hospital	Lesley Lu 'Lulu' Spencer [#1] (1994-1995)	5
3863366	Harrington, Kerrianne	General Hospital	Lesley Lu 'Lulu' Spencer [#1] (1994-1995)	5
3863411	Harrington, Prudence	Point douloureux, Le (1979)	F.	3
3863470	Harris, Arlene (I)	Main Street Kid, The (1948)	Edie Jones	5
3863630	Harris, Cynthia (I)	Tempest (1982)	Cynthia	18
3863944	Harris, Jo Ann	Teenage Tease (1983)		-1
3864757	Harris, Vickee	Carnal Passion (2001) (V)	Party Guest	18
3864988	Harrison, Fran	General Hospital	Carla (1994)	5
3865049	Harrison, Jenilee	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	7
3865063	Harrison, Joanne	They Nest (2000) (TV)	Nurse #2	27
3865289	Harrison, Schae	General Hospital	Nurse (1987)	5
3865555	Harston, Wendelin	Hungry Bachelors Club, The (1999)	Sofia	-1
3865656	Hart, Diane	Happy Go Lovely (1951)	Mae	5
3865690	Hart, Dorothy (I)	I Was a Communist for the FBI (1951)	Eve Merrick	2
3865793	Hart, Heather	Hard to Thrill (1991) (V)		-1
3866160	Hart, Sunshine	Burglar, The (1928)	Mabel's Mother, Jimmy's Mother-in-Law	5
3867249	Hartley, Nina	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Herself	-1
3867496	Hartmann, Alexandra	Tatort - Schwarzer Advent (1998) (TV)		-1
3867524	Hartmann, Elizabeth	Palácio de Vênus (1980)		-1
3867694	Hartwig, Janina	Albert Einstein (1990) (TV)	Stepdaughter Margot	-1
3867696	Hartwig, Janina	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Corinna Pabst	1
3867755	Harukawa, Masumi	Gurama-to no yuwaku (1959)	Masa Uchida	-1
3867817	Harvey, Anne	Ned Kelly (1970)	Mrs. Devine	15
3867850	Harvey, Elaine	Do Not Disturb (1999)	Assistant Receptionist	-1
3867920	Harvey, Joan	Edge of Night, The	Judith "Judy" Marceau Gibson (1960-1963)	11
3868395	Hasperger, Iva	General Hospital	Petra (2002)	5
3868434	Hassan, Veronica	Rebaño, El (1997)		1
3869193	Hatton, Mercy	Laughing Cavalier, The (1917)	Gilda Beresteyn	2
3869331	Haudry, Yasmine	4 aventures de Reinette et Mirabelle (1987)	Kleptomaniac	8
3869356	Hauer, Justine	Fünfzig Minuten (2001)	Steffi	2
3869616	Hauser, Karina	Età da sballo, Un' (1983)		1
3870080	Haver, Phyllis	Small Town Idol, A (1921)	Mary Brown	3
3870210	Havoc, June	General Hospital	Madeline Markham (1990)	5
3870348	Hawkes, Terri	General Hospital	Wendy Masters (1990)	5
3870397	Hawkins, Deseri	Real Bullets (1990)	Cocktail Waitress	48
3870599	Hawley, Ormi	Social Secretary, The (1912)		2
3870690	Hawley, Wanda	Trails of the Golden West (1931)		2
3871306	Hayden, Melissa (II)	General Hospital	Mouse (1989)	5
3871529	Hayes, Adrienne	General Hospital	Brooke Bentley #1 (1965-1968)	5
3871528	Hayes, Adrienne	Patty (1962)	Jean	18
3871560	Hayes, Allison	General Hospital	Priscilla Longsworth (1963-1964)	5
3871578	Hayes, Barbara (I)	Edge of Night, The	Ruth Prentiss Tuttle #1 (1967-1968)	11
3871639	Hayes, Beverly	Edge of Night, The	Ruth Prentiss Tuttle #1 (1967)	11
3871797	Hayes, Helen (I)	Son-Daughter, The (1932)	Lian Wha 'Star Blossom'	1
3872006	Hayes, Patricia (I)	Plays for Pleasure		-1
3872780	Hayward, Susan (I)	They Won't Believe Me (1947)	Verna Carlson	1
3872945	Hazard, Bambi Ann	Carnal Passion (2001) (V)	Party Guest	15
3873128	Hazell, Carol	General Hospital	Nurse Travers	-1
3873476	Heal, Joan	Happy Go Lovely (1951)	Phyllis Gardiner	15
3873654	Healy, Patricia	General Hospital	Tammy Carson #1 (1998-2000)	5
3873711	Heard, Jean	Grass Arena, The (1991)	Clinic Nurse	-1
3874440	Hecht, Jessica	Anarchy TV (1997)	Natalie	2
3874717	Hedhili, Amel	Miel et cendres (1996)	Amina	3
3875150	Heesters, Nicole	Tatort - Veras Waffen (2003) (TV)	Vera Maxheimer	3
3875616	Heiden, Janice	General Hospital	Lisa Holbrook (1978)	5
3875647	Heidorn, Ute	Tatort - Schwarzer Advent (1998) (TV)	Kirstin Gruber	8
3876487	Heim, Carlamaria	Meister Eder und sein Pumuckl	Kundin/Frau Bernbacher	-1
3876336	Heigl, Katherine	Critical Assembly (2003) (TV)	Aizy	1
3876859	Helena, Heloísa	Semideus, O		-1
3877375	Heller, Sally	Little Women in Transit (1996)	Mother	5
3877572	Hellwig, Irena	Anarchy TV (1997)	Wealthy Woman	39
3877606	Helm, Anne	General Hospital	Mary Briggs, R. N. (1971-1973)	5
3877721	Helm, Frances	Edge of Night, The	Nancy Pollock Karr (1960s) (temporary replacement)	11
3878241	Hemingway, Mariel	Warning: Parental Advisory (2002) (TV)	Tipper Gore	2
3878556	Henderson, Florence (I)	Bradys, The	Carol Brady	1
3879423	Henke, Dorit	Blutjunge Verführerinnen 2 (1972)		6
3879806	Henning, Irmgard	Meister Eder und sein Pumuckl	Passantin	-1
3880752	Henson, Gladys	Happy Go Lovely (1951)	Mrs. Urquhart	9
3881367	Herbst, Gaby	Tatort - 3:0 für Veigl (1974) (TV)	Helga Strasser	13
3881377	Herbst, Rebecca	General Hospital	Elizabeth Webber-Lansing (1997-present)	5
3881824	Hermann, Irm	Tatort - Leiche im Keller (1986) (TV)	Frau Klein	6
3881988	Hermida, Alicia	Don Juan (1998)	Mère supérieure	18
3882662	Herrera Calles, Kikis	Mi amor por ti		12
3869225	Hatzelmann, Eva	Meister Eder und sein Pumuckl	Wirtin	-1
3883452	Hershey, Erin	Pandora's Clock (1996) (TV)		-1
3883454	Hershey, Erin	General Hospital	Alison Barrington (2000)	5
3883522	Hertford, Brighton	General Hospital	Barbara Jean 'B. J.' Jones (1989-1994)	5
3883793	Herwig, Ursula	Kühne Schwimmer, Der (1957)	Ulla	6
3883844	Herzig, Eva	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Maria Sebach	3
3883910	Heske, Karin	Nachts ging das Telefon (1962)		-1
3883934	Heslop, Dominique	Banda de Cantaniño, La	Host (2003)	2
3884265	Hetrick, Jennifer	General Hospital	Veronica Wilding Barrett (1998)	5
3884281	Hetzel, Mara	Tatort - 3:0 für Veigl (1974) (TV)	Sosja Mallik	19
3884426	Heuser, Loni	Nachts ging das Telefon (1962)		-1
3884687	Heyden, Yvette	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Judy Bentley	4
3884907	Heywood, Jean	White Peak Farm	Gran	-1
3884966	Hiatt, Ruth	Burglar, The (1928)	Mabel Smith	2
3885023	Hiatt, Shelby	General Hospital	Jane Harland Dawson, R.N. (1968-1975)	5
3885217	Hicks, Caitlin	Beer (1985)	Talk Show Audience	40
3885403	Hickson, Joan (I)	At Bertram's Hotel (1987) (TV)	Miss Jane Marple	1
3885575	Hidaka, Sumiko	Akitsu onsen (1962)	Otami	-1
3886192	Higginson, Jane	General Hospital	Arielle Ashton (1988-1989)	5
3886262	Highet, Fiona	Vow to Kill, A (1995) (TV)	Jack Flash Messenger	-1
3886463	Hilburn, Betty	Married? (1926)	Mary Jane Paul	-1
3886479	Hilda, Irène	À la vitesse d'un cheval au galop (1992)	Lucette Casanova	8
3886803	Hill, Candy	Isis Blue 2 (1998) (V)		-1
3886826	Hill, Carla	Warning: Parental Advisory (2002) (TV)	Washington Wife #2	-1
3887131	Hill, Josephine	Burnt Wings (1920)	Joan Templeton	1
3887511	Hill, Phyllis	General Hospital	Mrs. Dawson #2 (1970-1975)	5
3887724	Hillberg, Linnéa	Maria på Kvarngården (1945)	Barbro	4
3888168	Hilton, Jasmina	Mister Jerico (1970) (TV)	Maid	10
3888509	Hine, Darlene Clark	Shattering the Silences: The Case for Minority Faculty (1997)	Herself	-1
3889341	Hirschle, Monika	Tatort - Tödlicher Treff (1987) (TV)		9
3889415	Hirson, Alice	Edge of Night, The	Stephanie Martin (1969-1970)	11
3889417	Hirson, Alice	General Hospital	Mrs. Van Gelder (1982)	5
3889496	Hirt, Eléonore	À la vitesse d'un cheval au galop (1992)	La duchesse	9
3889745	Hixon, Roxann	Warning: Parental Advisory (2002) (TV)	Girl at bar	-1
3890623	Hodge, Kate	Pandora's Clock (1996) (TV)	Brenda Hopkins	8
3890954	Hoeppner, Krista	Egoists, The (2003)	Sarah Haas	14
3891259	Hoffman, Jane (I)	Edge of Night, The	Abby Wolcott #1 (1976)/Molly Sherwood #1 (1980)	11
3892118	Hohenfels, Tilla	Tatort - Feuerwerk für eine Leiche (1988) (TV)		19
3892202	Hokanson, Mary Alan	I Was a Communist for the FBI (1951)	Bit Part	-1
3892657	Holden, Rebecca	General Hospital	Elena Cosgrove (1987)	5
3893285	Hollick, Brigitte	Komischer Heiliger, Ein (1979)		-1
3894112	Holm, Rut	Hemliga Svensson (1933)	Stina Jansson	5
3894491	Holmes, Helen (I)	Man's Soul, A (1914)		1
3883037	Herrero, Eva	Agujetas en el alma (1998)	Actriz espera	49
3883231	Herring, Lynn	General Hospital	Lucy Coe Jones Quatermaine Baldwin Santon Collins (1986-1992, 1992 - 1997, 1998)	5
3883328	Hersak, Zdenka	Hocu zivjeti (1982)		-1
3896972	Hoppe, Marianne (I)	Goldsucher von Arkansas, Die (1964)	Mrs. Brendel	8
3897391	Horan, Leslie	General Hospital	Miranda Jameson (Jacks) (1996-1997)	5
3898692	Horton, Helen	At Bertram's Hotel (1987) (TV)	Mrs. Cabot	21
3898941	Hoshi, Reiko	Jiraiya (Ninjutsu sanyôden) (1937)		2
3899057	Hoshino, Yuka	Over Time	Hibiki Manabe	9
3899646	Housseau, Mme.	4 aventures de Reinette et Mirabelle (1987)	La voisine	4
3899652	Houston	Behind Closed Doors (2002) (TV)		3
3899911	Hoven, Louise	General Hospital	Beverly DeFreest (1979)	5
3900021	Howard, Andrea	Making of a Male Model (1983) (TV)	Marsha	-1
3900284	Howard, Esther	Victim, The (1930)		2
3900556	Howard, Lisa (III)	Edge of Night, The	Louise Grimsley Capice #1 (1956-1961)	11
3900754	Howard, Wendy Smith	Making of a Male Model (1983) (TV)	Junie	-1
3901153	Howells, Ursula	Voices, The (1955) (TV)	Libby Harrison	-1
3901203	Howey, Kim	Critical Assembly (2003) (TV)	Wife (Terrorist)	-1
3901479	Hoyos, Kitty de	Ángeles de Puebla, Los (1968)	Cristina	2
3902035	Hubbard, Elizabeth	Edge of Night, The	Carol Kramer (1963)	11
3903200	Hughes, Carol (I)	Three Men on a Horse (1936)	Audrey Trowbridge	4
3903265	Hughes, Finola	General Hospital	Anna Devane Scorpio Lavery Scorpio Hayward (1985-1991, 1995)	5
3903599	Hughes, Sally (I)	Patty (1962)	Dr. Fridden's nurse	20
3904554	Humphrey, Mandy	Help!	Fiona (1988)	-1
3904914	Hunt, Geraldine	Hey Babe! (1980)	TV singer	-1
3905319	Hunt, Martita	Quiet Wedding (1941)	Mme. Mirelle	20
3905831	Hunter, Kim (I)	Edge of Night, The	Nola Madison (aka Martha Cory) (1979-1980)	2
3906651	Hurley, Julia	Married? (1926)	Madame Du Pont	4
3907482	Hutchinson, Josephine	Melody Lingers On, The (1935)	Ann Prescott	1
3907579	Huth, Angela (II)	Man Alive	Reporter	-1
3907650	Hutton, Betty	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Herself	-1
3907946	Hval, Ella	Ingen mans kvinna (1953)	Lapp-Kari	9
3908080	Hwang, Jeong-sun	Mulmangcho (1960)		5
3908655	Hynde, Chrissie	Bacharach: One Amazing Night (1998) (TV)	Herself	-1
3909074	Häubl, Maria	Komischer Heiliger, Ein (1979)		-1
3909555	Höjeberg, Boel	Prins hatt under jorden (1980)		19
3909588	Hörbe, Friderikke Maria	Tatort - Der vierte Mann (2004) (TV)		-1
3909731	Höss, Traute	Marocain (1989) (TV)		-1
3909962	Hürlimann, Lea	Anna - annA (1993)	Anna	1
3909964	Hürlimann, Wanda	Anna - annA (1993)	Anna	2
3910580	Ick, Valerie	Bradys, The	Patty Covington	-1
3910709	Iekel, Tatiana	Cine ma striga? (1979)	Adina	5
3910743	Igamberdyyeva, Dilorom	Ukhodya, ostayutsya (1987)		2
3911155	Ikawa, Kuniko	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Itoko Suzuki	7
3894745	Holmquist, Kirsten	Anarchy TV (1997)	Susanna Smart	25
3895354	Holubová, Eva	Waterloo po cesku (2002)	Mrs. Divoká	2
3895664	Homolová, Dana	Velké prání (1981)		6
3895665	Homolová, Dana	Waterloo po cesku (2002)		18
3895854	Hong, April	General Hospital	Gee Sung (1985)	5
3896092	Hood, Darla	Our Gang Follies of 1936 (1935)	Cookie	3
3896388	Hoover, Elva Mai	Vow to Kill, A (1995) (TV)	Ida Lambert	-1
3915986	Ishida, Yuriko	Over Time	Fuyumi Tsurumachi	7
3916241	Islas, Claudia	Si las mujeres mandaran (o mandasen) (1982)		-1
3916445	Issová, Marta	Waterloo po cesku (2002)		19
3916585	Ito, Hiroko	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Masako	10
3917431	Ivey, Lela	Edge of Night, The	Mitzi 'Red' Martin (1981-1982)	11
3917718	Iwinska, Stefania	Weryfikacja (1987)		10
3917767	Izaguirre, Gloria	Valentina	Rosita	-1
3917858	Izquierdo, Lina	Familia Vila, La (1950)	Nuri	-1
3917860	Izquierdo, Liria	Familia Vila, La (1950)	Izquierdo, Lina	-1
3918195	Jablons-Alexander, Karen	General Hospital	Star (1991)	5
3918604	Jackson, Freda	Shadow of the Cat (1961)	Clara, the maid	7
3918972	Jackson, Mary (I)	Some Kind of Hero (1982)	Frances	23
3918999	Jackson, Mary Ann	Burglar, The (1928)	Bubbles Smith	1
3919964	Jacobs, Yasmin	Platoon Leader (1988)	VC Woman	19
3920056	Jacobsen, Margrethe K.	Ta' det som en mand, frue! (1975)		31
3920700	Jade, Kimberly	Cafe Fantasy (1996)		-1
3921061	Jaenicke, Käte	Meister Eder und sein Pumuckl	Frau Bauer	-1
3922258	James, Jessica (I)	Edge of Night, The	Lindburg Bundy (1984)	11
3922614	James, Toni (I)	Terminal Case of Love (1998) (V)		-1
3922815	Jameson, Joyce	General Hospital	Coleen Middleton (1979)	5
3922860	Jameson, Lucille	I Could Go on Singing (1963)	Miss Plimpton	7
3922872	Jameson, Pidge	Harvest (1953) (TV)	Kitty	13
3923183	Jana (II)	Agujetas en el alma (1998)	Ladrona (Thief)	35
3923846	Janner, Brigitte	Handvoll Gras, Eine (2000)	Mrs. Jansen	7
3924252	Janssen, Eilene	Who Killed Doc Robbin? (1948)	Betty	2
3924670	Jaoul, Marie	Hurlevent (1985)	Madame Lindon	8
3924987	Jarno, Ellen	Mies Marseillesta (1937)	Darja	7
3925110	Jarrett, Renne	Edge of Night, The	Bebe Spode #4 (1957-1958)/Dr. Phoebe Smith Jameson #2 (1967-1968)	11
3925221	Jasae	Scream Queens Swimsuit Sensations (1992) (V)	Herself	2
3925266	Jasmin, Aini	Pendekar bujang lapok (1959)	Ani	8
3926494	Jeanette, Zagie	Fat Beach Patrol (2000) (V)		-1
3926734	Jedell, Cara	Little Women in Transit (1996)	Dana	2
3926895	Jefferson, Paris	Not a Penny More, Not a Penny Less (1990) (TV)	Louise	-1
3926991	Jeffory, Dawn	General Hospital	JoAnne Eden (1980)	5
3927049	Jeffreys, Anne	General Hospital	Amanda Barrington (1984-present)	5
3927222	Jelf, Amy	Flicka med melodi (1954)	Ellinor Libergius	2
3927592	Jenkins, Megs	Where the Buffalo Roam (1966) (TV)	Mrs. Turner	2
3928040	Jennings, S.E.	Bat Whispers, The (1930)	Man in black mask	6
3911297	Ikeuchi, Junko	Shin kitsune no tameki (1962)		7
3911335	Ikezawa, Haruna	Kôsoku sentai Tâborenjâ		-1
3912371	Inci, Elif	Karaoglan - Camoka'nin intikami (1966)		6
3912381	Inclan, Lily	Vamos juntos		-1
3912389	Inclán, Laura	Agujetas en el alma (1998)	Actriz sex-shop (Sex-shop actress)	29
3912413	Inclán, Lili	Vamos juntos		-1
3912914	Inescort, Frieda	Tarzan Finds a Son! (1939)	Mrs. Lancing	6
3913246	Ingraham, Lois	End of the Circle, The (1913)	The Child	5
3914068	Ipsilanti, Emilia	Egoistes, Oi (1971)		-1
3915459	Isabel, Margarita	Valentina	Martha	-1
3931853	John, Rhiann	Where the Buffalo Roam (1966) (TV)	Carol	7
3931906	Johns, Bibi	Flicka med melodi (1954)	Britta Libergius	1
3931930	Johns, Florence	Auction Block, The (1917)	Adoree Demorest	4
3931935	Johns, Glynis	All Mine to Give (1958)	Mamie	1
3932219	Johnson, Ashley (I)	Lionheart (1990)	Nicole Gaultier	5
3932665	Johnson, Georgann	Trials of Rosie O'Neill, The	Charlotte O'Neill	-1
3933260	Johnson, Mary Lynn	Edge of Night, The	Viva (1982)	11
3933422	Johnson, Orine	Eleven P.M. (1928)	June Blackwell/Hope Sundaisy	-1
3933534	Johnson, Penny (I)	General Hospital	Debbie (1986)	5
3933565	Johnson, Rita	All Mine to Give (1958)	Katie Tyler	14
3933598	Johnson, Rita	They Won't Believe Me (1947)	Gretta Ballentine	4
3933885	Johnson, Vann	Gun, a Car, a Blonde, A (1997)	The Singer	10
3934392	Jokovic, Mirjana	Poslednja trka (1979)		-1
3934606	Jolly, Deborah	Warning: Parental Advisory (2002) (TV)	Shirley	7
3934817	Jondal, Pia	Hjem til fem	Elisabeth	-1
3935185	Jones, Christine	General Hospital	Tracy Quartermaine Williams (1989) (temporary replacement)	5
3935230	Jones, Della	Yeomen of the Guard, The (1978) (TV)	Phoebe Meryll	3
3935579	Jones, Janis	Isis Blue 2 (1998) (V)		-1
3935742	Jones, Kate (II)	Where the Buffalo Roam (1966) (TV)	Woman in Cinema	12
3936480	Jones, Star	Jones & Jury	Host	-1
3937177	Jordan, Biggy	Blutjunge Verführerinnen 2 (1972)		7
3937187	Jordan, Bobbie	General Hospital	Terri Webber Arnett (1976-1977)	5
3937316	Jordan, Gloria	Mi amor por ti		10
3937406	Jordan, Lainie	General Hospital	Kate (2002-2003)	-1
3937523	Jordan, Shirley	General Hospital	Kate Wilkerson (1994)	5
3937973	Joskowicz, Sofia	Vamos juntos	Comentadora	-1
3938101	Jost, Clara	Água e Sal (2002)	Criança	8
3938726	Joy, Lana	Face in the Frame, The (1998)	Louise Fontine	5
3939438	João, Adelaide	Trois couronnes du matelot, Les (1983)		-1
3940070	Jukic, Slavica	Hocu zivjeti (1982)		-1
3940444	Jun, Masumi	Danchizuma hiasobi (1973)	Tomomi	4
3941396	Jávaga, Sonia	Agujetas en el alma (1998)	Nerea	20
3941677	Jönsson, Eva	Prins hatt under jorden (1980)	Prince's Older Sister	13
3942815	Kagan, Elaine	Trials of Rosie O'Neill, The	Carole Kravitz	-1
3943106	Kahn, Madeline	Muppet Movie, The (1979)	El Sleezo Patron	15
3943123	Kahn, Madeline	Comedy Tonight	Regular	-1
3944227	Kallio, Marjatta	Vatsa sisään, rinta ulos! (1959)	Physical training mistress Marjatta Paasi	-1
3928099	Jenrette, Rita	Edge of Night, The	Bibi Kenilworth (1981)	11
3928389	Jensen, Ingrid Oustrup	Ta' det som en mand, frue! (1975)	Tillidskvinde på strejkemøde	23
3928583	Jensen-Clark, Karen	Warning: Parental Advisory (2002) (TV)	Reporter	-1
3928840	Jeong, Eun-ju	Maechun 3 (1993)		3
3929456	Jessen, Annie	Ta' det som en mand, frue! (1975)	Ekspedient I bh-afdeling	15
3930416	Jiménez Pons, Paola	Vamos juntos	Susanita	-1
3930454	Jiménez, Carolina (I)	Páginas en negro, Unas (1950)		-1
3930660	Jiménez, Susana	Agujetas en el alma (1998)	Representante	21
3931522	Johansen, Inge	Ta' det som en mand, frue! (1975)		42
3931798	John, Josephine	Warning: Parental Advisory (2002) (TV)	Washington Wife #1	-1
3948063	Karen, Guita	Valet maître, Le (1941)		-1
3948115	Karesová, Alena	Velké prání (1981)	Bezdeková	7
3948173	Karg, Elisabeth	Tatort - 3:0 für Veigl (1974) (TV)	Sekretärin	11
3948179	Karg, Elisabeth	Meister Eder und sein Pumuckl	Schwester vom Eder	-1
3948576	Karindas, Altan	Dertli irmak (1958)		2
3948686	Karkoszka, Elzbieta	Moje miasto (2002) (TV)	Cichy's mother	9
3948806	Karli	2 On 1 (1998) (V)		-1
3949591	Karslake, Jo	Love Potion (1987)	Lottie	14
3950985	Kassin, Katja	No Limits 4 (2003) (V)		-1
3951008	Kassorla, Dr. Irene	General Hospital	Herself (1979-1991)	5
3950076	Katagiri, Hairi	Ijô no hitobito: Densetsuno nijino sankyôdai (1993)		5
3950119	Katagiri, Yûko	Toruko 110-ban: monzetsu kurage (1978)	Whore	-1
3951429	Katsuragi, Yôko	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Tatsuko Fujii	5
3951762	Kaufman, Famie	Amantes frios, Los (1978)	Dona Carito (Los Amantes frios (segment)	20
3951768	Kaufman, Famie	Club de señoritas (1956)		-1
3952119	Kaushal, Kamini	Qaid (1975)		-1
3952469	Kavoyianni, Maria	Eglimata	Korina Mitropoulou-Koutsouba	1
3952936	Kay, Joyce	Our Gang Follies of 1936 (1935)		-1
3952975	Kay, Lesli	General Hospital	Lois Cerullo-Ashton #2 (2004-)	-1
3953156	Kaya, Rita	Chickboxin Underground (1999)	Irene Feldman	13
3953226	Kaye, Caren	Some Kind of Hero (1982)	Sheila Daniels, Eyewitness News Reporter	24
3953304	Kaye, Lila	Fiction Makers, The (1968)	Ma	13
3953373	Kaye, Virginia	Edge of Night, The	Rose Pollock #4 (1973-1979)	11
3953740	Kazan, Lainie	Gigli (2003)	Mother	16
3953768	Kazan, Lainie	Unknown Cyclist, The (1998)	Rachel	6
3953856	Kazimierczak, Anna	Weryfikacja (1987)		12
3953976	Kean, Jane	General Hospital	Dot (1984)/Gravel Gertie (1991)	5
3954116	Keane, Maire	Home Is the Hero (1959)	Bid	7
3954126	Keane, Teri	Edge of Night, The	Martha Spears Marceau (1964-1975)	11
3954283	Keating, Lulu	John and the Missus (1987)	Winn	18
3955056	Keene, Barbara	Midnight Intruders (1987)	2nd Girl	7
3955060	Keene, Helen	Tu, mi amor... (1998)		4
3955170	Keeper, Carole	Tatort - Aus der Traum (1986) (TV)	Denise	-1
3955312	Keifer, Elizabeth	General Hospital	Sister Mary Camellia McKay (1986)	5
3956368	Kellerman, Barbara	General Hospital	Nurse Hardy	-1
3956828	Kelly, Angel	Addicted to Love (1988)		-1
3957645	Kelly, Kitty	Private Secretary, The (1935)		-1
3944296	Kalogeropoulou, Xenia	Egoistes, Oi (1971)		2
3944670	Kamenkova, Anna	Samozvantsy		7
3945358	Kane, Carol (I)	Muppet Movie, The (1979)	Myth	16
3946041	Kane, Sharon	Swedish Erotica 4 (1981)		-1
3946464	Kanne, Gretchen	Edge of Night, The	Susan Forbes #1 (1969-1970)	11
3946604	Kansy, Ivana	Dumm gelaufen (1997)	Prostituierte	24
3946962	Kaplan, Mady	Edge of Night, The	Bobbie Gerard (1981)	11
3947076	Kapnist, Mariya	Dva patrona na mamonta (1990)		6
3947574	Karago, Njeri	Face to Face (1990) (TV)	Photographer	-1
3947632	Karalambova, Meglena	Duhat na bashta mi (1998) (TV)		6
3947653	Karali, Lilabati	Rang Berang (1948)		-1
3957990	Kelly, Patty (I)	Our Gang Follies of 1936 (1935)		-1
3958895	Kendall, Casey	Chickboxin Underground (1999)	Psychotic Catholic School Girl	25
3958934	Kendall, Katherine	Hungry Bachelors Club, The (1999)	Missy Bainbridge	4
3958949	Kendall, Kay	Happy Go Lovely (1951)	Secretary	-1
3959598	Kennedy, Laurie	Edge of Night, The	Dr. Phoebe Smith Jameson #3 (1972)	11
3960161	Kensington, Lenore	General Hospital	Mrs. Lenore Weeks (1963-1965)	5
3960390	Kent, Enid	Some Kind of Hero (1982)	Reporter	25
3961016	Kepler, Shell	General Hospital	Amy Vining, R. N. (1979-present)	5
3961703	Kerr, Amy	Boyclops (2004)	Wendy	3
3962094	Kershaw, Whitney	General Hospital	Charlie (1991)	5
3962424	Kessler, Edith	To Please One Woman (1920)	Cecilia Granville	2
3962814	Keyes, Evelyn	Flight Lieutenant (1942)	Susie Thompson	3
3963936	Khouadra, Nozha	Miel et cendres (1996)	Leila	1
3964137	Kibbee, Lois	Edge of Night, The	Geraldine Weldon Whitney Saxon (1970-1971, 1973-1984)	11
3964375	Kidder, Margot	Some Kind of Hero (1982)	Toni Donovan	2
3964718	Kiewiet, Ilse	Tatort - Rattennest (1972) (TV)		13
3964739	Kigada, Lydia	Face to Face (1990) (TV)	Miriam	-1
3964814	Kiiski, Kaija	Sininen imettäjä (1985)	Kerttu	-1
3964822	Kiiskinen, Vera	Angela ja ajan tuulet	Sigrid	-1
3964867	Kiki of Montparnasse	Ballet mécanique (1924)	Smiling girl	-1
3964945	Kikuchi, Marie	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)		-1
3965665	Kim, Hui-ra	Utgo saneun Park Seo-bang (1972)		-1
3965676	Kim, Hwa-ran	Jeolbeun poong gin ibyeol (1984)		5
3965772	Kim, Hyeon-ju	Jeolmeun shigyetab (1982)	Ahn Seon-hie	2
3966666	Kim-Kim	Rave (2000)	Yung-Ah	19
3966722	Kimbell, Anne	I Was a Communist for the FBI (1951)	Student	-1
3966947	Kimura, Yoshino	Over Time	Nazuna Kurata	3
3967857	King, Dana	Day & Date	Host	2
3968068	King, Julie (II)	Moonchild (1994) (V)		-1
3967711	Kingston, Natalie	Forgotten (1933)	May Strauss	7
3968542	Kinohara, Noriko	Kôsoku sentai Tâborenjâ	Haruna Morikawa/Pink-Turbo	5
3968828	Kipp, Heide	Romeo und Julia auf dem Dorfe (1984)		-1
3969242	Kirchner, Doris	Noch minderjährig (1957)		-1
3969325	Kiritachi, Harumi	Daikaijû Gamera (1965)	Kyoke	-1
3969463	Kirkconnell, Clare	Making of a Male Model (1983) (TV)	Joanne	-1
3969686	Kirkland, Sally (I)	General Hospital	Brenda (1982)	5
3970176	Kishida, Kyôko	Gurama-to no yuwaku (1959)	Sumiko Tsuboi	-1
3970495	Kiss, Manyi	Heten, mint a gonoszok (1943)	Francis,Galuska menyasszonya	-1
3971128	Kittrell, Kaye	General Hospital	Hillary Bates (1988)	5
3971264	Kivi, Eve	Tobago menjajet kurs (1966)		-1
3971325	Kiwa, Lila	Club de señoritas (1956)		-1
3971479	Kjellström, Lilly	Hemliga Svensson (1933)	Maid	-1
3972530	Klimaszewski, Elaine	Gigli (2003)	Beach Dancer	36
3972787	Klinger, Christine	Geheime Lüste blutjunger Mädchen (1978)	Rosi/Lola	-1
3973349	Knappe, Katrin	Luftschiff, Das (1983)		-1
3973432	Knef, Hildegard	Illusion in Moll (1952)	Lydia Bauer	1
3973612	Knight, Alecia	Swami MD #1: Coming to America (1999) (V)	Dr. Knight	-1
3973667	Knight, Crystal	Isis Blue 2 (1998) (V)		-1
3973710	Knight, Elyse	Egoists, The (2003)	Sophia	11
3973888	Knight, Nyrobi	Primal Instinct (1996) (V)		4
3974110	Knight, Summer	Bikini Beach (1993) (V)		-1
3974202	Knight, Tuesday	General Hospital	Val (1987)	5
3974382	Knights, Violet	Square Shooter (1935)	Emma (waitress)	-1
3974388	Knihtilä, Elina	Angela ja ajan tuulet	Anna	-1
3975121	Knyvette, Sally	General Hospital	Nurse Rowland	-1
3975911	Koczan, Karoline	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Alexandra Huebner	10
3976468	Kohn, Andrea	Geile Früchtchen (1992) (V)		-1
3977041	Kolarova, Fani	Ispanska muha (1998)	Boni	3
3977422	Kolment, Nina	Tempest (1982)	Nurse	-1
3977816	Komninou, Filareti	Skies sto peristilio		-1
3978508	Konstadinou, Ketty	Eglimata	Sosso Papadima	3
3978662	Konvalinková, Nada	Waterloo po cesku (2002)	Mrs. Révová	21
3979452	Korhonen, Marja	Vatsa sisään, rinta ulos! (1959)	Master Järvi	-1
3979526	Korman, Irene	Real Bullets (1990)	Cocktail Waitress	49
3979632	Kornman, Mary	Air-Tight (1931)		4
3979729	Kornman, Mildred	Our Gang Follies of 1936 (1935)		-1
3980299	Koscina, Sylva	Lovely Way to Die, A (1968)	Rena Westabrook	2
3980468	Koske, Amy K.	Halfway to Heaven and Hell (2003)	The Barista	-1
3980902	Kotero, Apollonia	Anarchy TV (1997)	Hot Tub Woman	20
3981204	Koumarianou, Eva	Eglimata		-1
3981517	Kovacs, Mijou	Tatort - Schlußverkauf (1978) (TV)	Petra Wagner	-1
3982347	Kozue, Hitomi	Showa onnamichi: Rashomon (1972)	Shino/Kyoko	-1
3982623	Kracht, Marion	Seine beste Rolle (1989) (TV)	Elke	2
3983116	Kramer, Hope	I Was a Communist for the FBI (1951)	Ruth Cvetic	12
3983268	Kraner, Cissy	Noch minderjährig (1957)		-1
3984080	Kreissl, Gusti	Meister Eder und sein Pumuckl	Dame	-1
3984370	Krespi, Leina	Rainha Louca, A		-1
3984854	Kristen, Linda	General Hospital	Mrs. Porchenko (1984)	5
3986034	Krottendorf, Ida	Tatort - Mordverdacht (1971) (TV)		-1
3986396	Krukówna, Agnieszka	Zycie za zycie (1991)	Konior's Daughter	-1
3986409	Krull, Kendra	Unstrung Heroes (1995)	Sandy Lidz	10
3986544	Krupska, Liliana	Moje miasto (2002) (TV)	Jola	7
3986700	Krutina, Eva	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Mutter Wülff	-1
3986756	Kryll, Eva	Tatort - Rattenlinie (2000) (TV)	Elisabeth Löhden	7
3987511	Kudaba, Elena	Beer (1985)	Frankie's Mom	22
3987634	Kuehl, Kandace	General Hospital	Karen Kennedy (1988)	5
3988123	Kulikovsky, Xenia	Kongelig familie, En	Herself	-1
3988780	Kummings, Kimberly (I)	Trapped (1996) (V)	David	2
3988820	Kun, Magda	Mai lányok (1937)	Cili	-1
3989332	Kupfer, Margarete	Jagd nach der Wahrheit, Die (1920)		9
3989360	Kupfer, Margarete	Provinzonkel, Der (1926)		-1
3989468	Kupsch, Anita	Tatort - Feuerzauber (1977) (TV)	Evi	-1
3990126	Kurz, Eva-Maria	Tatort - Der vierte Mann (2004) (TV)		-1
3991052	Kvasnicková, Monika	Waterloo po cesku (2002)	Mrs. Zawinulová	6
3991315	Kwan, Rosamund	Jin ye bu she fang	Guest	-1
3991567	Kyle, Charlotte (II)	White Peak Farm	Marion	-1
3992438	König, Daniela D.	Meister Eder und sein Pumuckl	Bärbel	-1
3992504	Köpp, Conny	Dumm gelaufen (1997)	Prostituierte	25
3992874	Kühnberg, Leontine	Katzensteg, Der (1915)	Schloßmagd Regine, Kügnbergs Tochter	6
3993178	L, Donna	General Hospital		5
3994517	Laats, Lia	Noor pensionär (1972) (TV)	Mother	-1
3995281	Lacey, Catherine	Shadow of the Cat (1961)	Ella Venable	10
3995453	Lachat, Sylvie	Diva et pianiste (2000)		-1
3995786	Lada, Oksana	Four Simples Rules (2003)		-1
3997167	Lagerfelt, Caroline	Edge of Night, The	Patricia Devereaux (1983)	11
3997219	Lagerwall, Guje	Maria på Kvarngården (1945)	Karin	8
3997690	Lahaie, Brigitte	Maîtresse pour couple (1979)	Brigitte	2
3998039	Laidlaw, Jackie	Rats, The (2002) (TV)	Bitchy woman	15
3998253	Laine, Joyce	Palácio de Vênus (1980)		-1
3998303	Laine, Sarah	General Hospital	Sarah Webber #2 (2002)	5
3998695	Lake, Alice	Wives of the Prophet, The (1926)	Judith	2
3998798	Lake, Christi	Southern Comfort (1995) (V)		-1
3999173	Lakshmirajyam	Raju-Peda (1954)		3
3999566	Lamar, Sandra	Palácio de Vênus (1980)		-1
3999571	Lamar, Yvonne	Páginas en negro, Unas (1950)		-1
4000022	Lambert, Janet	Up in Mabel's Room (1944)	Priscilla	9
4000025	Lambert, Jennifer (I)	General Hospital	Deanie	5
4000865	Lampreave, Chus	Monosabio, El (1977)	Clara	4
4000971	Lamtiugina, Asia	Zycie za zycie (1991)		22
4001095	Lancaster, Alandra	Substitute Wife, The (1994) (TV)	Older Jessica	21
4001122	Lancaster, Ann	Tea at the Ritz (1963) (TV)	Rene Barnes	3
4001215	Lance, Astride	Edge of Night, The	Joanie Lange (1964)	11
4001452	Landau, Darlene	Real Bullets (1990)	Darlene	2
4002187	Lando, Elia	À la vitesse d'un cheval au galop (1992)	Giulietta Picelli	11
4002909	Lane, Diane (I)	Virginian, The (2000) (TV)	Molly Stark	2
4003145	Lane, Lenita	I Was a Communist for the FBI (1951)	Miss Scott, School Principal	-1
4003684	Lang, Doe	Edge of Night, The	Cynthia Purcell (1960-1961)	11
4004131	Langdon, Sue Ane	General Hospital	Marge Pulaski (1991)	5
4004178	Lange, Bernadette	Point douloureux, Le (1979)	La femme Collège	12
4005673	Lanz, Elisabeth	Tatort - Hahnenkämpfe (1997) (TV)	Inspektorin Maier	4
4005891	LaPiere, Georganne	General Hospital	Heather Grant Webber #1 (1976-1977)	5
4006587	Larkin, Linda	Custody (2000)	Polly	-1
4006668	Larkin, Victoria	Edge of Night, The	Laurie Ann Karr Lamont Dallas #1 (1960-1962)	11
4007232	Larsen, Gerda	Man Who Could Cheat Death, The (1959)	Street Girl	7
4007769	Larussa, Adrienne	General Hospital	Ida (1983)	5
4008065	Laskin, Larissa	Vow to Kill, A (1995) (TV)	L.J. Berman	-1
4008459	Laszar, Christine	Traum des Hauptmann Loy, Der (1961)	Corporal Doris Graves	2
4008669	Latiff, Momo	Pendekar bujang lapok (1959)	Mak Rose/Isteri Pendekar Mustar	7
4009326	Laugier, Germaine	Bossu, Le (1934)		-1
4010018	Laurent, Christine	Sainte farce, La (1972) (TV)	Clélia	6
4010567	Laurrie, Dawn	Demon Possessed (1993)	Jeannie	1
4010938	Lavat, Queta	Ladrona, La (1954)		12
4011629	Law, Lan	Ghost in the House (1988)	Jealous Wife	5
4011799	Lawford, Betty	Old English (1930)	Phyllis Larne	5
4012073	Lawrence, Carol (I)	General Hospital	Angela Eckert (1991)	5
3432897	Aalda, Mariann	Edge of Night, The	Didi Bannister Stoner (1981-1984)	11
3432343	Abbington, Amanda	Picking up the Pieces	Staff Nurse Hunter	-1
3432348	Abbitt, Justine	Face in the Frame, The (1998)	Sarah	6
3432406	Abbott, Diane (II)	Carnal Passion (2001) (V)	Party Guest	12
3432442	Abbott, Georganne	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Trauma Team Nurse #1	35
3432646	Abdul, Paula	VH-1 to One: Paula Abdul (1992) (TV)	Herself	-1
3433635	Abma, Cynthia	Do Not Disturb (1999)	Nurse	-1
3436350	Ackermann, Kathrin	Meister Eder und sein Pumuckl	Frau Berger	-1
3435796	Adam, Beles	Tatort - 3:0 für Veigl (1974) (TV)	Margit	23
3435188	Adams, Julie (I)	General Hospital	Denise Wilton (1968)	5
3435332	Adams, Lillian	Unstrung Heroes (1995)	Aunt Estelle	12
3437210	Adams, Polly	Edge of Night, The	Carol Barclay, R. N. (1977-1978)	11
3437279	Adams, Stacy	Her Friend, the Doctor (1916)		1
3437417	Adams, Tracey	Addicted to Love (1988)		-1
3439114	Agnihotri, Rati	Main Awara Hoon (1983)		4
3439226	Agrawal, Anu	Return of Jewel Thief (1996)		-1
3440669	Aguilar, Luz María	Vamos juntos	Isabel	-1
3440076	Agutter, Jenny	Not a Penny More, Not a Penny Less (1990) (TV)	Jill Albery	-1
3440238	Ahlroth, Milka	Angela ja ajan tuulet	Gisela	-1
3440370	Ahn, In-suk (I)	Utgo saneun Park Seo-bang (1972)		-1
3439419	Ahrer, Ingrid	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Eva Walder	8
3443110	Al Khattib, Magda	Bint min el banat (1968)		1
3442261	Alandh, Lissi	Flicka med melodi (1954)	Lizzie Bjelvenryd	9
3442271	Alandh, Lissi	Ingen mans kvinna (1953)	Judith Henriksson	5
3442323	Alane, Annick	Dame de lieudit, La (1993) (TV)	Marguerite	2
3442326	Alane, Annick	Enfant du secret, L' (1996) (TV)		-1
3443576	Albert, Betty Sue	Edge of Night, The	Bebe Spode #3 (1957)	11
3445283	Albright, Kara	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Crystal	44
3445285	Albright, Kimberly	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Crystal	45
3443912	Alch, Amanda	Bobby Jones, Stroke of Genius (2004)	Young Girl	-1
3444083	Alcón, Pilar	Si las mujeres mandaran (o mandasen) (1982)		-1
3444544	Aldrich, Rhonda	General Hospital	Reporter (1997)	5
3444554	Aldrich, Sarah	General Hospital	Courtney Kanelos (1998-2000)	5
3444759	Alejnikova, Arina	Ya shagayu po Moskve (1963)		-1
3447375	Alexander, Denise (I)	General Hospital	Dr. Lesley Falkner Webber (1973-1984, 1996- present)	5
3446233	Alexander, Millette	Edge of Night, The	Gail Armstrong (1958-1959)/Laura Hillyer (1965-1966)/Julie Jamison Hillyer (1967-1968)	11
3446262	Alexander, Natalie	Real Bullets (1990)	Waitress	34
3445654	Alexandre, Neide	Semideus, O	Ursula	-1
3445751	Alexis (I)	Indio Pluma Roja, El (1975)		-1
3446479	Alfonsi, Lidia	Vita da cani (1950)		19
3447527	Alina, Gisèle	Valet maître, Le (1941)		-1
3447568	Alison (II)	Sk8 Life (2004)	Alison	-1
3447858	Allan, Arhlene	Not a Penny More, Not a Penny Less (1990) (TV)	Brigitta	-1
3448647	Allen, Bambi (II)	Dream Jeans (1987)		-1
3448788	Allen, Billie	Edge of Night, The	Ada Chandler #1 (1973-1975)	11
3448954	Allen, Eileen	Burglar, The (1928)	Mandy	9
3449214	Allen, Krista	Emmanuelle 5: A Time to Dream (1994)	Emmanuelle	1
3449742	Allen, Stephanie (III)	General Hospital	Lesley Lu 'Lulu' Spencer [#4] (2001-2003)	5
3449852	Allenby, Peggy	Edge of Night, The	Mattie Lane Grimsley #2 (1956-1966)	11
3449872	Allentoft, Lis	Ta' det som en mand, frue! (1975)	Kritisk ægtefælle ved party	16
3450237	Allison, Patricia	Edge of Night, The	Abby Cameron #2 (1966)	11
3450238	Allison, Patricia	General Hospital	Dolores Moore (1982)	5
3450440	Allure, Alyssa	Terminal Case of Love (1998) (V)		-1
3450817	Almela, Laura	Veneno para las hadas (1984)	Claudia	-1
3452180	Altmann, Karin	Ned Kelly (1970)	Jane Jones	-1
3452700	Alves, Laura	Pai Tirano, O (1941)	Laurinha	8
3452748	Alves, Lúcia	Semideus, O	Beatriz	-1
3453961	Amayo, Theresa	Rainha Louca, A	Maria de Las Merces	-1
3454545	Ames, Rachel (I)	General Hospital	Audrey March Brewer Hardy (1963-present)	4
3454588	Ames, Teal	Edge of Night, The	Sarah Lane Karr (1956-1961) (original cast)	11
3454712	Amick, Mädchen	Rats, The (2002) (TV)	Susan Costello	1
3454961	Amirejibi, Tsatsa	Magdanas lurja (1955)		-1
3454992	Amiss, Susannah	Warning: Parental Advisory (2002) (TV)	Senate Aide	-1
3455637	Analyti, Kakia	Amartoles (1962)		1
3455744	Ananyina, Valentina	Ya shagayu po Moskve (1963)		-1
3455762	Anapau, Kristina	General Hospital	Nurse Quinn	5
3455990	Anconina, Marlène	Guépiot, Le (1981)	Soeur Sainte-Cécile	-1
3456270	Andere, Jacqueline	Grandes ilusiones		6
3456691	Andersen, Else	Ta' det som en mand, frue! (1975)		28
3456568	Anders, Merry	Patty (1962)	Mary	1
3456851	Anderson, Adrian	Midnight Intruders (1987)	1st Girl	6
3457006	Anderson, Camille Lee	Swami MD #1: Coming to America (1999) (V)		-1
3457342	Anderson, Ingrid	Making of a Male Model (1983) (TV)	Veronica	-1
3457437	Anderson, Jean (I)	Solomon and Sheba (1959)	Takyan	13
3457619	Anderson, Juliet	Swedish Erotica 4 (1981)		-1
3458061	Anderson, Mignon	Pamela Congreve (1914)		4
3458234	Anderson, Renee	General Hospital	Alexandria 'Alex' Quartermaine (1980-1981)	5
3458280	Anderson, Sarah (II)	Chickboxin Underground (1999)	Sally Rae Harper/Nose Ring Punk Girl	5
3459049	Andra, Fern	Gebannt und erlöst (1919)		-1
3459514	Andree, Ingrid	Nachts ging das Telefon (1962)		-1
3459558	Andreeff, Starr	General Hospital	Jessica Holmes (1992-1993)	5
3459718	Andren, Jean	They Won't Believe Me (1947)	Maid	-1
3460384	Andrews, Marni	General Hospital	Betsy Kensington (1993)	5
3460740	Andronikashvili, Kira (I)	Chirveuli mezoblebi (1945)		-1
3460786	Androsky, Carole	General Hospital	Muriel (1993)	5
3461071	Andréyor, Yvette	Yeux ouverts, Les (1913)		-1
3461159	Ange, Julie	Teenage Mother (1968)	Erika Petersen	3
3462189	Angers, Vanessa	Valentina	Lourdes	-1
3462324	Anglin, Jennifer	General Hospital	Cheryl Stansbury (1988-1992)	5
3462813	Ankobabina, I.	Ya shagayu po Moskve (1963)		-1
3463871	Ansari, Nicole	Tatort - Der Tausch (1986) (TV)	Sheila	6
3463907	Anselm, Karin	Tatort - Aus der Traum (1986) (TV)	Kriminaloberkommissarin Hanne Wiegand	1
3464685	Antoni, Jennipher	Tatort - Der vierte Mann (2004) (TV)		-1
3465474	Aparicio, Laura	Agujetas en el alma (1998)	Actriz Shakespeare (Shakespeare actress)	16
3465690	Apeksimova, Irina	Samozvantsy		6
3466007	Appleby, Amy	Edge of Night, The	Maxine Burton (1984)	11
3466013	Appleby, Dorothy	Andy Clyde Gets Spring Chicken (1939)		4
3466248	Apples, Candy	Perverted Stories 9 (1996) (V)		-1
3466612	Araceli	Valentina	Estrella	-1
3466947	Aranguren, Sonsoles	Agujetas en el alma (1998)	Actriz casting	40
3468140	Arden, Dominique	Entre chats et loups (1985) (TV)	Élodie Decoutret	8
3468632	Arenas, Rosa	Ladrona, La (1954)		1
3468830	Argento, Asia	Amiche del cuore, Le (1992)	Simona	1
3469299	Ariel, Ana	Rainha Louca, A	India	-1
3469304	Ariel, Ana	Semideus, O	Clara	-1
3469585	Arisawa, Masako	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Yukino, Kiyoko's daughter	9
3470345	Armour, Jean	East Side, West Side (1927)	Mrs. Breen	16
3470444	Armstrong, Carrie	Edge of Night, The	Tess McAdams (1984)	11
3470694	Arna, Lissy	Katzensteg, Der (1915)		-1
3470854	Arnaud, Françoise (I)	Josse (1974) (TV)	La serveuse du café	6
3471975	Arnoul, Françoise	Amants du Tage, Les (1955)	Kathleen Dinver	1
3472134	Arnstrøm, Merete	Ta' det som en mand, frue! (1975)		-1
3473185	Arthur, Indus	General Hospital	Brooke Bentley Clinton (1970-1973)	5
3473260	Arthur, Jean (I)	Somebody Lied (1923)		-1
3473399	Artis, Brandyn Barbara	General Hospital	Dr. Diane Erskin (1995)	5
3473896	Arzubide, Palmira	Río de las ánimas, El (1964)		-1
3474072	Asadie, Yasmin	Handvoll Gras, Eine (2000)	Franziska	5
3474275	Asaoka, Ruriko	Ajia himitsu keisatsu (1966)	Kyoko Misaki	3
3474340	Asatiani, Lia	Chirveuli mezoblebi (1945)	Tsiala	5
3474820	Ashcroft, Peggy	Quiet Wedding (1941)	Flower Lisle	10
3474901	Ashenafi, Senait	General Hospital	Keesha Ward (1994-1998)	5
3475117	Ashland, Camila	General Hospital	Alice Grant #1 (1976-1977)	5
3475472	Ashley, Kaitlyn	Primal Instinct (1996) (V)		2
3475511	Ashley, Kaitlyn	Southern Comfort (1995) (V)		-1
3475673	Ashline, Susan	Junky's Christmas, The (1993)	Christmas dinner friend	-1
3476156	Asiride, Mary	Miei più cari amici, I (1998)		-1
3476699	Assia, Lys	Illusion in Moll (1952)	Singer	-1
3477131	Astor, Eva	Meister Eder und sein Pumuckl	Dame	-1
3477877	Athanasiadou, Soula	Eglimata	Machi Karathanou	8
3478338	Attenhofer, Elsie	Kühne Schwimmer, Der (1957)	Tante Katie	14
3478435	Atwell, Susan	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)		-1
3480343	Austen, Karolyn	Anarchy TV (1997)	Dominatrix	28
3481762	Awaji, Keiko	Gurama-to no yuwaku (1959)	Yoshiko Kosaka	-1
3482691	Ayres, Leah	Bradys, The	Marcia Brady Logan	3
3482692	Ayres, Leah	Edge of Night, The	Valerie Bryson (1981-1983)	11
3482804	Ayres, Lois	Transaction (1986) (V)		-1
3482818	Ayres, Maray	General Hospital	Nurse Stevens (1989)	5
3483221	Azmi, Shabana	Kadambari (1976)		2
3483474	Azzara, Candy	Hungry Bachelors Club, The (1999)	Hannibal Youngblood	1
3483482	Azzara, Candy	Unstrung Heroes (1995)	Joanie	9
3484018	Babe, Fabienne	Hurlevent (1985)	Catherine	1
3484527	Baccala, Donna	General Hospital	Dr. Gina Dante Lansing #3 (1978-1979)	5
3486095	Bagdasarian, Carol	General Hospital	Maureen Morrissey (1982)	5
3486412	Bailey, Polly	They Won't Believe Me (1947)	Untidy Woman	-1
3487475	Baird, Leah	Way of a Man with a Maid, The (1912)		2
3487888	Baker, Becky Ann	Unstrung Heroes (1995)	Mrs. Harris	24
3488196	Baker, Fay (I)	Double Deal (1950)	Lilly Sebastian	4
3488222	Baker, Gene (II)	On the High Card (1921)	Conchita	4
3488349	Baker, Kandra	Ava's Magical Adventure (1994)	Colleen	-1
3488655	Baker-Bernard, Sharisse	General Hospital	Melissa Bedford #1 (2000)	-1
3488706	Bakija, Bianca	Ukhodya, ostayutsya (1987)		1
3488995	Balacy, Jaclyn	Unknown Cyclist, The (1998)	Lemonade Stand Girl #1	8
3489046	Balaguer, Asunción	È già ieri (2004)	Rosa	-1
3489320	Balbó, Rosangela	Perra, La (1967)	Violeta	6
3489653	Baldwin, Stacey	General Hospital	Laura Vining Webber Baldwin Spencer #1 (1974-1976)	5
3490246	Ball, Angela	Roommates (2002) (V)	Tara	4
3491184	Ballard, Amy	Chickboxin Underground (1999)	Scorpion's Protegee	19
3491198	Ballard, Chastity	Rave (2000)	Lipstick Lesbian	28
3491223	Ballard, Kaye	Ava's Magical Adventure (1994)		-1
3491411	Ballesteros, Marita	Titanes en el ring contraataca (1983)		-1
3491540	Ballou, Marion	Melody Lingers On, The (1935)	Sister Agnes	17
3490537	Balmford, Clare	Ned Kelly (1970)	Nell Sherritt	-1
3490808	Baly, Saundra	Hey Babe! (1980)	Kate	-1
3491608	Banach, Agnieszka	Moje miasto (2002) (TV)	Zosia	2
3491964	Banes, Lisa	Trials of Rosie O'Neill, The	Doreen Morrison	-1
3492427	Banks, Brianna	Weekend In Diego (2000) (V)		-1
3492626	Banks, Whitney	Eclipse (1993) (V)		-1
3492637	Bankston, Evalene	Grand Central Murder (1942)	Blonde	-1
3492749	Banning, Jackie	Our Gang Follies of 1936 (1935)		-1
3492801	Bannon, Bonnie	Tall, Dark and Handsome (1941)		-1
3493347	Baralla, Fiammetta	Trastevere (1971)	Altra prostituta	10
3493608	Barba, Meche	Valentina		-1
3493653	Barbany, Ana María	Un per l'altre, L'	Rosa	4
3493742	Barbarat, Monique	Adieu (2003)	Agricultrice	16
3494426	Barbosa-Adams, Theresa	Gigli (2003)	Beach Dancer	23
3494516	Barbu, Marga	Martori disparuti (1988)		-1
3494765	Barclay, Dorothy	Sons of the Sea (1925)	Diana	3
3494923	Barcroft, Judith	Edge of Night, The	Louise Cavanaugh (1977-1978)/Dr. Eleanor Prentice (1984)	11
3494954	Bard, Maria	Premiere (1936)	Lydia Loo	5
3494959	Bard, Rachel	Hungry Bachelors Club, The (1999)	Mrs. Bainbridge	-1
3495129	Bardi, Mariemma	Vita da cani (1950)		16
3495324	Bardoux, Rebecca	Bare Ass Beach (1994) (V)		-1
3495334	Bardoux, Rebecca	Bikini Beach (1993) (V)		-1
3495361	Bardoux, Rebecca	Double Down (1993) (V)		-1
3495458	Barea, Angie	Agujetas en el alma (1998)	Sex-shop	46
3495560	Barends, Edda	Cowboy uit Iran (1999) (TV)		-1
3495777	Bari, Jade D.	Beer (1985)	Feminist at Rally	28
3495901	Bari, Lynn	Trauma (1962)	Helen Garrison	2
3496134	Barker, Charlotte	At Bertram's Hotel (1987) (TV)	Bridget Sotheby	19
3496320	Barker, Margaret	Edge of Night, The	Dorothy Stewart #2 (1970)	11
3496865	Barnes, Binnie	Up in Mabel's Room (1944)	Alicia Larchmont	8
3497033	Barnes, Priscilla	Ava's Magical Adventure (1994)	Sarah	-1
3497067	Barnes, Priscilla	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	6
3497413	Baron, Dana Lyn	General Hospital	Cheryl (2003)	5
3497468	Baron, Evalyn	Edge of Night, The	Louise (1979)	11
3497926	Barragan, Mary Lou	Face in the Frame, The (1998)	Waitress	-1
3497953	Barragán, Georgina	Toda una vida		-1
3498046	Barranco, Mercedes (I)	Monosabio, El (1977)	Paca	8
3498557	Barrett, Edith	Holiday for Sinners (1952)	Mrs. Corvier	8
3498617	Barrett, Janet (II)	I Was a Communist for the FBI (1951)	Secretary	-1
3498674	Barrett, Laurinda	Edge of Night, The	Molly Sherwood #2 (1980-1981)	11
3498727	Barrett, Majel	General Hospital	Bea (1983)	5
3498912	Barri, Val	General Hospital	Trixie (1998-)	5
3499066	Barrie, Mona	Melody Lingers On, The (1935)	Sylvia Turina	4
3499736	Barroso, María Josefa	Agujetas en el alma (1998)	Actriz casting	48
3499960	Barry, June	Young Sherlock: The Mystery of the Manor House	Mrs. Turnbull	-1
3500537	Barta, Carol	Moonchild (1994) (V)		-1
3500839	Barthoul, Paulette	Valet maître, Le (1941)		-1
3501969	Basinger, Meredith	Unknown Cyclist, The (1998)	Sandra	10
3502406	Bassey, Ebbe	Spoonful of Sugar (2003)	Hyacinth	3
3502419	Bassey, Jennifer	Edge of Night, The	Juror (1976)/Abby Wolcott #2 (1976-1977)	11
3502870	Batelat, Brigitte	Conte à regler (1978)		-1
3503561	Batt, Shelly	Some Kind of Hero (1982)	Olivia	10
3503971	Baudu, Florence	Conte à regler (1978)		-1
3504030	Bauer, Eva Maria	Seine beste Rolle (1989) (TV)	Anna	5
3504526	Baumgartner, Monika	Meister Eder und sein Pumuckl	Bärbels Mutter	-1
3504727	Bauza, María	Hombre del Gran Río, El (1980)		-1
3504836	Baxendale, Sarah	Eglimata	Pepi	-1
3505113	Baxter, Lynsey	Grass Arena, The (1991)	Madalena	3
3505743	Baylish, Susan	Rot in Zanzibar (1954)	Maria Bellini	-1
3506076	Bayssac, Thérèse	Adieu (2003)	Agricultrice	17
3506115	Baz, Beatriz	Mi amor por ti		4
3506478	Beal, Meggie	Virginian, The (2000) (TV)	11 Year Old Girl	36
3506698	Beardsley, Alice	Edge of Night, The	Switchboard Operator (1975)	-1
3506926	Beatty, Debra K.	Emmanuelle 5: A Time to Dream (1994)	Cara	-1
3508127	Beck, Kimberly	General Hospital	Samantha Livingston #1 (1975)	5
3508434	Becker, Renate	Tatort - Schimanskis Waffe (1990) (TV)	Ellen Spilonska	-1
3508488	Becker-Kennedy, Nancy	General Hospital	Martha McKee (1987-1988)	5
3509017	Bedford, Barbara	Respect the Law (1941)	Johnson's Maid	-1
3509391	Beekman, Inge	Do Not Disturb (1999)	Woman In Airplane	-1
3509549	Beers, Francine	Edge of Night, The	Ernestine Hubbel (1972)/Eileen Goodman #1 (1980-1981)	11
3509601	Befrits, Elisabet	Prins hatt under jorden (1980)	Stepmother	9
3509742	Begovic, Ena	Hocu zivjeti (1982)	Tereza	-1
3509791	Begoña, Mary	Toda una vida		-1
3510003	Behrends, Ela	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Margrit Graf	-1
3510058	Behrens, Yeniffer	Trials of Life (1997) (TV)	Rosie	6
3510066	Behrmann, Eva	Tatort - Tödlicher Treff (1987) (TV)		11
3510420	Belack, Doris	Edge of Night, The	Peggy Collins (1958)/Carol (1966)/Beth Bryson, R. N. (1981-1982)	11
3510537	Belaustegui, Marta	Amore imperfetto, L' (2002)	Angela	2
3510546	Belaustegui, Marta	Marta y alrededores (1999)	Marta	-1
3510863	Belita	Lady, Let's Dance (1944)	Herself	1
3511032	Bell, Catherine	Black Thunder (1997)	Lisa	-1
3511123	Bell, Felecia M.	General Hospital	Dr. Simone Hardy #3 (1993-1997)	5
3511390	Bell, Olive	Way of the World, The (1920)	Landlady	7
3511474	Bell, Tara Lee	Hey Babe! (1980)	Sandy	-1
3512053	Belle, Annie	Lussuria (1986)	Velma	2
3512542	Bellingham, Lynda	General Hospital	Nurse Hilda Price	-1
3514085	Bender, Angelika	Tatort - Kein Kinderspiel (1980) (TV)	Roswitha Wolf	4
3514400	Benedict, Amy (I)	General Hospital	Connie Cooper (1995)	5
3514493	Benedikte, Prinsesse	Kongelig familie, En	Herself	-1
3514527	Benesch, Gabriela	Tatort - Feuerwerk für eine Leiche (1988) (TV)		14
3515305	Bennett, Alma	Burglar, The (1928)		8
3515578	Bennett, Constance (I)	Married? (1926)	Marcia Livingston	2
3515836	Bennett, Fran (I)	General Hospital	Flora Johnston (1983)	5
3516524	Benoit, Mary	Patty (1962)	Dr. Miller's nurse	19
3516833	Benson, Lucille	Greatest, The (1977)	Mrs. Fairlie	-1
3516911	Benson, Sue	Real Bullets (1990)	Bobby	14
3517152	Bentz, Tammy	Critical Assembly (2003) (TV)	Bag Lady	-1
3517161	Bentzen, Jayne	Edge of Night, The	Nicole Travis Stewart Drake Cavanaugh #2 (1978-1981)	11
3517165	Bentzien, Susanne	Grüne Heinrich, Der (1994)	Rosalie	11
3517284	Benvenuti, Vittorina	Vita da cani (1950)		26
3517542	Berben, Iris	Meister Eder und sein Pumuckl	Frau Windlechner	-1
3518308	Berg, Tracey	Beer (1985)	Grace	31
3518373	Bergamín, Beatriz	Agujetas en el alma (1998)	Actriz sex-shop (Sex-shop actress)	19
3518618	Bergen, Rena	Blutjunge Verführerinnen 2 (1972)	Renate	5
3518928	Berger, Paulette	Veine, La (1928)		-1
3519161	Berges, Joanne	Not Tonight Henry (1961)	Josephine	6
3519667	Bergner, Elisabeth	Stunde der Wahrheit (1958) (TV)		-1
3519985	Beristáin, Dolores	Toda una vida		-1
3519989	Berjer, Barbara	Edge of Night, The	Irene Eagon (1964-1965)	11
3520009	Berk, Lara	Grandma Didn't Wave Back (1984) (TV)	Debbie	2
3520141	Berkovitz, Ilana	Kasefet, Ha-	Co-Host (2000)	-1
3520170	Berky, Lili	Mai lányok (1937)	Péter anyja	-1
3520295	Berlin, Susan	Some Kind of Hero (1982)	Jeanette, Bank Teller	11
3521046	Bernard, Robin	General Hospital	Terri (1985-?)	-1
3521047	Bernard, Robyn	General Hospital	Terry Brock O'Connor (1984-1990)	5
3521071	Bernard, Sue	General Hospital	Beverly Cleveland Fairchild (1968-1969)	5
3521308	Berndt, Hilde	Kühne Schwimmer, Der (1957)	Emma	10
3521825	Bernstein, Jaclyn	Bradys, The	Jessica Logan	15
3522617	Bert, Margaret	Failure at Fifty, A (1940)	Ann's Rutledge's Mother	-1
3522684	Bert, Monique	Bach détective (1936)	Mag	3
3522746	Bertens, Rosa	Erlkönig, Der (1931)		-1
3522801	Berthels, Greta	Ingen mans kvinna (1953)	Woman at Henriksson's	-1
3523027	Bertin, Annie	Guépiot, Le (1981)	Soeur Marie-Josèphe	-1
3523147	Bertinelli, Valerie	Intimate Portrait: Bonnie Franklin (2003) (TV)	Herself	-1
3523874	Besch, Bibi	Dead Wrong: The John Evans Story (1984) (TV)	Mrs. Evans	2
3523912	Besch, Bibi	Edge of Night, The	Susan Forbes #2 (1969-1970)	11
3523930	Besedina, S.	Ya shagayu po Moskve (1963)		-1
3524505	Betancourt, Anne	General Hospital	Nadia Greco (1990)	5
3524680	Bethune, Ivy	General Hospital	Abigail (1987)	5
3524819	Betten, Mary	Some Kind of Hero (1982)	Teller	13
3524957	Bettina (I)	Littles, The	Lucy Little	6
3525024	Bettoia, Franca	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Rita Di Salvio	6
3525073	Betty (VIII)	No Limits 4 (2003) (V)		-1
3526432	Biberti, Ilse	Tatort - Feuerzauber (1977) (TV)	Manuela Kastrup	-1
3526903	Biener, Dagmar	Im Schlaraffenland (1965) (TV)	Agnes Matzke	14
3527202	Bigler, Grethe	Ta' det som en mand, frue! (1975)	Deltager I strejkemøde	24
3527778	Billingsley, Jennifer	General Hospital	Polly Prentice #2 (1966-1967)	5
3527979	Bim, Silvia	Tatort - Kein Kinderspiel (1980) (TV)		22
3529397	Biro, Eva	Mai lányok (1937)	Viola	-1
3529577	Bisco, Joy	General Hospital	Casey (2002-2003)	-1
3529862	Bishop, Loanne	General Hospital	Rose Kelly (1980-1984)	5
3529924	Bisignano, Jeannine	Real Bullets (1990)	Girl on Beach	43
3531357	Black, Johnnie	Cafe Fantasy (1996)		-1
3531644	Black, Marina	Jake 2.0: The Tech (2003) (TV)	Sarah Heywood	2
3531806	Blackburn, Dorothy	Edge of Night, The	Mrs. Hubbel (1964)	11
3531813	Blackburn, Greta	Making of a Male Model (1983) (TV)	Jenna	-1
3532285	Blagojevic, Ljiljana	Poslednja trka (1979)		-1
3532893	Blake, Amanda (I)	Edge of Night, The	Dr. Julianna Stanhower (1984)	11
3533508	Blake, Robin	General Hospital	Judy Clampett, R. N. (1964-1974)	5
3533516	Blake, Sally	Matchless (1973)	Cynthia	1
3533857	Blakiston, Caroline	At Bertram's Hotel (1987) (TV)	Lady Bess Sedgwick	2
3534188	Blanc, Erika	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Geneviève	5
3534251	Blanc, Meri	Izmir sokaklarinda (1953)		2
3534276	Blanca, Nida	Bulung-Bulungan (1962)		-1
3534391	Blanch, Anita	Grandes ilusiones		7
3534399	Blanch, Anita	Mi amor por ti		3
3534413	Blanch, Anita	Vamos juntos	Rosa	-1
3534964	Blanco, Lili	Valentina	Julia	-1
3535617	Blatt, Jessica	Virginian, The (2000) (TV)	Young Female Househand	27
3535870	Bleeth, Yasmine	Hey Babe! (1980)	Theresa O'Brian	-1
3536061	Blendl, Annika	Tatort - Veras Waffen (2003) (TV)	Ulrike Frank	-1
3536239	Bleu, Bunny	Erotic Express (1983)		-1
3536443	Blevins, Eleanor	End of the Circle, The (1913)	Eileen Sheridan	2
3536521	Bliefert, Ulrike	Tatort - Tödlicher Treff (1987) (TV)		2
3536522	Bliefert, Ulrike	Und tschüss! - Ballermann olé (1997) (TV)	Ulla	9
3536607	Blinn, Beatrice	Andy Clyde Gets Spring Chicken (1939)		2
3536815	Bliss, Lela	Big Tip Off, The (1955)	Mrs. Marshall	10
3537124	Blok, Marnie	Cowboy uit Iran (1999) (TV)		-1
3537429	Blondell, Joan	Three Men on a Horse (1936)	Mabel	2
3537755	Bloomer, Daphne	General Hospital	Marty (2003-)	-1
3538652	Blue, Arlana	Forbidden Under the Censorship of the King (1972)		-1
3538717	Blue, Betty (I)	Not Tonight Henry (1961)	Pocahontas	7
3539179	Blume, Renate	Tatort - Tod aus der Vergangenheit (1992) (TV)	Ursula Weinkauf	6
3538326	Blythe, Betty	Burnt Wings (1920)	Helen	4
3538436	Blythe, Betty	Speed (1925)	Mary Whipple	1
3539246	Boardman, Emma	Team One (2003)	Blondie	-1
3540133	Body, Holly	Bare Ass Beach (1994) (V)		-1
3540181	Bodén, Alma	Hemliga Svensson (1933)	Fridolf's mother	11
3541078	Bohringer, Romane	Cheveux de ma mère, Les (2004)	La mère	1
3542193	Boladeras, Rosa	Un per l'altre, L'	Joana	5
3542200	Bolanca, Dijana	Letac Joe i Marija smjela (1996)	Girlfriend	-1
3542309	Boland, Nora	General Hospital	Mrs. Clancy (1983)	5
3542403	Bolen, Betty	Air-Tight (1931)		6
3542719	Bonaiuto, Anna	Fratelli e sorelle (1991)		3
3543430	Bondi, Sally	Greatest, The (1977)	Bess	3
3543473	Bone, Margery (I)	White Peak Farm	Jeannie Tanner	-1
3543610	Bonet, Alicia	Ángeles de Puebla, Los (1968)	Carmen	7
3543644	Bonet, Nai	Greatest, The (1977)	Suzie Gomez	28
3543747	Bonfá, Ivete	Tronco do Ipê, O	Luiza	-1
3544105	Boniface, Symona	Two Roaming Champs (1950)		-1
3544135	Bonifácio, Ivana	Tronco do Ipê, O	Young Adélia	-1
3544395	Bonnell, Bonnie	Big Idea, The (1934)	Cleaning Lady	5
3544508	Bonner, Therese	Our Gang Follies of 1936 (1935)		-1
3545879	Bord, Barbro	Prins hatt under jorden (1980)		16
3546649	Borgeson, Linda A.	General Hospital	Sylvia Whitby (1984-1985)	5
3546652	Borget, Madam	They Won't Believe Me (1947)	Mrs. Roberts	-1
3546952	Boris, Angel	General Hospital	Angel Ellis (2001)	5
3547125	Born, Anneliese	Illusion in Moll (1952)	Frau Bauer	12
3547161	Borner, Ruby	Trauma (1962)	Maid	13
3548109	Bosley, Roz	Lionheart (1990)	Nurse	13
3548378	Bosworth, Patricia	Edge of Night, The	Lyn Wilkens Warren #2 (1964)	11
3548974	Bouchet, Barbara	Moglie in vacanza... l'amante in città, La (1980)		2
3549173	Bouchot, Rosita	Río de la muerte (1977)		2
3549566	Boulter, Rosalyn	All Mine to Give (1958)	Mrs. Stephens	16
3549880	Bourgoin, Ingrid	Beau temps mais orageux en fin de journée (1986)	Teresa	-1
3550161	Bouteloup, Marie	4 aventures de Reinette et Mirabelle (1987)	Visitor	16
3550646	Bowden, Dawn	Rainbow	Zippy's Neighbour (1990)	-1
3550936	Bowles, Beth (I)	General Hospital	Denise (1991)	5
3551134	Boy, Ute	Tatort - Feuerzauber (1977) (TV)	Sonja	-1
3551465	Boyd, Mildred	I Was a Communist for the FBI (1951)	Bit Part	-1
3551903	Boylan, Eileen April	General Hospital	Sage Alcazar #1 (2003)	-1
3552321	Bozzola, Gloria	Età da sballo, Un' (1983)		3
3552699	Bracho, Julieta	Vamos juntos	Florencia	-1
3552708	Brack, Marianne	Valet maître, Le (1941)	Annie	-1
3552745	Bracken, Kathleen	Edge of Night, The	Laurie Ann Karr Lamont Dallas #2 (1962-1964)	11
3553019	Bradfield, Dawn	Trials of Life (1997) (TV)	Nurse	-1
3553282	Bradley, Lovyss	They Won't Believe Me (1947)	Miss Jordan	-1
3553387	Bradshaw-White, Luisa	Meaningful Sex (2000) (TV)	Sadie	4
3553877	Brah, Lola	Palácio de Vênus (1980)		-1
3554513	Brandmaier, Marion	Geheime Lüste blutjunger Mädchen (1978)	Lena/Ariane	-1
3554715	Brandt, Else-Marie	Prins hatt under jorden (1980)		15
3554780	Brandt, Marianne	Meister Eder und sein Pumuckl	Frau Schröderbach	-1
3554808	Brandt, Paula	Prins hatt under jorden (1980)		17
3554973	Branning, Penelope	General Hospital	Betty (1991)	5
3555008	Branscombe, Lily	Pals (1911)		-1
3555161	Brard Nasi, Priscilla	Patty's Posse	Herself, Patty's daughter	3
3555184	Brard, Patty	Patty's Posse	Herself	1
3555220	Brash, Marion	Edge of Night, The	Virginia Dalton (1957-1958)/Marion Crawford (1967)/Lolly Buchanan (1968)	11
3555312	Brassini, Angelina	Geheime Lüste blutjunger Mädchen (1978)	Hausmädchen Mitzi	-1
3555569	Braun, Tamara	General Hospital	Carly Roberts Benson Quartermaine Corinthos #2 (2001-present)	5
3555783	Braverman, Rosalyn	Beer (1985)	Woman with Pasta	47
3555838	Bravo, Nieves	Don Juan (1998)	Grosse femme	20
3555912	Braxton, Stephanie	Edge of Night, The	Winter Austin #2 (1979)	11
3556757	Breitschopf, Trude	Meister Eder und sein Pumuckl	Frau Zangl	-1
3556821	Brejchová, Jana	Traum des Hauptmann Loy, Der (1961)	Patricia Binchy	4
3557644	Brent, Evelyn	Holt of the Secret Service (1941)	Agent Kay Drew	2
3557888	Breslin, Patricia	General Hospital	Meg Baldwin #1 (1966-1969)	5
3559264	Bright, Patricia	Edge of Night, The	Edith Berman (1972-1973)	11
3559273	Bright, Susie	Behind the Green Door, the Sequel (1986)		-1
3561106	Brochard, Martine	Trastevere (1971)	Luisa	14
3561451	Brodelet, Esther	Tall, Dark and Handsome (1941)		-1
3562131	Bromley, Sheila	Torchy Plays with Dynamite (1939)	'Jackie' McGuire	4
3562176	Bron, Eleanor	Pleasure at Her Majesty's (1976) (TV)	Various	-1
3562461	Bronson, Lillian	They Won't Believe Me (1947)	Aunt Martha	-1
3563040	Brooks Swope, Tracy	General Hospital	Vanessa Raphael (1983)	5
3563326	Brooks, Jacqueline	Transaction (1986) (V)		-1
3563846	Brosseau, Jennifer	Junky's Christmas, The (1993)	Christmas dinner friend	-1
3563848	Brosseau, Susan	Junky's Christmas, The (1993)	Christmas dinner friend	-1
3564169	Broughton, Shellye	Tatort - Willkommen in Köln (1997) (TV)	Eileen	-1
3564676	Brown, Casey (III)	Making of a Male Model (1983) (TV)	Barbara	-1
3564919	Brown, Francesca	Do Not Disturb (1999)	Melissa Richmond	4
3564980	Brown, Gweldolyn	Breakin' (1984)	Sophie Cunningham	19
3565328	Brown, Kimberlin	General Hospital	Rachel Locke (1999-2002)	-1
3565831	Brown, Sarah (I)	General Hospital	Carly Roberts Benson Quartermaine Corinthos #1 (1996-2001)	5
3565842	Brown, Shari	Deadlock: A Passion for Murder (1997)	Detective	16
3565903	Brown, Susan (I)	Edge of Night, The	Nancy Pollock Karr (temporary replacement) (early 1960s)	11
3565905	Brown, Susan (I)	General Hospital	Dr. Gail Adamson Baldwin (1977-1985, 1992-present)	5
3566000	Brown, Vanessa (I)	General Hospital	Mrs. DeFreest (1979)	5
3566519	Brozzo, Charlotte	Dumm gelaufen (1997)	Nachbarin	-1
3567208	Bruck, Birke	Dumm gelaufen (1997)	Mutter Harm	7
3567437	Brumby, Eva	Tatort - Rattenlinie (2000) (TV)		12
3567482	Brun-Chambord, Monique	À la vitesse d'un cheval au galop (1992)	Mamie	28
3567548	Brunaux, Olivia	À la vitesse d'un cheval au galop (1992)	Adélaïde	24
3567566	Brunckhorst, Natja	Dumm gelaufen (1997)	Anführerin	8
3567960	Brunetti, Argentina	General Hospital	Filomena Soltini (1985-1986)	5
3568017	Bruni Tedeschi, Valeria	Oublie-moi (1995)	Nathalie	1
3568275	Bruno, Catherine	Edge of Night, The	Nora Fulton (aka Roxanne Walker) (1981-1983)	11
3568319	Bruno, Jean (II)	Beer (1985)	Woman in Church	48
3568511	Bruns, Breck	General Hospital	Georgiana 'Georgie' Jones [#4] (1997-2002)	5
3569029	Bryant, Karis Paige	Substitute Wife, The (1994) (TV)	Jessica	4
3569836	Brüel, Birgit	Ta' det som en mand, frue! (1975)	Grethe	6
3570226	Buchanan, Jensen	General Hospital	Melissa Bedford, R. N. #2 (2001-2002)	5
3570250	Buchanan, Lucianne	Tempest (1982)	Dolores	12
3570718	Buckley, Denise	Where the Buffalo Roam (1966) (TV)	Susan	6
3571765	Bueno, Marly	Entre Mulheres e Espiões (1961)		4
3570770	Bueno, Zaira	Tronco do Ipê, O	Adélia	-1
3570887	Buffone, Michelle	General Hospital	Quartermaine maid (1995)	5
3571009	Buhagiar, Valerie	Highway 61 (1991)	Jackie Bangs	1
3572317	Bundy, Brooke	General Hospital	Diana Maynard Taylor, R. N. #2 (1977-1981)	5
3572716	Burch, Helen	Married? (1926)	7-11 Sadie	-1
3572969	Burger, Anna	General Hospital	Mrs. Perry (1991)	5
3573671	Burke, Marie	Man Who Could Cheat Death, The (1959)	Woman At Private View	-1
3573689	Burke, Marie	Unmasked (1929)	Mrs. Brookfield	9
3574376	Burney, Myno	Bach détective (1936)	Vendeuse de la bijouterie	21
3574399	Burnham, Beatrice	Burnt Wings (1920)	Hortense	5
3575038	Burroughs, Jackie	John and the Missus (1987)	Missus	2
3575351	Burt, Caroline (I)	Not a Penny More, Not a Penny Less (1990) (TV)	Woman at Auction	-1
3575672	Burton, Sarah	Edge of Night, The	Cora Lane (1956-1957) (original cast)	11
3575702	Burton, Victoria	General Hospital	Staff Nurse Nelson	-1
3576251	Bush, Pauline	For the Good of Her Men (1912)		2
3577377	Buxton, Judy	General Hospital	Student Nurse Katy Shaw	-1
3577800	Bygum, Helle	Dronningens nytårstale (1999) (TV)	Herself - Speak	-1
3577877	Byington, Spring	Laddie (1940)	Mrs. Stanton	4
3578459	Byron, Kathleen	General Hospital	Principal Nursing Officer Ruth Milner	5
3578650	Bánky, Vilma	Dame von Paris, Die (1927)		1
3578905	Béart, Emmanuelle	Don Juan (1998)	Elvire	3
3579588	Böttcher, Anna	Tatort - Der vierte Mann (2004) (TV)		-1
3580509	Cabrera, Susana	Rage (1966)	Wife of Old Man	9
3580700	Cadell, Jean	Quiet Wedding (1941)	Aunt Florence	6
3580892	Cadorette, Mary	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	-1
3581122	Cahill, Christine (II)	General Hospital	Dr. Tom 'Tommy' Hardy #1 (1971-1974)	5
3581250	Caillard, Isabelle	Point douloureux, Le (1979)		-1
3581328	Caillot, Haydée	4 aventures de Reinette et Mirabelle (1987)	Charitable Lady	12
3582425	Caley, Shaun	Big Pile, The (1985)	Vampira	3
3582788	Callan, K	Cutter to Houston	Nurse Connie Buford	-1
3583426	Calvet, Corinne	General Hospital	Yvonne Rousseau (1987)	5
3583586	Calvo, Rocío	Marta y alrededores (1999)	Carmen	-1
3583768	Camacho, Cecilia	Vamos juntos	Gloria	-1
3583788	Camacho, Faustina	Agujetas en el alma (1998)	Mujer limpieza	45
3584583	Camarillo, Dolores	Amantes frios, Los (1978)	Mujer I (segment "Los Amantes frios")	26
3585034	Campana, Nina	Melody Lingers On, The (1935)	Fruit Vendor's Wife	-1
3585515	Campbell, Kay	Edge of Night, The	Rose Pollock #3 (1964-1969)	11
3585539	Campbell, Laura (I)	General Hospital	Pat Lambert (1976)	5
3587025	Campos, Áurea	Tronco do Ipê, O	Chica	-1
3586179	Canale, Lourdes	Vamos juntos		-1
3587192	Canfield, Mary Grace	General Hospital	Lucille March Weeks, R. N. (1973) (temporary replacement for Ms. Wall)	5
3587376	Canning, Lisa	General Hospital	Meg Lawson #2 (1993)	5
3587510	Cannon, Esma	Quiet Wedding (1941)		-1
3588181	Cantré, Sonja	Speelmeisje (1968)	Speelmeisje	-1
3588702	Capdevila, Fedora	Club de señoritas (1956)		-1
3589206	Capps, Lisa	General Hospital	Susie (1993)	5
3589487	Capshaw, Kate	Edge of Night, The	Jinx Avery Mallory #1 (1981)	11
3590179	Cardille, Lori	Edge of Night, The	Winter Austin #1 (1978-1979)	11
3590848	Cardozo, Virginia	Asesinato en tres variantes con dos incógnitas y un maniquí (1987)		-1
3591124	Carey, Joyce	Happy Go Lovely (1951)	Bruno's Secretary	12
3591760	Carl, Renée	Yeux ouverts, Les (1913)		-1
3592152	Carlin, Gloria	General Hospital	Charity Gatlin Holt (1986)	5
3592334	Carlisle, Ellen	Highway 61 (1991)	Mother	17
3592488	Carlo, Christine	General Hospital	Leticia Juarez #2 (2001-present)	-1
3592612	Carlos, Lindsey	Lionheart (1990)	Street Gang Member #1	48
3592963	Carlson, Quinn	General Hospital	Jason Quartermaine (aka Jason Morgan) #1 (1982)	5
3593621	Carmen, Maria (I)	Rave (2000)	Roxy	13
3594677	Carothers, Veronica	Scream Queens Swimsuit Sensations (1992) (V)	Herself	3
3594729	Carpenter, Editha	Big Pile, The (1985)	Bianca Jagger	22
3595358	Carr, Patricia (II)	Edge of Night, The	Holly Meech (1983)	11
3595524	Carrasco, Ada	Amantes frios, Los (1978)	Dona Chona (segment El Soplador del vidrio)	3
3596038	Carrera, Asia	Southern Comfort (1995) (V)		-1
3596327	Carrere, Tia	General Hospital	Jade Soong Chung, R.N. (1985-1987)	5
3596407	Carreño, Mercedes	Tres historias de amor (1978)		1
3596698	Carrillo, Silvia	Club de señoritas (1956)		-1
3596837	Carrington, Laura	General Hospital	Dr. Simone Hardy #1 (1987-1989)	5
3597076	Carroll, Corinne	General Hospital	Bertha (1984)	5
3597240	Carroll, Helena	General Hospital	Nancy McTavish #2 (1992)	5
3597328	Carroll, Joan	Laddie (1940)	Sister Stanton	3
3597485	Carroll, Mary (I)	Big Tip Off, The (1955)	Sister Superior	8
3597683	Carroll, Virginia	Big Tip Off, The (1955)	Mrs. Curry	16
3597923	Carson, Crystal	General Hospital	Julia Barrett (1991-1994, 1997, 1998)	5
3598233	Carstens, Lina	Illusion in Moll (1952)	Bertha	6
3598579	Carter, Diane Woods	Edge of Night, The	Brandeis 'Brandy' Henderson (1974-1976)	11
3598745	Carter, June (II)	Edge of Night, The	Elaine 'Cookie' Pollock Thomas Christopher #2 (1962)	11
3598992	Carter, Robyn	Day & Date	Entertainment Correspondent	5
3600483	Casali, Claudia	Asian Babes 2 (1993) (V)		-1
3600595	Casanova, Delia	Toda una vida		-1
3600799	Casas, Ana María	Agujetas en el alma (1998)	Dueña del local	14
3600928	Case, Sharon	General Hospital	Dawn Winthrop #2 (1989-1990)	5
3601105	Casey, Colleen (I)	General Hospital	Peggy Nelson (1984)	5
3601401	Cash, Rosalind	General Hospital	Mary Mae Ward (1994-1995)	5
3601468	Cashen, Irina	General Hospital	Susan Hornsby (1991)	5
3601693	Cason, Barbara	Comedy Tonight	Regular	-1
3603546	Castelli, Maria Luíza	Tronco do Ipê, O	Francisca	-1
3603837	Castro, Chela	Vamos juntos	Juana	-1
3603999	Castro, Martha Mariana	Valentina	Mariela	-1
3604034	Castro, Pilar	Agujetas en el alma (1998)	Actriz irlandesa (Irish actress)	36
3604054	Castro, Romina	Años perdidos, Los		-1
3604080	Castro, Sara	Agujetas en el alma (1998)	Actriz Padrenuestro	38
3604153	Castro, Verónica (I)	Valentina	Valentina Isabel Montero/Valentina de los Ángeles	1
3685922	Deese, Mary	General Hospital	Reporter Kristi Koy (2002-2003)	-1
3604799	Catillon, Brigitte	Point douloureux, Le (1979)	La femme de T.	5
3604852	Catlett, Mary Jo	General Hospital	Mary Finnegan (1989-1990)	5
3604886	Catmull, Katherine	Substitute Wife, The (1994) (TV)	Dianne	20
3605091	Catunda, Leda	Spray Jet (1986)	Herself	-1
3605220	Caulfield, Emma	General Hospital	Lorraine Miller (1996-1997)	5
3606391	Cecil, Katie	Team One (2003)	Nadine	-1
3606663	Cederblad, Julia	A.-B. gifta bort baron Olson (1928)	Rose	6
3607414	Cenci, Athina	Miei più cari amici, I (1998)	Marta	-1
3607651	Cerasoli, Lisa	General Hospital	Venus 'V' Ardanowski (1997-1999)	5
3608581	Chadwick, Helene	Girls (1919)	Kate West	3
3609164	Chalmers, Allison	Unstrung Heroes (1995)	In-crowd Girl	20
3609529	Chambers, Marilyn (I)	Behind the Green Door, the Sequel (1986)	Gloria Saunders (in footage from 'Behind the Green Door')	-1
3609836	Champeaux, Andrée	Bach détective (1936)	L'amie du baron	15
3609874	Champeaux, Andrée	Valet maître, Le (1941)	Marie	-1
3610028	Chan, Charine	Long Feng cha lou (1990)	June Lok Ka-Kei	-1
3610038	Chan, Charine	Zhong huan ying xiong (1991)	Margaret	-1
3610086	Chan, Ellen	Long Feng cha lou (1990)	Gigi	-1
3610154	Chan, Joanna	Jiang shi zhi zun (1987)	Mary	-1
3610522	Chandavarkar, Leena	Qaid (1975)		-1
3611022	Chaney, Frances (I)	Edge of Night, The	Jeanne Culpepper (1967)	11
3611462	Channone	Southern Comfort (1995) (V)		-1
3611497	Chantal (I)	General Hospital	Chantal (1994)	5
3611686	Chaouachi, Lara	Miel et cendres (1996)		-1
3612199	Chapman, Judith	General Hospital	Ginny Blake Webber (1984-1986)	5
3612999	Charleson, Leslie	Lovely Way to Die, A (1968)	Julie	27
3613005	Charleson, Leslie	General Hospital	Dr. Monica Bard Webber Quartemaine #2 (1977-present)	5
3613222	Charlie (II)	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Herself	-1
3613455	Charova, V.	Prokliatiye millioni (1917)		-1
3613646	Chase, Annazette	Greatest, The (1977)	Belinda Ali	-1
3613789	Chase, Daveigh	Rats, The (2002) (TV)	Amy Costello	4
3613884	Chase, Lavone	Anarchy TV (1997)	African-American Family	35
3614015	Chase, Vanessa	New Girl in Town 5 (1994)		-1
3614093	Chasen, Heather	Young Sherlock: The Mystery of the Manor House	Aunt Rachel	-1
3614249	Chatex, Sylvie	Maîtresse pour couple (1979)	Marianne	5
3614362	Chatterjee, Moushumi	Santaan (1993)		2
3614837	Chavez, Annette	General Hospital	Leticia Juarez (1998-2002)	5
3615192	Cheaney, Loia	Torchy Plays with Dynamite (1939)	Bailiff	-1
3615221	Cheatham, Maree	General Hospital	Charlene Simpson (1987-1991)	5
3615267	Chediek, Silvina	Badía y Cia		-1
3615972	Cheng, Carol 'Do Do'	Ghost in the House (1988)	Carmen	1
3617675	Cheyne, Angela	General Hospital	Dorrie Fleming, R.N. (1977-1980)	5
3617932	Chiba, Sachiko	Joyu to shijin (1935)		-1
3618081	Chico, Florinda	Si las mujeres mandaran (o mandasen) (1982)		-1
3618317	Childers, Naomi	Failure at Fifty, A (1940)	Partner	-1
3618343	Childers, Naomi	Respect the Law (1941)	Nurse	-1
3618476	Chiles, Lois	Warning: Parental Advisory (2002) (TV)	Susan Baker	5
3618739	Chinh, Kieu	Yank in Viet-Nam, A (1964)	Kieu Chinh	4
3618910	Chiqvinidze, Nani	Magdanas lurja (1955)	Kato	4
3619232	Chkheidze, Ch.	Chirveuli mezoblebi (1945)	Manager of Kolkhoz	10
3619371	Chloe (I)	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Herself	-1
3619382	Chloe (I)	Terminal Case of Love (1998) (V)		-1
3619756	Choi, Eun-hie	Korea (1954)		1
3620087	Choi, Seon-a	Jeolbeun poong gin ibyeol (1984)		1
3621098	Christensen, Pil	Europa på spil (2002) (TV)	Herself - Activist, Globale Rødder	-1
3621177	Christenson, Irma	Maria på Kvarngården (1945)	Birgit Jern	3
3621841	Christina (I)	2 On 1 (1998) (V)		-1
3621974	Christine, Virginia	Killers, The (1964)	Miss Watson	8
3622257	Christopher, Robin (I)	General Hospital	Abby Mitchell (1993)/Antoinette "Skye/Toni" Patterson Chandler Cudahy Kinder Davidson Quartermaine Jacks (2001- present)	5
3622438	Christy, Eileen	Thunderbirds (1952)	Mary Caldwell	9
3623342	Churikova, Inna	Ya shagayu po Moskve (1963)		7
3623466	Chytrová, Simona	Waterloo po cesku (2002)		22
3623825	Ciani, Yolanda	Valentina		-1
3624383	Claesson, Märtha	Hemliga Svensson (1933)	Mrs. Lindgren	-1
3625080	Clair, Nadège	Trois couronnes du matelot, Les (1983)	Maria	4
3625327	Claire, Ludi	Edge of Night, The	Elizabeth McGrath #1 (1964-1966)	11
3625398	Claman, Barbara	Demon Possessed (1993)	Voiceover Older Jeannie	12
3625443	Clandillon, Betty	Wastelands (1993)		-1
3625731	Clark, Ashley (I)	General Hospital	Mariah Maximilliana 'Maxie' Jones [#2] (1992)	5
3625761	Clark, Brenda (I)	Parfum d'Yvonne, Le (1994)	Post Office Worker	19
3625846	Clark, Christie	General Hospital	Cindy (1992)	5
3626002	Clark, Jessica (I)	General Hospital	Mariah Maximilliana 'Maxie' Jones [#2] (1992)	5
3626182	Clark, Marguerite	Girls (1919)	Pamela Gordon	1
3626888	Clarke, Mae	Thunderbirds (1952)	Mrs. Jones	18
3626900	Clarke, Mae	General Hospital	Marge (1963)	5
3627283	Clatterbuck, Tamara	General Hospital	Tammy Carson #2 (2000-2001)	5
3627373	Claudius, Elke	Tatort - Feuerwerk für eine Leiche (1988) (TV)		27
3627394	Claus, Anna Sophie	Tatort - Kindstod (2001) (TV)	Nathalie	9
3627453	Claussen, Joy	Edge of Night, The	Corky (early 1970s)	11
3627454	Claussen, Joy	General Hospital	Mrs. Chamberlain (1995)	5
3627474	Clavel, Aurora	Amantes frios, Los (1978)	Evodia (segment "El Soplador del vidrio")	2
3627504	Clavel, Aurora	Rage (1966)		-1
3627723	Clay, Juanin	Edge of Night, The	Charlotte 'Raven' Alexander Jameson Swift Whitney #1 (1976-1977)	11
3628887	Cleveland, Carol	Pleasure at Her Majesty's (1976) (TV)	Various	-1
3628938	Cleveland, Patience	General Hospital	Dottie Sandford (1987)	5
3629357	Clifton, Laura	Warning: Parental Advisory (2002) (TV)	Hearing Reporter #1	25
3629399	Climent, Noemí	Agujetas en el alma (1998)	Alenda	12
3629547	Clinton, Mildred	Edge of Night, The	Judge Sussman (1975-1976)	11
3629831	Closser Hale, Louise	Son-Daughter, The (1932)	Toy Yah, Dr. Dong's Servant	6
3630095	Clyde, June	Forgotten (1933)	Lena Strauss	2
3630176	Cláudia, Maria (I)	Semideus, O	Estela	-1
3630828	Clément, Aurore	Adieu (2003)	Dora	4
3631353	Cody, Kathleen	Edge of Night, The	Laurie Ann Karr Lamont Dallas #3 (1965-1967)	11
3631595	Coffin, Adeline Hayden	Hampton Court Palace (1926)	Mary Lassells	4
3631843	Cohen, Caitlin	General Hospital	Georgiana 'Georgie' Jones [#2] (1995-1997)	5
3632107	Cohen, Ryan (I)	General Hospital	Georgiana 'Georgie' Jones [#2] (1995-1997)	5
3632631	Colchero, Ana	Años perdidos, Los		-1
3632973	Cole, Olivia	Some Kind of Hero (1982)	Jesse Keller, Eddie's Mother	6
3633070	Cole, Vicki	Chickboxin Underground (1999)	Scorpion	3
3633376	Coleman, Nancy	Edge of Night, The	Elizabeth McGrath #2 (1967)	11
3633382	Coleman, Paralee	Burglar, The (1928)	Mandy's Daughter	7
3633737	Colin, Margaret	Edge of Night, The	Paige Madison (1979-1980)	11
3634300	Collings, Anne	General Hospital	Florence Gray (1974)	5
3634367	Collins, Anne (II)	Yeomen of the Guard, The (1978) (TV)	Dame Carruthers	6
3634507	Collins, Christina (I)	Vow to Kill, A (1995) (TV)	Jack Flash Manager	-1
3634591	Collins, Corny	Maulkorb, Der (1958)	Trude von Treskow	4
3634595	Collins, Corny	Reise ohne Wiederkehr (1989)		-1
3634788	Collins, Joan (I)	Making of a Male Model (1983) (TV)	Kay Dillon	1
3635333	Collyer, June	East Side, West Side (1927)	Josephine	6
3636000	Colwell, Goldie	Cactus Jim's Shopgirl (1915)	Nell Morton	2
3636484	Como, Rossella	Trastevere (1971)	Una prostituta	15
3636660	Compson, Betty	Her Friend, the Doctor (1916)		4
3637302	Conaway, Michele	General Hospital	Beth Maynard (1975-1976)	5
3637471	Conde, Rita	Two Roaming Champs (1950)		-1
3637879	Conley, Darlene	General Hospital	Trixie (1984)	5
3638321	Conner, Ryan	Weekend In Diego (2000) (V)		-1
3638389	Connolly, Norma	Edge of Night, The	Mrs. Yost (1977)	11
3638390	Connolly, Norma	General Hospital	Ruby Anderson (1979-1998)	5
3639248	Contouri, Chantal	General Hospital	Prunella Witherspoon (1988)	5
3639390	Convert, Céline	Amoureux, Les (1994)	Paola	24
3639400	Convá, Teresa	Tronco do Ipê, O	Eufrosina	-1
3639501	Conwell, Patricia	Edge of Night, The	Tracy Dallas Micilli (1974-1977)	11
3639725	Cook, Linda (I)	Edge of Night, The	Laurie Ann Karr Lamont Dallas #6 (1975-1977, 1984)	11
3639893	Cook, Vera	Shadow of the Cat (1961)	The Mother (new family)	14
3640221	Coolidge, Rita	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Song Performer "Fallen Angels"	9
3640408	Cooper, Camille	General Hospital	Nikki Langton (1992-1993)	5
3640671	Cooper, June	Mister Jerico (1970) (TV)	First Stewardess	-1
3640676	Cooper, Kelly	Gigli (2003)	Beach Dancer	24
3640696	Cooper, Linda	General Hospital	Linda Cooper, R.N. (1971)	5
3640743	Cooper, Mary (I)	Edge of Night, The	Mrs. Timmons (1981)	11
3641356	Copponex, Kathryn	New Orleans After Dark (1958)	Mary Sherman	-1
3641502	Corba, Cornelia	Tatort - Tödlicher Treff (1987) (TV)		7
3641751	Corby, Ellen	All Mine to Give (1958)	Mrs. Raiden	15
3641844	Corby, Ellen	They Won't Believe Me (1947)	Screaming Woman	-1
3641952	Corda, María	Tänzer meiner Frau, Der (1925)	Lucille Chauvelin	2
3642158	Cordell, Melinda	General Hospital	Natalie Dearborn (1983)	5
3642469	Corell, Matilde	No te engañes corazón (1937)		-1
3642642	Coristine, Jennifer	Rats, The (2002) (TV)	Nurse	12
3643031	Cornerford, Janet	Our Gang Follies of 1936 (1935)		-1
3643060	Cornford, Mary	Love Potion (1987)	Denise	8
3643143	Cornwall, Anne	They Won't Believe Me (1947)	Screaming Woman	-1
3643966	Cortes, Rowena	Semideus, O	Sula	-1
3644249	Cortez, Stacey	General Hospital	Sheila Cantillon, R.N. (1991)	5
3644315	Cortney, Suzanne	General Hospital	Dr. Lane (1991)	5
3644673	Cosnay, Marie	Parfum d'Yvonne, Le (1994)	Avenir Barmaid	14
3644744	Costa, Adriana	Tronco do Ipê, O	Young Alice	-1
3645060	Costantini, Béatrice	Sainte farce, La (1972) (TV)		-1
3645913	Cotto, Andrea	Grandes ilusiones		4
3646410	Couper, Barbara	Happy Go Lovely (1951)	Madame Amanda	7
3646714	Court, Hazel	Man Who Could Cheat Death, The (1959)	Janine Dubois	2
3647012	Courtney, Jacqueline	Edge of Night, The	Kitty DeMarco #2 (1958)/Viola Smith (1961)	11
3647929	Cox, Catherine	Edge of Night, The	Billie Schuman (1984)	11
3648104	Cox, Joan	Overboard (1978) (TV)	Joan	-1
3648226	Cox, Nikki	General Hospital	Gina Williams #1 (1993-1995)	5
3648374	Coxx, Sindee	Cafe Fantasy (1996)		-1
3648456	Coxx, Sindee	Primal Instinct (1996) (V)		1
3648656	Cozzens, Mimi	General Hospital	Doris Blythe (1987)	5
3648723	Crabtree, Toni	Greatest, The (1977)	Hooker	23
3648845	Craig, Candace	Littles, The		-1
3648855	Craig, Carolyn (I)	General Hospital	Cynthia Allison (1963)	5
3648923	Craig, Davina	Private Secretary, The (1935)	Annie	10
3648937	Craig, Diane (I)	Ned Kelly (1970)	Maggie Kelly	12
3649342	Cramer, Susanne	Kühne Schwimmer, Der (1957)	Gaby Marshall	2
3649946	Crawford, Claudia	Edge of Night, The	Kitty DeMarco #1 (1957)	11
3650533	Creevay, Allorah	Hungry Bachelors Club, The (1999)	Betty Spinner	-1
3650638	Crescente, Maria Helena	Em Cada Coração um Punhal (1970)	(segment "Clepsusana")	10
3650660	Crespi-Marillo, Theresa	Unknown Cyclist, The (1998)	Woman At Bar	17
3650860	Crews, Laura Hope	Melody Lingers On, The (1935)	Mother Superior	6
3651038	Crider, Missy	Gigli (2003)	Robin	17
3651564	Crocker, Hayley	All or Nothing (1998)		-1
3651836	Cronauer, Gail	Warning: Parental Advisory (2002) (TV)	Sen. Paula Hawkins	13
3651834	Cronauer, Gail	Substitute Wife, The (1994) (TV)	Isabel Donahue	10
3651919	Cronin, Rachel	They Nest (2000) (TV)	Respiratory Technician	31
3651451	Cross, Marcia	Edge of Night, The	Liz Correll (1984)	11
3652724	Crow, Angela	Shadow of the Cat (1961)	The Daughter (new family)	16
3652774	Crow, Sheryl	Bacharach: One Amazing Night (1998) (TV)	Herself	-1
3652831	Crowe, Brittinay	Carnal Passion (2001) (V)	Elise	7
3652849	Crowe, Eileen	Home Is the Hero (1959)	Daylia O'Reilly	2
3653113	Crowne, Ericka	Ned Kelly (1970)	Mrs. Farrell	-1
3653596	Cruz, Celia	Valentina		-1
3653816	Cruz, Penélope	Don Juan (1998)	Mathurine	4
3653898	Cruz, Vivian	Mujer de Benjamín, La (1991)	Girl	-1
3654188	Csilla	2 On 1 (1998) (V)		-1
3654638	Cuetos, Concha	Verano azul	Pilar	14
3654679	Cuff, Chelsey	General Hospital	Mariah Maximilliana 'Maxie' Jones [#1] (1990-1992)	5
3654682	Cuff, Kahley	General Hospital	Mariah Maximilliana 'Maxie' Jones [#1] (1990-1992)	5
3654775	Cukic, Vera	Koze		-1
3655030	Culton, Leslie	Chickboxin Underground (1999)	Toni Barem	14
3655951	Cunningham, Cecil	Tall, Dark and Handsome (1941)		-1
3656090	Cunningham, Sarah (I)	Edge of Night, The	Emma Lawrence (1972)	11
3656586	Currier, Mary	Respect the Law (1941)	Mrs. George Johnson	-1
3656716	Curthoys, Ann	Rainbow	Storyteller (1972-1975)	-1
3657115	Curtis, Robin (I)	General Hospital	Carol Pulaski (1991)	5
3657797	Cuádraz, Gloria	Shattering the Silences: The Case for Minority Faculty (1997)	Herself	-1
3658034	Cyrulnik, Jimena	Banda de Cantaniño, La	Host (2003)	3
3658445	Cárdenas, Elsa	Teenage Tease (1983)		-1
3658886	Córdoba, Irma	Mi marido y mi padrino		2
3659019	d'Abo, Maryam	Not a Penny More, Not a Penny Less (1990) (TV)	Anne Summerton	-1
3659925	d'Arche, Simone	Bach détective (1936)	Dora	12
3660235	d'Este, Coco	Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Herself	-1
3660736	da Assunção, Júlia	Pai Tirano, O (1941)		19
3660994	Dabney, Augusta	General Hospital	Carolyn Chandler Baldwin (1975-1976)	5
3661178	Dade, Frances	She-Wolf, The (1931)	Faire Breen	4
3661313	Daggett, Jensen	Medicine Ball	Katie Cooper	-1
3661401	Dagover, Lil	Barrings, Die (1955)	Thilde von Barring	7
3662107	Dailey, Irene	Edge of Night, The	Pamela Stewart (1969-1970)	11
3662260	Dainton, Joanne	Mister Jerico (1970) (TV)	Merle	8
3662428	Dajka, Margit	Mai lányok (1937)	Kati,cselédlány	1
3662615	Dalbert, Suzanne	Thunderbirds (1952)	Marie Etienne	26
3662666	Dalby, Amy	Quiet Wedding (1941)		-1
3662786	Dale, Esther	Laddie (1940)	Sarah, the Housekeeper	7
3663088	Dali, Gisela	Amartoles (1962)		-1
3663298	Dallas, Bea	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	-1
3663648	Dalton, Kristen	They Nest (2000) (TV)	Nell Bartle	4
3664149	Damato, Michelle	Nobody's Perfect (2002)	Karen	4
3664594	Dan, Reiko	Shin kitsune no tameki (1962)		6
3664845	Dance, Patsy	Ned Kelly (1970)	Mrs. Whitty	-1
3664961	Dandoulaki, Katia	Demonismeni, I (1975)	Psychiatrist	1
3665286	Dane, Patricia	Grand Central Murder (1942)	Mida King	2
3665363	Danera, Ursula	Voices, The (1955) (TV)	Helga von Horstmann	-1
3665529	Dangler, Anita	General Hospital	Madame Maia Montebello (1995)	5
3665729	Daniel, Mary (I)	Semideus, O		-1
3666558	Danielson, Shell	General Hospital	Dominique Stanton #2 (1991-1993)	5
3666997	Danno, Jacqueline	Enfant du secret, L' (1996) (TV)		-1
3667053	Dano, Linda	General Hospital	Gretel Rae Washburn Cummings Faulkner Buchanan (2000-2001, 2003)	5
3667215	Dantes, Claude	Solomon and Sheba (1959)	Mother of Disputed Child	-1
3667326	Danz, Cassandra	Beer (1985)	Sheila	46
3667330	Danz, Cassandra	Live with Regis and Kathie Lee	Mrs. Greenthumbs (1997-2001)	-1
3667358	Danzi, Dione	Grandma Didn't Wave Back (1984) (TV)	Mom	4
3667622	Darc, Francoise	Midnight Intruders (1987)	Wife	1
3668143	Darel, Florence	Enfant du secret, L' (1996) (TV)		-1
3668148	Darel, Florence	Grüne Heinrich, Der (1994)	Anna	3
3669072	Darling, Nadine	Tempest (1982)	Nurse	25
3669257	Darnay, Toni	Edge of Night, The	Nurse (1966)	11
3671081	Davenier, Catherine	Amoureux, Les (1994)	Mme. Godfroy	16
3671090	Davenport, Agelina	Anarchy TV (1997)	African-American Family	38
3671105	Davenport, Alice	Drummer's Vacation, The (1912)		2
3671955	Davidson, Joan	Love Potion (1987)	Mrs. Helburn	21
3672168	Davies, Dilys	Where the Buffalo Roam (1966) (TV)	Schoolteacher	9
3672554	Davila, Mari Bell	Carnal Passion (2001) (V)	Party Guest	14
3672698	Davis, Ann B.	Bradys, The	Alice Nelson	9
3673239	Davis, Elaine (I)	Atomic Kid, The (1954)	Audrey Nelson	3
3673738	Davis, Kristin	General Hospital	Betsy Chilson, R.N. (1991)	5
3674033	Davis, Patti	Edge of Night, The	Marla (1971)	11
3674055	Davis, Phyllis	Knight Rider (1982) (TV)	Tanya Walker	3
3674210	Davis, Terry (I)	Edge of Night, The	April Cavanaugh Scott (1977-1981)	11
3674377	Davison, Davey	General Hospital	Nurse Esther (1990)	5
3674422	Davison, Michelle	General Hospital	Isobel Ward (1994)	5
3674726	Dawley, Janet	Martyrdom of Philip Strong, The (1916)	Irma Strong	3
3675715	Day, Laraine	Tarzan Finds a Son! (1939)	Mrs. Richard Lancing	8
3676466	de Alba, Rosa	Accidente (1965)		-1
3676840	de Barros, Gilda	Tudo é Música (1957)		-1
3677353	De Bruyn, Katharina	Meister Eder und sein Pumuckl	Frau Reiser	-1
3678420	De Funès, Isabelle	Esprits de famille (1975) (TV)	Marianne Morin	5
3679570	De Lanti, Stella	Speed (1925)	Señora Querino	9
3680138	de Lizandra, Maria Isabel	Tronco do Ipê, O	Baronesa	-1
3680657	de Medeiros, Maria	Água e Sal (2002)	Vera	6
3680665	de Medina, Nieve	Marta y alrededores (1999)	Jimena	-1
3680820	de Mol, Linda	Nationaal songfestival (1989) (TV)	Herself - Host	1
3681222	de Oliveira, Idalina	Pai Tirano, O (1941)	Idalina	10
3681768	De Remer, Rubye	Auction Block, The (1917)	Lorelei Knight	1
3682157	De Salvo, Anne	Unstrung Heroes (1995)	May	6
3682281	de Santis, Orchidea	Amiche del cuore, Le (1992)	Elena	-1
3682299	de Santis, Orchidea	Dottoressa sotto il lenzuolo, La (1976)		2
3682615	De Solms, Claude	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Florinda	-1
3682631	De Soos, Gaétane	Guépiot, Le (1981)	Claude	-1
3682654	de Soto, Silvia	Familia Vila, La (1950)	Patrona	-1
3683647	De Villa, Tita	Junior Cursillo (1968)		-1
3683663	de Villeneuve, Valériane	À la vitesse d'un cheval au galop (1992)	La fiancée à lunettes	31
3682907	De Windt, Angelique	Wild Pair, The (1987)	Nadine Jackson	9
3683132	De'Nyle, Jewel	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Herself	-1
3684499	Dearing, Dorothy	Tall, Dark and Handsome (1941)		-1
3684874	DeBord, Sharon	General Hospital	Sharon McGillis Pinkham, R.N. (1965-1973)	5
3688319	Delacy, Monah	Semideus, O	Santa	-1
3689120	Delbat, Germaine	Point douloureux, Le (1979)	La femme téléphone	9
3690478	Delmar, Iris	Tudo é Música (1957)		-1
3691017	Deltenre, Esther	Monsieur mon chauffeur (1926)	Tante Esther	-1
3691756	Demirkan, Renan	Tatort - Tod aus der Vergangenheit (1992) (TV)	Renate Schwippert	5
3692659	Denier, Lydie	General Hospital	Dr. Yasmine Bernoudi (1989)	5
3693260	Dennsy, Renée	À la vitesse d'un cheval au galop (1992)		3
3693340	Dent, Cheryl	King and Me, The (1999)	Cheryl	2
3693834	DePriest, Margaret	Edge of Night, The	Abby Cameron #1 (1965-1966)	11
3693892	Deram, Maîté	Amoureux, Les (1994)	Amélie	27
3694055	Derbez, Silvia	Vamos juntos	Lupe Pistolas	-1
3695079	Deshon, Florence	Auction Block, The (1917)	Lilas Lynn	2
3696028	Deumie, Rita	Coeurs de couleur (1989)	Mlle Isidore	7
3696144	Deval, Marguerite	Valet maître, Le (1941)	Ninon Ravier	6
3696335	Devere, Kirsten	General Hospital	Lisa Erikson (1994)	5
3696421	Devi, Anjali	Abhimanavanthulu (1973)		-1
3697029	Devi, Molina	Rang Berang (1948)		-1
3697717	Devirys, Rachel	Bach détective (1936)	La maîtresse de maison	16
3698060	Devos, Emmanuelle	Oublie-moi (1995)	Christelle	2
3698524	DeWitt, Joyce	Three's Company: The E! True Hollywood Story (1998) (TV)	Herself	2
3698943	Dhir, Sunita	Chann Pardesi (1980)	Channi - Joginder Singh's daughter	8
3700435	Diamond, Selma	Edge of Night, The	Mrs. Yoast (1977)	11
3701208	Dicker, Stephanie	General Hospital	Gina Williams (#3) (1996-1997)	5
3701258	Dickey, Lucinda	Breakin' (1984)	Kelly	1
3701342	Dickinson, Angie	Killers, The (1964)	Sheila Farr	2
3701365	Dickinson, Angie	Overboard (1978) (TV)	Lindy Garrison	-1
3701474	Dickson, Bettina	Voices, The (1955) (TV)	Waterson	-1
3701574	Dickson, Helen	They Won't Believe Me (1947)	Woman	-1
3701632	Dickson, Shirley	Rave (2000)	Trace	14
3701815	Diego, Linda	Weekend In Diego (2000) (V)		-1
3702088	Dietrich, Marlene	Frau, nach der man sich sehnt, Die (1929)	Stascha	1
3702142	Dietrich, Marlene	Tänzer meiner Frau, Der (1925)	Dance extra	9
3702183	Dietz, Eileen	General Hospital	Sarah Abbott (1980-1981)	5
3703002	Dimitriadou, Maria	Galazio diamanti, To		8
3703352	Dingle, Jane	John and the Missus (1987)	Mavis Sheppard	10
3703438	Diniz, Leila	Rainha Louca, A	Lorenza	-1
3703463	Diniz, Zélia	Palácio de Vênus (1980)		-1
3703583	Dinçdur, Iclal	Izmir sokaklarinda (1953)		3
3703598	Diol, Susan	General Hospital	Alexis Davis #2 (2001, 2002)/Lady Ashton (2002)	5
3703994	Dipika	Ramayan	Sita	2
3704511	Divinagracia, Angelica	General Hospital	Angel (1997)	5
3704513	Divine (II)	Agujetas en el alma (1998)	Actriz cantante (Singer actress)	25
3705226	Djukelova, Paraskeva	Duhat na bashta mi (1998) (TV)	Maykata	1
3705338	Djuricin, Rada	Kabare 011		1
3705506	do Socorro Candido, Maria	Romances de terre et d'eau (2002)		-1
3705593	Do, Geum-bong	Mulmangcho (1960)		2
3706506	Doerr, Monica	Teammates, The (2003) (TV)	Herself (interviewee)	9
3707630	Dolenz, Ami	General Hospital	Melissa McKee (1987-1989)	5
3707740	Doll, Barbara	Anal-Europe Series 7, The (1994) (V)		-1
3707217	Dolsky, Neige	À la vitesse d'un cheval au galop (1992)	Titine	4
3708592	Dona, Linda	General Hospital	Nancy Eckert (1991)	5
3708741	Donahue, Patricia	General Hospital	Birdie Wells (1987)	5
3708789	Donald, Shirley May	Ned Kelly (1970)	Mrs. Byrne	-1
3708854	Donaldson, Norma	General Hospital	Dr. Pauline Ravelle (1987)	5
3709386	Donnell, Jeff	General Hospital	Stella Fields (1980)	5
3710008	Donáth, Ági	Mai lányok (1937)	Mária	-1
3710544	Doran, Ann	Skinny the Moocher (1939)		2
3710844	Dore, Charmian	Rainbow	Singer (1973)	-1
3710930	Dorff, Märta	Flicka med melodi (1954)	Mrs. Bergvall	8
3710942	Dorff, Märta	Ingen mans kvinna (1953)	Mrs. Henriksson	12
3711079	Doria, Malena	Mujer de Benjamín, La (1991)	Micaela	3
3711443	Dorne, Sandra	Happy Go Lovely (1951)	Betty	11
3711684	Dorr, Anita	A.-B. gifta bort baron Olson (1928)	Märta Grooth	3
3711878	Dorsch, Käthe	Lindenwirtin, Die (1930)		-1
3712610	Douesnard, Christiane	À la vitesse d'un cheval au galop (1992)	Mme Derouin	26
3712897	Douglas, Joyce	General Hospital	Idios Ward (1994)	5
3713560	Dover, Nyta	Vita da cani (1950)	Lucy d'Astrid	14
3713744	Dowley, Marian	Clash of the Ash, The (1987)		-1
3713854	Dowling, Sydell	Rogue with a Heart, The (1916)		3
3714180	Downs, Cathy	Big Tip Off, The (1955)	Sister Mary Joan of Arc	4
3714381	Doyle, Alma	Highway 61 (1991)	Bingo Angry Woman	23
3714559	Doyle, Peggy (I)	General Hospital	Sister Mary (1997)	5
3715357	Drake, Pauline	Hot Foot (1943)	Mrs. Kennedy	2
3715556	Drasbæk, Laura	Hemmeligheder (1997)	Helle	2
3716046	Dress, Evelyne	Guépiot, Le (1981)	Madeline 'la guêpe'	-1
3716156	Dressler, Lieux	General Hospital	Mrs. Alice Grant #2 (1978-1983)	5
3716921	Driver, Charla	Deadlock: A Passion for Murder (1997)	Jennifer	9
3717684	Drücker, Janne	Tatort - Kalte Wut (2001) (TV)		-1
3717887	Du Brey, Claire	Who Killed Doc Robbin? (1948)	Housekeeper	12
3718680	DuBois, Marta	Trials of Life (1997) (TV)	Mrs. Grantos	3
3718933	Dubow, Rae	General Hospital	Noreen Cerullo (1994)	5
3719342	Duchêne, Kate	At Bertram's Hotel (1987) (TV)	Rose	20
3719841	Dueñas, Lola	Marta y alrededores (1999)	Elisa	-1
3721256	Dumont, Denise	Semideus, O	Analu	-1
3721466	Dunaway, Faye	Amanti (1968)	Julia	1
3722867	Dunn, Valentine	Quiet Wedding (1941)		-1
3723108	Dunoyer, Jany	Coeurs de couleur (1989)	Sarah	8
3723808	Duque, Constanza	Atrapados (1985)		-1
3724302	Durfee, Minta	Great Pearl Tangle, The (1916)		-1
3724573	Durova, Lida	They Won't Believe Me (1947)	Girl at Newsstand	-1
3724648	Durá, María Victoria	Familia Vila, La (1950)	Engracia	-1
3724727	Durão, Luísa	Pai Tirano, O (1941)	D. Cândida	6
3724897	Dussauchoy, Maggy	À la vitesse d'un cheval au galop (1992)	Marthe Lesueur	5
3725170	Dutra, Nicéia	Férias de Laura (1986)		-1
3725188	Dutron, Olivia	Guépiot, Le (1981)	Soeur Saint Ignace	-1
3725409	Duval, Liana	Em Cada Coração um Punhal (1970)	(segment "Transplante de Mãe")	3
3725521	Duval, María (I)	Ángeles de Puebla, Los (1968)	Angel	3
3726487	Dyer, Karen (II)	General Hospital	Xanna Ames (1994)	5
3726508	Dyer, Sharon	Beer (1985)	Talk Show Audience	38
3726595	Dylan, Dana	Addicted to Love (1988)		-1
3727910	Düringer, Annemarie	Tatort - Mord auf Raten (1980) (TV)		-1
3727917	Dürrmeier, Margot	Tatort - Der Fremdwohner (2002) (TV)	Frau Walter	14
3728950	Ebbesen, Dagmar	Hemliga Svensson (1933)	Mrs. Jansson	4
3729316	Ebner, Eva	Anna - annA (1993)	Mrs. Bernascoui	5
3729348	Ebnet, Liselotte	Tatort - Mordverdacht (1971) (TV)		-1
3729391	Eburne, Maude	Bat Whispers, The (1930)	Lizzie Allen	3
3730178	Eddy, Kimberly	Anarchy TV (1997)	Prisoner	34
3730240	Edele, Velma	Shadows of Chinatown (1926)	Velma	2
3730904	Edson, Hilary	General Hospital	Tanya Roskov Jones (1984-1987)	5
3731025	Edwards, Edith	Frau, nach der man sich sehnt, Die (1929)	Angela Poitrier	8
3731126	Edwards, Jennifer (I)	Making of a Male Model (1983) (TV)	Laurie	-1
3731491	Edwards, Sarah (I)	Main Street Kid, The (1948)	Mrs. Clauson	11
3732187	Egerton, Nancy	Mister Jerico (1970) (TV)	Second Stewardess	-1
3732338	Eggers, Birgit	Prins hatt under jorden (1980)		14
3732436	Eggert, Nicole	Dead Wrong: The John Evans Story (1984) (TV)		-1
3732823	Ehre, Ida	Tatort - Schlußverkauf (1978) (TV)	Alma Spränger	-1
3733512	Eisenman, Robin	General Hospital	Nurse Stacy (1981)	5
3733845	Ekerling, Suzanne	General Hospital	Jody (1992)	5
3735666	Elledge-Grapes, Cherie	Edge of Night, The		11
3735880	Elliot, Jane	General Hospital	Tracy Quartermaine Williams (1978-1980, 1989-1993, 1996, 2003-present)	5
3736021	Elliott, Cecil	Big Tip Off, The (1955)	Apartment Cleaning Woman	-1
3736480	Ellis, Katherine (I)	Harry and Max (2004)	Brandy	7
3736563	Ellis, Nadine	Gigli (2003)	Beach Dancer	27
3736887	Elmay, Edith	Noch minderjährig (1957)		-1
3737702	Elías, Carmen	Agujetas en el alma (1998)	Carmen	9
3738039	Emerson, Hope	All Mine to Give (1958)	Mrs. Pugmire	6
3738072	Emerson, Karrie	Edge of Night, The	Jody Travis #2 (1983-1984)	11
3738746	Emshwiller, Carol	Carol (1970)		-1
3738814	Enami, Kyôko	Showa onna bakuto (1972)		1
3739248	Engel, Tina	Tatort - Kindstod (2001) (TV)	Renate Bergmann	4
3739363	Engelhardt, Bettina	Tatort - Veras Waffen (2003) (TV)	Anette Maxheimer	6
3739375	Engelhart, Susanne	Noch minderjährig (1957)		-1
3739519	Engh, Karin	Amanti (1968)	Griselda	4
3740414	Envy (I)	Weekend In Diego (2000) (V)		-1
3740812	Erasmus, Desirée	Love Potion (1987)	Patty	17
3743540	Espín, Ana Bertha	Mujer de Benjamín, La (1991)	Cristina	6
3743998	Esteves, Nelly	Pai Tirano, O (1941)	Amélia	9
3744278	Esumi, Makiko	Over Time	Natsuki Kasahara	2
3744404	Eternity, Kim	Black Butt Sisters Do New Orleans, The (1995) (V)		2
3744665	Ettles, Chantal	Highway 61 (1991)	Missie Watson	15
3744844	Eva, Evi	Orlow, Der (1927)		-1
3745711	Evans, Mary Beth	General Hospital	Katherine Bell Ashton (1993-1999)	5
3745754	Evans, Muriel	Big Idea, The (1934)	Honey, Ted's Fiancee	6
3747400	Ezawa, Moeko	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)		-1
3747512	Fabares, Shelley	Intimate Portrait: Bonnie Franklin (2003) (TV)	Herself	-1
3747673	Faber, Veronika	Meister Eder und sein Pumuckl	Fau	-1
3748488	Fagralid, Helle	Hemmeligheder (1997)	Marika	1
3748816	Fair, Florence	Good Sport, The (1918)	Grace Cornwallis	2
3748979	Fairbrother, Sydney	Private Secretary, The (1935)	Miss Ashford	5
3749123	Fairchild, Morgan	General Hospital	Sydney Chase (1996)	5
3749472	Faison, Sandy	Edge of Night, The	Dr. Beth Correll Cavanaugh (1983-1984)	11
3750653	Fang, Qingzhuo	Shadow Magic (2000)	Widow Jiang	12
3751019	Farber, Arlene	Teenage Mother (1968)	Arlene Taylor	1
3751025	Farber, Helene	Teenage Mother (1968)	Duke's girl	4
3751690	Farley, Dot	Hot Foot (1943)	Mother-in-Law	4
3751767	Farley, Dot	Small Town Idol, A (1921)	Mrs. Smith	8
3751780	Farley, Dot	They Won't Believe Me (1947)	Emma	-1
3751824	Farley, Elizabeth	Some Kind of Hero (1982)	Secretary	19
3751825	Farley, Elizabeth	Edge of Night, The	Kay LePage Reynolds Lamont (1974-1975)	11
3752369	Farrand, Jan	Edge of Night, The	Kate Sloane (1971-1972)	11
3752454	Farrell, Brioni	General Hospital	Martha Taylor #1 (1977)	5
3752641	Farrell, Sharon	Lovely Way to Die, A (1968)	Carol	6
3753356	Fatovich, Alex	Gigli (2003)	Packing Store Clerk	19
3753586	Faure, Renée	Dame de lieudit, La (1993) (TV)	Eulalie Carlus	7
3753629	Faure, Renée	À la vitesse d'un cheval au galop (1992)	Odette Courcel	6
3753674	Faurschou, Jannie	Hjem til fem		-1
3753908	Fawcett, Farrah	Substitute Wife, The (1994) (TV)	Pearl	1
3754093	Fay, Sheila	Help!	Annie (1986-1988)	-1
3754296	Faye, Julia	Something to Think About (1920)	Banker's Daughter	7
3754315	Faye, Julia	Voice of Hollywood No. 3, The (1929)	Herself	-1
3754507	Fazenda, Louise	It's a Boy (1920)		-1
3754593	Fazenda, Louise	Small Town Idol, A (1921)		-1
3754777	Fealy, Maude	Pamela Congreve (1914)		1
3755047	Feddersen, Helga	Meister Eder und sein Pumuckl	Verkäuferin im Spielzeugladen	-1
3755294	Fedák, Sári	Iza néni (1933)	Iza néni	-1
3755426	Fehling, Gaby	Illusion in Moll (1952)	Dorothy Alsbacher	11
3755519	Feiler, Hertha	Maulkorb, Der (1958)	Elisabeth	2
3755652	Felber, Anette	Albert Einstein (1990) (TV)	Helene Dukas, secretary	-1
3755989	Felecia (I)	Bare Ass Beach (1994) (V)		-1
3756726	Fenech, Edwige	Moglie in vacanza... l'amante in città, La (1980)		1
3756981	Fenner, Shelby	Gigli (2003)	Australian Dancer	22
3757021	Fenton, Mary Jean	Bobby Jones, Stroke of Genius (2004)	Well Wisher	70
3757417	Ferdag, Sevda	Kislalar doldu bugün (1968)		-1
3757487	Fere, Tawny	General Hospital	Doninique Straton #1 (1991)	5
3757588	Ferguson, Bianca	General Hospital	Claudia Johnston Phillips (1978-1987)	5
3757701	Ferguson, Holly	Pick-up, The (1999)	Julie	2
3758178	Fernanda, Maria	Tronco do Ipê, O	Alina	-1
3758190	Fernanda, María (III)	Toda una vida	Imperio	-1
3758400	Fernandez, Liza (II)	Dinner Date 1 (2002) (TV)	Victim	-1
3758740	Fernández, Dafne	Caja 507, La (2002)	María Pardo Muñoz	1
3758964	Fernández, Marina (II)	Valentina	Jesusa	-1
3759558	Ferrarone, Jessica	General Hospital	Lydia Karenin-Cassadine #1 (2003)	5
3760834	Ferro, Márcia	Férias de Laura (1986)		-1
3761252	Feuillère, Edwige	Dame de lieudit, La (1993) (TV)	Mme Zihler	1
3761615	Ficatier, Carol	Tempest (1982)	Gabrielle	16
3761647	Fichtner, Viva	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		13
3761656	Fickett, Mary	Edge of Night, The	Sally Smith (1961)/Dr. Katherine Lovell (1967-1968)	11
3762379	Field, Sylvia	All Mine to Give (1958)	Lelia Delbert	8
3762456	Fielder, Kitty	Question of Trust, A (1920)	Anita	5
3762576	Fielding, Marjorie	Quiet Wedding (1941)	Mildred Royd	3
3763306	Figus, Lisa	General Hospital	Georgia Price, RN (1989)	5
3763323	Fiji, Ali	Pendekar bujang lapok (1959)	Ali (Samseng)	12
3763524	Filippini, Telly	Hija del hacendado, La (1997) (V)		-1
3763992	Finckh, Beate	Tatort - Leiche im Keller (1986) (TV)	Angelika	4
3764035	Findlay, Diane	Daikaijû Gamera (1965)	Sgt. Susan Embers	-1
3764180	Fine, Jeanna	Dream Jeans (1987)		-1
3765528	Fischer, Edda	Tatort - Willkommen in Köln (1997) (TV)		-1
3766006	Fish, Nancy	General Hospital	Nurse Strickland (1991)	5
3766212	Fisher, Frances (I)	Edge of Night, The	Det. Deborah Saxon (1976-1981)	11
3766627	Fitz, Lisa	Mein Freund, der Scheich (1981)		-1
3766632	Fitz, Lisa	Meister Eder und sein Pumuckl	Frau Ramsauer	-1
3768053	Fleischhacker, Helga	Meister Eder und sein Pumuckl	Erika	-1
3768834	Flewelling, Iloe	Virginian, The (2000) (TV)	Aunt Edna	34
3768960	Flieger, Janina	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Anna Pabst	5
3769143	Flippin, Lucy Lee	Edge of Night, The	Miranda Price (1976)	11
3769147	Flipse, Eline	Point douloureux, Le (1979)		-1
3769165	Flitton, Sheila	Help!	Mrs. Reilly (1988)	-1
3769326	Flood, Ann	Edge of Night, The	Nancy Pollock Karr (1962-1984)	7
3771382	Flynn, Elinor	She-Wolf, The (1931)	Peggy	8
3772028	Folkerts, Ulrike	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Doro	2
3772269	Foltz, Virginia	Girls (1919)	Lucille	10
3772301	Fomina, Margarita	Dva patrona na mamonta (1990)		7
3772322	Fomm, Joana	Em Cada Coração um Punhal (1970)	(segment "O Filho da Televisão")	13
3772660	Fonseca, Fátima	Palácio de Vênus (1980)		-1
3772778	Fontaine, Anne	Entre chats et loups (1985) (TV)	Carole Lambert	4
3773552	Forastieri, Laura	Valentina		-1
3773838	Forbes, Mary (I)	Laddie (1940)	Mrs. Anna Pryor	12
3773880	Forbes, Mary (I)	Strictly Unconventional (1930)	Mrs. Anna Shenstone	7
3774248	Ford, Constance	Edge of Night, The	Eve Morris (1964-1965)	11
3774568	Ford, Megan	Grandma Didn't Wave Back (1984) (TV)	Beth	6
3774747	Forde, Jessica	4 aventures de Reinette et Mirabelle (1987)	Mirabelle	2
3774862	Forde, Victoria	Never Again (1915)		2
3775316	Forlani, Claire	Bobby Jones, Stroke of Genius (2004)	Mary Malone Jones	2
3775399	Former Queen of Rumainia, Anne	Kongelig familie, En	Herself	-1
3776179	Forsyth, Rosemary	General Hospital	Dr. James (1992)	5
3776469	Forzano, Rita	Dottoressa sotto il lenzuolo, La (1976)		7
3776637	Fossey, Brigitte	Esprits de famille (1975) (TV)	Ernestine Bichois	2
3777147	Foster, Kimberly (I)	Making of a Male Model (1983) (TV)	Susan	-1
3777173	Foster, Leah	Otherwise Known as Sheila the Great (1989) (TV)		-1
3777998	Fowler, Mary	Wedding on the Volga, The (1929)		2
3778053	Fox, Angie	Bobby Jones, Stroke of Genius (2004)	Young Lady	36
3778132	Fox, Damita Jo	Real Bullets (1990)	D.J.	12
3778279	Fox, Jorja	Hungry Bachelors Club, The (1999)	Delmar Youngblood	3
3778364	Fox, Lauren (I)	Egoists, The (2003)	Isabel Adams	1
3778450	Fox, Mickey	Trastevere (1971)		-1
3778744	Fox, Virginia	Blacksmith, The (1922)	Horsewoman	3
3779525	Fragner, Lisa	General Hospital	Geraldine Cerullo (1994)	5
3780229	Francis, Arlene	Prize Performance	Host (1950)	1
3780338	Francis, Genie	General Hospital	Laura Vining Webber Baldwin Spencer Spencer #2 (1976-1981, 1983-1985, 1993-2002)	5
3781301	Francks, Lili	Vow to Kill, A (1995) (TV)	Naomi Mills	-1
3781508	Franco, Margarita	General Hospital	Dolores Santiago (1994)	5
3781532	Franco, Nélida	Casamiento de Chichilo, El (1938)		2
3781633	Francés, María	Familia Vila, La (1950)	Adela	-1
3780842	Frank, Erika 'Elektra'	Number's Alive! (1996) (TV)	Bianca	4
3781110	Franklin, Bonnie	Intimate Portrait: Bonnie Franklin (2003) (TV)	Herself	1
3782173	Frantz, Paulette	À la vitesse d'un cheval au galop (1992)	Maman	7
3782536	Fraser, Etty	Em Cada Coração um Punhal (1970)	(segment "Transplante de Mãe")	1
3782872	Fratti, Valentina	Big Pile, The (1985)	Cynthia Love	10
3783467	Fredrik, Karen	General Hospital	Crystal (1984)	5
3783513	Free, Christa	Blutjunge Verführerinnen 2 (1972)		3
3783870	Freeman, Kathleen (I)	General Hospital	Sister Mary Dorothy (1991)	5
3783890	Freeman, Lisa (I)	Breakin' (1984)	Waitress	23
3783939	Freeman, Mona	Thunderbirds (1952)	Lt. Ellen Henderson	10
3783960	Freeman, Sandy	Making of a Male Model (1983) (TV)	Leonora	-1
3784206	Freire, Gracinda	Semideus, O	Joventina	-1
3784716	French, Valerie	Edge of Night, The	Kitty DeSena (1965)/Angela Morgan Hillyer (1972-1973, 1974)	11
3784836	Fresk, Ulla	Prins hatt under jorden (1980)	Sister	5
3784857	Fresno, Maruchi	Familia Vila, La (1950)	Carmen	-1
3784877	Fresno, Maruchi	Solomon and Sheba (1959)	Bathsheba	10
3784895	Fresson, Joséphine	Parfois trop d'amour (1992)	Delphine	-1
3785604	Frey, Petra (I)	Angela ja ajan tuulet	Agnes Anders	4
3785788	Friday	No Limits 4 (2003) (V)		-1
3785056	Friend, Jessie-Ann	General Hospital	Young Karen Wexler (Cates) (1993)	5
3785146	Fries, Margarete	Noch minderjährig (1957)		-1
3786457	Fronzi, Renata	Semideus, O	Paloma	-1
3787385	Fuchs, Enzi	Meister Eder und sein Pumuckl	Sekretärin	-1
3787513	Fuentes, Alma Delia	Río de las ánimas, El (1964)		-1
3787795	Fuhlrott, Kathleen	Tatort - Tod aus der Vergangenheit (1992) (TV)	Angelika Frohn	12
3788171	Fujiwara, Norika	Lei ting zhan jing (2000)	Norika	2
3788605	Fuller, Lisa	General Hospital	Dawn Winthrop #3 (1990)	5
3788849	Fuller, Penny	Intimate Portrait: Bonnie Franklin (2003) (TV)	Herself	-1
3788862	Fuller, Penny	Edge of Night, The	Gerry McGrath Pollock #1 (1964)	11
3789483	Furlong, Judy	John and the Missus (1987)	Stella Peacock	15
3789554	Furman, Rosa	Veneno para las hadas (1984)	Señora Krinsky	-1
3790293	Fänge, Lina	Prins hatt under jorden (1980)	Child	10
3790768	Füzess, Anna	Mai lányok (1937)	Zsuzsi nevelõanyja	-1
3790841	Ga, Ling	Ta lai zi hu zhi ming shi (1994)	Sandy	-1
3791058	Gabet, Sharon	Edge of Night, The	Charlotte 'Raven' Alexander Jameson Swift Whitney #2 (1977-1984)	11
3791177	Gabor, Eva	Edge of Night, The	Herself (1983)	11
3791187	Gabor, Magda	Mai lányok (1937)	Lenke	-1
3791637	Gabrielli, Laetitia (I)	Pourquoi t'as fait ça? (2001)		-1
3792343	Gago, Jenny	General Hospital	Connie Daniels (1987)	5
3793408	Gale, Ruth	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		17
3793719	Galik-Furey, Denise	General Hospital	Cindy #1 (1989)/Rhonda Wexler (1992-1994)	5
3794031	Gallagher, Gina	General Hospital	Gina Williams #2 (1996)	5
3794330	Gallardo, Rosa María	Rage (1966)		-1
3794412	Galleani, Ely	Dottoressa sotto il lenzuolo, La (1976)		6
3794705	Galli, Rosina	Respect the Law (1941)	Mrs. Arturi, Bereaved Italian Mother	-1
3795204	Galphin, Martha	Edge of Night, The	Roxanne Carey (1968-1969)	11
3795443	Galán, Mapi	Agujetas en el alma (1998)	Mapi	5
3795589	Gam, Rita	Edge of Night, The	Dora Coburn (1983)	11
3795738	Gambier, Karine	European Sex Vacation (1986)		-1
3796806	Garber, Terri (I)	General Hospital	Victoria Parker (1993)	5
3797259	Garcia, Nanou	À la vitesse d'un cheval au galop (1992)	La mariée	20
3797349	Garcia, Rosana	Semideus, O	Carminha	-1
3798189	García, Sara (I)	No te engañes corazón (1937)	Doña Petro	4
3798027	García, María Elena (II)	Mujer de Benjamín, La (1991)	Customer	-1
3798354	Garde, Betty	Edge of Night, The	Mattie Lane Grimsley #1 (1956) (origianal cast)	11
3798625	Gardner, Caron	Fiction Makers, The (1968)	Carol Henley	10
3799308	Garland, Judy (I)	I Could Go on Singing (1963)	Jenny Bowman	1
3800063	Garon, Pauline	Speed (1925)	Wiletta Whipple	2
3800213	Garralón, María	Verano azul	Julia	2
3800392	Garrett, Lesley	Lesley Garrett: The Video (1998) (V)	Herself	-1
3801174	Garí, Diana	Tres historias de amor (1978)		4
3802045	Gaubert, Ginette	Bach détective (1936)	Olga Worskaïa	4
3802540	Gauthier, Marie-Josée	Sous les draps, les étoiles (1989)		-1
3802681	Gava, Cassandra	General Hospital	Cruz (1984)	5
3802818	Gavriil, Geli	Galazio diamanti, To		5
3803314	Gayle, Monica	General Hospital	Kate Marshall (1976)	5
3803822	Gaël, Josseline	Bossu, Le (1934)		-1
3803861	Gaínza, Magalys	Agujetas en el alma (1998)	Actriz discoteca (Disco actress)	32
3804320	Geer, Ellen	Wild Pair, The (1987)	Fern Willis	8
3804737	Geiler, Voli	Go-Go-Girl vom Blow Up, Das (1969)		5
3804951	Gejic, Emiko	Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)		-1
3805237	Gemignani, Rhoda	General Hospital	Lois' Aunt Grace (1994)	5
3805340	Gemser, Laura	Lussuria (1986)	Zerbal	3
3805618	Genevieve (II)	2 On 1 (1998) (V)		-1
3806378	George, Babs	Substitute Wife, The (1994) (TV)	Mrs. Parker	8
3806599	George, Muriel	Quiet Wedding (1941)		-1
3807672	Germain, Yolanda	Do Not Disturb (1999)	Falling Stripper	-1
3807720	German, Vanessa	Chickboxin Underground (1999)	Bloodstain	6
3808595	Geyer, Celine	Reise ohne Wiederkehr (1989)		-1
3809874	Gibson, Amy	General Hospital	Colette Francoise (1988)	5
3810351	Gibson, Vivian	Orlow, Der (1927)		-1
3810620	Giese, Susanne	Ta' det som en mand, frue! (1975)	TV-interviewer	22
3810718	Gifford, Kathie Lee	Live with Regis and Kathie Lee	Herself (1989-2000)	3
3810743	Gift, Noelle	Spoonful of Sugar (2003)	Patrice	1
3810882	Gil, Ariadna	Don Juan (1998)	Charlotte	5
3811143	Gil, Virgínia	Palácio de Vênus (1980)		-1
3811757	Gilchrist, Connie	Grand Central Murder (1942)	Pearl Delroy	7
3811855	Gilchrist, Virginie	Not a Penny More, Not a Penny Less (1990) (TV)	Second girlfriend	-1
3812481	Gillette, Anita	Edge of Night, The	Franki (1967-1968)	11
3812509	Gillette, Priscilla	Edge of Night, The	Sybil Gordon (1957-1958)	11
3812619	Gillie, Stephanie	Boyclops (2004)	Student	-1
3812760	Gillis, Caroline	Highway 61 (1991)	Bingo Attendant	24
3812932	Gilmore, Helen	Bromo and Juliet (1926)		-1
3812960	Gilmore, Helen	Never Again (1915)		6
3813039	Gilmore, Virginia	Laddie (1940)	Pamela Pryor	2
3813048	Gilmore, Virginia	Tall, Dark and Handsome (1941)	Judy	2
3813081	Gilot, Yolande	Tatort - Der Tausch (1986) (TV)	Veroniques	5
3813175	Gilzer, Maren	Tatort - Der Fremdwohner (2002) (TV)	Conny	10
3813495	Gina (XV)	Nationaal songfestival (1989) (TV)	Herself	-1
3813650	Gini, Nelli	Jack o kavalaris (1979)	Antonella	-1
3813658	Gini, Nelli	Eglimata	Reveka	-1
3813723	Giobbe, Anney	Custody (2000)	Wally's Lawyer	-1
3815147	Gish, Dorothy	Harvest (1953) (TV)	Ellen Zalinka	1
3815774	Giza, Amalia	Demonismeni, I (1975)		2
3816013	Glaenzel, Mónica	Un per l'altre, L'	Maria	2
3816043	Glagoleva, Vera	Samozvantsy		8
3816738	Gleave-Letelier, Lisa	Weryfikacja (1987)	Magda	6
3816879	Glen, Beverly	Eclipse (1993) (V)		-1
3817017	Glenn, Neely	Bobby Jones, Stroke of Genius (2004)	Coed	39
3817077	Gless, Bridget	Trials of Rosie O'Neill, The	Barbara Navis	-1
3817127	Gless, Sharon	Trials of Rosie O'Neill, The	Fiona 'Rosie' O'Neill	1
3817144	Glezakou, Evanthia	Tempest (1982)	Old Woman	-1
3817778	Glässner, Erika	Jagd nach der Wahrheit, Die (1920)		1
3817891	Gmelin, Gerda	Tatort - Das stille Geschäft (1977) (TV)	Frau Schobel	-1
3817999	Gobbi, Hilda	Amerikai cigaretta (1977)	Scavenger's wife	1
3818527	Godfrey, Anne	Mister Jerico (1970) (TV)	Elegant Lady	-1
3818837	Godsell, Vanda	Shadow of the Cat (1961)	Louise Venable	8
3820121	Golden, Diana	Valentina	Daniela	-1
3820580	Goldstein, Brette	Egoists, The (2003)	Casting Director	17
3821361	Gomes, Ida	Rainha Louca, A		-1
3821417	Gomes, Teresa	Pai Tirano, O (1941)	Teresa	5
3822278	González, Carmelita	Amantes frios, Los (1978)	Don~a Loto (segment "Los Amantes frios")	18
3822321	González, Carmelita	Ladrona, La (1954)		2
3822449	González, Dacia	Rage (1966)	Maria	7
3822686	González, Marta (II)	Solo y conmigo (2000)		-1
3822921	González, Ángeles	Tres historias de amor (1978)		2
3823030	Gonçalves, Suzana	Semideus, O	Norminha	-1
3823576	Goodrich, Susie	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Trauma Team Nurse #2	36
3823776	Goodwin, Henrietta	Old English (1930)	Letty, Larne's Maid	-1
3825592	Gore, Rosa	Cook's Revenge (1916)		-1
3826033	Gormley, Gene	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		10
3826036	Gormley, Mary	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)		16
3826234	Gorzelak, Ewa	Farba (1998)	Szachara	3
3826521	Gottert, Ursula	Tatort - Tod aus der Vergangenheit (1992) (TV)	Linde/Anne Treu	8
3827340	Gover, Mildred	Tall, Dark and Handsome (1941)		-1
3828371	Graham, Aimee	Rave (2000)	Mary Griffith	2
3828996	Grahm, Lyla	Breakin' (1984)	Caroline Divine	17
3829015	Grahn, Nancy	General Hospital	Alexis Davis Cassadine Jacks/Natasha Cassadine (1996-)	5
3829614	Grandduchess of Luxemburg, Joséphine-Charlotte	Kongelig familie, En	Herself	-1
3830237	Granhammar, Anna	Prins hatt under jorden (1980)	Sister	4
3830471	Grant, Alberta	Edge of Night, The	Liz Hillyer Prentiss Fields (1966-1974)	11
3831035	Grant, Micki (II)	Edge of Night, The	Arlene Goodman/Susan Earle (1967)/Ada Chandler #2 (1976-1977)	11
3831697	Graubart, Judy	Comedy Tonight	Regular	-1
3831874	Graveson, Jan	White Peak Farm	Kathleen Tanner	-1
3832520	Gray, Joan (II)	Our Gang Follies of 1936 (1935)		-1
3832615	Gray, Lorna	Andy Clyde Gets Spring Chicken (1939)		6
3832666	Gray, Lorna	Skinny the Moocher (1939)		-1
3834264	Greene, Laura	Comedy Tonight	Regular	-1
3834427	Greenhalgh, Dawn	Virginian, The (2000) (TV)	Molly's Mother	14
3834470	Greenhouse, Martha	Edge of Night, The	Role Unknown (Year Unknown)	11
3834627	Greenwood, Charlotte (I)	Tall, Dark and Handsome (1941)	Winnie	3
3834628	Greenwood, Charlotte (I)	Up in Mabel's Room (1944)	Martha	5
3834649	Greenwood, Joan	At Bertram's Hotel (1987) (TV)	Selina Hazy	5
3834891	Greer, Jane	They Won't Believe Me (1947)	Janice Bell	3
3835368	Gregory, Cynthia	Edge of Night, The	Herself (1981)	11
3836518	Grey, Monica	General Hospital	Sister Edwards	-1
3836702	Grey, Tina	Anarchy TV (1997)	Prisoner	33
3836738	Grey, Virginia	Grand Central Murder (1942)	Sue Custer	4
3836806	Grey, Virginia	Who Killed Doc Robbin? (1948)	Ann Loring	6
3836897	Gribunina, A.	Prokliatiye millioni (1917)		-1
3837058	Gries, Sally	Greatest, The (1977)	Sponsor's Wife	24
3837098	Grifell, Maruja	Club de señoritas (1956)		-1
3837221	Grifell, Prudencia	Ladrona, La (1954)		4
3837377	Griffies, Ethel	Old English (1930)	Miss Adela Heythorp	9
3837780	Griffith, Alisyn	General Hospital	Lesley Lu 'Lulu' Spencer [#3] (1995-1997, 1998-2001)	5
3837864	Griffith, Eva	Young Sherlock: The Mystery of the Manor House	Charity	-1
3837951	Griffith, Kelli	General Hospital	Lesley Lu 'Lulu' Spencer [#3] (1995-1997, 1998-2001)	5
3838818	Grimpe, Julia	Tatort - Willkommen in Köln (1997) (TV)	Eva	7
3839475	Gross, Magdalena	Little Women in Transit (1996)	Jenny	1
3839579	Grosser, Renate	Tatort - Schwarzer Advent (1998) (TV)	Ilona Gruber	9
3840021	Groves, Carolyn	Edge of Night, The	Betsy Brown (1963)	11
3841311	Guallar, Montse	Telaraña, La (1990)		-1
3843479	Guilmáin, Ofelia	Valentina	Doña Federica	-1
3844021	Gulla, Nancy	Trials of Life (1997) (TV)	Starr's Mom	19
3844062	Gulliver, Dorothy	Cross Country Run (1929)		3
3844402	Gunke, Nina	Hemmeligheder (1997)		5
3844623	Guo, Yiwen	Huan le ren jian (1959)	Wei Xiulan	-1
3844478	Gunn, Judy	Private Secretary, The (1935)	Edith Marsland	3
3844616	Guo, Qi (II)	Huan le ren jian (1959)	He Sufang	-1
3845341	Guthrie, Jennifer	General Hospital	Dawn Winthrop #4 (1990-1991)	5
3845434	Gutierrez, Eva	Caja 507, La (2002)	Empleada Bancosol	12
3845532	Gutiérrez, Alicia	Rage (1966)		-1
3845598	Gutiérrez, Elsa María	Veneno para las hadas (1984)	Fabiola	2
3845726	Gutiérrez, Zaide Silvia	Valentina	Rafaela	-1
3846440	Guérin, Diane	Colombes, Les (1972)	Micheline	-1
3846621	Gwok, Yee Lee	Ta lai zi hu zhi ming shi (1994)	Shun	-1
3846847	Gyllenspetz, Ann-Marie	Ingen mans kvinna (1953)	Imber Ersson	3
3847185	Gálvez, Rosario	Vamos juntos	Catalina	-1
3848979	Ha, Pat	Jin ye bu she fang	Guest	-1
3849107	Haack, Käthe	Katzensteg, Der (1915)	Helene, die Pfarrerstochter	8
3849565	Haas, Violet	They Nest (2000) (TV)	Trauma Nurse #1	28
3849970	Hack, Shelley	Cutter to Houston	Dr. Beth Gilbert	1
3850549	Hadley, Lisa Ann	General Hospital	Dr. Julie Morris Devlin Ramsey (1997-2000)	5
3851054	Hagen, Carla	Tatort - Rattennest (1972) (TV)	Herta Laschke	2
3851219	Hagen, Sheri (I)	Tatort - Lockvögel (1996) (TV)	Regina	-1
3851433	Hagman, Emy	Hemliga Svensson (1933)	Eva Blomgren	6
3851481	Hagman, Heidi	Making of a Male Model (1983) (TV)	Connie	-1
3851751	Haid, Liane	Provinzonkel, Der (1926)		-1
3852049	Hainzl, Julia	Tatort - Kein Kinderspiel (1980) (TV)	Stefanie Wolf	8
3852154	Hajiargyri, Eleni	Amartoles (1962)		-1
3852369	Hald, Matilda	Prins hatt under jorden (1980)	Child	12
3852797	Hale, Karen (I)	I Was a Communist for the FBI (1951)	Secretary	-1
3852850	Hale, Susan (II)	Carnal Passion (2001) (V)	Tina	5
3852910	Haley, Aileen	Grand Central Murder (1942)	Doll	-1
3853766	Hall, Landon	Black Thunder (1997)	Eileen	-1
3854538	Hallan, Hanita	Kühne Schwimmer, Der (1957)	Lili Jonas	8
3855133	Halset, Marit	Ingen mans kvinna (1953)	Åse	11
3855200	Halskov-Jensen, Annelise	Quiet Wedding (1941)	Lady Yeldham	15
3855405	Hama, Mie	Shin kitsune no tameki (1962)		5
3856132	Hamilton, Kim	General Hospital	Dr. Tracy Adams (1969-1970)	5
3856896	Hammon, Jennifer	General Hospital	Karen Wexler #2 (1997-1999)	5
3857360	Hampton, Grayce	Bat Whispers, The (1930)	Cornelia van Gorder	7
3857899	Hanauer, Terri	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Cheryl	5
3857989	Hancke, Edith	Maulkorb, Der (1958)	Billa	5
3434732	Adams, Claire (I)	Spirit of the Red Cross, The (1918)	Ethel	2
3443657	Albert, Shari	Time of Her Time (1999)	Natalie	-1
3470319	Armoni, Dafna	Frank Sinatra Is Dead (1999)		-1
3482844	Ayres, Rosalind	That'll Be the Day (1973)	Jeanette	7
3504596	Bautista, Albee	Boys and Girls (2000)	Dancer	39
3509883	Behar, Sasha	Coronation Street	Maya Sharma (2003-)	53
3514019	Bencová, Isabela	Zatracení (2002)	Elena Dvorová	3
3533898	Blakley, Ronee	Driver, The (1978)	The Connection	4
3581816	Calamai, Clara	Tiranno di Padova, Il (1946)	Tisbe	-1
3610675	Chandler, Janet	Cowboy Holiday (1934)	Ruth Hopkins	2
3624939	Cindy (VII)	Little Lace Panties 2 (2002) (V)		-1
3638914	Constantinescu, Corina	Comoara din Vadul Vechi (1964)		-1
3658792	César, Laurence	Juste une question d'amour (2000) (TV)	Martine	7
3665973	Danielle (II)	Pumping Flesh (1986)		-1
3678786	De Jainette, Jessie	Invisible Power, The (1921)	Mrs. Shadwell	5
3681470	De Paris, Zazie	Blond: Eva Blond! - Das Urteil spricht der Mörder (2002) (TV)	Schönheitssalon-Chefin	-1
3685372	Dee (I)	Dark Side (2000) (V)	Mrs. Soble	5
3720283	Dufresne, Annie	J'en suis! (1997)	Sophie	18
3780723	Francisco, Lady	Jogo da Vida		-1
3816967	Glenn, Carrick	Burning, The (1981)	Sally	7
3845513	Gutiérrez Caba, Julia	Guardiamarinas, Los (1967)		2
3859803	Hansen, Valda	Night of the Ghouls (1959)	Sheila (the White Ghost)	4
3864289	Harris, Marjorie	No Code of Conduct (1998)	Officer Andrea Johnson	10
3883882	Herzog, Rosemarie	Polizeiruf 110 - Drei Flaschen Tokajer (1989) (TV)		-1
3887640	Hill, Thelma	Old Barn, The (1929)		4
3914574	Ireland, Kylie	No Man's Land 32 (2000) (V)		-1
3916104	Ishino, Yôko	Magnitude (1997)		-1
3941732	Jørgensen, Ann Eleonora	2 ryk og 1 aflevering (2003)	Mathildes mor	8
3943318	Kaisen, Germaine	Fille de Delft, La (1914)	Kaatje Schoonejans	5
3955250	Kehlau, Marianne	Frauen morden leichter		-1
3963904	Khote, Shubha	Pyaar Diwana Hota Hai (2002)	Roadside vendor	-1
3975029	Knudsen, Sidse Babett	Fakiren fra Bilbao (2004)	Louise	1
4042434	Locker, Gerlinde	Mädel aus dem Böhmerwald, Das (1965)	Kathrin	1
4046573	Long, Nia	Secret Laughter of Women, The (1999)	Nimi Da Silva	2
4050081	Lorring, Lotte	Gefahren der Brautzeit (1929)	Yvette	-1
4054253	Lucas, Vivian	Roi des cons, Le (1981)  (as Viviane Lucas)	Une secrétaire	31
4079496	Mansfield, Susan	Drivetime, The (1995)	Zola	-1
4119764	Melendrez, Dorothy	Saibôgu 009	Francoise Arnoul/Cyborg 003	2
4149929	Moore, Barrett	Shut Up and Blow Me! 23 (2000) (V)		-1
4160329	Mortland, Kitty	Dancing with Gaia (2004) (V)	Emily Laird	-1
4194119	Noto, Erina	Dokomademo ikô (1999)	Abe, Chisato	5
4206568	Olivier, Lizbeth	Comezón a la Mexicana (1989)		23
4224351	Park, Jin-hie (I)	Byeol (2003)	Su-yeon	2
4252573	Plato, Dana	51st Annual Primetime Emmy Awards, The (1999) (TV)  (archive footage)	Herself, Memorial Tribute	-1
4264940	Prieto, María José	Corazón pirata	Natalia Condell	4
4271576	Quigley, Linnea	Each Time I Kill (2002)	Aunt Belle	-1
4273312	Racette, Francine	Grand rock, Le (1969)		-1
4296508	Richards, Keli	Outrageous Orgies 5 (1989) (V)		-1
4301402	Ritter, Anke	Bella Block - Tödliche Nähe (2002) (TV)		-1
4308950	Rodrigues, Karin	Olga del Volga (2004)	Anna Freud	-1
4397244	Soffian, Oma	Sinister Urge, The (1961)	Nurse	-1
4398452	Soldevila, Laly	De profesión, sus labores (1970)		-1
4418645	Stevens, Ruth	Farmors revolution (1933)	Eva	8
4419633	Stewart, Cathy	Charlotte, mouille sa culotte! (1980)		3
4462087	Timberg, Nathália	Cara a Cara	Renée	-1
4484136	Uribe, Merle	Banda del golondrino, La (1988)		-1
4499845	Verden, Pam	Dead London (1996)	Pensioner	7
4508075	Viveros, Celia	Feria de San Marcos, La (1958)		9
4515585	Wagner, Nicole	Schwebeleben (2003)	Birte	-1
4539017	Wiese, Marlene	Reise nach Mallorca, Die	Monika	-1
4542524	Williams, Gloria (I)	Undercover Doctor (1939)	Nurse	-1
4546570	Winans, CeCe	Christmas in Washington (1996) (TV)	Herself	-1
4552452	Wood, Judith	They Met in Bombay (1941)	Mrs. Ames, Nurse	-1
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genre (id, movie_id, genre) FROM stdin;
322	Alquibla	Documentary
696	Angela ja ajan tuulet	Drama
2234	Años perdidos, Los	Drama
2399	Banda de Cantaniño, La	Family
2400	Banda de Cantaniño, La	Musical
3164	Adventures of Mark & Brian, The	Comedy
3180	Adventures of Sam, The	Family
5283	Bradys, The	Drama
5342	BreakThrough: The Changing Face of Science in America	Documentary
6392	Coronet Blue	Mystery
6744	Cutter to Houston	Drama
6875	Fjernsyn	Family
7416	Funny Boners	Family
7689	General Hospital	Drama
7690	General Hospital	Drama
8150	Grande Família, A	Comedy
8151	Grande Família, A	Comedy
8159	Grandes ilusiones	Drama
8405	H.O.P.L.A.	Family
10031	Edge of Night, The	Crime
10032	Edge of Night, The	Drama
10070	Eglimata	Comedy
10892	Intrepid Journeys	Adventure
10893	Intrepid Journeys	Documentary
11371	Kinyoubi no tsumatachie II: Otokotachi yo genki kai?	Drama
11372	Kinyoubi no tsumatachie II: Otokotachi yo genki kai?	Romance
11609	Koze	Drama
12135	He Wai	Musical
12136	He Wai	Comedy
12137	He Wai	Family
12251	Help!	Comedy
12562	Hjem til fem	Comedy
12563	Hjem til fem	Drama
13013	Jesse Hawkes	Adventure
13692	Keep Posted	Documentary
13740	Meister Eder und sein Pumuckl	Comedy
13741	Meister Eder und sein Pumuckl	Family
13924	Mi marido y mi padrino	Comedy
15366	New Adventures of Lucky Jim, The	Comedy
15854	Littles, The	Animation
16616	Man Alive	Documentary
18203	Ramayan	Adventure
18204	Ramayan	Drama
18205	Ramayan	Fantasy
19904	Over Time	Drama
19905	Over Time	Romance
20239	Patty's Posse	Documentary
20240	Patty's Posse	Family
22345	Se på tegnsprog	Family
22430	Slapstick and Old Lace	Comedy
24861	Toda una vida	Drama
25270	Trials of Rosie O'Neill, The	Drama
25724	Un per l'altre, L'	Comedy
26935	White Peak Farm	Drama
27538	Yokai ningen bem	Horror
27618	Young Sherlock: The Mystery of the Manor House	Family
27619	Young Sherlock: The Mystery of the Manor House	Drama
28765	100 Pigmies and Andy Panda (1940)	Family
28766	100 Pigmies and Andy Panda (1940)	Animation
28767	100 Pigmies and Andy Panda (1940)	Short
28768	100 Pigmies and Andy Panda (1940)	Comedy
29383	1857 (1946)	Drama
29613	2 On 1 (1998) (V)	Adult
30109	2º Centenário do Jardim Guerra Junqueiro (1952)	Documentary
30374	34-j skoryj (1981)	Action
30480	4 aventures de Reinette et Mirabelle (1987)	Comedy
30481	4 aventures de Reinette et Mirabelle (1987)	Drama
30900	58.2/B (1958)	Short
31405	9:30 (2003)	Short
31520	A kuca zvoni li zvoni (1971)	Documentary
31521	A kuca zvoni li zvoni (1971)	Short
31729	A&E Biography: Caligula - Reign of Madness (2000) (TV)	Documentary
33327	Accidente (1965)	Drama
33328	Accidente (1965)	Short
34207	Addicted to Love (1988)	Adult
34224	Addio a Enrico Berlinguer, L' (1984)	Documentary
34225	Addio a Enrico Berlinguer, L' (1984)	Short
34303	Adieu au pirate, L' (2003)	Short
35210	Aeg maha (1984)	Animation
35211	Aeg maha (1984)	Short
36501	Agroindustrijska proizvodnja hrane u Jugoslaviji (1977)	Documentary
36502	Agroindustrijska proizvodnja hrane u Jugoslaviji (1977)	Short
36553	Agujetas en el alma (1998)	Comedy
37046	Air-Tight (1931)	Comedy
37047	Air-Tight (1931)	Short
37075	Aircraft Wood Repair, Part 2: Stiffener Patch (1943)	Documentary
37188	Ajia himitsu keisatsu (1966)	Drama
38097	Aldrig mera krig (1984)	Documentary
38098	Aldrig mera krig (1984)	Short
39502	All Mine to Give (1958)	Drama
39565	All or Nothing (1998)	Short
39798	All Wet (1930)	Comedy
39799	All Wet (1930)	Short
41197	Amantes frios, Los (1978)	Comedy
41198	Amantes frios, Los (1978)	Drama
41207	Amanti (1968)	Drama
41208	Amanti (1968)	Romance
41232	Amants du Tage, Les (1955)	Romance
41233	Amants du Tage, Les (1955)	Drama
41256	Amar Raj (1946)	Musical
41289	Amartoles (1962)	Crime
41290	Amartoles (1962)	Drama
41382	Amatrice violée, L' (1993)	Adult
42434	Amiche del cuore, Le (1992)	Drama
42849	Amore imperfetto, L' (2002)	Drama
43038	Amoureux, Les (1994)	Drama
43039	Amoureux, Les (1994)	Romance
43536	Anal-Europe Series 7, The (1994) (V)	Adult
43931	Andel milosrdenství (1994)	Romance
43932	Andel milosrdenství (1994)	War
43933	Andel milosrdenství (1994)	Drama
44150	Andy Clyde Gets Spring Chicken (1939)	Comedy
44151	Andy Clyde Gets Spring Chicken (1939)	Short
45218	Anna - annA (1993)	Family
45219	Anna - annA (1993)	Fantasy
47201	Arabic Numeral Series 10 (1981)	Short
48104	Ata quheshin Arbër (1973)	Documentary
48105	Ata quheshin Arbër (1973)	Short
48402	Atomic Kid, The (1954)	Comedy
48403	Atomic Kid, The (1954)	Sci-Fi
49229	Assman 5 (1998) (V)	Adult
49543	At Bertram's Hotel (1987) (TV)	Crime
49544	At Bertram's Hotel (1987) (TV)	Mystery
51496	Auction Block, The (1917)	Drama
52594	Babes in the Woods (1911)	Short
53039	Babyroussa the Babiroussa (1994)	Short
53093	Bach détective (1936)	Drama
53108	Bacharach: One Amazing Night (1998) (TV)	Music
53298	Back Stage (1923)	Family
53299	Back Stage (1923)	Comedy
53300	Back Stage (1923)	Short
54108	Ava's Magical Adventure (1994)	Comedy
54109	Ava's Magical Adventure (1994)	Drama
54110	Ava's Magical Adventure (1994)	Family
55464	Basta Tricycle Driver... Sweet Lover (2000)	Comedy
55515	Bat Whispers, The (1930)	Crime
55516	Bat Whispers, The (1930)	Thriller
55517	Bat Whispers, The (1930)	Horror
55518	Bat Whispers, The (1930)	Drama
55519	Bat Whispers, The (1930)	Mystery
56336	Bare Ass Beach (1994) (V)	Adult
56529	Bargain, The (1912)	Drama
56530	Bargain, The (1912)	Short
57758	Ballet mécanique (1924)	Short
58445	Bangkok-Africa-Turkey Connection (1993)	Adult
59617	Bell Hoppy (1954)	Animation
59618	Bell Hoppy (1954)	Family
59619	Bell Hoppy (1954)	Short
59620	Bell Hoppy (1954)	Comedy
61375	Beer (1985)	Comedy
61445	Before and After the Monsoon (1985) (TV)	Short
61630	Behind Closed Doors (2002) (TV)	Drama
61717	Behind the Green Door, the Sequel (1986)	Adult
62631	Best of Breasts 3 (1995) (V)	Adult
63095	Big Idea, The (1934)	Comedy
63096	Big Idea, The (1934)	Short
63232	Big Pile, The (1985)	Short
63233	Big Pile, The (1985)	Comedy
63433	Big Tip Off, The (1955)	Crime
65356	Big Boss (1965)	Action
66012	Black Thunder (1997)	Action
66013	Black Thunder (1997)	Drama
66242	Blacksmith, The (1922)	Comedy
66243	Blacksmith, The (1922)	Short
67223	Bikini Beach (1993) (V)	Adult
67571	Billy Joel: The Essential Video Collection (2001) (V)	Music
68189	Bird's a Bird, A (1915)	Short
68962	Black Butt Sisters Do New Orleans, The (1995) (V)	Adult
69250	Blume der Hausfrau, Die (1999)	Documentary
69305	Blutjunge Verführerinnen 2 (1972)	Comedy
69784	Bobby Jones, Stroke of Genius (2004)	Drama
70116	Boobs in Arms (1940)	Comedy
70117	Boobs in Arms (1940)	Short
70458	Booty and the Beast (1953)	Comedy
70459	Booty and the Beast (1953)	Short
71655	Bondage of Barbara, The (1919)	Drama
73680	Brigitte Nielsen: The E! True Hollywood Story (2000) (TV)	Documentary
74292	Bromo and Juliet (1926)	Comedy
74293	Bromo and Juliet (1926)	Short
74732	Boyclops (2004)	Comedy
74857	Boys of St. Vincent, The (1992) (TV)	Drama
75096	Brand from Burning, The (1913)	Short
75097	Brand from Burning, The (1913)	Drama
75611	Breakin' (1984)	Musical
75612	Breakin' (1984)	Drama
77408	Bulung-Bulungan (1962)	Drama
77853	Burglar, The (1928)	Short
77854	Burglar, The (1928)	Comedy
78129	Burnt Wings (1920)	Drama
78134	Burr's Novelty Review No. 1 (1922)	Animation
78135	Burr's Novelty Review No. 1 (1922)	Comedy
78136	Burr's Novelty Review No. 1 (1922)	Short
81529	Cactus Jim's Shopgirl (1915)	Comedy
81530	Cactus Jim's Shopgirl (1915)	Short
81531	Cactus Jim's Shopgirl (1915)	Western
81657	Cafe Fantasy (1996)	Adult
81871	Caja 507, La (2002)	Action
81872	Caja 507, La (2002)	Drama
81873	Caja 507, La (2002)	Thriller
81985	Caleidoscopio, El (2004)	Short
82395	Buzos diamantistas, Los (1988)	Drama
82396	Buzos diamantistas, Los (1988)	Short
82851	Bücher (1986)	Documentary
82852	Bücher (1986)	Short
83489	Cap'n Eri (1915)	Drama
84648	Cat in the Hat, The (1971) (TV)	Animation
84649	Cat in the Hat, The (1971) (TV)	Family
84650	Cat in the Hat, The (1971) (TV)	Fantasy
84651	Cat in the Hat, The (1971) (TV)	Short
84755	Cat's Whiskers, The (1925)	Comedy
84756	Cat's Whiskers, The (1925)	Short
84914	Carol (1970)	Documentary
84915	Carol (1970)	Short
85562	Casamiento de Chichilo, El (1938)	Comedy
85960	Caravan (2002)	Comedy
85961	Caravan (2002)	Short
85999	Card of Destiny (1928)	Short
86000	Card of Destiny (1928)	Western
86452	Carnal Passion (2001) (V)	Drama
86504	Carnaval em Lourenço Marques (1964)	Documentary
86531	Carnaval no Paris, O (1933)	Documentary
89729	Chann Pardesi (1980)	Drama
89781	Chansons ont leur destin (1953)	Short
90753	Chwila wspomnien: rok 1956/1957 (1964)	Short
91177	Chirveuli mezoblebi (1945)	Comedy
91970	Chikago in zwei Hälften (1968)	Documentary
91971	Chikago in zwei Hälften (1968)	Short
93148	Cheveux de ma mère, Les (2004)	Drama
93149	Cheveux de ma mère, Les (2004)	Short
93410	Chickboxin Underground (1999)	Action
93411	Chickboxin Underground (1999)	Comedy
95460	Clemi flüchtet (1994)	Drama
95461	Clemi flüchtet (1994)	Short
97665	Cold Clues: Guilty Conscience (2002) (TV)	Crime
97666	Cold Clues: Guilty Conscience (2002) (TV)	Documentary
97667	Cold Clues: Guilty Conscience (2002) (TV)	Short
98612	Comrades of Summer, The (1992) (TV)	Comedy
98921	Concours eurovision (2002) (TV)	Music
99889	Como Se Fabrica o Sabão (1935)	Documentary
100124	Corrida de Vicente Segura y Cocherito de Bilbao (1911)	Documentary
100125	Corrida de Vicente Segura y Cocherito de Bilbao (1911)	Short
100182	Corrina, Corrina (1994)	Drama
100940	Cook's Revenge (1916)	Comedy
100941	Cook's Revenge (1916)	Short
102441	Cowboy uit Iran (1999) (TV)	Drama
102984	Consultation, La (1985)	Short
103046	Conte à regler (1978)	Short
103102	Contestatarios (Poemágenes 1) (1975)	Short
104713	Cumback Pussy 21 (1999) (V)	Adult
105167	Cricket Requiem (1999)	Short
105301	Crime Takes a Holiday (1938)	Drama
105667	Critical Assembly (2003) (TV)	Action
105668	Critical Assembly (2003) (TV)	Drama
105669	Critical Assembly (2003) (TV)	Thriller
105711	Crni kisobran (1969)	Documentary
105712	Crni kisobran (1969)	Short
105890	Cross Country Run (1929)	Comedy
105891	Cross Country Run (1929)	Short
105926	Cross, The (1911)	Drama
105927	Cross, The (1911)	Short
106433	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Drama
106670	Crónica de un extraño (1998)	Drama
107592	Daikaijû Gamera (1965)	Sci-Fi
108204	Dance Comique (1945)	Short
108205	Dance Comique (1945)	Music
108950	Custody (2000)	Comedy
108951	Custody (2000)	Short
108954	Customers Wanted (1939)	Family
108955	Customers Wanted (1939)	Comedy
108956	Customers Wanted (1939)	Animation
108957	Customers Wanted (1939)	Short
113375	Dead Wrong: The John Evans Story (1984) (TV)	Crime
113376	Dead Wrong: The John Evans Story (1984) (TV)	Drama
113448	Deadlock: A Passion for Murder (1997)	Thriller
114024	Death of a Demon, The (2000)	Short
114383	Dernier mot, Le (1991) (TV)	Drama
114428	Derren Brown Plays Russian Roulette Live (2003) (TV)	Horror
114453	Dertli irmak (1958)	Drama
114723	Desert of Fear (1993) (V)	Adult
117313	Demon Possessed (1993)	Horror
117356	Demonismeni, I (1975)	Horror
117357	Demonismeni, I (1975)	Mystery
118310	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)	Documentary
118802	Do Not Disturb (1999)	Action
118803	Do Not Disturb (1999)	Thriller
119921	Diva et pianiste (2000)	Short
120501	Dinner Date 1 (2002) (TV)	Short
121249	Don Juan (1998)	Comedy
121250	Don Juan (1998)	Romance
122809	Dottoressa sotto il lenzuolo, La (1976)	Comedy
122904	Double Deal (1950)	Drama
122927	Double Down (1993) (V)	Adult
124343	Dollar's Worth, A (1921)	Comedy
124344	Dollar's Worth, A (1921)	Short
125010	Drag My Feat (2003)	Short
125181	Dragon, the Young Master (1978)	Drama
125564	Duhat na bashta mi (1998) (TV)	Drama
125772	Dumb Luck (1926)	Comedy
125773	Dumb Luck (1926)	Short
125820	Dumm gelaufen (1997)	Comedy
126305	Dronningens nytårstale (1999) (TV)	Documentary
126306	Dronningens nytårstale (1999) (TV)	Short
126468	Drugi kongres komunisticke partije Srbije (1949)	Documentary
127848	Drittes Reich, Ein (1975)	Short
127986	Eddie Izzard: Circle (2002) (V)	Comedy
127987	Eddie Izzard: Circle (2002) (V)	Documentary
128128	Edge, The (1975)	Documentary
128513	Egoists, The (2003)	Comedy
128514	Egoists, The (2003)	Drama
128850	Dva patrona na mamonta (1990)	Drama
130440	Eleven P.M. (1928)	Drama
130947	East Side, West Side (1927)	Drama
131387	Eclipse (1993) (V)	Adult
132206	End of the Circle, The (1913)	Drama
132207	End of the Circle, The (1913)	Short
132355	Entre Mulheres e Espiões (1961)	Comedy
132436	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Thriller
133117	Erotic Express (1983)	Adult
134401	Em Cada Coração um Punhal (1970)	Comedy
134918	Europa på spil (2002) (TV)	Documentary
135822	Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Drama
137645	Establishing a Just Society (1972-1984) (1994) (TV)	Documentary
138609	Face to Face (1990) (TV)	Adventure
138754	Fade to Reality (1995)	Documentary
138755	Fade to Reality (1995)	Short
138776	Fado do Emigrante (1947)	Documentary
138857	Failure at Fifty, A (1940)	Short
139057	Famous Ride, The (1960)	Animation
139058	Famous Ride, The (1960)	Short
140515	Familia Vila, La (1950)	Drama
141647	Feliz cumpleaños (1987)	Comedy
141648	Feliz cumpleaños (1987)	Short
141816	Femme papillon, La (2003)	Animation
141817	Femme papillon, La (2003)	Short
142730	Fast perfekt verlobt (2003) (TV)	Comedy
143455	Fiabe della nonna, Le (1916)	Drama
143506	Fiction Makers, The (1968)	Adventure
143507	Fiction Makers, The (1968)	Crime
143508	Fiction Makers, The (1968)	Mystery
143762	Fiesta Fiasco (1967)	Family
143763	Fiesta Fiasco (1967)	Animation
143764	Fiesta Fiasco (1967)	Short
143765	Fiesta Fiasco (1967)	Comedy
144348	Fazan II (1969)	Documentary
144349	Fazan II (1969)	Short
145216	Finanzen des Großherzogs, Die (1934)	Comedy
145442	Finn & Co. (2002) (V)	Family
145443	Finn & Co. (2002) (V)	Music
145917	First Child on the Moon (2001)	Short
146347	Flat Harmony (1917)	Short
146348	Flat Harmony (1917)	Comedy
146550	Fleshtones (1985) (V)	Adult
146729	Flight Lieutenant (1942)	Drama
148059	Fish Story, A (1998)	Family
148060	Fish Story, A (1998)	Animation
148061	Fish Story, A (1998)	Short
148202	Fishing with Gandhi (1998)	Comedy
148714	For Those Who Teach the Art of Peace (2003)	Short
149206	Forgotten (1933)	Drama
150313	FN: Première traversée du Sahara en moto (1933)	Documentary
150802	Four Simples Rules (2003)	Short
152196	For the Good of Her Men (1912)	Drama
152197	For the Good of Her Men (1912)	Short
152250	Freight Train (1898)	Short
152275	Fremd in diesem Land (1981)	Documentary
152859	Friendship Begins at Home (1949)	Drama
152860	Friendship Begins at Home (1949)	Short
153116	From Dime to Dime (1960)	Animation
153117	From Dime to Dime (1960)	Short
153341	Fun in the Glenwood Springs Pool (1902)	Short
154292	Fratelli e sorelle (1991)	Drama
155294	Fräulein (1958)	War
156677	Férias de Laura (1986)	Comedy
156839	Fünfzig Minuten (2001)	Short
156840	Fünfzig Minuten (2001)	Comedy
157096	Gag and Baggage (1952)	Animation
157097	Gag and Baggage (1952)	Short
157495	Geheime Lüste blutjunger Mädchen (1978)	Adult
159462	Ghost in the House (1988)	Family
159463	Ghost in the House (1988)	Comedy
159464	Ghost in the House (1988)	Fantasy
159465	Ghost in the House (1988)	Romance
159709	Ghosts of the Past (1991) (TV)	Music
160053	Gigli (2003)	Crime
160054	Gigli (2003)	Comedy
160055	Gigli (2003)	Romance
161918	Girls (1919)	Comedy
161919	Girls (1919)	Romance
162631	Good, the Bad & the Innocent, The (2001)	Action
162632	Good, the Bad & the Innocent, The (2001)	Crime
162633	Good, the Bad & the Innocent, The (2001)	Drama
166108	Good Sport, The (1918)	Comedy
166241	Greatest, The (1977)	Drama
168087	Grüne Heinrich, Der (1994)	Drama
168257	Guardian's Luck, A (1912)	Comedy
168258	Guardian's Luck, A (1912)	Short
169067	Grand Central Murder (1942)	Film-Noir
169068	Grand Central Murder (1942)	Mystery
169364	Grandma Didn't Wave Back (1984) (TV)	Drama
169365	Grandma Didn't Wave Back (1984) (TV)	Family
169366	Grandma Didn't Wave Back (1984) (TV)	Short
169665	Gulliver's Travels (2004)	Animation
169666	Gulliver's Travels (2004)	Fantasy
169816	Gun, a Car, a Blonde, A (1997)	Drama
169817	Gun, a Car, a Blonde, A (1997)	Thriller
169967	Guns of August, The (1964)	Documentary
169968	Guns of August, The (1964)	War
170932	Happy Go Lovely (1951)	Comedy
170933	Happy Go Lovely (1951)	Musical
170934	Happy Go Lovely (1951)	Romance
170975	Happy Hooligan Has Troubles with the Cook (1901)	Comedy
170976	Happy Hooligan Has Troubles with the Cook (1901)	Short
171435	Halfway to Heaven and Hell (2003)	Short
172126	Handsworth Songs (1986)	Documentary
172130	Handvoll Gras, Eine (2000)	Drama
172839	Haida Carver (1964)	Documentary
172840	Haida Carver (1964)	Short
174123	Hard to Thrill (1991) (V)	Adult
174610	Harry and Max (2004)	Comedy
174611	Harry and Max (2004)	Drama
174772	Harvest (1953) (TV)	Drama
175140	He Won a Ranch (1914)	Comedy
175141	He Won a Ranch (1914)	Short
175589	Heart of New York, The (1901)	Documentary
175590	Heart of New York, The (1901)	Short
177125	Heten, mint a gonoszok (1943)	Comedy
177247	Hey There, It's Yogi Bear (1964)	Family
177248	Hey There, It's Yogi Bear (1964)	Animation
178190	Here I Am (1962)	Short
178984	Highway 61 (1991)	Comedy
179069	Hija del hacendado, La (1997) (V)	Action
179855	Hemliga Svensson (1933)	Comedy
179870	Hemmeligheder (1997)	Drama
180559	Holt of the Secret Service (1941)	Crime
180560	Holt of the Secret Service (1941)	Action
180561	Holt of the Secret Service (1941)	Drama
180760	Hombres cultos, Los (1972)	Documentary
180761	Hombres cultos, Los (1972)	Short
180948	Home Is the Hero (1959)	Drama
182230	Hobbies: Model Bus Collector (2002)	Short
182415	Hoempapa (1965)	Animation
182418	Hoero! Tekken (1982)	Action
182419	Hoero! Tekken (1982)	Crime
182420	Hoero! Tekken (1982)	Drama
182761	Holiday for Sinners (1952)	Drama
183387	Historias Cortas de Madrid (1999)	Comedy
183388	Historias Cortas de Madrid (1999)	Short
183780	Hook Up, The (2003)	Short
184776	Hot Foot (1922)	Comedy
184777	Hot Foot (1922)	Short
184778	Hot Foot (1943)	Comedy
184779	Hot Foot (1943)	Short
187815	I treti (1978) (TV)	Drama
187909	I Was a Communist for the FBI (1951)	Drama
187910	I Was a Communist for the FBI (1951)	Film-Noir
188575	Huan le ren jian (1959)	Drama
189724	I Could Go on Singing (1963)	Drama
189725	I Could Go on Singing (1963)	Musical
189918	Human Hounds (1916)	Short
190064	Humphrey Bogart and Lauren Bacall (2000) (TV)	Documentary
190065	Humphrey Bogart and Lauren Bacall (2000) (TV)	Short
190263	Hungry Bachelors Club, The (1999)	Comedy
190264	Hungry Bachelors Club, The (1999)	Drama
190265	Hungry Bachelors Club, The (1999)	Romance
190515	Hurlevent (1985)	Drama
190516	Hurlevent (1985)	Romance
190517	Hurlevent (1985)	Mystery
190743	Idu Namma Alu (1988)	Comedy
190919	Ifugao (1954)	Drama
191272	Ildikó Szabó (1999)	Documentary
191478	Im Auto durch zwei Welten (1929)	Documentary
191949	Imphy, capitale de la France (1995)	Short
193040	In the City (2001)	Comedy
193041	In the City (2001)	Short
193537	Ibiza (1962)	Documentary
193538	Ibiza (1962)	Short
194569	Inauguration de la statue Rogier, Place de la Liberté (1897)	Documentary
195078	Inner Glow of Things, The (2003)	Short
196049	Indio Pluma Roja, El (1975)	Short
196314	Infidelities (1983) (TV)	Drama
197075	Interview (1992)	Drama
197182	Intimate Portrait: Anjelica Huston (1998) (TV)	Documentary
197194	Intimate Portrait: Bonnie Franklin (2003) (TV)	Documentary
197195	Intimate Portrait: Bonnie Franklin (2003) (TV)	Family
197947	Isis Blue 2 (1998) (V)	Adult
199109	Ispanska muha (1998)	Action
199110	Ispanska muha (1998)	Comedy
199534	It's a Boy (1920)	Short
199535	It's a Boy (1920)	Comedy
201122	Jeolbeun poong gin ibyeol (1984)	Drama
201143	Jeolmeun shigyetab (1982)	Drama
201144	Jeolmeun shigyetab (1982)	Romance
201468	Jack o kavalaris (1979)	Comedy
202050	Jake 2.0: The Tech (2003) (TV)	Sci-Fi
202672	Jiang shi zhi zun (1987)	Horror
203782	Jawbreakers (2001) (V)	Adult
204606	Junky's Christmas, The (1993)	Animation
204607	Junky's Christmas, The (1993)	Short
204742	Just a Little Bull (1940)	Animation
204743	Just a Little Bull (1940)	Short
204917	Jiraiya (Ninjutsu sanyôden) (1937)	Action
204918	Jiraiya (Ninjutsu sanyôden) (1937)	Drama
205439	John and the Missus (1987)	Drama
206855	Juan Farías, el super hincha (2000)	Short
206856	Juan Farías, el super hincha (2000)	Documentary
208693	Karaoglan - Camoka'nin intikami (1966)	Adventure
209211	Just Jim (1915)	Drama
209929	Kadambari (1976)	Drama
209930	Kadambari (1976)	Romance
210662	Keep Your Mouth Shut (1944)	Animation
210663	Keep Your Mouth Shut (1944)	Short
210664	Keep Your Mouth Shut (1944)	War
211361	Khedda (1929)	Documentary
211509	Kibris volkani (1965)	Drama
211510	Kibris volkani (1965)	War
212663	Knight Rider (1982) (TV)	Thriller
213192	Killers, The (1964)	Crime
213193	Killers, The (1964)	Drama
215067	König Khandobas Jagdausflug (1992)	Documentary
216124	Komischer Heiliger, Ein (1979)	Comedy
216551	Korea (1954)	Documentary
216937	Krajiske brigade (1952)	Documentary
216938	Krajiske brigade (1952)	Short
218203	Laser Moon (1993)	Thriller
219976	Laddie (1940)	Drama
220124	Ladrona, La (1954)	Drama
220554	Lady, Let's Dance (1944)	Musical
222868	Leave It to Cleavage 2 (1989)	Adult
223673	Lei ting zhan jing (2000)	Action
223892	Lenin z Krakowa (1997)	Short
223893	Lenin z Krakowa (1997)	Documentary
224657	Licensed to Queer (2003)	Comedy
224658	Licensed to Queer (2003)	Short
225419	Little Women in Transit (1996)	Short
226546	Lionheart (1990)	Action
227133	Life Without Death (2000)	Documentary
227508	Lights! Camera! Orgy! (1979)	Adult
230830	Looking in the Fishbowl (2001)	Comedy
230831	Looking in the Fishbowl (2001)	Short
231913	Love Potion (1987)	Thriller
233579	Maa Aur Mamta (1970)	Drama
235077	Lovely Way to Die, A (1968)	Crime
235078	Lovely Way to Die, A (1968)	Drama
235700	Maechun 3 (1993)	Crime
235876	Magdanas lurja (1955)	Drama
236235	Magical Galatea, A (1907)	Short
236343	Magkaaway (1978)	Action
236944	Main Awara Hoon (1983)	Drama
236945	Main Awara Hoon (1983)	Family
236980	Main Street Kid, The (1948)	Comedy
236981	Main Street Kid, The (1948)	Fantasy
237599	Malfunction Boulevard (2003)	Short
238027	Mammary Memories (1977)	Short
238704	Making of 'The Prince and the Pauper', The (1978) (TV)	Documentary
238758	Making of a Male Model (1983) (TV)	Drama
238759	Making of a Male Model (1983) (TV)	Romance
239049	Marine Crucible (1997)	Adult
239618	Married? (1926)	Comedy
239791	Man from New Mexico, The (1932)	Western
240276	Man Who Could Cheat Death, The (1959)	Horror
240277	Man Who Could Cheat Death, The (1959)	Drama
240467	Man with No Shoes, The (1992)	Short
240757	Mapping for Defence (1957)	Short
240758	Mapping for Defence (1957)	Documentary
241240	Margots Freier (1919)	Short
241312	Maria på Kvarngården (1945)	Drama
241502	Man's Soul, A (1914)	Short
242739	Maîtresse pour couple (1979)	Adult
243101	Meaningful Sex (2000) (TV)	Comedy
243102	Meaningful Sex (2000) (TV)	Drama
243103	Meaningful Sex (2000) (TV)	Short
243404	Matchless (1973)	Drama
244080	Mechanical Doll, The (1901)	Fantasy
244081	Mechanical Doll, The (1901)	Short
244433	Medved (1961)	Comedy
244641	Meeting with... (1991) (TV)	Documentary
244642	Meeting with... (1991) (TV)	Short
244919	Marta y alrededores (1999)	Comedy
245054	Martori disparuti (1988)	Drama
245074	Martyrdom of Philip Strong, The (1916)	Drama
245221	Mary Shaffer: A Natural Force (1995)	Short
245222	Mary Shaffer: A Natural Force (1995)	Documentary
245691	Masseur (1998)	Short
245796	Meine Schwester Maria (2002)	Drama
246121	Melody Lingers On, The (1935)	Musical
246305	Memorias de fin de siglo (1999)	Documentary
246353	Memories of Old Manila (1993)	Short
246387	Memory of Berlin (1998) (TV)	Documentary
248213	Midnight Intruders (1987)	Romance
248214	Midnight Intruders (1987)	Thriller
249601	Minareti i portali (1952)	Documentary
249603	Minas de Angola (1953)	Documentary
250623	Mistry - altid den bedste (1996) (TV)	Documentary
251984	Miei più cari amici, I (1998)	Comedy
251985	Miei più cari amici, I (1998)	Thriller
251988	Miel et cendres (1996)	Drama
252018	Mies Marseillesta (1937)	Adventure
252019	Mies Marseillesta (1937)	Comedy
252547	Milhaeng (1975)	Action
252548	Milhaeng (1975)	Crime
252549	Milhaeng (1975)	Drama
253134	Moderne Zyklop, Der (2002)	Short
253135	Moderne Zyklop, Der (2002)	Animation
253198	Moeder zonder vrees (1969)	Documentary
253242	Moglie in vacanza... l'amante in città, La (1980)	Comedy
253400	Moje miasto (2002) (TV)	Drama
253427	Mokmeyeo bulleobwado (1969)	Drama
254780	Mondo candido (1975)	Adventure
254781	Mondo candido (1975)	Comedy
254990	Monique et Christiane (1976)	Documentary
254991	Monique et Christiane (1976)	Short
255179	Monosabio, El (1977)	Drama
255235	Monsieur mon chauffeur (1926)	Comedy
256434	Mr. Ima Jonah's Home Brew (1921)	Animation
256435	Mr. Ima Jonah's Home Brew (1921)	Comedy
256436	Mr. Ima Jonah's Home Brew (1921)	Short
256733	Mrs William Dixon (2002)	Short
257163	Muppet Movie, The (1979)	Family
257164	Muppet Movie, The (1979)	Comedy
257165	Muppet Movie, The (1979)	Musical
259095	Mujer de Benjamín, La (1991)	Comedy
259409	Mulmangcho (1960)	Drama
259410	Mulmangcho (1960)	Romance
260416	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Music
260604	Musical Offering from the Vatican: A Papal Concert, A (1992) (TV)	Documentary
260605	Musical Offering from the Vatican: A Papal Concert, A (1992) (TV)	Music
262000	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Comedy
262001	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Romance
263186	Narodna biblioteka Srbije pod novim krovom (1976)	Documentary
263187	Narodna biblioteka Srbije pod novim krovom (1976)	Short
263264	Nasa tamnovanja (1954)	Documentary
263265	Nasa tamnovanja (1954)	Short
263615	Nationaal songfestival (1989) (TV)	Music
264643	Never Again (1915)	Comedy
264644	Never Again (1915)	Short
264645	Never Again (1915)	Western
266253	Nebraska Supersonic (2001)	Comedy
266255	Nebunia capetelor (1997) (TV)	Documentary
266312	Ned Kelly (1970)	Western
266313	Ned Kelly (1970)	Action
266314	Ned Kelly (1970)	Crime
266969	New Orleans After Dark (1958)	Crime
268236	Next (1912)	Comedy
268237	Next (1912)	Short
268611	Nicht alles was fliegt, ist ein Vogel (1979)	Animation
269890	No Fool Like an Old Fool (1914)	Comedy
269961	No Limits 4 (2003) (V)	Adult
270070	Not Tonight Henry (1961)	Comedy
271110	No Reservations (1995) (V)	Adult
271211	No te engañes corazón (1937)	Comedy
271212	No te engañes corazón (1937)	Drama
271498	Nobody's Perfect (2002)	Comedy
271499	Nobody's Perfect (2002)	Drama
271551	Noch minderjährig (1957)	Drama
271695	Nocna kafana (1967) (TV)	Drama
271696	Nocna kafana (1967) (TV)	Short
272131	Number's Alive! (1996) (TV)	Family
272972	Noor pensionär (1972) (TV)	Comedy
273255	North West One (1999)	Short
273325	Northwest Stampede (1948)	Western
273502	Not a Penny More, Not a Penny Less (1990) (TV)	Drama
274125	Oflag 64 (2001)	Documentary
274126	Oflag 64 (2001)	War
275254	On Prescription Only (1960)	Documentary
275255	On Prescription Only (1960)	Short
275855	Old English (1930)	Drama
276273	Në gjurmët e shekujve (1960)	Documentary
276647	Obey the Law (1924)	Comedy
276648	Obey the Law (1924)	Short
278132	On the High Card (1921)	Western
279294	One Round Jeff (1920)	Animation
279295	One Round Jeff (1920)	Comedy
279296	One Round Jeff (1920)	Short
279751	Only Woman in Town, The (1912)	Short
281178	Pals (1911)	Drama
281179	Pals (1911)	Short
281227	Palácio de Vênus (1980)	Drama
281244	Pamela Congreve (1914)	Drama
281471	Pandora's Clock (1996) (TV)	Action
281472	Pandora's Clock (1996) (TV)	Thriller
281612	Overland Riders (1946)	Western
282421	Pai Tirano, O (1941)	Comedy
282559	Oushou (1948)	Drama
283435	Overboard (1978) (TV)	Drama
283743	Other Side of Chelsea, The (1993) (V)	Adult
283809	Otherwise Known as Sheila the Great (1989) (TV)	Drama
283810	Otherwise Known as Sheila the Great (1989) (TV)	Family
284190	Our Gang Follies of 1936 (1935)	Comedy
284191	Our Gang Follies of 1936 (1935)	Family
284192	Our Gang Follies of 1936 (1935)	Short
284516	Panoramic View of Charleston Exposition (South Carolina) (1902)	Documentary
284517	Panoramic View of Charleston Exposition (South Carolina) (1902)	Short
285711	Parfum d'Yvonne, Le (1994)	Drama
285712	Parfum d'Yvonne, Le (1994)	Romance
286161	Particles in Space (1966)	Short
287138	Pastry Panic (1951)	Animation
287139	Pastry Panic (1951)	Short
287229	Patchwork (2003)	Short
287552	Patty (1962)	Drama
288248	Perra, La (1967)	Romance
289666	Payoff, The (1994) (V)	Adult
290613	Pendekar bujang lapok (1959)	Comedy
290761	Penny's Picnic (1938)	Short
291061	Pequeños gigantes, Los (1960)	Documentary
291062	Pequeños gigantes, Los (1960)	Drama
292967	Pick-up, The (1999)	Musical
292968	Pick-up, The (1999)	Short
292969	Pick-up, The (1999)	Comedy
292970	Pick-up, The (1999)	Romance
294751	Platoon Leader (1988)	War
294752	Platoon Leader (1988)	Drama
295311	Point douloureux, Le (1979)	Drama
296680	Police mondaine (1937)	Crime
296819	Political Discussion, A (1900)	Comedy
297421	Playful Pelican, The (1948)	Short
297731	Pleasure at Her Majesty's (1976) (TV)	Comedy
298191	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Documentary
298536	Pride of Ireland (2000)	Music
298738	Primal Instinct (1996) (V)	Adult
299640	Portugal de Mil Cores (1971)	Animation
299807	Poslednja trka (1979)	Drama
301146	Pourquoi t'as fait ça? (2001)	Short
301586	Prince Edward Island in Motion; Home of the Silver Black Fox Industry (1914)	Documentary
301899	Prins hatt under jorden (1980)	Family
302177	Prival strannikov (1991)	Crime
302403	Private Secretary, The (1935)	Comedy
302793	Productione Albanaises (1970)	Documentary
304588	Pumps (1999)	Documentary
304589	Pumps (1999)	Short
305713	Páginas en negro, Unas (1950)	Crime
306540	Rage (1966)	Drama
306903	Qaid (1975)	Drama
306904	Qaid (1975)	Romance
306905	Qaid (1975)	Thriller
307038	Qiu tian de yin xiang (1983)	Drama
307204	Quand on est amoureux c'est merveilleux (1999)	Short
307785	Queretaro 78 (1977)	Documentary
307786	Queretaro 78 (1977)	Short
307929	Question of Trust, A (1920)	Adventure
308148	Quiet Wedding (1941)	Comedy
308999	Ratnadeep (1979)	Drama
309000	Ratnadeep (1979)	Family
309037	Rats, The (2002) (TV)	Thriller
309148	Rave (2000)	Drama
309859	Red Riding Hood (1989)	Family
310193	Reed, México insurgente (1973)	Drama
310194	Reed, México insurgente (1973)	War
310380	Reaction Stick (1998)	Comedy
310381	Reaction Stick (1998)	Short
310484	Real Bullets (1990)	Action
310485	Real Bullets (1990)	Crime
310782	Rebaño, El (1997)	Sci-Fi
310783	Rebaño, El (1997)	Short
311488	Raju-Peda (1954)	Drama
312414	Revolução de 30 (1980)	Documentary
312432	Revolver: Calling the Shots (2002) (V)	Short
314205	Reportero, El (1987)	Action
314206	Reportero, El (1987)	Drama
314531	Respect the Law (1941)	Crime
314532	Respect the Law (1941)	Short
314722	Regard des autres, Le (1980)	Documentary
316825	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Adventure
316826	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Comedy
316827	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Fantasy
317225	Road Songs: A Portrait of Robbie Robertson (2001) (TV)	Documentary
317226	Road Songs: A Portrait of Robbie Robertson (2001) (TV)	Short
317444	Roar, Navy, Roar (1942)	Documentary
317445	Roar, Navy, Roar (1942)	Short
318183	Rocket Ranger (1963) (TV)	Animation
318184	Rocket Ranger (1963) (TV)	Short
318591	Rogue with a Heart, The (1916)	Short
318797	Rolling in the Sky: Red Arrows (1986) (V)	Documentary
320927	Romances de terre et d'eau (2002)	Documentary
321547	Roped by Radio (1925)	Western
321756	Rosary, The (1911)	Drama
321757	Rosary, The (1911)	Short
321758	Rosary, The (1911)	Romance
322671	Río de las ánimas, El (1964)	Fantasy
322672	Río de las ánimas, El (1964)	Horror
322673	Río de las ánimas, El (1964)	Western
324898	Sans titre - Drames brefs (2003)	Short
325097	Santiago (1956)	Adventure
325841	Samlaren (1989)	Documentary
326089	Scene in Legation Street, Shanghai (1901)	Documentary
326090	Scene in Legation Street, Shanghai (1901)	Short
326337	Scherzo - Verwitterte Melodie (1943)	Animation
326338	Scherzo - Verwitterte Melodie (1943)	Short
329798	Scènes d'amour en Bavière (1995)	Short
330153	Sealed Lips (1931)	Drama
330154	Sealed Lips (1931)	Short
331889	Seokhwachon (1972)	Drama
335820	Shadow Magic (2000)	Drama
335821	Shadow Magic (2000)	Romance
335896	Shadow of the Cat (1961)	Horror
336054	Shadows of Chinatown (1926)	Action
336625	Show-Off, The (1946)	Comedy
336629	Showa onna bakuto (1972)	Crime
336630	Showa onnamichi: Rashomon (1972)	Drama
337744	Sign Please (1933)	Comedy
337745	Sign Please (1933)	Short
338896	Short in the Saddle (1962)	Animation
338897	Short in the Saddle (1962)	Family
338898	Short in the Saddle (1962)	Short
338899	Short in the Saddle (1962)	Comedy
338970	She-Wolf, The (1931)	Drama
339700	Shin kitsune no tameki (1962)	Comedy
339758	Shindig! Presents British Invasion Vol. 2 (1992) (V)	Short
341132	Sk8 Life (2004)	Drama
341154	Skal vi være kærester? (1997)	Family
341155	Skal vi være kærester? (1997)	Short
341495	Skinny the Moocher (1939)	Comedy
341496	Skinny the Moocher (1939)	Short
341571	Skizbe (1967)	Short
341572	Skizbe (1967)	Documentary
343246	Sleeping with Seattle (1993) (V)	Adult
343868	Sniper 3 (2004) (V)	Action
344725	Solomon and Sheba (1959)	Drama
344931	Some Kind of Hero (1982)	Comedy
344932	Some Kind of Hero (1982)	Drama
344933	Some Kind of Hero (1982)	War
344982	Some of Your Bits Ain't Nice (1982)	Animation
344983	Some of Your Bits Ain't Nice (1982)	Short
345604	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Adult
345752	Small Town Idol, A (1921)	Comedy
345930	Smil til fotografen (2000) (TV)	Documentary
346520	Social Secretary, The (1912)	Drama
346521	Social Secretary, The (1912)	Romance
346522	Social Secretary, The (1912)	Short
346897	Sol Bianca 2 (1991)	Animation
347950	Southern Comfort (1995) (V)	Adult
348058	Sovereign's Company (1970) (TV)	Drama
348201	Space Invaders '95 (1995) (VG)	Animation
348202	Space Invaders '95 (1995) (VG)	Sci-Fi
348203	Space Invaders '95 (1995) (VG)	Adventure
348204	Space Invaders '95 (1995) (VG)	Action
349004	Speelmeisje (1968)	Drama
349005	Speelmeisje (1968)	Short
349959	Son-Daughter, The (1932)	Drama
350525	Sons of the Sea (1925)	Adventure
350751	Standstill (1995)	Short
350936	Star Cuts 56: Ginger Lynn (1987) (V)	Adult
350937	Star Cuts 56: Ginger Lynn (1987) (V)	Short
351607	Spoonful of Sugar (2003)	Drama
351608	Spoonful of Sugar (2003)	Romance
351609	Spoonful of Sugar (2003)	Short
351854	Spray Jet (1986)	Documentary
351855	Spray Jet (1986)	Short
352330	Square Shooter (1935)	Western
352695	Staatsanwalt hat das Wort - Gefährliche Freundschaft, Der (1982) (TV)	Crime
352696	Staatsanwalt hat das Wort - Gefährliche Freundschaft, Der (1982) (TV)	Drama
353569	Starwoids (2001)	Documentary
358129	Sunce na cetiri zvonika (1976)	Documentary
358130	Sunce na cetiri zvonika (1976)	Short
358212	Sundeoki (1968)	Drama
358640	Susa - Mali (1984)	Documentary
358641	Susa - Mali (1984)	Short
359211	Swami MD #1: Coming to America (1999) (V)	Adult
360599	Substitute Wife, The (1994) (TV)	Drama
362058	Swedish Erotica 4 (1981)	Adult
363391	Tall, Dark and Handsome (1941)	Comedy
363392	Tall, Dark and Handsome (1941)	Crime
363731	Ta' det som en mand, frue! (1975)	Family
364629	Teenage Mother (1968)	Drama
364956	Teleftea Sinentefxi tou Nikou Svoronou: O Nikos Svoronos Milai gia ton Niko Poulantza (1988)	Documentary
364957	Teleftea Sinentefxi tou Nikou Svoronou: O Nikos Svoronos Milai gia ton Niko Poulantza (1988)	Short
365253	Tempest (1982)	Comedy
365254	Tempest (1982)	Drama
365419	Tatort - Veras Waffen (2003) (TV)	Thriller
365420	Tatort - Veras Waffen (2003) (TV)	Crime
365443	Tatort - Willkommen in Köln (1997) (TV)	Crime
365872	Tea at the Ritz (1963) (TV)	Comedy
365993	Team One (2003)	Action
366001	Teammates, The (2003) (TV)	Documentary
366365	Tatort - 3:0 für Veigl (1974) (TV)	Crime
366401	Tatort - Aus der Traum (1986) (TV)	Crime
366492	Tatort - Das stille Geschäft (1977) (TV)	Crime
366508	Tatort - Der Fremdwohner (2002) (TV)	Crime
366509	Tatort - Der Fremdwohner (2002) (TV)	Documentary
366534	Tatort - Der Prügelknabe (2003) (TV)	Crime
366548	Tatort - Der Tausch (1986) (TV)	Crime
366549	Tatort - Der Tausch (1986) (TV)	Drama
366557	Tatort - Der vierte Mann (2004) (TV)	Crime
366626	Tatort - Eiskalt (1997) (TV)	Crime
366644	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Crime
366645	Tatort - Feuerwerk für eine Leiche (1988) (TV)	Drama
366646	Tatort - Feuerzauber (1977) (TV)	Crime
366695	Tatort - Hahnenkämpfe (1997) (TV)	Crime
366735	Tatort - Kalte Wut (2001) (TV)	Crime
366741	Tatort - Kein Kinderspiel (1980) (TV)	Crime
366754	Tatort - Kindstod (2001) (TV)	Crime
366776	Tatort - Leiche im Keller (1986) (TV)	Crime
366781	Tatort - Lockvögel (1996) (TV)	Crime
366782	Tatort - Lockvögel (1996) (TV)	Drama
366801	Tatort - Mord auf Raten (1980) (TV)	Crime
366802	Tatort - Mord auf Raten (1980) (TV)	Drama
366803	Tatort - Mord auf Raten (1980) (TV)	Thriller
366809	Tatort - Mord im Ministerium (1974) (TV)	Crime
366824	Tatort - Mordverdacht (1971) (TV)	Crime
366859	Tatort - Rattenlinie (2000) (TV)	Crime
366860	Tatort - Rattennest (1972) (TV)	Crime
366899	Tatort - Schimanskis Waffe (1990) (TV)	Crime
366900	Tatort - Schimanskis Waffe (1990) (TV)	Drama
366904	Tatort - Schlußverkauf (1978) (TV)	Crime
366916	Tatort - Schwarzer Advent (1998) (TV)	Crime
366965	Tatort - Tod aus der Vergangenheit (1992) (TV)	Crime
366966	Tatort - Tod aus der Vergangenheit (1992) (TV)	Drama
367020	Tatort - Tödlicher Treff (1987) (TV)	Crime
367745	Tarzan Finds a Son! (1939)	Action
367746	Tarzan Finds a Son! (1939)	Adventure
367985	Terra (2003)	Animation
367986	Terra (2003)	Drama
367987	Terra (2003)	Sci-Fi
367988	Terra (2003)	Short
368711	Tetri mkhedari (1929)	Drama
368712	Tetri mkhedari (1929)	War
369563	Terminal Case of Love (1998) (V)	Adult
370014	They Nest (2000) (TV)	Sci-Fi
370015	They Nest (2000) (TV)	Horror
370072	They Won't Believe Me (1947)	Film-Noir
371344	Thema's van de inspiratie (1938)	Documentary
371462	Thunderbirds (1952)	Drama
371463	Thunderbirds (1952)	War
371806	Tiddly-Winks (1927)	Comedy
371807	Tiddly-Winks (1927)	Short
372580	Time Killer (2002)	Action
372581	Time Killer (2002)	Thriller
373447	Three Men on a Horse (1936)	Comedy
373839	Thrills of Music: Skitch Henderson and His Orchestra (1948)	Short
373840	Thrills of Music: Skitch Henderson and His Orchestra (1948)	Music
374373	This Pretty Planet: Tom Chapin in Concert (1992) (V)	Family
376251	To Please One Woman (1920)	Drama
376456	Toboy Tobaye (1974)	Documentary
376457	Toboy Tobaye (1974)	Short
376665	Tortured Passions (1994) (V)	Adult
376671	Toruko 110-ban: monzetsu kurage (1978)	Romance
377586	Tony's Big Brother (1993) (V)	Adult
377727	Too Much Harmony (1933)	Musical
378116	Tor zum Garten der Träume, Das (1977) (TV)	Documentary
378159	Torchy Plays with Dynamite (1939)	Mystery
378685	Trip Around the Union Loop (1903)	Documentary
378686	Trip Around the Union Loop (1903)	Short
379019	Trois couronnes du matelot, Les (1983)	Drama
379020	Trois couronnes du matelot, Les (1983)	Fantasy
379529	Trelaras, O (1963)	Comedy
379676	Tres historias de amor (1978)	Drama
379677	Tres historias de amor (1978)	Romance
379678	Tres historias de amor (1978)	Short
380007	Trials of Life (1997) (TV)	Drama
380773	Trails of the Golden West (1931)	Western
381102	Transaction (1986) (V)	Adult
381475	Trastevere (1971)	Comedy
381507	Trauma (1962)	Horror
382215	Two Roaming Champs (1950)	Short
382216	Two Roaming Champs (1950)	Comedy
382660	Tänzer meiner Frau, Der (1925)	Comedy
382661	Tänzer meiner Frau, Der (1925)	Drama
382915	Tu, mi amor... (1998)	Musical
382916	Tu-no (1999)	Comedy
382917	Tu-no (1999)	Short
382987	Tudo é Música (1957)	Comedy
382988	Tudo é Música (1957)	Musical
385143	Twins' Tea Party, The (1897)	Comedy
385144	Twins' Tea Party, The (1897)	Short
385613	U nikh yest rodina (1950)	War
386069	Uit onze zwarte vijvers (2000) (TV)	Documentary
386107	Ukhodya, ostayutsya (1987)	Drama
386731	Und tschüss! - Ballermann olé (1997) (TV)	Comedy
386757	Under a Flag of Truce (1912)	Drama
386758	Under a Flag of Truce (1912)	Short
386862	Under Polarkredsens himmel (1921)	Documentary
386863	Under Polarkredsens himmel (1921)	Short
389250	Up in Mabel's Room (1944)	Comedy
389895	Unknown Cyclist, The (1998)	Drama
390003	Unmasked (1929)	Mystery
390283	Unstrung Heroes (1995)	Drama
390287	Unsullied Shield, An (1913)	Drama
390288	Unsullied Shield, An (1913)	Short
390777	Valley of the Giants (1938)	Adventure
391349	Varavu Ettana Selavu Pathana (1994)	Drama
391620	Utgo saneun Park Seo-bang (1972)	Drama
391935	V trestném území (1947)	Crime
391936	V trestném území (1947)	Drama
393316	Venus Blue (1998)	Short
394191	VH-1 to One: Paula Abdul (1992) (TV)	Documentary
394621	Victim, The (1930)	Short
394905	Vase srce je u vasim rukama (1977)	Documentary
394906	Vase srce je u vasim rukama (1977)	Short
395243	Veine, La (1928)	Comedy
395350	Velké prání (1981)	Drama
395523	Veneno para las hadas (1984)	Fantasy
395524	Veneno para las hadas (1984)	Horror
395525	Veneno para las hadas (1984)	Mystery
395850	Vita jela zelen bor (1967)	Documentary
395851	Vita jela zelen bor (1967)	Short
396322	Vo l'dakh okeana (1953)	Documentary
396458	Voice of Hollywood No. 3, The (1929)	Short
396535	Voices, The (1955) (TV)	Drama
396536	Voices, The (1955) (TV)	Sci-Fi
397138	Vow to Kill, A (1995) (TV)	Drama
397139	Vow to Kill, A (1995) (TV)	Mystery
397857	Virginian, The (2000) (TV)	Western
398176	Voz del deber, La (1927)	Documentary
398177	Voz del deber, La (1927)	Short
398777	Vérité nue, La (2001)	Short
399281	Wedding on the Volga, The (1929)	Drama
399458	Weekend In Diego (2000) (V)	Adult
399529	Wei le liu shi yi ge jie ji xiong di (1960)	Crime
399629	Weiße Stadt, Die (1980) (TV)	Drama
399941	Wastelands (1993)	Drama
399942	Wastelands (1993)	Short
400266	Waterloo po cesku (2002)	Comedy
400412	Way of a Man with a Maid, The (1912)	Drama
400413	Way of a Man with a Maid, The (1912)	Short
400465	Way of the World, The (1920)	Drama
401399	Warning: Parental Advisory (2002) (TV)	Drama
401400	Warning: Parental Advisory (2002) (TV)	Comedy
401401	Warning: Parental Advisory (2002) (TV)	Music
402250	Wall Street Tragedy (1916)	Drama
402670	Weryfikacja (1987)	Drama
404082	Where the Buffalo Roam (1966) (TV)	Drama
404809	When Baby Forgot (1917)	Drama
405863	Who Killed Doc Robbin? (1948)	Comedy
405864	Who Killed Doc Robbin? (1948)	Horror
406372	Wild Pair, The (1987)	Crime
407490	Wives of the Prophet, The (1926)	Romance
407491	Wives of the Prophet, The (1926)	Drama
407946	Wind of Changes, The (1996)	Short
409619	Woman and Wife (1918)	Drama
410733	Ya shagayu po Moskve (1963)	Comedy
410734	Ya shagayu po Moskve (1963)	Romance
411085	Yank in Viet-Nam, A (1964)	War
411294	Wonhanui gongdongmyuji (1983)	Horror
411469	Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Short
411470	Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Documentary
411519	Word's Fail (2000)	Short
412042	Wozu denn über diese Leute einen Film (1980)	Documentary
412043	Wozu denn über diese Leute einen Film (1980)	Short
412427	Wu ye qing sha an (1954)	Crime
412526	WWF Attitude (1999) (VG)	Action
413208	Young People's Concerts: Holst - Planets, The (1972) (TV)	Music
413508	Youthquake! (1975)	Documentary
414051	Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Drama
414250	You Can't Stop on a Dime (1954)	Drama
414251	You Can't Stop on a Dime (1954)	Short
414305	You jian chin tian (1981)	Romance
414799	Yearning for Love (1926)	Comedy
414800	Yearning for Love (1926)	Short
415131	Yeomen of the Guard, The (1978) (TV)	Musical
415215	Yes & No (2000)	Animation
415881	Zahrada (1968)	Animation
415882	Zahrada (1968)	Short
416166	Zarte Saftmösen (1997) (V)	Adult
416219	Zatoichi sakate giri (1965)	Action
416220	Zatoichi sakate giri (1965)	Adventure
416221	Zatoichi sakate giri (1965)	Drama
417521	Zendegi dar meh (1999)	Documentary
417522	Zendegi dar meh (1999)	Short
417751	Zhenshchina i chetvero yeyo muzhchin (1984)	Drama
418276	Ångsjömannen (1999) (V)	Adult
418998	Øllet på bjerget (2001)	Short
419661	À la vitesse d'un cheval au galop (1992)	Comedy
419743	Água e Sal (2002)	Drama
419848	Ángeles de Puebla, Los (1968)	Drama
419849	Ángeles de Puebla, Los (1968)	Comedy
419850	Ángeles de Puebla, Los (1968)	Fantasy
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.movie (mid, title, year) FROM stdin;
10-93/11-94 Musikvideos aus Österreich (1994)	10-93/11-94 Musikvideos aus Österreich	1994
100 Pigmies and Andy Panda (1940)	100 Pigmies and Andy Panda	1940
1857 (1946)	1857	1946
2 On 1 (1998) (V)	2 On 1	1998
2º Centenário do Jardim Guerra Junqueiro (1952)	2º Centenário do Jardim Guerra Junqueiro	1952
3 - 4 Ever (1996)	3 - 4 Ever	1996
34-j skoryj (1981)	34-j skoryj	1981
4 aventures de Reinette et Mirabelle (1987)	4 aventures de Reinette et Mirabelle	1987
58.2/B (1958)	58.2/B	1958
9:30 (2003)	9:30	2003
A kuca zvoni li zvoni (1971)	A kuca zvoni li zvoni	1971
A.-B. gifta bort baron Olson (1928)	A.-B. gifta bort baron Olson	1928
A&E Biography: Caligula - Reign of Madness (2000) (TV)	A&E Biography: Caligula - Reign of Madness	2000
Abhimanavanthulu (1973)	Abhimanavanthulu	1973
Abismo	Abismo	1953
Accidente (1965)	Accidente	1965
Adam och Eva (1964) (TV)	Adam och Eva	1964
Addicted to Love (1988)	Addicted to Love	1988
Addio a Enrico Berlinguer, L' (1984)	Addio a Enrico Berlinguer, L'	1984
Adieu (2003)	Adieu	2003
Adieu au pirate, L' (2003)	Adieu au pirate, L'	2003
Adventures of Mark & Brian, The	Adventures of Mark & Brian, The	1992
Adventures of Pow Wow, The	Adventures of Pow Wow, The	1949
Adventures of Sam, The	Adventures of Sam, The	1997
Aeg maha (1984)	Aeg maha	1984
Agroindustrijska proizvodnja hrane u Jugoslaviji (1977)	Agroindustrijska proizvodnja hrane u Jugoslaviji	1977
Agujetas en el alma (1998)	Agujetas en el alma	1998
Ai xia ji (1955)	Ai xia ji	1955
Air-Tight (1931)	Air-Tight	1931
Aircraft Wood Repair, Part 2: Stiffener Patch (1943)	Aircraft Wood Repair, Part 2: Stiffener Patch	1943
Ajia himitsu keisatsu (1966)	Ajia himitsu keisatsu	1966
Akai yuhi ni terasarete (1925)	Akai yuhi ni terasarete	1925
Akitsu onsen (1962)	Akitsu onsen	1962
Alavuddinum Athbutha Vilakkum (1979)	Alavuddinum Athbutha Vilakkum	1979
Albert Einstein (1990) (TV)	Albert Einstein	1990
Aldrig mera krig (1984)	Aldrig mera krig	1984
All Mine to Give (1958)	All Mine to Give	1958
All or Nothing (1998)	All or Nothing	1998
All Wet (1930)	All Wet	1930
Alquibla	Alquibla	1988
Amantes frios, Los (1978)	Amantes frios, Los	1978
Amanti (1968)	Amanti	1968
Amants du Tage, Les (1955)	Amants du Tage, Les	1955
Amar Raj (1946)	Amar Raj	1946
Amartoles (1962)	Amartoles	1962
Amateurs, Les (1990)	Amateurs, Les	1990
Amatér (1967) (TV)	Amatér	1967
Amazing Vacation Homes (2004) (TV)	Amazing Vacation Homes	2004
Amerikai cigaretta (1977)	Amerikai cigaretta	1977
Amiche del cuore, Le (1992)	Amiche del cuore, Le	1992
Amore imperfetto, L' (2002)	Amore imperfetto, L'	2002
Amoureux, Les (1994)	Amoureux, Les	1994
Anal-Europe Series 7, The (1994) (V)	Anal-Europe Series 7, The	1994
Anarchy TV (1997)	Anarchy TV	1997
Andel milosrdenství (1994)	Andel milosrdenství	1994
Andere kant, De (1988)	Andere kant, De	1988
Andy Clyde Gets Spring Chicken (1939)	Andy Clyde Gets Spring Chicken	1939
Angela ja ajan tuulet	Angela ja ajan tuulet	1999
Anna - annA (1993)	Anna - annA	1993
Anthea Turner Body Basics (1996) (V)	Anthea Turner Body Basics	1996
Años perdidos, Los	Años perdidos, Los	1987
Après la pluie, le beau temps (2003)	Après la pluie, le beau temps	2003
Arabic Numeral Series 10 (1981)	Arabic Numeral Series 10	1981
Asesinato en tres variantes con dos incógnitas y un maniquí (1987)	Asesinato en tres variantes con dos incógnitas y un maniquí	1987
Asian Babes 2 (1993) (V)	Asian Babes 2	1993
Asian Street Hookers 26 (2002) (V)	Asian Street Hookers 26	2002
Assassin (1997)	Assassin	1997
Assman 5 (1998) (V)	Assman 5	1998
At Bertram's Hotel (1987) (TV)	At Bertram's Hotel	1987
Ata quheshin Arbër (1973)	Ata quheshin Arbër	1973
Atomic Kid, The (1954)	Atomic Kid, The	1954
Atrapados (1985)	Atrapados	1985
Auction Block, The (1917)	Auction Block, The	1917
Auge für Auge (1998) (TV)	Auge für Auge	1998
Ava's Magical Adventure (1994)	Ava's Magical Adventure	1994
Away in the Lead (1925)	Away in the Lead	1925
Az én mozim	Az én mozim	1997
Água e Sal (2002)	Água e Sal	2002
Ángeles de Puebla, Los (1968)	Ángeles de Puebla, Los	1968
Áradat (1971) (TV)	Áradat	1971
À la vitesse d'un cheval au galop (1992)	À la vitesse d'un cheval au galop	1992
Ångsjömannen (1999) (V)	Ångsjömannen	1999
Babes in the Woods (1911)	Babes in the Woods	1911
Babyroussa the Babiroussa (1994)	Babyroussa the Babiroussa	1994
Bach détective (1936)	Bach détective	1936
Bacharach: One Amazing Night (1998) (TV)	Bacharach: One Amazing Night	1998
Back Stage (1923)	Back Stage	1923
Bad, the Mad and the Maddest One, The (2000)	Bad, the Mad and the Maddest One, The	2000
Badía y Cia	Badía y Cia	1987
Ballet mécanique (1924)	Ballet mécanique	1924
Banda de Cantaniño, La	Banda de Cantaniño, La	2002
Bangkok-Africa-Turkey Connection (1993)	Bangkok-Africa-Turkey Connection	1993
Bare Ass Beach (1994) (V)	Bare Ass Beach	1994
Bargain, The (1912)	Bargain, The	1912
Barrings, Die (1955)	Barrings, Die	1955
Basta Tricycle Driver... Sweet Lover (2000)	Basta Tricycle Driver... Sweet Lover	2000
Bat Whispers, The (1930)	Bat Whispers, The	1930
Battle of the Network Stars (2003) (TV)	Battle of the Network Stars	2003
Beach House, The (1967)	Beach House, The	1967
Beau temps mais orageux en fin de journée (1986)	Beau temps mais orageux en fin de journée	1986
Beer (1985)	Beer	1985
Before and After the Monsoon (1985) (TV)	Before and After the Monsoon	1985
Beggar Maid, The (1921)	Beggar Maid, The	1921
Behind Closed Doors (2002) (TV)	Behind Closed Doors	2002
Behind the Green Door, the Sequel (1986)	Behind the Green Door, the Sequel	1986
Bell Hoppy (1954)	Bell Hoppy	1954
Best of Breasts 3 (1995) (V)	Best of Breasts 3	1995
Bibó breviarium (2002)	Bibó breviarium	2002
Big Boss (1965)	Big Boss	1965
Big Idea, The (1934)	Big Idea, The	1934
Big Pile, The (1985)	Big Pile, The	1985
Big Tip Off, The (1955)	Big Tip Off, The	1955
Bikini Beach (1993) (V)	Bikini Beach	1993
Billy Jack: The E! True Hollywood Story (2000) (TV)	Billy Jack: The E! True Hollywood Story	2000
Bint min el banat (1968)	Bint min el banat	1968
Black Butt Sisters Do New Orleans, The (1995) (V)	Black Butt Sisters Do New Orleans, The	1995
Black Thunder (1997)	Black Thunder	1997
Blacksmith, The (1922)	Blacksmith, The	1922
Blaulicht - Kindermörder (1960) (TV)	Blaulicht - Kindermörder	1960
Blume der Hausfrau, Die (1999)	Blume der Hausfrau, Die	1999
Blutjunge Verführerinnen 2 (1972)	Blutjunge Verführerinnen 2	1972
Bobby Jones, Stroke of Genius (2004)	Bobby Jones, Stroke of Genius	2004
Bondage of Barbara, The (1919)	Bondage of Barbara, The	1919
Boobs in Arms (1940)	Boobs in Arms	1940
Boogie Woogie	Boogie Woogie	-1
Booty and the Beast (1953)	Booty and the Beast	1953
Bossu, Le (1934)	Bossu, Le	1934
Boyclops (2004)	Boyclops	2004
Boys Life 2 (1997)	Boys Life 2	1997
Boys of St. Vincent, The (1992) (TV)	Boys of St. Vincent, The	1992
Bradys, The	Bradys, The	1990
Brand from Burning, The (1913)	Brand from Burning, The	1913
Brændt a' (1919)	Brændt a'	1919
Breakin' (1984)	Breakin'	1984
BreakThrough: The Changing Face of Science in America	BreakThrough: The Changing Face of Science in America	1996
Brigadista, El (1977)	Brigadista, El	1977
Brigitte Nielsen: The E! True Hollywood Story (2000) (TV)	Brigitte Nielsen: The E! True Hollywood Story	2000
Bromo and Juliet (1926)	Bromo and Juliet	1926
Bulung-Bulungan (1962)	Bulung-Bulungan	1962
Burglar, The (1928)	Burglar, The	1928
Burnt Wings (1920)	Burnt Wings	1920
Burr's Novelty Review No. 1 (1922)	Burr's Novelty Review No. 1	1922
Butterfly (1995)	Butterfly	1995
Buzos diamantistas, Los (1988)	Buzos diamantistas, Los	1988
Bücher (1986)	Bücher	1986
Cactus Jim's Shopgirl (1915)	Cactus Jim's Shopgirl	1915
Cafe Fantasy (1996)	Cafe Fantasy	1996
Caja 507, La (2002)	Caja 507, La	2002
Caleidoscopio, El (2004)	Caleidoscopio, El	2004
Cap'n Eri (1915)	Cap'n Eri	1915
Caperucita roja, La (1947)	Caperucita roja, La	1947
Caravan (2002)	Caravan	2002
Card of Destiny (1928)	Card of Destiny	1928
Carnal Passion (2001) (V)	Carnal Passion	2001
Carnaval em Lourenço Marques (1964)	Carnaval em Lourenço Marques	1964
Carnaval no Paris, O (1933)	Carnaval no Paris, O	1933
Carol (1970)	Carol	1970
Casamiento de Chichilo, El (1938)	Casamiento de Chichilo, El	1938
Casting de maduras (2001) (V)	Casting de maduras	2001
Cat in the Hat, The (1971) (TV)	Cat in the Hat, The	1971
Cat's Whiskers, The (1925)	Cat's Whiskers, The	1925
Catching a Runaway Team (1897)	Catching a Runaway Team	1897
Ce que les Flots Racontent (1916)	Ce que les Flots Racontent	1916
Celebrity Billiards	Celebrity Billiards	1967
Centennial Highlights (1975)	Centennial Highlights	1975
Chamkee (1952)	Chamkee	1952
Chann Pardesi (1980)	Chann Pardesi	1980
Chansons ont leur destin (1953)	Chansons ont leur destin	1953
Cheveux de ma mère, Les (2004)	Cheveux de ma mère, Les	2004
Chickboxin Underground (1999)	Chickboxin Underground	1999
Chikago in zwei Hälften (1968)	Chikago in zwei Hälften	1968
Chirveuli mezoblebi (1945)	Chirveuli mezoblebi	1945
Chompin' at the Bit (1997) (V)	Chompin' at the Bit	1997
Chwila wspomnien: rok 1956/1957 (1964)	Chwila wspomnien: rok 1956/1957	1964
Cine ma striga? (1979)	Cine ma striga?	1979
Clash of the Ash, The (1987)	Clash of the Ash, The	1987
Clemi flüchtet (1994)	Clemi flüchtet	1994
Club de señoritas (1956)	Club de señoritas	1956
Coeurs de couleur (1989)	Coeurs de couleur	1989
Cold Clues: Guilty Conscience (2002) (TV)	Cold Clues: Guilty Conscience	2002
Colgate Comedy Hour, The	Colgate Comedy Hour, The	1955
Colombes, Les (1972)	Colombes, Les	1972
Comedy Club All-Star 4 with Woody Harrelson (1990) (TV)	Comedy Club All-Star 4 with Woody Harrelson	1990
Comedy Tonight	Comedy Tonight	1970
Como Se Fabrica o Sabão (1935)	Como Se Fabrica o Sabão	1935
Comrades of Summer, The (1992) (TV)	Comrades of Summer, The	1992
Consultation, La (1985)	Consultation, La	1985
Conte à regler (1978)	Conte à regler	1978
Contestatarios (Poemágenes 1) (1975)	Contestatarios (Poemágenes 1)	1975
Cook's Revenge (1916)	Cook's Revenge	1916
Corbeau et le renard, Le (1969)	Corbeau et le renard, Le	1969
Corinna Pabst - Fünf Kinder brauchen eine Mutter (1997) (TV)	Corinna Pabst - Fünf Kinder brauchen eine Mutter	1997
Corrida de Vicente Segura y Cocherito de Bilbao (1911)	Corrida de Vicente Segura y Cocherito de Bilbao	1911
Cowboy uit Iran (1999) (TV)	Cowboy uit Iran	1999
Cricket Requiem (1999)	Cricket Requiem	1999
Crime Takes a Holiday (1938)	Crime Takes a Holiday	1938
Critical Assembly (2003) (TV)	Critical Assembly	2003
Crni kisobran (1969)	Crni kisobran	1969
Cross Country Run (1929)	Cross Country Run	1929
Cross, The (1911)	Cross, The	1911
Crónica de un extraño (1998)	Crónica de un extraño	1998
Cry for Help: The Tracey Thurman Story, A (1989) (TV)	Cry for Help: The Tracey Thurman Story, A	1989
CTV	CTV	-1
Cumback Pussy 21 (1999) (V)	Cumback Pussy 21	1999
Custody (2000)	Custody	2000
Customers Wanted (1939)	Customers Wanted	1939
Cutter to Houston	Cutter to Houston	1983
Czas nadziei (1987)	Czas nadziei	1987
Daikaijû Gamera (1965)	Daikaijû Gamera	1965
Dakot Shel Tehila	Dakot Shel Tehila	2001
Dame de lieudit, La (1993) (TV)	Dame de lieudit, La	1993
Dame von Paris, Die (1927)	Dame von Paris, Die	1927
Dance Comique (1945)	Dance Comique	1945
Danchizuma hiasobi (1973)	Danchizuma hiasobi	1973
Dao xi bei qu (1934)	Dao xi bei qu	1934
Day & Date	Day & Date	-1
Dead Sea Scrolls: Unraveling the Mystery (1998) (TV)	Dead Sea Scrolls: Unraveling the Mystery	1998
Dead Wrong: The John Evans Story (1984) (TV)	Dead Wrong: The John Evans Story	1984
Deadlock: A Passion for Murder (1997)	Deadlock: A Passion for Murder	1997
Death of a Demon, The (2000)	Death of a Demon, The	2000
Dekontaminacija bojnih otrova (1971)	Dekontaminacija bojnih otrova	1971
Demon Possessed (1993)	Demon Possessed	1993
Demonismeni, I (1975)	Demonismeni, I	1975
Dernier mot, Le (1991) (TV)	Dernier mot, Le	1991
Derren Brown Plays Russian Roulette Live (2003) (TV)	Derren Brown Plays Russian Roulette Live	2003
Dertli irmak (1958)	Dertli irmak	1958
Desert of Fear (1993) (V)	Desert of Fear	1993
Décalages au Palais des Glaces (1997) (V)	Décalages au Palais des Glaces	1997
Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz	2001
Dinner Date 1 (2002) (TV)	Dinner Date 1	2002
Diva et pianiste (2000)	Diva et pianiste	2000
Dive to Shark City with Neil Morrissey (1999) (TV)	Dive to Shark City with Neil Morrissey	1999
Dny a noci (1953) (TV)	Dny a noci	1953
Do Not Disturb (1999)	Do Not Disturb	1999
Dollar's Worth, A (1921)	Dollar's Worth, A	1921
Don Juan (1998)	Don Juan	1998
Dottoressa sotto il lenzuolo, La (1976)	Dottoressa sotto il lenzuolo, La	1976
Double Deal (1950)	Double Deal	1950
Double Down (1993) (V)	Double Down	1993
Drag My Feat (2003)	Drag My Feat	2003
Dream Jeans (1987)	Dream Jeans	1987
Dreimal die Woche... (1994) (TV)	Dreimal die Woche...	1994
Drevená balada (1976)	Drevená balada	1976
Drittes Reich, Ein (1975)	Drittes Reich, Ein	1975
Dronningens nytårstale (1999) (TV)	Dronningens nytårstale	1999
Drugi kongres komunisticke partije Srbije (1949)	Drugi kongres komunisticke partije Srbije	1949
Drummer's Vacation, The (1912)	Drummer's Vacation, The	1912
Duhat na bashta mi (1998) (TV)	Duhat na bashta mi	1998
Dumb Luck (1926)	Dumb Luck	1926
Dumm gelaufen (1997)	Dumm gelaufen	1997
Dva patrona na mamonta (1990)	Dva patrona na mamonta	1990
East Lynne (1910)	East Lynne	1910
East Side, West Side (1927)	East Side, West Side	1927
Easy Binder (1994) (V)	Easy Binder	1994
Eclipse (1993) (V)	Eclipse	1993
Eddie Izzard: Circle (2002) (V)	Eddie Izzard: Circle	2002
Edge of Night, The	Edge of Night, The	1984
Edge, The (1975)	Edge, The	1975
Eglimata	Eglimata	1999
Egoistes, Oi (1971)	Egoistes, Oi	1971
Egoists, The (2003)	Egoists, The	2003
Ehestreik (1930)	Ehestreik	1930
Eigen haard is goud waard (1973)	Eigen haard is goud waard	1973
Ela E os Homens (1985)	Ela E os Homens	1985
Elephant in the Living Room (1990)	Elephant in the Living Room	1990
Eleven P.M. (1928)	Eleven P.M.	1928
Eli masali (1966)	Eli masali	1966
Em Cada Coração um Punhal (1970)	Em Cada Coração um Punhal	1970
Emmanuelle 5: A Time to Dream (1994)	Emmanuelle 5: A Time to Dream	1994
En douane (1932)	En douane	1932
End of the Circle, The (1913)	End of the Circle, The	1913
Enfant du secret, L' (1996) (TV)	Enfant du secret, L'	1996
Entre chats et loups (1985) (TV)	Entre chats et loups	1985
Entre Mulheres e Espiões (1961)	Entre Mulheres e Espiões	1961
Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	Entscheidung im Eis - Eine Frau jagt den Mörder	2001
Episimi agapimeni (1969)	Episimi agapimeni	1969
Erlkönig, Der (1931)	Erlkönig, Der	1931
Erotic Express (1983)	Erotic Express	1983
Es geht seinen Gang oder Mühen in unserer Ebene (1981) (TV)	Es geht seinen Gang oder Mühen in unserer Ebene	1981
Eshqe bozorg (1961)	Eshqe bozorg	1961
Espejo público	Espejo público	-1
Esprits de famille (1975) (TV)	Esprits de famille	1975
Età da sballo, Un' (1983)	Età da sballo, Un'	1983
Europa på spil (2002) (TV)	Europa på spil	2002
European Sex Vacation (1986)	European Sex Vacation	1986
Eyewitness to Summer, Sun & Storms (2001) (TV)	Eyewitness to Summer, Sun & Storms	2001
Échange de femmes pour le week-end (1985)	Échange de femmes pour le week-end	1985
È già ieri (2004)	È già ieri	2004
Face in the Frame, The (1998)	Face in the Frame, The	1998
Face to Face (1990) (TV)	Face to Face	1990
Fade to Reality (1995)	Fade to Reality	1995
Failure at Fifty, A (1940)	Failure at Fifty, A	1940
Familia Vila, La (1950)	Familia Vila, La	1950
Famous Ride, The (1960)	Famous Ride, The	1960
Farba (1998)	Farba	1998
Fast perfekt verlobt (2003) (TV)	Fast perfekt verlobt	2003
Fat Beach Patrol (2000) (V)	Fat Beach Patrol	2000
Fatal Flirtation, A (1914)	Fatal Flirtation, A	1914
Fazan II (1969)	Fazan II	1969
Fátima Viva (1982)	Fátima Viva	1982
Feind im Blut (1931)	Feind im Blut	1931
Feliz cumpleaños (1987)	Feliz cumpleaños	1987
Femme papillon, La (2003)	Femme papillon, La	2003
Férias de Laura (1986)	Férias de Laura	1986
Fiabe della nonna, Le (1916)	Fiabe della nonna, Le	1916
Fiction Makers, The (1968)	Fiction Makers, The	1968
Fiesta Fiasco (1967)	Fiesta Fiasco	1967
Finn & Co. (2002) (V)	Finn & Co.	2002
First Child on the Moon (2001)	First Child on the Moon	2001
Fish Story, A (1998)	Fish Story, A	1998
Fishing with Gandhi (1998)	Fishing with Gandhi	1998
Fjernsyn	Fjernsyn	1999
Flat Harmony (1917)	Flat Harmony	1917
Fleshtones (1985) (V)	Fleshtones	1985
Flicka med melodi (1954)	Flicka med melodi	1954
Flight Lieutenant (1942)	Flight Lieutenant	1942
Flying Blind (1990) (TV)	Flying Blind	1990
FN: Première traversée du Sahara en moto (1933)	FN: Première traversée du Sahara en moto	1933
For the Good of Her Men (1912)	For the Good of Her Men	1912
For Those Who Teach the Art of Peace (2003)	For Those Who Teach the Art of Peace	2003
Forbidden Under the Censorship of the King (1972)	Forbidden Under the Censorship of the King	1972
Forgotten (1933)	Forgotten	1933
Fort 13 (1984)	Fort 13	1984
Four Simples Rules (2003)	Four Simples Rules	2003
Fratelli e sorelle (1991)	Fratelli e sorelle	1991
Frau, nach der man sich sehnt, Die (1929)	Frau, nach der man sich sehnt, Die	1929
Freight Train (1898)	Freight Train	1898
Fremd in diesem Land (1981)	Fremd in diesem Land	1981
Friendship Begins at Home (1949)	Friendship Begins at Home	1949
From Dime to Dime (1960)	From Dime to Dime	1960
Frontiers of Construction	Frontiers of Construction	1999
Fuck Pigs 6 (2002) (V)	Fuck Pigs 6	2002
Fun in the Glenwood Springs Pool (1902)	Fun in the Glenwood Springs Pool	1902
Funny Boners	Funny Boners	1955
Fünfzig Minuten (2001)	Fünfzig Minuten	2001
Fyra nyanser av brunt (2004)	Fyra nyanser av brunt	2004
Gag and Baggage (1952)	Gag and Baggage	1952
Galazio diamanti, To	Galazio diamanti, To	1991
Gebannt und erlöst (1919)	Gebannt und erlöst	1919
Geheime Lüste blutjunger Mädchen (1978)	Geheime Lüste blutjunger Mädchen	1978
Geile Früchtchen (1992) (V)	Geile Früchtchen	1992
General Hospital	General Hospital	-1
Genocide Factor, The	Genocide Factor, The	2000
Gesundheit (1978) (TV)	Gesundheit	1978
Ghost in the House (1988)	Ghost in the House	1988
Ghosts of the Past (1991) (TV)	Ghosts of the Past	1991
Gigli (2003)	Gigli	2003
Ginevra (1992)	Ginevra	1992
Girls (1919)	Girls	1919
Glückliche Zeiten (1976)	Glückliche Zeiten	1976
Go-Go-Girl vom Blow Up, Das (1969)	Go-Go-Girl vom Blow Up, Das	1969
God's Gonna Trouble the Water (1998) (TV)	God's Gonna Trouble the Water	1998
Going Places with Lowell Thomas, #28 (1936)	Going Places with Lowell Thomas, #28	1936
Going Some (1914)	Going Some	1914
Goldsucher von Arkansas, Die (1964)	Goldsucher von Arkansas, Die	1964
Good Shepherd, The (2004)	Good Shepherd, The	2004
Good Sport, The (1918)	Good Sport, The	1918
Good, the Bad & the Innocent, The (2001)	Good, the Bad & the Innocent, The	2001
Gore: Ultimate Soldier (2002) (VG)	Gore: Ultimate Soldier	2002
Grand Central Murder (1942)	Grand Central Murder	1942
Grande Família, A	Grande Família, A	1973
Grandes ilusiones	Grandes ilusiones	1963
Grandma Didn't Wave Back (1984) (TV)	Grandma Didn't Wave Back	1984
Grass Arena, The (1991)	Grass Arena, The	1991
Great Pearl Tangle, The (1916)	Great Pearl Tangle, The	1916
Greatest, The (1977)	Greatest, The	1977
Grihasthi (1963)	Grihasthi	1963
Groeiperikelen (1985)	Groeiperikelen	1985
Groeten uit Finsterwalde (1997)	Groeten uit Finsterwalde	1997
Grüne Heinrich, Der (1994)	Grüne Heinrich, Der	1994
Guardian System, The (1986) (TV)	Guardian System, The	1986
Guardian's Luck, A (1912)	Guardian's Luck, A	1912
Guépiot, Le (1981)	Guépiot, Le	1981
Gulliver's Travels (2004)	Gulliver's Travels	2004
Gun, a Car, a Blonde, A (1997)	Gun, a Car, a Blonde, A	1997
Guns of August, The (1964)	Guns of August, The	1964
Gurama-to no yuwaku (1959)	Gurama-to no yuwaku	1959
Gusher, The (1913)	Gusher, The	1913
H.O.P.L.A.	H.O.P.L.A.	1982
Haida Carver (1964)	Haida Carver	1964
Halfway to Heaven and Hell (2003)	Halfway to Heaven and Hell	2003
Hampton Court Palace (1926)	Hampton Court Palace	1926
Handsworth Songs (1986)	Handsworth Songs	1986
Handvoll Gras, Eine (2000)	Handvoll Gras, Eine	2000
Happy Go Lovely (1951)	Happy Go Lovely	1951
Happy Hooligan Has Troubles with the Cook (1901)	Happy Hooligan Has Troubles with the Cook	1901
Hard to Thrill (1991) (V)	Hard to Thrill	1991
Hardesty House	Hardesty House	1986
Harry and Max (2004)	Harry and Max	2004
Harvest (1953) (TV)	Harvest	1953
Hatsukoi no koro (1925)	Hatsukoi no koro	1925
Hatta naltaki (1958)	Hatta naltaki	1958
Hatyare (1989)	Hatyare	1989
He Wai	He Wai	2001
He Won a Ranch (1914)	He Won a Ranch	1914
Heart of New York, The (1901)	Heart of New York, The	1901
Hei dai chou (1973)	Hei dai chou	1973
Help!	Help!	1988
Hemliga Svensson (1933)	Hemliga Svensson	1933
Hemmeligheder (1997)	Hemmeligheder	1997
Her Friend, the Doctor (1916)	Her Friend, the Doctor	1916
Here I Am (1962)	Here I Am	1962
Het is de Schraapzucht, gentlemen (1996) (TV)	Het is de Schraapzucht, gentlemen	1996
Heten, mint a gonoszok (1943)	Heten, mint a gonoszok	1943
Hey Babe! (1980)	Hey Babe!	1980
Hey There, It's Yogi Bear (1964)	Hey There, It's Yogi Bear	1964
Highway 61 (1991)	Highway 61	1991
Hija del hacendado, La (1997) (V)	Hija del hacendado, La	1997
Historias Cortas de Madrid (1999)	Historias Cortas de Madrid	1999
Hit the Deck (1955)	Hit the Deck	1955
Hjem til fem	Hjem til fem	1995
Hobbies: Model Bus Collector (2002)	Hobbies: Model Bus Collector	2002
Hocu zivjeti (1982)	Hocu zivjeti	1982
Hoempapa (1965)	Hoempapa	1965
Hoero! Tekken (1982)	Hoero! Tekken	1982
Holiday for Sinners (1952)	Holiday for Sinners	1952
Holt of the Secret Service (1941)	Holt of the Secret Service	1941
Hombre del Gran Río, El (1980)	Hombre del Gran Río, El	1980
Hombres cultos, Los (1972)	Hombres cultos, Los	1972
Home Is the Hero (1959)	Home Is the Hero	1959
Hook Up, The (2003)	Hook Up, The	2003
Horse Power (2002)	Horse Power	2002
Hot Foot (1922)	Hot Foot	1922
Hot Foot (1943)	Hot Foot	1943
Huan le ren jian (1959)	Huan le ren jian	1959
Humphrey Bogart and Lauren Bacall (2000) (TV)	Humphrey Bogart and Lauren Bacall	2000
Hungry Bachelors Club, The (1999)	Hungry Bachelors Club, The	1999
Hurlevent (1985)	Hurlevent	1985
I Could Go on Singing (1963)	I Could Go on Singing	1963
I Must Have a Name (1978)	I Must Have a Name	1978
I treti (1978) (TV)	I treti	1978
I Was a Communist for the FBI (1951)	I Was a Communist for the FBI	1951
Ibiza (1962)	Ibiza	1962
Ich schenk dir die Sterne (1991)	Ich schenk dir die Sterne	1991
Ichigensan (1999)	Ichigensan	1999
Identity-Kid (1988) (TV)	Identity-Kid	1988
Idu Namma Alu (1988)	Idu Namma Alu	1988
Ifugao (1954)	Ifugao	1954
Ijô no hitobito: Densetsuno nijino sankyôdai (1993)	Ijô no hitobito: Densetsuno nijino sankyôdai	1993
Ila Ayn (1958)	Ila Ayn	1958
Ildikó Szabó (1999)	Ildikó Szabó	1999
Illusion in Moll (1952)	Illusion in Moll	1952
Im Auto durch zwei Welten (1929)	Im Auto durch zwei Welten	1929
Im Schlaraffenland (1965) (TV)	Im Schlaraffenland	1965
Imphy, capitale de la France (1995)	Imphy, capitale de la France	1995
Importance of Goals, The (1951)	Importance of Goals, The	1951
Improper Conduct (2003) (V)	Improper Conduct	2003
In the City (2001)	In the City	2001
In the Mind of...	In the Mind of...	2000
Inauguration de la statue Rogier, Place de la Liberté (1897)	Inauguration de la statue Rogier, Place de la Liberté	1897
Indio Pluma Roja, El (1975)	Indio Pluma Roja, El	1975
Inferno, L' (1909)	Inferno, L'	1909
Infidelities (1983) (TV)	Infidelities	1983
Ingen mans kvinna (1953)	Ingen mans kvinna	1953
Inner Glow of Things, The (2003)	Inner Glow of Things, The	2003
Intimate Portrait: Bonnie Franklin (2003) (TV)	Intimate Portrait: Bonnie Franklin	2003
Intrepid Journeys	Intrepid Journeys	2003
Isis Blue 2 (1998) (V)	Isis Blue 2	1998
Isle of Abandoned Hope (1914)	Isle of Abandoned Hope	1914
Ispanska muha (1998)	Ispanska muha	1998
It's a Boy (1920)	It's a Boy	1920
Italiane e l'amore, Le (1961)	Italiane e l'amore, Le	1961
Iza néni (1933)	Iza néni	1933
Izmir sokaklarinda (1953)	Izmir sokaklarinda	1953
Jack o kavalaris (1979)	Jack o kavalaris	1979
Jagd nach der Wahrheit, Die (1920)	Jagd nach der Wahrheit, Die	1920
Jagratha (1989)	Jagratha	1989
Jake 2.0: The Tech (2003) (TV)	Jake 2.0: The Tech	2003
Jawbreakers (2001) (V)	Jawbreakers	2001
Jeolbeun poong gin ibyeol (1984)	Jeolbeun poong gin ibyeol	1984
Jeolmeun shigyetab (1982)	Jeolmeun shigyetab	1982
Jersey, The	Jersey, The	1999
Jesse Hawkes	Jesse Hawkes	1989
Jiang hu qi xia (1950)	Jiang hu qi xia	1950
Jiang shi zhi zun (1987)	Jiang shi zhi zun	1987
Jin ye bu she fang	Jin ye bu she fang	1989
Jiraiya (Ninjutsu sanyôden) (1937)	Jiraiya (Ninjutsu sanyôden)	1937
John and the Missus (1987)	John and the Missus	1987
Jones & Jury	Jones & Jury	1994
Josse (1974) (TV)	Josse	1974
Joyu to shijin (1935)	Joyu to shijin	1935
Juan Farías, el super hincha (2000)	Juan Farías, el super hincha	2000
Judging Ladies' Saddle Horses (1899)	Judging Ladies' Saddle Horses	1899
Junior Cursillo (1968)	Junior Cursillo	1968
Junky's Christmas, The (1993)	Junky's Christmas, The	1993
Just a Little Bull (1940)	Just a Little Bull	1940
Just Jim (1915)	Just Jim	1915
Kabare 011	Kabare 011	1997
Kadambari (1976)	Kadambari	1976
Kara gözlüm efkarlanma (1968)	Kara gözlüm efkarlanma	1968
Karaoglan - Camoka'nin intikami (1966)	Karaoglan - Camoka'nin intikami	1966
Kasefet, Ha-	Kasefet, Ha-	2000
Kata (1990)	Kata	1990
Katzensteg, Der (1915)	Katzensteg, Der	1915
Käyntikorttini... (1964)	Käyntikorttini...	1964
Ke chuan fu ren (1953)	Ke chuan fu ren	1953
Keep Posted	Keep Posted	1954
Keep Your Mouth Shut (1944)	Keep Your Mouth Shut	1944
Khedda (1929)	Khedda	1929
Kibris volkani (1965)	Kibris volkani	1965
Kickboxer from Hell (1992)	Kickboxer from Hell	1992
Killers, The (1964)	Killers, The	1964
King and Me, The (1999)	King and Me, The	1999
Kinyoubi no tsumatachie II: Otokotachi yo genki kai?	Kinyoubi no tsumatachie II: Otokotachi yo genki kai?	1984
Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)	Kishiwada shônen gurentai: Chikemuri junjô-hen	1997
Kislalar doldu bugün (1968)	Kislalar doldu bugün	1968
Knight Rider (1982) (TV)	Knight Rider	1982
Knight Rider (2008)	Knight Rider	2008
Knud Faber (1936)	Knud Faber	1936
Komischer Heiliger, Ein (1979)	Komischer Heiliger, Ein	1979
Kongelig familie, En	Kongelig familie, En	2003
Korea (1954)	Korea	1954
Koti Vidyalu Kuti Korake (1974)	Koti Vidyalu Kuti Korake	1974
Koze	Koze	1982
Kôsoku sentai Tâborenjâ	Kôsoku sentai Tâborenjâ	1989
König Khandobas Jagdausflug (1992)	König Khandobas Jagdausflug	1992
Közös után (1953)	Közös után	1953
Krajiske brigade (1952)	Krajiske brigade	1952
Kun taivas repeää (1997) (TV)	Kun taivas repeää	1997
Kühne Schwimmer, Der (1957)	Kühne Schwimmer, Der	1957
Kyôshoku sôkô Guyver Act II (1991) (V)	Kyôshoku sôkô Guyver Act II	1991
Laddie (1940)	Laddie	1940
Ladrona, La (1954)	Ladrona, La	1954
Lady, Let's Dance (1944)	Lady, Let's Dance	1944
Laser Moon (1993)	Laser Moon	1993
Last Alarm, The (1900)	Last Alarm, The	1900
Last Enchantment (1995)	Last Enchantment	1995
Laughing Cavalier, The (1917)	Laughing Cavalier, The	1917
Leave It to Cleavage 2 (1989)	Leave It to Cleavage 2	1989
Lei ting zhan jing (2000)	Lei ting zhan jing	2000
Lenin z Krakowa (1997)	Lenin z Krakowa	1997
Lesley Garrett: The Video (1998) (V)	Lesley Garrett: The Video	1998
Letac Joe i Marija smjela (1996)	Letac Joe i Marija smjela	1996
Licensed to Queer (2003)	Licensed to Queer	2003
Life Without Death (2000)	Life Without Death	2000
Lights! Camera! Orgy! (1979)	Lights! Camera! Orgy!	1979
Lindenwirtin, Die (1930)	Lindenwirtin, Die	1930
Lionheart (1990)	Lionheart	1990
Little Women in Transit (1996)	Little Women in Transit	1996
Littles, The	Littles, The	1983
Live with Regis and Kathie Lee	Live with Regis and Kathie Lee	-1
Long Feng cha lou (1990)	Long Feng cha lou	1990
Long Wei shan zhuang (1980)	Long Wei shan zhuang	1980
Looking in the Fishbowl (2001)	Looking in the Fishbowl	2001
Loot Maar (1980)	Loot Maar	1980
Love Potion (1987)	Love Potion	1987
Lovely Way to Die, A (1968)	Lovely Way to Die, A	1968
Luftschiff, Das (1983)	Luftschiff, Das	1983
Lump in My Throat, A (2001) (TV)	Lump in My Throat, A	2001
Lussuria (1986)	Lussuria	1986
Maalesh ya zahar (1950)	Maalesh ya zahar	1950
Maechun 3 (1993)	Maechun 3	1993
Magalir Mattum (1994)	Magalir Mattum	1994
Magdanas lurja (1955)	Magdanas lurja	1955
Magical Galatea, A (1907)	Magical Galatea, A	1907
Magkaaway (1978)	Magkaaway	1978
Mai lányok (1937)	Mai lányok	1937
Main Awara Hoon (1983)	Main Awara Hoon	1983
Main Street Kid, The (1948)	Main Street Kid, The	1948
Maîtresse pour couple (1979)	Maîtresse pour couple	1979
Making of 'The Prince and the Pauper', The (1978) (TV)	Making of 'The Prince and the Pauper', The	1978
Making of a Male Model (1983) (TV)	Making of a Male Model	1983
Malfunction Boulevard (2003)	Malfunction Boulevard	2003
Mammary Memories (1977)	Mammary Memories	1977
Man Alive	Man Alive	1982
Man from New Mexico, The (1932)	Man from New Mexico, The	1932
Man with No Shoes, The (1992)	Man with No Shoes, The	1992
Man Who Could Cheat Death, The (1959)	Man Who Could Cheat Death, The	1959
Man's Soul, A (1914)	Man's Soul, A	1914
Manasam (1997)	Manasam	1997
Mapping for Defence (1957)	Mapping for Defence	1957
Margots Freier (1919)	Margots Freier	1919
Maria på Kvarngården (1945)	Maria på Kvarngården	1945
Marine Crucible (1997)	Marine Crucible	1997
Marocain (1989) (TV)	Marocain	1989
Married? (1926)	Married?	1926
Marta y alrededores (1999)	Marta y alrededores	1999
Martori disparuti (1988)	Martori disparuti	1988
Martyrdom of Philip Strong, The (1916)	Martyrdom of Philip Strong, The	1916
Mary Shaffer: A Natural Force (1995)	Mary Shaffer: A Natural Force	1995
Masseur (1998)	Masseur	1998
Match Game 73	Match Game 73	1982
Matchless (1973)	Matchless	1973
Matu kemusi (1956)	Matu kemusi	1956
Maulkorb, Der (1958)	Maulkorb, Der	1958
Meaningful Sex (2000) (TV)	Meaningful Sex	2000
Mechanical Doll, The (1901)	Mechanical Doll, The	1901
Medicine Ball	Medicine Ball	1995
Medved (1961)	Medved	1961
Meeting with... (1991) (TV)	Meeting with...	1991
Mein Freund, der Scheich (1981)	Mein Freund, der Scheich	1981
Meister Eder und sein Pumuckl	Meister Eder und sein Pumuckl	1979
Melody Lingers On, The (1935)	Melody Lingers On, The	1935
Memorias de fin de siglo (1999)	Memorias de fin de siglo	1999
Memories of Old Manila (1993)	Memories of Old Manila	1993
Memory of Berlin (1998) (TV)	Memory of Berlin	1998
Mi amor por ti	Mi amor por ti	1969
Mi marido y mi padrino	Mi marido y mi padrino	1957
Midnight Intruders (1987)	Midnight Intruders	1987
Miei più cari amici, I (1998)	Miei più cari amici, I	1998
Miel et cendres (1996)	Miel et cendres	1996
Mies Marseillesta (1937)	Mies Marseillesta	1937
Milhaeng (1975)	Milhaeng	1975
Minal Devi (1923)	Minal Devi	1923
Minas de Angola (1953)	Minas de Angola	1953
Mister Jerico (1970) (TV)	Mister Jerico	1970
Mistry - altid den bedste (1996) (TV)	Mistry - altid den bedste	1996
Moderne Zyklop, Der (2002)	Moderne Zyklop, Der	2002
Moeder zonder vrees (1969)	Moeder zonder vrees	1969
Moglie in vacanza... l'amante in città, La (1980)	Moglie in vacanza... l'amante in città, La	1980
Moje miasto (2002) (TV)	Moje miasto	2002
Mokmeyeo bulleobwado (1969)	Mokmeyeo bulleobwado	1969
Mondo candido (1975)	Mondo candido	1975
Monique et Christiane (1976)	Monique et Christiane	1976
Monosabio, El (1977)	Monosabio, El	1977
Monsieur mon chauffeur (1926)	Monsieur mon chauffeur	1926
Moonchild (1994) (V)	Moonchild	1994
Mój Szczecin (1955)	Mój Szczecin	1955
Mr. Ima Jonah's Home Brew (1921)	Mr. Ima Jonah's Home Brew	1921
Mrs William Dixon (2002)	Mrs William Dixon	2002
MTV's Youth in Revolt (1998)	MTV's Youth in Revolt	1998
Mucho más que dos (1994) (TV)	Mucho más que dos	1994
Muddabanthi Puvvu (1976)	Muddabanthi Puvvu	1976
Mujer de Benjamín, La (1991)	Mujer de Benjamín, La	1991
Mulmangcho (1960)	Mulmangcho	1960
Muppet Movie, The (1979)	Muppet Movie, The	1979
Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	Music for UNICEF Concert: A Gift of Song, The	1979
Musical Offering from the Vatican: A Papal Concert, A (1992) (TV)	Musical Offering from the Vatican: A Papal Concert, A	1992
Naag Nagin (1989)	Naag Nagin	1989
Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die	2002
Nachts ging das Telefon (1962)	Nachts ging das Telefon	1962
Narodna biblioteka Srbije pod novim krovom (1976)	Narodna biblioteka Srbije pod novim krovom	1976
Narren im Schnee (1938)	Narren im Schnee	1938
Nasa tamnovanja (1954)	Nasa tamnovanja	1954
Nationaal songfestival (1989) (TV)	Nationaal songfestival	1989
Nebraska Supersonic (2001)	Nebraska Supersonic	2001
Nebunia capetelor (1997) (TV)	Nebunia capetelor	1997
Ned Kelly (1970)	Ned Kelly	1970
Needhikku Thalai Vanangu (1976)	Needhikku Thalai Vanangu	1976
Never Again (1915)	Never Again	1915
New Adventures of Lucky Jim, The	New Adventures of Lucky Jim, The	1982
New Girl in Town 5 (1994)	New Girl in Town 5	1994
New Orleans After Dark (1958)	New Orleans After Dark	1958
New Roof, The (1975)	New Roof, The	1975
New York Nick	New York Nick	2004
Next (1912)	Next	1912
Në gjurmët e shekujve (1960)	Në gjurmët e shekujve	1960
Nicht alles was fliegt, ist ein Vogel (1979)	Nicht alles was fliegt, ist ein Vogel	1979
No Fool Like an Old Fool (1914)	No Fool Like an Old Fool	1914
No Limits 4 (2003) (V)	No Limits 4	2003
No Reservations (1995) (V)	No Reservations	1995
No te engañes corazón (1937)	No te engañes corazón	1937
Nobody's Perfect (2002)	Nobody's Perfect	2002
Noch minderjährig (1957)	Noch minderjährig	1957
Nocna kafana (1967) (TV)	Nocna kafana	1967
Noor pensionär (1972) (TV)	Noor pensionär	1972
North West One (1999)	North West One	1999
Northwest Stampede (1948)	Northwest Stampede	1948
Not a Penny More, Not a Penny Less (1990) (TV)	Not a Penny More, Not a Penny Less	1990
Not Tonight Henry (1961)	Not Tonight Henry	1961
Nowy Jork, czwarta rano (1992)	Nowy Jork, czwarta rano	1992
Number's Alive! (1996) (TV)	Number's Alive!	1996
O lijepa, o draga, o slatka slobodo (1992)	O lijepa, o draga, o slatka slobodo	1992
Oben ohne Story, Die (1965)	Oben ohne Story, Die	1965
Obey the Law (1924)	Obey the Law	1924
Obra legislativa (1976)	Obra legislativa	1976
Oflag 64 (2001)	Oflag 64	2001
Old English (1930)	Old English	1930
On Becoming a Woman (1987)	On Becoming a Woman	1987
On Prescription Only (1960)	On Prescription Only	1960
On the High Card (1921)	On the High Card	1921
One Round Jeff (1920)	One Round Jeff	1920
Only Fools Buy Horses	Only Fools Buy Horses	2003
Only Way to Ski, The (1969) (TV)	Only Way to Ski, The	1969
Only Woman in Town, The (1912)	Only Woman in Town, The	1912
Ontstaan en Vergaan (1954)	Ontstaan en Vergaan	1954
Orlow, Der (1927)	Orlow, Der	1927
Other Side of Chelsea, The (1993) (V)	Other Side of Chelsea, The	1993
Otherwise Known as Sheila the Great (1989) (TV)	Otherwise Known as Sheila the Great	1989
Oublie-moi (1995)	Oublie-moi	1995
Our Gang Follies of 1936 (1935)	Our Gang Follies of 1936	1935
Oushou (1948)	Oushou	1948
Over Time	Over Time	1999
Overboard (1978) (TV)	Overboard	1978
Overland Riders (1946)	Overland Riders	1946
Öngyilkosság a Keletinél (1992)	Öngyilkosság a Keletinél	1992
Øllet på bjerget (2001)	Øllet på bjerget	2001
Pai Tirano, O (1941)	Pai Tirano, O	1941
Pakkathu Veetu Roja (1982)	Pakkathu Veetu Roja	1982
Palácio de Vênus (1980)	Palácio de Vênus	1980
Pals (1911)	Pals	1911
Pamela Congreve (1914)	Pamela Congreve	1914
Pandora's Clock (1996) (TV)	Pandora's Clock	1996
Panoramic View of Charleston Exposition (South Carolina) (1902)	Panoramic View of Charleston Exposition (South Carolina)	1902
Parfois trop d'amour (1992)	Parfois trop d'amour	1992
Parfum d'Yvonne, Le (1994)	Parfum d'Yvonne, Le	1994
Particles in Space (1966)	Particles in Space	1966
Passion for Punishment (1996) (V)	Passion for Punishment	1996
Pastry Panic (1951)	Pastry Panic	1951
Patchwork (2003)	Patchwork	2003
Path of the Paddle: White Water (1996)	Path of the Paddle: White Water	1996
Paths of Genius, The (1914)	Paths of Genius, The	1914
Patty (1962)	Patty	1962
Patty's Posse	Patty's Posse	2003
Payoff, The (1994) (V)	Payoff, The	1994
Páginas en negro, Unas (1950)	Páginas en negro, Unas	1950
Pázmány (1987) (TV)	Pázmány	1987
Pendekar bujang lapok (1959)	Pendekar bujang lapok	1959
Penny's Picnic (1938)	Penny's Picnic	1938
Pequeños gigantes, Los (1960)	Pequeños gigantes, Los	1960
Pergamin Konfederacji Warszawskiej 1573 roku (1988)	Pergamin Konfederacji Warszawskiej 1573 roku	1988
Perle von Tokay, Die (1953)	Perle von Tokay, Die	1953
Perra, La (1967)	Perra, La	1967
Perverted Stories 9 (1996) (V)	Perverted Stories 9	1996
Pick-up, The (1999)	Pick-up, The	1999
Picking up the Pieces	Picking up the Pieces	1998
Picnic (1975)	Picnic	1975
Platoon Leader (1988)	Platoon Leader	1988
Plays for Pleasure	Plays for Pleasure	1981
Pleasure at Her Majesty's (1976) (TV)	Pleasure at Her Majesty's	1976
Point douloureux, Le (1979)	Point douloureux, Le	1979
Political Discussion, A (1900)	Political Discussion, A	1900
Poslednja trka (1979)	Poslednja trka	1979
Pourquoi t'as fait ça? (2001)	Pourquoi t'as fait ça?	2001
Power Game, The (1997)	Power Game, The	1997
Premiere (1936)	Premiere	1936
Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	Preston Sturges: The Rise and Fall of an American Dreamer	1990
Pride of Ireland (2000)	Pride of Ireland	2000
Primal Instinct (1996) (V)	Primal Instinct	1996
Prince Edward Island in Motion; Home of the Silver Black Fox Industry (1914)	Prince Edward Island in Motion; Home of the Silver Black Fox Industry	1914
Prins hatt under jorden (1980)	Prins hatt under jorden	1980
Prival strannikov (1991)	Prival strannikov	1991
Private Secretary, The (1935)	Private Secretary, The	1935
Prize Performance	Prize Performance	1950
Productione Albanaises (1970)	Productione Albanaises	1970
Prokliatiye millioni (1917)	Prokliatiye millioni	1917
Proud Youth, The (1978)	Proud Youth, The	1978
Provinzonkel, Der (1926)	Provinzonkel, Der	1926
Psahnondas gia tin Pinelopi (1981)	Psahnondas gia tin Pinelopi	1981
Pueblo en armas (1961)	Pueblo en armas	1961
Pumps (1999)	Pumps	1999
Puppet File, The (1994) (V)	Puppet File, The	1994
Qaid (1975)	Qaid	1975
Qiu tian de yin xiang (1983)	Qiu tian de yin xiang	1983
Quand on est amoureux c'est merveilleux (1999)	Quand on est amoureux c'est merveilleux	1999
Queer Son (1993)	Queer Son	1993
Queretaro 78 (1977)	Queretaro 78	1977
Question of Trust, A (1920)	Question of Trust, A	1920
Question of Values, A (1971)	Question of Values, A	1971
Quiet Wedding (1941)	Quiet Wedding	1941
Radevou me mian agnosti (1968)	Radevou me mian agnosti	1968
Rage (1966)	Rage	1966
Rainbow	Rainbow	1992
Rainha Louca, A	Rainha Louca, A	1967
Rajakota Rahasyam (1971)	Rajakota Rahasyam	1971
Raju-Peda (1954)	Raju-Peda	1954
Ramayan	Ramayan	1988
Rang Berang (1948)	Rang Berang	1948
Raoul Wallenberg: Between the Lines (1986)	Raoul Wallenberg: Between the Lines	1986
Ratnadeep (1979)	Ratnadeep	1979
Rats, The (2002) (TV)	Rats, The	2002
Rave (2000)	Rave	2000
Reaction Stick (1998)	Reaction Stick	1998
Real Bullets (1990)	Real Bullets	1990
Rebaño, El (1997)	Rebaño, El	1997
Red Man (2001)\t\t\t\t\t\t2001\t(shot 1997)	Red Man	-1
Reed, México insurgente (1973)	Reed, México insurgente	1973
Regard des autres, Le (1980)	Regard des autres, Le	1980
Reise ohne Wiederkehr (1989)	Reise ohne Wiederkehr	1989
Repelsteeltje (1973)	Repelsteeltje	1973
Reportero, El (1987)	Reportero, El	1987
Respect the Law (1941)	Respect the Law	1941
Return of Jewel Thief (1996)	Return of Jewel Thief	1996
Revolução de 30 (1980)	Revolução de 30	1980
Revolver: Calling the Shots (2002) (V)	Revolver: Calling the Shots	2002
Ricksha Mama (1992)	Ricksha Mama	1992
Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa?	1968
Río de la muerte (1977)	Río de la muerte	1977
Río de las ánimas, El (1964)	Río de las ánimas, El	1964
Road Songs: A Portrait of Robbie Robertson (2001) (TV)	Road Songs: A Portrait of Robbie Robertson	2001
Roar, Navy, Roar (1942)	Roar, Navy, Roar	1942
Rock Me Slow (1999)	Rock Me Slow	1999
Rocket Ranger (1963) (TV)	Rocket Ranger	1963
Rogue with a Heart, The (1916)	Rogue with a Heart, The	1916
Rolling in the Sky: Red Arrows (1986) (V)	Rolling in the Sky: Red Arrows	1986
Romances de terre et d'eau (2002)	Romances de terre et d'eau	2002
Romeo und Julia auf dem Dorfe (1984)	Romeo und Julia auf dem Dorfe	1984
Roommates (2002) (V)	Roommates	2002
Roped by Radio (1925)	Roped by Radio	1925
Rosary, The (1911)	Rosary, The	1911
Rose Garden, The (1995)	Rose Garden, The	1995
Rot in Zanzibar (1954)	Rot in Zanzibar	1954
Rounding Up the Bandits (1923)	Rounding Up the Bandits	1923
Rugby Special	Rugby Special	-1
Ruimte in, De	Ruimte in, De	1959
Rumbo a Brasilia (1960)	Rumbo a Brasilia	1960
Sainte farce, La (1972) (TV)	Sainte farce, La	1972
Sairandhri (1939)	Sairandhri	1939
Samlaren (1989)	Samlaren	1989
Samozvantsy	Samozvantsy	1997
Sans titre - Drames brefs (2003)	Sans titre - Drames brefs	2003
Santaan (1993)	Santaan	1993
Santiago (1956)	Santiago	1956
Scene in Legation Street, Shanghai (1901)	Scene in Legation Street, Shanghai	1901
Scènes d'amour en Bavière (1995)	Scènes d'amour en Bavière	1995
Scherzo - Verwitterte Melodie (1943)	Scherzo - Verwitterte Melodie	1943
Schneewittchen... und die schwangere Königin (2001) (V)	Schneewittchen... und die schwangere Königin	2001
Scream Queens Swimsuit Sensations (1992) (V)	Scream Queens Swimsuit Sensations	1992
Se på tegnsprog	Se på tegnsprog	1988
Sealed Lips (1931)	Sealed Lips	1931
Seine beste Rolle (1989) (TV)	Seine beste Rolle	1989
Selbstbedienung (1968) (TV)	Selbstbedienung	1968
Semideus, O	Semideus, O	1973
Seokhwachon (1972)	Seokhwachon	1972
Serpent and the Sandman (1999) (V)	Serpent and the Sandman	1999
Sexual Meditation: Hotel (1970)	Sexual Meditation: Hotel	1970
Shadow Magic (2000)	Shadow Magic	2000
Shadow of the Cat (1961)	Shadow of the Cat	1961
Shadows of Chinatown (1926)	Shadows of Chinatown	1926
Shattering the Silences: The Case for Minority Faculty (1997)	Shattering the Silences: The Case for Minority Faculty	1997
She-Wolf, The (1931)	She-Wolf, The	1931
Sheetrock (1997)	Sheetrock	1997
Shin kitsune no tameki (1962)	Shin kitsune no tameki	1962
Shindig! Presents British Invasion Vol. 2 (1992) (V)	Shindig! Presents British Invasion Vol. 2	1992
Shoal Light, The (1915)	Shoal Light, The	1915
Short in the Saddle (1962)	Short in the Saddle	1962
Showa onna bakuto (1972)	Showa onna bakuto	1972
Showa onnamichi: Rashomon (1972)	Showa onnamichi: Rashomon	1972
Shuranosuke zamma-ken (1996)	Shuranosuke zamma-ken	1996
Si las mujeres mandaran (o mandasen) (1982)	Si las mujeres mandaran (o mandasen)	1982
Sign Please (1933)	Sign Please	1933
Sininen imettäjä (1985)	Sininen imettäjä	1985
Sitapur Ki Geeta (1987)	Sitapur Ki Geeta	1987
Sk8 Life (2004)	Sk8 Life	2004
Skal vi være kærester? (1997)	Skal vi være kærester?	1997
Skies sto peristilio	Skies sto peristilio	2001
Skinny the Moocher (1939)	Skinny the Moocher	1939
Skizbe (1967)	Skizbe	1967
Slapstick and Old Lace	Slapstick and Old Lace	1971
Sleeping with Seattle (1993) (V)	Sleeping with Seattle	1993
Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	Sluts of the Nyle 2: Celebrity Sluts	2001
Small Town Idol, A (1921)	Small Town Idol, A	1921
Sniper 3 (2004) (V)	Sniper 3	2004
Social Secretary, The (1912)	Social Secretary, The	1912
Solo y conmigo (2000)	Solo y conmigo	2000
Solomon and Sheba (1959)	Solomon and Sheba	1959
Some Kind of Hero (1982)	Some Kind of Hero	1982
Some of Your Bits Ain't Nice (1982)	Some of Your Bits Ain't Nice	1982
Somebody Lied (1923)	Somebody Lied	1923
Something to Think About (1920)	Something to Think About	1920
Son-Daughter, The (1932)	Son-Daughter, The	1932
Sons of the Sea (1925)	Sons of the Sea	1925
Sous le signe du vaudou (1974)	Sous le signe du vaudou	1974
Sous les draps, les étoiles (1989)	Sous les draps, les étoiles	1989
South Park Rally (1999) (VG)	South Park Rally	1999
Southern Comfort (1995) (V)	Southern Comfort	1995
SøndagsÅpent	SøndagsÅpent	1993
Space Invaders '95 (1995) (VG)	Space Invaders '95	1995
Sparks Live In London (2000) (V)	Sparks Live In London	2000
Speed (1925)	Speed	1925
Speelmeisje (1968)	Speelmeisje	1968
Spoonful of Sugar (2003)	Spoonful of Sugar	2003
Spray Jet (1986)	Spray Jet	1986
Square Shooter (1935)	Square Shooter	1935
Staatsanwalt hat das Wort - Gefährliche Freundschaft, Der (1982) (TV)	Staatsanwalt hat das Wort - Gefährliche Freundschaft, Der	1982
Stalked (1972)	Stalked	1972
Standstill (1995)	Standstill	1995
Star Cuts 56: Ginger Lynn (1987) (V)	Star Cuts 56: Ginger Lynn	1987
Starwoids (2001)	Starwoids	2001
Strictly Unconventional (1930)	Strictly Unconventional	1930
Stunde der Wahrheit (1958) (TV)	Stunde der Wahrheit	1958
Substitute Wife, The (1994) (TV)	Substitute Wife, The	1994
Sunce na cetiri zvonika (1976)	Sunce na cetiri zvonika	1976
Suranga Mhantyat Mala (1967)	Suranga Mhantyat Mala	1967
Susa - Mali (1984)	Susa - Mali	1984
Swami MD #1: Coming to America (1999) (V)	Swami MD #1: Coming to America	1999
Swedish Erotica 4 (1981)	Swedish Erotica 4	1981
Ta lai zi hu zhi ming shi (1994)	Ta lai zi hu zhi ming shi	1994
Ta' det som en mand, frue! (1975)	Ta' det som en mand, frue!	1975
Taim (1977)	Taim	1977
Tales from the Tower (2001)	Tales from the Tower	2001
Tall, Dark and Handsome (1941)	Tall, Dark and Handsome	1941
Tamr henna (1957)	Tamr henna	1957
Tarnished Heroes (1961)	Tarnished Heroes	1961
Tarzan Finds a Son! (1939)	Tarzan Finds a Son!	1939
Tatort - 3:0 für Veigl (1974) (TV)	Tatort - 3:0 für Veigl	1974
Tatort - Aus der Traum (1986) (TV)	Tatort - Aus der Traum	1986
Tatort - Das stille Geschäft (1977) (TV)	Tatort - Das stille Geschäft	1977
Tatort - Der Fremdwohner (2002) (TV)	Tatort - Der Fremdwohner	2002
Tatort - Der Prügelknabe (2003) (TV)	Tatort - Der Prügelknabe	2003
Tatort - Der Tausch (1986) (TV)	Tatort - Der Tausch	1986
Tatort - Der vierte Mann (2004) (TV)	Tatort - Der vierte Mann	2004
Tatort - Eiskalt (1997) (TV)	Tatort - Eiskalt	1997
Tatort - Feuerwerk für eine Leiche (1988) (TV)	Tatort - Feuerwerk für eine Leiche	1988
Tatort - Feuerzauber (1977) (TV)	Tatort - Feuerzauber	1977
Tatort - Hahnenkämpfe (1997) (TV)	Tatort - Hahnenkämpfe	1997
Tatort - Kalte Wut (2001) (TV)	Tatort - Kalte Wut	2001
Tatort - Kein Kinderspiel (1980) (TV)	Tatort - Kein Kinderspiel	1980
Tatort - Kindstod (2001) (TV)	Tatort - Kindstod	2001
Tatort - Leiche im Keller (1986) (TV)	Tatort - Leiche im Keller	1986
Tatort - Lockvögel (1996) (TV)	Tatort - Lockvögel	1996
Tatort - Mord auf Raten (1980) (TV)	Tatort - Mord auf Raten	1980
Tatort - Mord im Ministerium (1974) (TV)	Tatort - Mord im Ministerium	1974
Tatort - Mordverdacht (1971) (TV)	Tatort - Mordverdacht	1971
Tatort - Rattenlinie (2000) (TV)	Tatort - Rattenlinie	2000
Tatort - Rattennest (1972) (TV)	Tatort - Rattennest	1972
Tatort - Schimanskis Waffe (1990) (TV)	Tatort - Schimanskis Waffe	1990
Tatort - Schlußverkauf (1978) (TV)	Tatort - Schlußverkauf	1978
Tatort - Schwarzer Advent (1998) (TV)	Tatort - Schwarzer Advent	1998
Tatort - Tod aus der Vergangenheit (1992) (TV)	Tatort - Tod aus der Vergangenheit	1992
Tatort - Tödlicher Treff (1987) (TV)	Tatort - Tödlicher Treff	1987
Tatort - Veras Waffen (2003) (TV)	Tatort - Veras Waffen	2003
Tatort - Willkommen in Köln (1997) (TV)	Tatort - Willkommen in Köln	1997
Taxi-Gattin (1950)	Taxi-Gattin	1950
Tänzer meiner Frau, Der (1925)	Tänzer meiner Frau, Der	1925
Tea at the Ritz (1963) (TV)	Tea at the Ritz	1963
Team One (2003)	Team One	2003
Teammates, The (2003) (TV)	Teammates, The	2003
Teenage Mother (1968)	Teenage Mother	1968
Teenage Tease (1983)	Teenage Tease	1983
Telaraña, La (1990)	Telaraña, La	1990
Teleftea Sinentefxi tou Nikou Svoronou: O Nikos Svoronos Milai gia ton Niko Poulantza (1988)	Teleftea Sinentefxi tou Nikou Svoronou: O Nikos Svoronos Milai gia ton Niko Poulantza	1988
Tempest (1982)	Tempest	1982
Terminal Case of Love (1998) (V)	Terminal Case of Love	1998
Terra (2003)	Terra	2003
Tetri mkhedari (1929)	Tetri mkhedari	1929
Thachali Marumakan Chandu (1974)	Thachali Marumakan Chandu	1974
Thangamaana Raasa (1989)	Thangamaana Raasa	1989
Thema's van de inspiratie (1938)	Thema's van de inspiratie	1938
They Nest (2000) (TV)	They Nest	2000
They Were Four (1917)	They Were Four	1917
They Won't Believe Me (1947)	They Won't Believe Me	1947
This Pretty Planet: Tom Chapin in Concert (1992) (V)	This Pretty Planet: Tom Chapin in Concert	1992
Three Men on a Horse (1936)	Three Men on a Horse	1936
Three's Company: The E! True Hollywood Story (1998) (TV)	Three's Company: The E! True Hollywood Story	1998
Thrills of Music: Skitch Henderson and His Orchestra (1948)	Thrills of Music: Skitch Henderson and His Orchestra	1948
Thunderbirds (1952)	Thunderbirds	1952
Tiddly-Winks (1927)	Tiddly-Winks	1927
Time Killer (2002)	Time Killer	2002
Tip 2 (1990)	Tip 2	1990
Titanes en el ring contraataca (1983)	Titanes en el ring contraataca	1983
To Please One Woman (1920)	To Please One Woman	1920
Tobago menjajet kurs (1966)	Tobago menjajet kurs	1966
Toboy Tobaye (1974)	Toboy Tobaye	1974
Toda una vida	Toda una vida	1981
Tom, Dick and Harriet	Tom, Dick and Harriet	1983
Tongdang wansui (1989)	Tongdang wansui	1989
Tony's Big Brother (1993) (V)	Tony's Big Brother	1993
Tor zum Garten der Träume, Das (1977) (TV)	Tor zum Garten der Träume, Das	1977
Torchy Plays with Dynamite (1939)	Torchy Plays with Dynamite	1939
Toreador (1909)	Toreador	1909
Tortured Passions (1994) (V)	Tortured Passions	1994
Toruko 110-ban: monzetsu kurage (1978)	Toruko 110-ban: monzetsu kurage	1978
Trails of the Golden West (1931)	Trails of the Golden West	1931
Train de plaisir (1936)	Train de plaisir	1936
Tramps (1897)	Tramps	1897
Transaction (1986) (V)	Transaction	1986
Trapped (1996) (V)	Trapped	1996
Trastevere (1971)	Trastevere	1971
Traum des Hauptmann Loy, Der (1961)	Traum des Hauptmann Loy, Der	1961
Trauma (1962)	Trauma	1962
Tres historias de amor (1978)	Tres historias de amor	1978
Trials of Life (1997) (TV)	Trials of Life	1997
Trials of Rosie O'Neill, The	Trials of Rosie O'Neill, The	1991
Trip Around the Union Loop (1903)	Trip Around the Union Loop	1903
Triple Play: Roger Corman, Hollywood's Wild Angel (1980)	Triple Play: Roger Corman, Hollywood's Wild Angel	1980
Trois couronnes du matelot, Les (1983)	Trois couronnes du matelot, Les	1983
Tronco do Ipê, O	Tronco do Ipê, O	1982
Tu-no (1999)	Tu-no	1999
Tu, mi amor... (1998)	Tu, mi amor...	1998
Tudo é Música (1957)	Tudo é Música	1957
Tunnel (1968)	Tunnel	1968
Twins' Tea Party, The (1897)	Twins' Tea Party, The	1897
Two Roaming Champs (1950)	Two Roaming Champs	1950
U nikh yest rodina (1950)	U nikh yest rodina	1950
Uit onze zwarte vijvers (2000) (TV)	Uit onze zwarte vijvers	2000
Ukhodya, ostayutsya (1987)	Ukhodya, ostayutsya	1987
Ukiyoe zangoku monogatari (1968)	Ukiyoe zangoku monogatari	1968
Un per l'altre, L'	Un per l'altre, L'	-1
Und tschüss! - Ballermann olé (1997) (TV)	Und tschüss! - Ballermann olé	1997
Under a Flag of Truce (1912)	Under a Flag of Truce	1912
Under Polarkredsens himmel (1921)	Under Polarkredsens himmel	1921
Unknown Cyclist, The (1998)	Unknown Cyclist, The	1998
Unmaiyaian Vetri (1950)	Unmaiyaian Vetri	1950
Unmasked (1929)	Unmasked	1929
Unstrung Heroes (1995)	Unstrung Heroes	1995
Unsullied Shield, An (1913)	Unsullied Shield, An	1913
Up in Mabel's Room (1944)	Up in Mabel's Room	1944
Utgo saneun Park Seo-bang (1972)	Utgo saneun Park Seo-bang	1972
Último Vôo do Condor, O (1982)	Último Vôo do Condor, O	1982
V trestném území (1947)	V trestném území	1947
Valentina	Valentina	1993
Valet maître, Le (1941)	Valet maître, Le	1941
Valley of the Giants (1938)	Valley of the Giants	1938
Vamos juntos	Vamos juntos	1979
Varavu Ettana Selavu Pathana (1994)	Varavu Ettana Selavu Pathana	1994
Vase srce je u vasim rukama (1977)	Vase srce je u vasim rukama	1977
Vatsa sisään, rinta ulos! (1959)	Vatsa sisään, rinta ulos!	1959
Veer Bhimsen (1923)	Veer Bhimsen	1923
Veine, La (1928)	Veine, La	1928
Velké prání (1981)	Velké prání	1981
Veneno para las hadas (1984)	Veneno para las hadas	1984
Vera (1980)	Vera	1980
Verano azul	Verano azul	1978
Vérité nue, La (2001)	Vérité nue, La	2001
VH-1 to One: Paula Abdul (1992) (TV)	VH-1 to One: Paula Abdul	1992
Viagem ao Céu da Boca (1981)	Viagem ao Céu da Boca	1981
Victim, The (1930)	Victim, The	1930
Vida total	Vida total	-1
Videostar: The Magazine On Tape (1992) (V)	Videostar: The Magazine On Tape	1992
Virginian, The (2000) (TV)	Virginian, The	2000
Vita da cani (1950)	Vita da cani	1950
Vita jela zelen bor (1967)	Vita jela zelen bor	1967
Viva Cariri (1969)	Viva Cariri	1969
Vo l'dakh okeana (1953)	Vo l'dakh okeana	1953
Voice of Hollywood No. 3, The (1929)	Voice of Hollywood No. 3, The	1929
Voices, The (1955) (TV)	Voices, The	1955
Voiture électronique, La (1970)	Voiture électronique, La	1970
Vow to Kill, A (1995) (TV)	Vow to Kill, A	1995
Voz del deber, La (1927)	Voz del deber, La	1927
Wall Street Tragedy (1916)	Wall Street Tragedy	1916
Warning: Parental Advisory (2002) (TV)	Warning: Parental Advisory	2002
Was She There (1997) (TV)	Was She There	1997
Wastelands (1993)	Wastelands	1993
Waterloo po cesku (2002)	Waterloo po cesku	2002
Way of a Man with a Maid, The (1912)	Way of a Man with a Maid, The	1912
Way of the World, The (1920)	Way of the World, The	1920
Wedding on the Volga, The (1929)	Wedding on the Volga, The	1929
Weekend In Diego (2000) (V)	Weekend In Diego	2000
Wei le liu shi yi ge jie ji xiong di (1960)	Wei le liu shi yi ge jie ji xiong di	1960
Weiße Stadt, Die (1980) (TV)	Weiße Stadt, Die	1980
Weryfikacja (1987)	Weryfikacja	1987
Wette um eine Seele, Die (1918)	Wette um eine Seele, Die	1918
When Baby Forgot (1917)	When Baby Forgot	1917
When Changing Rooms Met Ground Force II (2000) (TV)	When Changing Rooms Met Ground Force II	2000
Where Our Strength Lies (1971)	Where Our Strength Lies	1971
Where the Buffalo Roam (1966) (TV)	Where the Buffalo Roam	1966
White Peak Farm	White Peak Farm	1988
Who Killed Doc Robbin? (1948)	Who Killed Doc Robbin?	1948
Wild Pair, The (1987)	Wild Pair, The	1987
Wilderness of Youth (1922)	Wilderness of Youth	1922
Wind of Changes, The (1996)	Wind of Changes, The	1996
Winning Lines	Winning Lines	2000
Wives of the Prophet, The (1926)	Wives of the Prophet, The	1926
Wonhanui gongdongmyuji (1983)	Wonhanui gongdongmyuji	1983
Woof! Woof! Uncle Matty's Guide to Dog Training (1997) (V)	Woof! Woof! Uncle Matty's Guide to Dog Training	1997
Word's Fail (2000)	Word's Fail	2000
Wozu denn über diese Leute einen Film (1980)	Wozu denn über diese Leute einen Film	1980
WWF Attitude (1999) (VG)	WWF Attitude	1999
Xi ya tu da tu sha (1989)	Xi ya tu da tu sha	1989
Xiao wu shi (1969)	Xiao wu shi	1969
Xu gu du chun meng (1932)	Xu gu du chun meng	1932
Ya shagayu po Moskve (1963)	Ya shagayu po Moskve	1963
Yank in Viet-Nam, A (1964)	Yank in Viet-Nam, A	1964
Yearning for Love (1926)	Yearning for Love	1926
Yeomen of the Guard, The (1978) (TV)	Yeomen of the Guard, The	1978
Yeux ouverts, Les (1913)	Yeux ouverts, Les	1913
Yokai ningen bem	Yokai ningen bem	1969
Yorokobi mo kanashimi mo ikutoshitsuki (1957)	Yorokobi mo kanashimi mo ikutoshitsuki	1957
You Can't Stop on a Dime (1954)	You Can't Stop on a Dime	1954
You jian chin tian (1981)	You jian chin tian	1981
Young People's Concerts: Holst - Planets, The (1972) (TV)	Young People's Concerts: Holst - Planets, The	1972
Young Sherlock: The Mystery of the Manor House	Young Sherlock: The Mystery of the Manor House	1982
Youthquake! (1975)	Youthquake!	1975
Zahrada (1968)	Zahrada	1968
Zao zhi dang cu wo bu jia (1956)	Zao zhi dang cu wo bu jia	1956
Zarte Saftmösen (1997) (V)	Zarte Saftmösen	1997
Zatoichi sakate giri (1965)	Zatoichi sakate giri	1965
Zendegi dar meh (1999)	Zendegi dar meh	1999
Zhong huan ying xiong (1991)	Zhong huan ying xiong	1991
Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin	1971
Ztráta pameti	Ztráta pameti	2001
Zycie za zycie (1991)	Zycie za zycie	1991
\.


--
-- Data for Name: producer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.producer (id, name, movie_id, role) FROM stdin;
2228	Alexander, Zbigniew	Rot in Zanzibar (1954)	producer
3121	Albert, Carl A.	Youthquake! (1975)	producer
3469	Alemán Velasco, Miguel	Toda una vida	producer
4449	Ames, Stefani	Gun, a Car, a Blonde, A (1997)	co-producer
4736	Amritraj, Ashok	Black Thunder (1997)	producer
5644	Alma, Dafna	Nobody's Perfect (2002)	line producer
5813	Alonso, Ernesto	Grandes ilusiones	producer
5831	Alonso, Ernesto	Mi amor por ti	producer
6013	Alroy, Hagar	Kasefet, Ha-	producer
7348	Andra, Fern	Gebannt und erlöst (1919)	producer
7402	Andreani, Marc	Cheveux de ma mère, Les (2004)	producer
7557	Andrien, Jean-Jacques (I)	Parfois trop d'amour (1992)	producer
9042	Arraes, Guel	Grande Família, A	producer
10425	Arnold, Susan (I)	Unstrung Heroes (1995)	producer
10912	B.A., Subba Rao	Raju-Peda (1954)	producer
11081	Auer, John H.	Thunderbirds (1952)	associate producer
12526	Aslan, Muzaffer	Dertli irmak (1958)	producer
13518	Badalato, Bill	Unstrung Heroes (1995)	producer
13768	Bairstow, David (II)	Mapping for Defence (1957)	producer
13778	Bairstow, David (II)	On Prescription Only (1960)	producer
14093	Baker, Robert S.	Fiction Makers, The (1968)	producer
14099	Baker, Robert S.	Home Is the Hero (1959)	producer
15701	Banfield, George J.	Hampton Court Palace (1926)	producer
16428	Barbera, Joseph	Hey There, It's Yogi Bear (1964)	producer
16860	Bareiß, Andreas	Handvoll Gras, Eine (2000)	executive producer
17657	Baron, Caroline	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	co-producer
17806	Barranco, Luis	Reed, México insurgente (1973)	producer
18397	Barsky, Bud	Shadows of Chinatown (1926)	producer
19152	Batcheller, George R.	Forgotten (1933)	producer
19327	Batstone, Chris (I)	Face in the Frame, The (1998)	associate producer
19844	Bavelles, Christopher	Adventures of Mark & Brian, The	segment producer
20777	Becker, Kimberly	Hungry Bachelors Club, The (1999)	executive producer
21330	Behrman, Jason	Bobby Jones, Stroke of Genius (2004)	co-producer
21681	Bell, Ansley	Amazing Vacation Homes (2004) (TV)	associate producer
23686	Berg, Barry M.	Bradys, The	producer
24595	Berman, Monty	Home Is the Hero (1959)	producer
25169	Bernhardt, Steven	Tempest (1982)	co-producer
25363	Bernstein, Jay	Three's Company: The E! True Hollywood Story (1998) (TV)	producer
25507	Bernuy, Belén	Marta y alrededores (1999)	executive producer
26035	Bessey, Michele	Eddie Izzard: Circle (2002) (V)	line producer) (as Michelle Bessey
26143	Best, Russell	New York Nick	executive producer
26230	Betsworth, Marc	Road Songs: A Portrait of Robbie Robertson (2001) (TV)	producer
26270	Bettman, Gary M.	Gun, a Car, a Blonde, A (1997)	producer
26770	Bianchini, Albert	Live with Regis and Kathie Lee	producer
26772	Bianchini, Lorena	Juan Farías, el super hincha (2000)	producer
27375	Bijelonic, Gordon	Serpent and the Sandman (1999) (V)	producer
27926	Birdthistle, William	Fishing with Gandhi (1998)	producer
29544	Blank, Jonathan	Anarchy TV (1997)	producer
29745	Blatt, Daniel H.	Virginian, The (2000) (TV)	executive producer
29756	Blatt, Joseph	BreakThrough: The Changing Face of Science in America	co-executive producer
32035	Bone, Margery (II)	North West One (1999)	producer
32724	Borelli, Sergio (III)	Moglie in vacanza... l'amante in città, La (1980)	producer
32938	Boris, Robert (I)	Some Kind of Hero (1982)	associate producer
33288	Bosklopper, Stienette	Het is de Schraapzucht, gentlemen (1996) (TV)	producer
33925	Bourgeois, Marc	Point douloureux, Le (1979)	producer
34180	Boué, Carlos	Indio Pluma Roja, El (1975)	chief producer
34191	Bovaira, Fernando	Caja 507, La (2002)	producer
34205	Bovaira, Fernando	Vanilla Sky (2001)	executive producer
34504	Bowser, Kenneth	Preston Sturges: The Rise and Fall of an American Dreamer (1990) (TV)	producer
35212	Brady, Deba	Team One (2003)	co-producer
35247	Brady, Ray (I)	Team One (2003)	producer
35351	Braine, Tim	Comrades of Summer, The (1992) (TV)	producer
35405	Bramble, A.V.	Laughing Cavalier, The (1917)	producer
35636	Branco, Paulo (I)	Trois couronnes du matelot, Les (1983)	executive producer
35654	Branco, Paulo (I)	Água e Sal (2002)	producer
37418	Breiman, Eric M.	Ava's Magical Adventure (1994)	line producer
37777	Brest, Martin	Gigli (2003)	producer
38396	Brind, Bill	Path of the Paddle: White Water (1996)	producer
38488	Briskin, Frederick	Adventures of Rin Tin Tin, The	producer
38909	Brock, Lou (I)	Hot Foot (1943)	producer
39250	Broidy, William F.	Big Tip Off, The (1955)	producer
39951	Brost, Frederic W.	Gigli (2003)	associate producer
40269	Brown, Clarence (I)	Son-Daughter, The (1932)	producer
41177	Brubaker, James D.	Beer (1985)	executive producer
41689	Brunton, Colin	Highway 61 (1991)	producer
42645	Bueno, José Luis (I)	Ángeles de Puebla, Los (1968)	producer
43296	Burgess, Lesley (II)	Rainbow	1985-1990
43556	Burkert, Gloria	Tatort - Schwarzer Advent (1998) (TV)	producer
43594	Burkhard, Kelly	Live with Regis and Kathie Lee	2000-2001
44666	Busch, Hans-Erich	Dumm gelaufen (1997)	executive producer
45512	Bélanger, Gilles	Boyclops (2004)	executive producer
46615	Calderón, Pedro A.	Club de señoritas (1956)	producer
47107	Calvert, Todd	New York Nick	producer
49284	Carlisle, Matthew	Unknown Cyclist, The (1998)	producer
50062	Carr, Trem	Lady, Let's Dance (1944)	executive producer
50347	Carreras, Michael	Man Who Could Cheat Death, The (1959)	producer
50805	Carson, Joan	Overboard (1978) (TV)	associate producer
51918	Castro, José Alberto	Valentina	producer
52283	Cava, Jose	Corrida de Vicente Segura y Cocherito de Bilbao (1911)	producer
52475	Cazaubiel, Michel	Cheveux de ma mère, Les (2004)	associate producer
52675	Cecchi Gori, Rita	Miei più cari amici, I (1998)	producer
52787	Cecchi Gori, Vittorio	Miei più cari amici, I (1998)	producer
53662	Chalopin, Jean	Littles, The	executive producer
54236	Chang, Steve (II)	Shadow Magic (2000)	executive producer
54433	Chaplin, Saul	I Could Go on Singing (1963)	producer
54474	Chapman, Graham	Love Potion (1987)	executive producer
54878	Chartoff, Robert	Beer (1985)	producer
55392	Cheema, Joga Singh	Chann Pardesi (1980)	producer
55555	Cheng, Paul (II)	Lei ting zhan jing (2000)	associate producer: Hong Kong segment
55566	Cheng, Zheng	Shadow Magic (2000)	co-producer
55855	Chertok, Jack	Respect the Law (1941)	producer
56290	Chignell, Caroline	Eddie Izzard: Circle (2002) (V)	executive producer
56410	Chimenz, Marco	È già ieri (2004)	producer
56611	Chiu, Shun-Ching	Shadow Magic (2000)	executive producer
56614	Chiu, Yu Keung	Jin ye bu she fang	producer
56953	Chopra, B.R.	Ramayan	co-producer
56969	Chopra, Ravi	Ramayan	co-producer
57016	Chory, James	Face to Face (1990) (TV)	supervising producer) (as Jim Chory
58364	Circelli, Nick	Looking in the Fishbowl (2001)	associate producer
58492	Claflin, John	They Nest (2000) (TV)	co-producer
58825	Clark, Dick (I)	Winning Lines	executive producer
59226	Clarkson, Wyeth	Sk8 Life (2004)	producer
60373	Cobb, Melissa	Warning: Parental Advisory (2002) (TV)	executive producer
61219	Cohen, Maury M.	Forgotten (1933)	producer
61466	Cohn, Arthur	Amanti (1968)	producer
61833	Cole, Frank (II)	Life Without Death (2000)	producer
61859	Cole, Mark (II)	In the Mind of...	episode "The criminal Profiler"
62974	Consiglio, Jeff	Dinner Date 1 (2002) (TV)	producer
63108	Contreras Torres, Miguel	No te engañes corazón (1937)	producer
64368	Copans, Richard	Imphy, capitale de la France (1995)	producer
64536	Coppola, Francis Ford	Junky's Christmas, The (1993)	producer
64975	Corman, Roger	Black Thunder (1997)	producer
65550	Correa, Arturo	Tu, mi amor... (1998)	producer
65696	Cort, Robert W.	Rats, The (2002) (TV)	executive producer
66589	Couyoumdjian, Gianfranco	Dottoressa sotto il lenzuolo, La (1976)	producer
67159	Cox, Michael (III)	Young Sherlock: The Mystery of the Manor House	executive producer
67477	Cramer, Douglas S.	Making of a Male Model (1983) (TV)	executive producer
67615	Cranston, Joseph	Trauma (1962)	producer
68204	Croce, Gérard	Guépiot, Le (1981)	executive producer
68595	Crouch, William Forest	Dance Comique (1945)	producer
69798	Curtis, Allen	Flat Harmony (1917)	producer
69974	Curtis, Shelley (III)	General Hospital	consulting producer
70494	d'Arbeloff, Eric	They Nest (2000) (TV)	executive producer
70902	Dahl, Jay	Boyclops (2004)	producer
71275	Dalton, Stephen A.E.	Love Potion (1987)	executive producer
72229	Daniels, Phillip	Sk8 Life (2004)	producer
72325	Dannenberg, Alexander	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	producer
72636	Danziger, Edward J.	Tarnished Heroes (1961)	producer
72709	Danziger, Harry Lee	Tarnished Heroes (1961)	producer
72815	Dardenne, Jean-Pierre	Romances de terre et d'eau (2002)	producer
72826	Dardenne, Luc	Romances de terre et d'eau (2002)	producer
73460	David, Allan	Celebrity Billiards	producer
73570	David, Pierre (I)	Colombes, Les (1972)	producer
74336	Davis, Jacqueline (I)	Not a Penny More, Not a Penny Less (1990) (TV)	producer
74697	Davis, Sid (I)	You Can't Stop on a Dime (1954)	producer
74744	Davis, Wray	Yank in Viet-Nam, A (1964)	producer
74820	Davy, Peter (II)	Double Down (1993) (V)	producer
74923	Dawson, Kim (II)	Bobby Jones, Stroke of Genius (2004)	producer
75542	De Caprio, Eugenio	Nobody's Perfect (2002)	associate producer
75580	de Cervantes, M. Augusto	Palácio de Vênus (1980)	producer
75891	de Jesus, Angelica	9:30 (2003)	associate producer
76038	de la O, Cheryl	Inner Glow of Things, The (2003)	producer
77098	De Priest, Ed	Midnight Intruders (1987)	producer
77296	de Solms, Felipe	Minas de Angola (1953)	producer
77540	De'Nyle, Jewel	Sluts of the Nyle 2: Celebrity Sluts (2001) (V)	producer
77784	DeBevoise, Allen	Breakin' (1984)	producer
78000	Decter, Ed	Adventures of Mark & Brian, The	executive producer
78346	Deitz, Roni	Harry and Max (2004)	producer
78909	Delest, Nathalie	Pourquoi t'as fait ça? (2001)	producer
79301	Demetroules, Nicholas	Teenage Mother (1968)	producer
79368	DeMille, Cecil B.	Something to Think About (1920)	producer
79939	DePatie, David H.	Cat in the Hat, The (1971) (TV)	producer
80708	Desormeaux, Jean	Jake 2.0: The Tech (2003) (TV)	producer
81441	Dgebuadze, O.	Chirveuli mezoblebi (1945)	producer
81514	Di Clemente, Giovanni	Amiche del cuore, Le (1992)	producer
81992	Diazayas, Guillermo	Toda una vida	executive producer
82404	Dietrich, Erwin C.	Blutjunge Verführerinnen 2 (1972)	producer
83015	DiPaolo, Cara	Dinner Date 1 (2002) (TV)	producer
83873	Diver, Teri	Isis Blue 2 (1998) (V)	producer
83874	Divide, Will	Bikini Beach (1993) (V)	producer
84255	Dodge, Dana	Live with Regis and Kathie Lee	1998-2001
85208	Donovan, Carol	Eddie Izzard: Circle (2002) (V)	co-producer
85259	Donovan, Tom (I)	General Hospital	producer
85397	Doreman, Stanley	Yeomen of the Guard, The (1978) (TV)	producer
86318	Driscoll, Robert	Edge of Night, The	1971
86340	Driver, Charla	Deadlock: A Passion for Murder (1997)	line producer
87890	Duke, Maurice	Atomic Kid, The (1954)	associate producer
88179	Dunlap, Scott R.	Lady, Let's Dance (1944)	producer
88551	Durac, Martina	Wastelands (1993)	producer
88588	Durbrow, Laurie A.	Edge of Night, The	1981-1982
88943	Dussault, Suzanne	Sous les draps, les étoiles (1989)	producer
90502	Economou, Michael	Overboard (1978) (TV)	associate producer
90617	Edelstein, Rick (I)	Edge of Night, The	1965
90618	Edelstein, Rick (II)	Edge of Night, The	producer
91079	Edwards, Ralph (I)	Funny Boners	producer
91603	Ehrlich, Ken	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	producer
92266	Eldridge, Rick	Bobby Jones, Stroke of Genius (2004)	executive producer
92267	Eldridge, Rick	Bobby Jones, Stroke of Genius (2004)	supervising producer
94405	Epperson, Tom (I)	Gun, a Car, a Blonde, A (1997)	producer
95777	Eton, Peter	Tea at the Ritz (1963) (TV)	producer
96453	Factor, Alan Jay	Overboard (1978) (TV)	producer
96560	Fainberg, Ruth	Virginian, The (2000) (TV)	producer
97593	Farren-Phelps, Jill	General Hospital	2001-
98515	Feldman, Dennis	Time Killer (2002)	producer
98615	Feldman, Randy	Time Killer (2002)	producer
98876	Felsberg, Ulrich	Shadow Magic (2000)	executive producer
99061	Fengler, Michael	Komischer Heiliger, Ein (1979)	producer
99502	Fernandez, Paco	Cheveux de ma mère, Les (2004)	producer
99742	Ferrada, Gustavo	Caja 507, La (2002)	producer
99750	Ferrand, Rebecca	Anthea Turner Body Basics (1996) (V)	producer
100169	Feuiette, Maya	Trois couronnes du matelot, Les (1983)	producer
100766	Fight, Barbara	Live with Regis and Kathie Lee	1998-2000
100920	Filho, Daniel	Rainha Louca, A	producer
102060	Fischer, Erik (II)	Ångsjömannen (1999) (V)	executive producer
102244	Fisher, Charles (IV)	Edge of Night, The	1960-1964
102765	Flaherty, Vince	Gun, a Car, a Blonde, A (1997)	associate producer
103108	Fleischer, Max	Customers Wanted (1939)	producer
103913	Flock, John	Good Shepherd, The (2004)	executive producer
103970	Flores Marini, Angel	Queretaro 78 (1977)	producer
104563	Font, Jesús	Feliz cumpleaños (1987)	producer
105122	Forgács, Péter	Bibó breviarium (2002)	producer
105634	Foster, Harry (I)	Thrills of Music: Skitch Henderson and His Orchestra (1948)	producer
106008	Fox, Michael D.	Chickboxin Underground (1999)	producer
106315	Foy, Bryan	I Was a Communist for the FBI (1951)	producer
106409	Foy, Bryan	Torchy Plays with Dynamite (1939)	producer
106460	Fracassi, Clemente	Vita da cani (1950)	producer
106894	Frank, Cathy M.	Medicine Ball	associate producer
107152	Frankenhauser, Roswitha	Zycie za zycie (1991)	producer
107472	Frary, Denny	General Hospital	1989-1999
108212	Freleng, Friz	Cat in the Hat, The (1971) (TV)	producer
109055	Friedman, Andrew (IV)	Dinner Date 1 (2002) (TV)	producer
109866	Frost, David (I)	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	executive producer
110154	Fuchs, Léo L.	Guépiot, Le (1981)	producer
110258	Fueter, Peter-Christian	Grüne Heinrich, Der (1994)	producer
110618	Fujimoto, Sanezumi	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)	producer
112040	Gallaccio, George	At Bertram's Hotel (1987) (TV)	producer
112143	Gallant, Michael O.	Pandora's Clock (1996) (TV)	producer
112147	Gallant, Michael O.	Substitute Wife, The (1994) (TV)	producer
112411	Galloway, Robert David	Oflag 64 (2001)	producer
112413	Galloway, Ron (I)	Oflag 64 (2001)	supervising producer
112555	Gamero, Mercedes	Caja 507, La (2002)	associate producer
112585	Gammeltoft, Thomas	Hemmeligheder (1997)	producer
112637	Ganay, Thierry de	Parfum d'Yvonne, Le (1994)	producer
113908	Garritano, Frank	Eddie Izzard: Circle (2002) (V)	producer
114356	Gauthier, Jacques (III)	Amants du Tage, Les (1955)	executive producer
114357	Gauthier, Jacques (III)	Amants du Tage, Les (1955)	producer
114577	Gazarian, John	Real Bullets (1990)	producer
114590	Gazcón, Gilberto	Rage (1966)	producer
114697	Geels, Laurens	Do Not Disturb (1999)	producer
115184	Gelman, Michael	Live with Regis and Kathie Lee	executive producer
116825	Gifford, Dan	Hungry Bachelors Club, The (1999)	producer
116828	Gifford, Kathie Lee	Live with Regis and Kathie Lee	1999-2000
116883	Gil, Edmundo	È già ieri (2004)	co-producer
117068	Gilbert, Richard (II)	Haida Carver (1964)	producer
117471	Gilroy, Grace	Virginian, The (2000) (TV)	co-producer
117807	Gill, Baldev	Chann Pardesi (1980)	producer
118173	Ginsburg, David R.	Pandora's Clock (1996) (TV)	producer
118308	Girard, Doris	Sous les draps, les étoiles (1989)	producer
118530	Gitlin, Larry	Unknown Cyclist, The (1998)	line producer
118591	Giudice, Luis Óscar	Perra, La (1967)	executive producer
118811	Glander, James	Hungry Bachelors Club, The (1999)	line producer
119429	Globus, Yoram	Breakin' (1984)	executive producer
120502	Gogan, Jane	Clash of the Ash, The (1987)	producer
120590	Golan, Menahem	Breakin' (1984)	executive producer
120833	Gold, Jeffrey	Fade to Reality (1995)	executive producer
120893	Goldberg, Amanda	Critical Assembly (2003) (TV)	producer
121041	Goldberg, Leonard	Critical Assembly (2003) (TV)	executive producer
121251	Golden, Dan	Scream Queens Swimsuit Sensations (1992) (V)	co-producer
121269	Golden, Ken	Face to Face (1990) (TV)	associate producer
122150	Goldstone, Richard	Rage (1966)	executive producer
122577	Gomyo, Tadahito	Zoku Showa hito keta shachô tai futaketa shain: Getsu-getsu kasui moku kinkin (1971)	producer
122839	González Macho, Enrique	Marta y alrededores (1999)	producer
123246	Goodman, Gary M.	Virginian, The (2000) (TV)	producer
123988	Goslicki, Sonja	Tatort - Kindstod (2001) (TV)	producer
124397	Goodsite, Niles (II)	Edge of Night, The	early 70's-1979
124671	Gopaul, Lina	Handsworth Songs (1986)	producer
125050	Gouze-Rénal, Christine	Dernier mot, Le (1991) (TV)	producer
125138	Gowen, Bud	Edge of Night, The	1963-1981
125409	Graef, Roger	Pleasure at Her Majesty's (1976) (TV)	producer
125708	Grana, Sam	Boys of St. Vincent, The (1992) (TV)	producer
126185	Gratacos, Enrique	Telaraña, La (1990)	executive producer
126658	Greenberg, Dori	Rave (2000)	co-producer
126703	Greenberg, Marc L.	Carnal Passion (2001) (V)	executive producer) (as Marc Greenberg
127508	Griffith, Howard (II)	Warning: Parental Advisory (2002) (TV)	producer
127613	Griffiths, Keith	Before and After the Monsoon (1985) (TV)	producer
128190	Greene, Tom (I)	Knight Rider (1982) (TV)	producer
128531	Greenwalt, David	Jake 2.0: The Tech (2003) (TV)	executive producer
129252	Guerrier, Monique	Parfum d'Yvonne, Le (1994)	executive producer
129600	Guirauden, Marie	Adieu (2003)	executive producer
129803	Grimaldi, Alberto	Trastevere (1971)	producer
130302	Gross, Jack J.	They Won't Believe Me (1947)	executive producer
130318	Gross, Jerry	Teenage Mother (1968)	producer
130864	Grund, Hermann	Frau, nach der man sich sehnt, Die (1929)	producer
131573	Haft, Steven	Warning: Parental Advisory (2002) (TV)	executive producer
131706	Hagen, Julius	Private Secretary, The (1935)	producer
132531	Guyot, Axel	Diva et pianiste (2000)	producer
132551	Guzman, Pato	Tempest (1982)	co-producer
132590	Guédiguian, Robert	Romances de terre et d'eau (2002)	producer
132831	Gérin, Christian	Cheveux de ma mère, Les (2004)	associate producer
132864	Gómez Conde, Francisco	Río de las ánimas, El (1964)	producer
132906	Gómez Muriel, Emilio	Perra, La (1967)	producer
133321	Haber, Jacqueline	Edge of Night, The	early 1970s-1979
133322	Haber, Jacqueline	Edge of Night, The	1981-1984
133348	Habig, Jeremy	Looking in the Fishbowl (2001)	producer
133762	Hammer, Dennis	Making of a Male Model (1983) (TV)	associate producer
134003	Hampton, Henry	BreakThrough: The Changing Face of Science in America	executive producer
134230	Haig, Don	Power Game, The (1997)	producer
134457	Hakami, Eitan	Shadow Magic (2000)	executive producer
135179	Halmi Jr., Robert	Face to Face (1990) (TV)	producer
136275	Han, Gab-jin	Mokmeyeo bulleobwado (1969)	producer
136369	Han, Sanping	Shadow Magic (2000)	executive producer
136391	Hanan Carruthers, Julie	General Hospital	1994-1999
136474	Handel, Leo A.	Patty (1962)	producer
136719	Hanna, William (I)	Hey There, It's Yogi Bear (1964)	producer
137686	Hardy, John (III)	Gigli (2003)	executive producer
137982	Harris, Lionel	Where the Buffalo Roam (1966) (TV)	producer
138236	Harrison, Joan (I)	They Won't Believe Me (1947)	producer
138680	Hartley, Neil	Ned Kelly (1970)	producer
139518	Hauff, Ulrike	Tatort - Schwarzer Advent (1998) (TV)	supervising producer
139528	Haugaard, Ilse	Ta' det som en mand, frue! (1975)	producer
139637	Havas	Last Enchantment (1995)	producer
140951	Hecht Lucari, Gianni	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	producer
141065	Hecker, Leah	Nacht, in der ganz ehrlich überhaupt niemand Sex hatte, Die (2002) (TV)	producer
141127	Hedman, Katrine	Ta' det som en mand, frue! (1975)	producer
141861	Heller, Barbara (II)	Little Women in Transit (1996)	producer
142008	Hellman, Marcel	Happy Go Lovely (1951)	producer
142197	Heminway, Tobin	Shadow Magic (2000)	associate producer
142317	Henaut, Suzanne	Sous les draps, les étoiles (1989)	producer
142484	Hendricks, William L.	Fiesta Fiasco (1967)	producer
142528	Henenberg, Brett	9:30 (2003)	producer
142785	Henry, Jeff (I)	Warning: Parental Advisory (2002) (TV)	associate producer
142881	Henson, Jim (I)	Muppet Movie, The (1979)	producer
143160	Herman, Ace	Big Tip Off, The (1955)	associate producer
143534	Herrero, Gerardo	Amore imperfetto, L' (2002)	producer
143676	Herrmann, Peter (I)	Handvoll Gras, Eine (2000)	executive producer
143755	Hersh, David	Northwest Stampede (1948)	executive producer
144047	Herzogenrath, Felix	Inner Glow of Things, The (2003)	producer
144173	Hetzel, Eric	Rats, The (2002) (TV)	co-producer
144568	Heyward, Andy	Littles, The	executive producer
144736	Hickox, S. Bryan	Dead Wrong: The John Evans Story (1984) (TV)	executive producer
144737	Hickox, S. Bryan	Dead Wrong: The John Evans Story (1984) (TV)	producer
145084	Hildebrand, Frank	They Nest (2000) (TV)	producer
147040	Hoffermann, Franz	Premiere (1936)	producer
147374	Hofmann, Martin	Tatort - Eiskalt (1997) (TV)	executive producer
147431	Hofmann, Trish	Running with Scissors (2002)	executive producer
148376	Holt, Denis	I Could Go on Singing (1963)	associate producer
148672	Honert, Hans-Werner	Tatort - Eiskalt (1997) (TV)	producer
149175	Horan, Ralph	Michael (1996)	executive producer
149487	Horner, Robert J.	Trails of the Golden West (1931)	producer
149618	Horowitz, Susan	New York Nick	supervising producer
149727	Horta, Silvio	Jake 2.0: The Tech (2003) (TV)	executive producer
149988	Hotaling, Arthur	He Won a Ranch (1914)	producer
150187	Houseman, John (I)	Holiday for Sinners (1952)	producer
150324	Hovmand, Annelise	Ta' det som en mand, frue! (1975)	producer
150949	Howsam, Gary	Good Shepherd, The (2004)	producer
151110	Hu, Ann (I)	Shadow Magic (2000)	producer
151515	Hudec, Igor	Andel milosrdenství (1994)	producer
152025	Hughes, Todd (I)	Big Pile, The (1985)	producer
152043	Hughes, Vic	Rainbow	producer
152541	Hunter, John (III)	John and the Missus (1987)	producer
152612	Hunter, Steven	Deadlock: A Passion for Murder (1997)	producer
153152	Hutton, Clayton	Sign Please (1933)	producer
155947	Israel, David (II)	Pandora's Clock (1996) (TV)	executive producer
156103	Ito, Ryoji	Danchizuma hiasobi (1973)	planner
156264	Iveberg, Hans	Prins hatt under jorden (1980)	producer
156415	Iwata, Yuji	Help!	producer
156574	Izzard, Eddie	Eddie Izzard: Circle (2002) (V)	executive producer
157299	Jacobs, Jerry P.	Black Thunder (1997)	line producer
157629	Jacobson, Peter Marc	New York Nick	executive producer
158003	Jagannath (I)	Ratnadeep (1979)	producer
158217	James, Francesca	General Hospital	1990-1991
158218	James, Francesca	General Hospital	1994-1996
159227	Jeffrey, Tracey	Critical Assembly (2003) (TV)	producer
159460	Jensen, Anders P.	Lionheart (1990)	executive producer
159687	Jeon, Seok-jin	Utgo saneun Park Seo-bang (1972)	producer
159852	Jeong, Jin-woo	Seokhwachon (1972)	producer
160788	Johnson, Dave Alan	Medicine Ball	co-executive producer
162507	Jong, Debby de	Cowboy uit Iran (1999) (TV)	executive producer
162753	Joseph, Monica	Live with Regis and Kathie Lee	1999-2000
162946	Jourd'hui, Gérard	Don Juan (1998)	producer
163494	Jungfleisch, Michael	Blume der Hausfrau, Die (1999)	co-producer
163792	Jäger, Kurt	Mies Marseillesta (1937)	producer
164088	Kaden, Hans	Komischer Heiliger, Ein (1979)	producer
164520	Kaiser, Alfred	Drittes Reich, Ein (1975)	producer
165323	Kanehl, Oliver	Fünfzig Minuten (2001)	producer
165565	Kannan, R.	Ratnadeep (1979)	producer
165703	Kapinos, Matthias	Fünfzig Minuten (2001)	producer
166656	Karpinski, Maciej	Moje miasto (2002) (TV)	executive producer
166698	Karson, Eric	Lionheart (1990)	producer
166802	Kasander, Kees	Cowboy uit Iran (1999) (TV)	producer
167316	Katayama, Tetsuo	Littles, The	executive producer
168985	Kearney, Máire	Only Fools Buy Horses	producer
169553	Kelley, William (II)	Chickboxin Underground (1999)	executive producer
169810	Kelly, Luis	Tres historias de amor (1978)	producer
170146	Kende, Zsófia	Ildikó Szabó (1999)	producer
170692	Ker, Jonathon	Junky's Christmas, The (1993)	executive producer
170921	Kerr, David (III)	Meaningful Sex (2000) (TV)	producer
171431	Khanna, Amit	Loot Maar (1980)	executive producer
171692	Kidd, The	Black Butt Sisters Do New Orleans, The (1995) (V)	producer
171994	Kim, Chi-hon	Jeolmeun shigyetab (1982)	producer
172518	Kim, Won-du	Jeolbeun poong gin ibyeol (1984)	producer
172702	Kimura, Masao	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)	producer
172729	Kinany, Sheila	Rainbow	1990-1992
173436	Kirch, Doris	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	producer: SAT 1
173624	Kirkwood Jr., James	Some Kind of Hero (1982)	co-producer
174268	Klein, Harold J.	Celebrity Billiards	producer
174437	Kleine, George	Good Sport, The (1918)	producer
175514	Kobe, Gail	Edge of Night, The	late 1970s
175632	Koch, Howard W.	Some Kind of Hero (1982)	producer
176110	Kogan, Sergio	Ladrona, La (1954)	producer
176249	Kohlmar, Fred	Tall, Dark and Handsome (1941)	associate producer
176528	Kolko, Michael	Rave (2000)	producer
176562	Koller, Silvia	Tatort - Der Fremdwohner (2002) (TV)	producer) (2002
176563	Koller, Silvia	Tatort - Der Prügelknabe (2003) (TV)	producer) (2003
176583	Koller, Silvia	Tatort - Schwarzer Advent (1998) (TV)	producer: BR
177131	Koper, Peter	Tales from the Tower (2001)	producer
177472	Korytowski, Manfred	Meister Eder und sein Pumuckl	executive producer
177843	Kousakis, John Peter	Feeling Called Glory, A (1999)	co-executive producer
178738	Krauss, Ron (I)	Rave (2000)	producer
180544	Kunz, Roman	Meister Eder und sein Pumuckl	executive producer
181146	Kushner, Donald	They Nest (2000) (TV)	executive producer
181470	Kwak, Jeong-hwan	Wonhanui gongdongmyuji (1983)	producer
181690	Kölsch, Peter	Meister Eder und sein Pumuckl	line producer
181692	Köngäs, Heidi	Angela ja ajan tuulet	producer
181832	L'Ange, Ash	Nebraska Supersonic (2001)	producer
182485	Lagestee, Martin	Do Not Disturb (1999)	line producer
183483	Lalou, Serge	Adieu (2003)	producer
183719	Lambert, Christopher	Good Shepherd, The (2004)	executive producer
183888	Lambros, Alana H.	Wild Pair, The (1987)	associate producer
184371	Landin, Bo	Dead Sea Scrolls: Unraveling the Mystery (1998) (TV)	executive producer
185229	Lantos, Robert	Guardian System, The (1986) (TV)	producer
185302	Lantz, Walter	100 Pigmies and Andy Panda (1940)	producer
185725	Lantz, Walter	Short in the Saddle (1962)	producer
186193	Laroche, Jean-Philippe	Meeting with... (1991) (TV)	producer
186327	Larsen, Birger	Skal vi være kærester? (1997)	producer
186467	Latham, Michael (III)	Man Alive	producer
186863	Larsen, Gert B.	Dronningens nytårstale (1999) (TV)	producer
187032	Larson, Glen A.	Knight Rider (1982) (TV)	executive producer
187324	Lasky, Jesse L.	Something to Think About (1920)	producer
188221	Lazer, David	Muppet Movie, The (1979)	co-producer
190100	Lee, Woo-seok	Milhaeng (1975)	producer
190128	Lee, You-ning	Shadow Magic (2000)	co-producer
190146	Leech, Tammy	New York Nick	executive producer
190297	Lefakis, Michalis	Jack o kavalaris (1979)	producer
190303	Lefaux, Jean	Trois couronnes du matelot, Les (1983)	producer
190543	Lehmann, Heinz (I)	Do Not Disturb (1999)	executive producer
190575	Lehmuskallio, Markku	Sininen imettäjä (1985)	producer
190839	Leisner, Otto	H.O.P.L.A.	1979-1982
191725	Lepke, Elke	Tatort - Tod aus der Vergangenheit (1992) (TV)	executive producer
191761	Lerman, Jeremy	Nebraska Supersonic (2001)	producer
191863	Lerner, Avi	Platoon Leader (1988)	executive producer
192068	LeRoy, Mervyn	Three Men on a Horse (1936)	producer
192499	Leung Dung Lei, Tony	Ta lai zi hu zhi ming shi (1994)	producer
192642	Leverenz, Daren	Unknown Cyclist, The (1998)	executive producer
193048	Levine, Laura (II)	Digging for Dutch: The Search for the Lost Treasure of Dutch Schultz (2001)	producer
193380	Levinson, Lisa (I)	General Hospital	producer
194026	Lewinger, Ilan	Rave (2000)	producer
194828	Lichtenstein, Olivia	Lump in My Throat, A (2001) (TV)	producer
194903	Lidz, Franz	Unstrung Heroes (1995)	co-producer
194971	Lieberman, Robert (I)	Jake 2.0: The Tech (2003) (TV)	executive producer
194981	Lieberman, Robert (I)	Medicine Ball	executive producer
195527	Limmer, Ulrich	Handvoll Gras, Eine (2000)	associate producer
195580	Linares, Marco Julio	Mujer de Benjamín, La (1991)	co-executive producer
195837	Lindsay, Lance	Real Bullets (1990)	producer
195881	Lindström, Göran	Prins hatt under jorden (1980)	producer
197426	Locke, Peter (I)	They Nest (2000) (TV)	executive producer
197497	Lodahl, Thorkil	Fjernsyn	producer
197727	Lohner, Peter	Dumm gelaufen (1997)	producer
198285	Longstreet, Renee	Vow to Kill, A (1995) (TV)	producer
198296	Longval, Jean-Marc	À la vitesse d'un cheval au galop (1992)	producer
198315	Lonsdale, Pamela	Rainbow	producer
198399	Lopes Ribeiro, António	Pai Tirano, O (1941)	producer
198579	Lord, Jean-Claude	Colombes, Les (1972)	producer
198850	Loring, Lynn	Making of a Male Model (1983) (TV)	producer
199517	Low, Colin	Path of the Paddle: White Water (1996)	producer
199813	Lozano Telere, Raúl	Años perdidos, Los	producer
200033	Luca, Claudio	Boys of St. Vincent, The (1992) (TV)	producer
200491	Luff, Peter	Pleasure at Her Majesty's (1976) (TV)	stage producer
200558	Lukaczik, Kirsten	Tatort - Kalte Wut (2001) (TV)	producer
201156	Lustig, William	Revolver: Calling the Shots (2002) (V)	producer
201289	Lydholm, Thomas	Skal vi være kærester? (1997)	producer
201340	Lynch IV, William E.	Halfway to Heaven and Hell (2003)	producer
201364	Lynch, Ed (IV)	Four Simples Rules (2003)	producer
201994	López, Héctor (II)	Veneno para las hadas (1984)	producer
202027	López, Salvador (I)	Reed, México insurgente (1973)	producer
202225	Maas, Dick	Do Not Disturb (1999)	producer
202458	MacDonald, Cindy	Live with Regis and Kathie Lee	1998-2001
202581	MacDonald, Graeme	Where the Buffalo Roam (1966) (TV)	producer
203231	Mackay, Anne-Marie	Junky's Christmas, The (1993)	executive producer
203345	Mackie, Nick	Hobbies: Model Bus Collector (2002)	producer
203792	Madden, David (I)	Rats, The (2002) (TV)	executive producer
204183	Maghsoudlou, Bahman	Zendegi dar meh (1999)	executive producer
204186	Maghsoudlou, Behrouz	Zendegi dar meh (1999)	producer
204433	Maher, Catherine	Edge of Night, The	1980
207267	Marcandella, Benoît	Babyroussa the Babiroussa (1994)	producer
207328	Marchant, Vic	Asian Babes 2 (1993) (V)	producer
207574	Marcus, Leon	Adventures of Pow Wow, The	executive producer
207607	Marcus, Paula	Trials of Rosie O'Neill, The	associate producer
207962	Marignac, Martine	Hurlevent (1985)	delegate producer
208562	Marks, Julian	Vow to Kill, A (1995) (TV)	executive producer
208918	Marquess, Paul	Picking up the Pieces	producer
209290	Marshall, John (V)	Greatest, The (1977)	producer
209990	Martinelli, Gabriella	John and the Missus (1987)	co-producer
210193	Martino, Luciano	Moglie in vacanza... l'amante in città, La (1980)	producer
211004	Mason, Paul (II)	Wild Pair, The (1987)	producer
211055	Massa, Umberto	Amore imperfetto, L' (2002)	producer
211541	Mather, Susan	Picking up the Pieces	line producer
211751	Matouk, Antonio	Pablo y Carolina (1957)	producer
211965	Matthews, Gina	Jake 2.0: The Tech (2003) (TV)	executive producer
213090	Mazursky, Paul	Tempest (1982)	producer
214381	McDonald, Bruce (I)	Highway 61 (1991)	producer
214517	McDougall, Francine	Junky's Christmas, The (1993)	producer
215089	McGowan, Robert F.	Who Killed Doc Robbin? (1948)	producer
215827	McLaren, Norman	Keep Your Mouth Shut (1944)	producer
216237	McMahon, John J.	Warning: Parental Advisory (2002) (TV)	producer
216471	McManus, John (I)	Burr's Novelty Review No. 1 (1922)	producer
216477	McManus, John (I)	Mr. Ima Jonah's Home Brew (1921)	producer
216878	Mead, Thomas	Roar, Navy, Roar (1942)	producer
217739	Melchior, Ib	Patty (1962)	associate producer
217832	Melendez, Ray	CTV	producer
218653	Menke, Jeff	Chickboxin Underground (1999)	assistant producer
219145	Merinero, Fernando	Agujetas en el alma (1998)	producer
219419	Mesa, John P.	Roommates (2002) (V)	producer
219725	Metodiev, Alexander	Ispanska muha (1998)	supervising producer
219784	Metzler, Jim	Gun, a Car, a Blonde, A (1997)	associate producer
220612	Michel, Werner	Edge of Night, The	1956
220669	Michelucci, Robert V.	Scream Queens Swimsuit Sensations (1992) (V)	co-producer
220878	Miernowski, Tomasz	Farba (1998)	producer
221100	Milani, Katia	Shadow Magic (2000)	executive producer
221441	Millar, Stuart	I Could Go on Singing (1963)	executive producer
221645	Miller, David R.	Gun, a Car, a Blonde, A (1997)	executive producer
221839	Miller, Lee (IV)	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	producer
221910	Miller, Max B.	Youthquake! (1975)	producer
222377	Millimaki, Kim	Warning: Parental Advisory (2002) (TV)	associate producer
223337	Miquet, Francis	Life Without Death (2000)	producer
223427	Mirell, Leon	General Hospital	1968) (as Leon I. Mirell
224318	Mix, Tom	Never Again (1915)	producer
225077	Molas, Alba	Telaraña, La (1990)	executive producer
225430	Monas, George	Jones & Jury	line producer
226106	Montiel Pagés, Gustavo	Mujer de Benjamín, La (1991)	executive producer
226209	Monty, Gloria	General Hospital	1978-1987, 1991-1992
226243	Moon, Cho	Shadow Magic (2000)	associate producer
226641	Moore, Tim (II)	Bobby Jones, Stroke of Genius (2004)	line producer
226642	Moore, Tim (II)	Bobby Jones, Stroke of Genius (2004)	producer
227008	Moranville, John B.	General Hospital	1985-1986
227279	Morgan, André E.	Lei ting zhan jing (2000)	producer
228901	Moss, Eric	Komischer Heiliger, Ein (1979)	line producer
229405	Mozilo, Lori	VH-1 to One: Paula Abdul (1992) (TV)	supervising producer
229817	Mullen, David (I)	Live with Regis and Kathie Lee	1998-2001
230795	Myers, Chris (II)	Face in the Frame, The (1998)	executive producer
231998	Münch, Christopher	Harry and Max (2004)	producer
232383	Nagata, Masaichi	Daikaijû Gamera (1965)	executive producer
232443	Nagata, Masaichi	Oushou (1948)	producer
232527	Nagy, Ivan (I)	Andel milosrdenství (1994)	producer
232679	Naidu, D. Rama	Santaan (1993)	producer
232998	Nakazawa, Toshiaki	Kishiwada shônen gurentai: Chikemuri junjô-hen (1997)	producer
233030	Nalpas, Louis	Ce que les Flots Racontent (1916)	producer
233836	Navarro, Bertha	Reed, México insurgente (1973)	producer
234111	Neale, Colin	Boys of St. Vincent, The (1992) (TV)	producer
234983	Neufeld, Sigmund	Overland Riders (1946)	producer
235324	Nelson, Stanley	Shattering the Silences: The Case for Minority Faculty (1997)	producer
235410	Nemeskürty, István	Amerikai cigaretta (1977)	producer
235785	New, Robert Lynn	Hungry Bachelors Club, The (1999)	co-producer
236455	Nichols, Anthony (II)	Egoists, The (2003)	producer
236473	Nichols, Deborah	Carnal Passion (2001) (V)	producer) (as Debra Nichols
236542	Nichols, Monica	Egoists, The (2003)	producer
236557	Nicholson, Erwin	Edge of Night, The	1966-84
236558	Nicholson, Erwin	Edge of Night, The	1966-1981
237475	Nissan, Ruti	Kasefet, Ha-	executive producer
239049	Nunes, A. Robert	Big Tip Off, The (1955)	associate producer
239381	O'Brian, Peter (I)	John and the Missus (1987)	producer
239473	O'Brien, Joseph (I)	Roar, Navy, Roar (1942)	producer
239677	O'Connor, Andrew (II)	Derren Brown Plays Russian Roulette Live (2003) (TV)	executive producer
239715	O'Connor, Geoffrey	Four Simples Rules (2003)	producer
240180	O'Leary, Mary (II)	General Hospital	producer
240192	O'Mahoney, Conor	Man with No Shoes, The (1992)	producer
240792	Occhipinti, Andrea	Amore imperfetto, L' (2002)	producer
240925	Odé, Wim	Het is de Schraapzucht, gentlemen (1996) (TV)	producer
241316	Ojeda, Manuel R.	Voz del deber, La (1927)	producer
241340	Okada, Mariko	Akitsu onsen (1962)	planner
241835	Oliveira, Alexandre	Água e Sal (2002)	line producer
244576	Ozon, Ural	Kibris volkani (1965)	producer
245079	Paglia, Mark	Laser Moon (1993)	producer
246335	Papadopoulos, John (I)	Matchless (1973)	producer
246775	Paris, James	Demonismeni, I (1975)	producer
246859	Park, Gu	Mulmangcho (1960)	producer
246941	Park, Jong-chan	Maechun 3 (1993)	producer
247161	Parker, Helen (III)	Eddie Izzard: Circle (2002) (V)	executive producer
247545	Parlapanides, Charley	Hook Up, The (2003)	producer
248234	Pasetta, Marty	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	producer
249087	Paul, Robert W.	Twins' Tea Party, The (1897)	producer
249668	Pearl, Hal	Not Tonight Henry (1961)	associate producer
250474	Penington, Jon	Shadow of the Cat (1961)	producer
250492	Penn, Marilyn	Gun, a Car, a Blonde, A (1997)	line producer
251820	Person, Luís Sérgio	Em Cada Coração um Punhal (1970)	producer
252178	Peters, Maria	First Child on the Moon (2001)	producer
252434	Petrak, Greg	Moonchild (1994) (V)	executive producer
252737	Petz, Ernst	Tatort - Feuerwerk für eine Leiche (1988) (TV)	producer
253099	Phelps, Jill Farren	General Hospital	executive producer
253113	Philbin, Regis	Live with Regis and Kathie Lee	1999-
253555	Piazzesi, Andrea	È già ieri (2004)	line producer
253764	Picker, Sidney	Main Street Kid, The (1948)	associate producer
254985	Pirk, Kurt A.	Patchwork (2003)	producer
255469	Platt Jacoby, Nancy	Day & Date	supervising producer
255583	Plenov, Leif	H.O.P.L.A.	producer
255872	Poche, Helga	Tatort - Kindstod (2001) (TV)	executive producer
256306	Polachek, Charles	Edge of Night, The	1956-1959
256841	Pombo, Vanessa	Vida total	executive producer
256928	Pommer, Erich	Illusion in Moll (1952)	producer
257119	Ponti, Carlo	Amanti (1968)	producer
257248	Ponti, Carlo	Vita da cani (1950)	producer
257283	Pool, Betsy	Unknown Cyclist, The (1998)	producer
257841	Pos, Hans	First Child on the Moon (2001)	producer
258028	Potamkin, Buzz	Flintstones Christmas Carol, A (1994) (TV)	executive producer
258131	Potter, Terence S.	È già ieri (2004)	co-producer
258498	Powers, Barclay	Anarchy TV (1997)	producer
258575	Powers, Pat (I)	Babes in the Woods (1911)	producer
259683	Price, Noel	Adventures of Sam, The	producer
260217	Provan, Gareth	Jones & Jury	associate producer
260383	Przywara, Dennis	Starwoids (2001)	producer
260631	Pullman, Bill	Virginian, The (2000) (TV)	producer
260857	Putterman, Brian	Amazing Vacation Homes (2004) (TV)	supervising producer
261196	Pérez, Vicente (I)	Agujetas en el alma (1998)	executive producer
262373	Ragat, Gene	Nobody's Perfect (2002)	co-executive producer
262430	Raguse, Günter	Goldsucher von Arkansas, Die (1964)	executive producer
262978	Rackin, Martin	Santiago (1956)	producer
263268	Ram, Atma	Qaid (1975)	producer
263358	Ramcke, Kerstin	Tatort - Lockvögel (1996) (TV)	producer
263461	Ramos, Courinha	Carnaval em Lourenço Marques (1964)	producer
263649	Ramírez Suárez, Jorge	Mujer de Benjamín, La (1991)	producer
264042	Rao, Bing	Shadow Magic (2000)	associate producer
264332	Rasheed, Eman	Day & Date	associate producer
265215	Raynor, Lynn	Virginian, The (2000) (TV)	producer
266474	Reid, Cliff	Laddie (1940)	producer
266639	Reifarth, Dieter	Bücher (1986)	producer
267668	Rettinger, Carl-Ludwig	Identity-Kid (1988) (TV)	producer
268272	Rhodes, Michael (I)	Cutter to Houston	supervising producer
268403	Ribeiro, Luiz Severiano	Entre Mulheres e Espiões (1961)	producer
268622	Rich, Elaine	Making of a Male Model (1983) (TV)	producer
269072	Riche, Wendy	General Hospital	1992-2001
269309	Richmond, Ted	Solomon and Sheba (1959)	producer
270817	Roach Jr., Hal	Who Killed Doc Robbin? (1948)	executive producer
270834	Roach, Hal	Air-Tight (1931)	producer
270865	Roach, Hal	Back Stage (1923)	producer
270920	Roach, Hal	Bromo and Juliet (1926)	producer
271324	Roach, Hal	Our Gang Follies of 1936 (1935)	producer
271546	Roach, Hal	Who Killed Doc Robbin? (1948)	executive producer
273600	Roe, Bob	Rats, The (2002) (TV)	producer
273779	Rogell, Albert S.	Northwest Stampede (1948)	producer
274210	Rogers, Pieter	Young Sherlock: The Mystery of the Manor House	producer
274319	Rohauer, Raymond	Blacksmith, The (1922)	producer
274369	Rohrbach, Günter	Handvoll Gras, Eine (2000)	producer
275113	Rooij, Michiel de	Cowboy uit Iran (1999) (TV)	executive producer
275189	Rooney, Mickey (I)	Atomic Kid, The (1954)	producer
275445	Rosas Priego, Enrique	Río de las ánimas, El (1964)	producer
276034	Rosen, Peter (I)	Musical Offering from the Vatican: A Papal Concert, A (1992) (TV)	producer
276082	Rosen, S. Howard	John and the Missus (1987)	delegate producer
277094	Ross, Dave (I)	Bobby Jones, Stroke of Genius (2004)	executive producer
277753	Roth, Donna	Unstrung Heroes (1995)	producer
279016	Ruanova, Alfredo	Perra, La (1967)	producer
279205	Rubin, Jackie	Unstrung Heroes (1995)	associate producer
279764	Ruiz Sandoval, Humberto	Dempsey en México (1925)	producer
279890	Rupp, Walter	Amants du Tage, Les (1955)	producer
281403	Sagar, Ramanand	Ramayan	producer
281644	Saito, Yonejiro	Daikaijû Gamera (1965)	producer
281807	Sabido, Irene	Vamos juntos	producer
281844	Sabol-Nieves, Mariann	Live with Regis and Kathie Lee	1998-2001
282319	Saks, Eva	Custody (2000)	producer
282488	Salerno, Daniel	Highway 61 (1991)	executive producer
282671	Salkind, Ilya	Making of 'The Prince and the Pauper', The (1978) (TV)	executive producer
282908	Saltzman, Joanne	Live with Regis and Kathie Lee	1998-2001
283212	Samanta, Shakti	Main Awara Hoon (1983)	producer
284966	Santschi, Rudolf	Auge für Auge (1998) (TV)	producer
285164	Saraceni, Fausto	Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Africa? (1968)	executive producer
285375	Sarde, Alain	Oublie-moi (1995)	producer
285678	Sarlui-Tucker, Helen	Wild Pair, The (1987)	executive producer
286045	Satô, Ichirô	Gurama-to no yuwaku (1959)	producer
286098	Satô, Ichirô	Shin kitsune no tameki (1962)	producer
286715	Sax, Samuel (I)	Victim, The (1930)	producer
286794	Sayers, Eric	New Orleans After Dark (1958)	producer
286820	Sayres, Amy	Gigli (2003)	associate producer
287538	Scharbo, Grant	Jake 2.0: The Tech (2003) (TV)	executive producer
288040	Schenck, Joseph M.	Bat Whispers, The (1930)	producer
288044	Schenck, Joseph M.	Blacksmith, The (1922)	producer
288433	Schiff, David	Three's Company: The E! True Hollywood Story (1998) (TV)	producer
288521	Schillay, Jan	Live with Regis and Kathie Lee	1998-2001
289640	Schmidt, Bert	Bücher (1986)	producer
289723	Schmidt, Jim	Bobby Jones, Stroke of Genius (2004)	co-producer
289730	Schmidt, John (V)	Bobby Jones, Stroke of Genius (2004)	co-producer
290617	Schoukens, Gaston	Monsieur mon chauffeur (1926)	producer
290681	Schram, Dave	First Child on the Moon (2001)	producer
291008	Schulberg, B.P.	Flight Lieutenant (1942)	producer
291089	Schulberg, Sandra	Shadow Magic (2000)	co-producer
291244	Schultz, Howard	Jones & Jury	executive producer
291267	Schulweis, Lori	Live with Regis and Kathie Lee	1999-2001
291400	Schura, Florian	Nebraska Supersonic (2001)	producer
292307	Schäfer, Karl-Eberhard	Fast perfekt verlobt (2003) (TV)	producer
292389	Schöps, Richard	Tatort - Lockvögel (1996) (TV)	producer
292571	Scorsese, Martin	Kicked in the Head (1997)	executive producer
292745	Scott, Carol	General Hospital	producer
293011	Scott, Robert (II)	Frontiers of Construction	producer
293802	Seeger, Hal (I)	Rocket Ranger (1963) (TV)	producer
294655	Seligman, Selig J.	General Hospital	executive producer
294948	Selzer, Edward	Bell Hoppy (1954)	producer
295626	Sennett, Mack	Burglar, The (1928)	producer
295868	Sennett, Mack	It's a Boy (1920)	producer
296007	Sennett, Mack	Small Town Idol, A (1921)	producer
296625	Sestero, Robin	Jones & Jury	coordinating producer
296873	Sevilla, Ninón	Club de señoritas (1956)	producer
296958	Seymour, Gregory R.	Halfway to Heaven and Hell (2003)	producer
297165	Shah, Ash R.	Lionheart (1990)	producer
297271	Shah, Sundip R.	Lionheart (1990)	executive producer
297277	Shah, Sunil R.	Lionheart (1990)	executive producer
297742	Shapiro, Elyssa	Live with Regis and Kathie Lee	2000-2001
297929	Shapiro, William D.	Lady, Let's Dance (1944)	associate producer
298475	Shaw, Run Run	Pendekar bujang lapok (1959)	producer
299122	Shepherd, John (II)	Bobby Jones, Stroke of Genius (2004)	producer
299698	Shestack, Denny	Four Simples Rules (2003)	producer
300222	Shin, Sang-ok	Korea (1954)	producer
300382	Shiozawa, Koji	Help!	producer
300429	Shirai, Masao	Akitsu onsen (1962)	producer
301489	Sieber, Rudolf	Tänzer meiner Frau, Der (1925)	assistant producer
301752	Siepen, Robert	Tatort - Feuerwerk für eine Leiche (1988) (TV)	executive producer
302794	Silver, Casey	Gigli (2003)	producer
303502	Simpson, David (V)	Pleasure at Her Majesty's (1976) (TV)	stage producer
304416	Siritzky, Alain	Emmanuelle 5: A Time to Dream (1994)	producer
305061	Skorpík, Karel	Andel milosrdenství (1994)	producer
305308	Slater, Guy (I)	At Bertram's Hotel (1987) (TV)	executive producer
305747	Small, Edward	Melody Lingers On, The (1935)	producer
305774	Small, Edward	Up in Mabel's Room (1944)	producer
305862	Smart, David	Friendship Begins at Home (1949)	producer
305935	Smaïn	À la vitesse d'un cheval au galop (1992)	producer
306587	Smith, Paul (X)	Winning Lines	executive producer
307116	Sneller, Jeffrey M.	Time Killer (2002)	executive producer
307475	Smith, Dane Allan	Terra (2003)	executive producer
307476	Smith, Dane Allan	Terra (2003)	producer
307786	Smith, Hope Harmel	General Hospital	1998-1999
307961	Sobelman, Patrick	Romances de terre et d'eau (2002)	producer
308700	Somlo, Josef	Tänzer meiner Frau, Der (1925)	producer
308735	Sommer, Werner	Tatort - Kein Kinderspiel (1980) (TV)	producer
308997	Sorenson, Erik (II)	Day & Date	1995-1996
309106	Soskin, Paul	Quiet Wedding (1941)	producer
309283	Soukup, Josef (I)	Zahrada (1968)	producer
309515	Spano, Erica	Rave (2000)	co-producer
309910	Spelling, Aaron	Making of a Male Model (1983) (TV)	producer
310775	Spindler, Susan	Lump in My Throat, A (2001) (TV)	executive producer
310906	Spitaler, Ludwig	Goldsucher von Arkansas, Die (1964)	executive producer
310948	Spitz, Emilio	Titanes en el ring contraataca (1983)	producer
311321	Spruell-Jackson, Delores	Live with Regis and Kathie Lee	1999-2001
311701	Stabilini, Giovanni	È già ieri (2004)	producer
312202	Stanley, David G.	Winning Lines	executive producer
312322	Stannard, Eliot	Laughing Cavalier, The (1917)	producer
312518	Starger, Martin	Muppet Movie, The (1979)	executive producer
313585	Steinberg, Douglas	Medicine Ball	co-executive producer
314072	Stephens, Mike (I)	Help!	producer
314719	Steuer, Robert (I)	Gun, a Car, a Blonde, A (1997)	associate producer
314780	Stevens, Andrew (I)	Black Thunder (1997)	producer
315488	Stigwood, Robert	Music for UNICEF Concert: A Gift of Song, The (1979) (TV)	executive producer
315589	Stilling, Inger	H.O.P.L.A.	producer
315667	Stinnes, Clärenore	Im Auto durch zwei Welten (1929)	producer
315790	Stockmann, Franz J.	Nicht alles was fliegt, ist ein Vogel (1979)	producer
316180	Stone, Matt (I)	South Park Rally (1999) (VG)	executive producer
316257	Stone, Paul (I)	White Peak Farm	executive producer
316300	Stone, Scott A.	Winning Lines	executive producer
317463	Strömdahl, Erik	Samlaren (1989)	producer
317735	Sturz, Lissy	9:30 (2003)	associate producer
317736	Sturz, Ryan	9:30 (2003)	producer
317853	Støfring, Arild	Caravan (2002)	executive producer
318218	Sugihara, Sadao	Shin kitsune no tameki (1962)	producer
318364	Sullivan, Beth	Cry for Help: The Tracey Thurman Story, A (1989) (TV)	associate producer
318371	Sullivan, Beth	Trials of Rosie O'Neill, The	supervising producer
320605	Szczerbic, Michal	Zycie za zycie (1991)	producer
321211	Särkkä, T.J.	Vatsa sisään, rinta ulos! (1959)	producer
321288	Söderström, Carl-Axel	Im Auto durch zwei Welten (1929)	producer
322359	Takai, Ichiro	Over Time	producer
323057	Tao, Stephen	Warning: Parental Advisory (2002) (TV)	executive producer
323480	Tashjian, Art	Deadlock: A Passion for Murder (1997)	associate producer
323897	Taylor, Brian (I)	Tarnished Heroes (1961)	associate producer
323977	Taylor, Elaine (II)	Love Potion (1987)	co-producer
325753	Terry, Paul (I)	Just a Little Bull (1940)	producer
325950	Terry, Paul (I)	Pastry Panic (1951)	producer
326391	Teti, Camillo	Mondo candido (1975)	producer
328735	Throne, Joshua	Behind Closed Doors (2002) (TV)	co-producer) (as Josh Throne
328786	Thym, Heinz	Do Not Disturb (1999)	executive producer
329218	Tink	Pick-up, The (1999)	producer
330291	Tomlin, John (I)	Day & Date	1996-
330390	Tong, Stanley	Lei ting zhan jing (2000)	producer
331443	Tozzi, Riccardo	È già ieri (2004)	producer
332186	Trinks, Walter W.	Premiere (1936)	producer
333449	Tung, Barbie	Lei ting zhan jing (2000)	producer
333546	Turcotte, Samuel	Kata (1990)	producer
333608	Turman, Lawrence	I Could Go on Singing (1963)	producer
333974	Tutak, Robert	Nobody's Perfect (2002)	executive producer
334631	Ulrich, Kurt (I)	Maulkorb, Der (1958)	producer
335039	Uriel, Emilio	Indio Pluma Roja, El (1975)	executive producer
335437	Vaghts, Marty	General Hospital	coordinating producer
335584	Valadão, Jece	Viagem ao Céu da Boca (1981)	producer
335693	Valente, John	Edge of Night, The	early 1980s, 1982-1984
337141	Van Wagenen, Sterling	Dead Sea Scrolls: Unraveling the Mystery (1998) (TV)	producer
337231	Vance, Dennis	Voices, The (1955) (TV)	producer
337915	Vasconcelos, José Luís	Trois couronnes du matelot, Les (1983)	producer
338060	Vaughan, Jesse	VH-1 to One: Paula Abdul (1992) (TV)	producer
338092	Vaughn, James T.	Double Deal (1950)	producer
338632	Ventura, Ray (I)	Amants du Tage, Les (1955)	executive producer
339142	Vernon, Jacques-Daniel	Regard des autres, Le (1980)	producer
339189	Veronka, Arthur	Hey Babe! (1980)	producer
339447	Verro, Philippe	Dernier mot, Le (1991) (TV)	producer
339475	Verschleiser, Ben	Speed (1925)	producer
339839	Victoria de Lecea, Fernando	Caja 507, La (2002)	executive producer
340433	Vincent, E. Duke	Making of a Male Model (1983) (TV)	supervising producer
341085	Vogel, Eric (III)	Caravan (2002)	producer
341272	Volkenborn, Klaus	Reise ohne Wiederkehr (1989)	producer
341591	von Mengden, Horst	Komischer Heiliger, Ein (1979)	line producer
342014	Vondracek, Frantisek	Waterloo po cesku (2002)	producer
342346	Vuorio, Anelma	Käyntikorttini... (1964)	producer
342556	Wade, Harker	Knight Rider (1982) (TV)	producer
342623	Wafford, Rowland	Amazing Vacation Homes (2004) (TV)	associate producer
342893	Wahlquist, Andrew J.	Face in the Frame, The (1998)	producer
343287	Waldleitner, Luggi	Barrings, Die (1955)	producer
343333	Waldleitner, Luggi	Kühne Schwimmer, Der (1957)	producer
344756	Walter, Norbert	Fast perfekt verlobt (2003) (TV)	producer
345797	Warren, Charles (IV)	Rainbow	executive producer
345798	Warren, Charles (IV)	Rainbow	producer
346935	Weaver, Samantha (II)	Pride of Ireland (2000)	associate producer
347303	Webster, Christopher (I)	Demon Possessed (1993)	producer
348570	Weis, Bob (I)	Raoul Wallenberg: Between the Lines (1986)	producer
348669	Weisert, Gabe	Fishing with Gandhi (1998)	producer
348755	Weiss, Adolph (II)	Unmasked (1929)	producer
348919	Weiss, Louis (I)	Unmasked (1929)	producer
348940	Weiss, Max	Unmasked (1929)	producer
349040	Weiss, William M.	Famous Ride, The (1960)	producer
349296	Weitzman, Daniel	Vida total	associate producer
350036	Werker, George P.	Pequeños gigantes, Los (1960)	producer
350084	Werner, Peter (VIII)	Meister Eder und sein Pumuckl	episodes 1-13
350238	Wessely, Paula	Noch minderjährig (1957)	producer
351539	White, Jules	Andy Clyde Gets Spring Chicken (1939)	producer
351560	White, Jules	Boobs in Arms (1940)	producer
351564	White, Jules	Booty and the Beast (1953)	producer
351802	White, Jules	Skinny the Moocher (1939)	producer
352676	Wiehle-Timm, Heike	Dumm gelaufen (1997)	producer
352748	Wiesenthal, Sam	All Mine to Give (1958)	producer
354176	Williamson, Andrew (I)	Sk8 Life (2004)	associate producer
354177	Williamson, Andrew (I)	Sk8 Life (2004)	producer
354576	Wilson, Carey (I)	Failure at Fifty, A (1940)	producer
355663	Winter, Donna (II)	Girl Talk (2001)	producer
355914	Wintle, Julian	Mister Jerico (1970) (TV)	producer
356304	Witt, Anne-Catherine	Cheveux de ma mère, Les (2004)	executive producer
356305	Witt, Anne-Catherine	Cheveux de ma mère, Les (2004)	producer
356948	Wolkenstein, Oswald	Entscheidung im Eis - Eine Frau jagt den Mörder (2001) (TV)	co-producer
357203	Wong, Augusto	Grande Família, A	executive producer
358052	Woolfe, H. Bruce	Sons of the Sea (1925)	producer
358766	Wunderlich, Renner	Question of Values, A (1971)	producer
358957	Wyatt, Chris (II)	Day & Date	producer
359284	Xiaoming, Albert	Shadow Magic (2000)	associate producer
359297	Xue, Charles	Shadow Magic (2000)	executive producer
359434	Yahata, Craig	Jake 2.0: The Tech (2003) (TV)	associate producer
359468	Yakovou, John	New York Nick	producer
359474	Yalaz, Suat	Karaoglan - Camoka'nin intikami (1966)	producer
359822	Yang, Nina	Lei ting zhan jing (2000)	associate producer: U.S. segment
360057	Yates, Herbert J.	Thunderbirds (1952)	producer
361030	Young, Bob (IX)	Day & Date	1996-
361094	Young, Debbie (II)	Derren Brown Plays Russian Roulette Live (2003) (TV)	producer
361284	Young, Marvin (IV)	Youthquake! (1975)	associate producer
362966	Zeidman, B.F.	Grand Central Murder (1942)	producer
363151	Zelman, Daniel	They Nest (2000) (TV)	co-producer
363429	Zguridi, Aleksandr	Vo l'dakh okeana (1953)	producer
363452	Zhang, Xia	Shadow Magic (2000)	co-producer
363849	Zimbalist, Sam	Tarzan Finds a Son! (1939)	producer
364096	Zinner, Peter	Gun, a Car, a Blonde, A (1997)	co-producer
364218	Zito, David	Breakin' (1984)	producer
\.


--
-- Name: actor pk_actor; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.actor
    ADD CONSTRAINT pk_actor PRIMARY KEY (id);


--
-- Name: actress pk_actress; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.actress
    ADD CONSTRAINT pk_actress PRIMARY KEY (id);


--
-- Name: genre pk_genre; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT pk_genre PRIMARY KEY (id);


--
-- Name: movie pk_movie; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT pk_movie PRIMARY KEY (mid);


--
-- Name: producer pk_producer; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.producer
    ADD CONSTRAINT pk_producer PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

