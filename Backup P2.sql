--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.2.3
-- Started on 2013-04-21 19:24:03

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 176 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1978 (class 0 OID 0)
-- Dependencies: 176
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 169 (class 1259 OID 24718)
-- Name: author; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE author (
    name character varying(30) NOT NULL,
    date_of_birth date,
    short_bio character varying(140),
    birth_place character varying(27)
);


ALTER TABLE public.author OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 24756)
-- Name: authorrating; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE authorrating (
    rating_num integer,
    text_rating character varying(140),
    ratedby character varying(30) NOT NULL,
    authorrated character varying(30) NOT NULL
);


ALTER TABLE public.authorrating OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 24728)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE book (
    isbn integer NOT NULL,
    price real,
    edition_num integer,
    year_of_pub integer,
    title character varying(21),
    authorname character varying(30) NOT NULL,
    pubhouse character varying(300) NOT NULL
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 24743)
-- Name: bookrating; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bookrating (
    rating_num integer,
    text_rating character varying(140),
    ratedby character varying(15) NOT NULL,
    bookrated integer NOT NULL
);


ALTER TABLE public.bookrating OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 24769)
-- Name: credit_card; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE credit_card (
    card_num integer NOT NULL,
    card_owner character varying(30) NOT NULL,
    card_type integer,
    expir_date date,
    billing_addr character varying(50)
);


ALTER TABLE public.credit_card OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 24713)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE customer (
    username character varying(15) NOT NULL,
    password character varying(21),
    date_of_birth date,
    email character varying(21),
    name character varying(30)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 24723)
-- Name: publishing_house; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE publishing_house (
    pubname character varying(30) NOT NULL,
    address character varying(50)
);


ALTER TABLE public.publishing_house OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 24779)
-- Name: transaction; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE transaction (
    order_num integer NOT NULL,
    date date,
    bought_by character varying(30) NOT NULL,
    book_bought integer NOT NULL
);


ALTER TABLE public.transaction OWNER TO postgres;

--
-- TOC entry 1964 (class 0 OID 24718)
-- Dependencies: 169
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY author (name, date_of_birth, short_bio, birth_place) FROM stdin;
Wilheard Firoozeh	1990-05-14	He was cool.	San Jose, CA
Arnifrid David	1957-05-14	He was cool.	San Jose, CA
Ema Anish	1922-05-14	She was aight	Portland, OR
Clarissa Asa	1953-05-14	No one liked her. She smelled like onions	Los Angeles, CA
Osvald Judite	1990-05-14	Likes to mosh at punk shows	Berkley, CA
\.


--
-- TOC entry 1968 (class 0 OID 24756)
-- Dependencies: 173
-- Data for Name: authorrating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY authorrating (rating_num, text_rating, ratedby, authorrated) FROM stdin;
5	This is a great author	CoffeeMan	Wilheard Firoozeh
5	This is a great author	HappyGilmore	Wilheard Firoozeh
1	This is a terrible author	CmpERules	Wilheard Firoozeh
3	This is an okay author	BobBarker69	Wilheard Firoozeh
5	This author writes great books	PizzaIsCool	Wilheard Firoozeh
\.


--
-- TOC entry 1966 (class 0 OID 24728)
-- Dependencies: 171
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY book (isbn, price, edition_num, year_of_pub, title, authorname, pubhouse) FROM stdin;
1	10	1	1997	Eat Tacos	Wilheard Firoozeh	Scholastic
2	20	2	1995	Eat Tuna	Wilheard Firoozeh	Scholastic
3	1	7	1990	I Like Pens	Ema Anish	Scholastic
4	2	1	2001	I Like Turtles	Ema Anish	Scholastic
5	50	1	2001	Swag Me Out Tony	Osvald Judite	Scholastic
6	7	5	2001	Justin Bieber	Osvald Judite	Scholastic
7	4	1	2000	Star Wars	Arnifrid David	Scholastic
8	3	2	2012	Taylor Swift	Arnifrid David	Scholastic
9	9	1	2011	Tony vs. Lil B	Clarissa Asa	Scholastic
10	1	1	2007	Skateboards	Clarissa Asa	Scholastic
\.


--
-- TOC entry 1967 (class 0 OID 24743)
-- Dependencies: 172
-- Data for Name: bookrating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bookrating (rating_num, text_rating, ratedby, bookrated) FROM stdin;
5	It was a greatbook	CoffeeMan	1
5	It was a good book	CoffeeMan	2
5	It was a good book	CoffeeMan	3
4	It was a good book	HappyGilmore	3
4	It was a good book	HappyGilmore	2
4	It was a good book	HappyGilmore	4
3	It was an okay book	CmpERules	5
3	It was an okay book	CmpERules	1
3	It was an okay book	CmpERules	6
1	It was a bad book	BobBarker69	7
1	It was a bad book	BobBarker69	8
1	It was a bad book	BobBarker69	1
5	It was a good book	PizzaIsCool	9
5	It was a good book	PizzaIsCool	8
5	It was a good book	PizzaIsCool	10
\.


--
-- TOC entry 1969 (class 0 OID 24769)
-- Dependencies: 174
-- Data for Name: credit_card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY credit_card (card_num, card_owner, card_type, expir_date, billing_addr) FROM stdin;
1	CoffeeMan	1	2013-01-01	1 First St., San Jose 95112
2	HappyGilmore	1	2013-02-02	2 Second St., San Jose 95112
3	CmpERules	3	2013-03-03	3 Third St., San Jose 95112
4	BobBarker69	2	2013-04-04	4 Fourth St., San Jose 95112
5	PizzaIsCool	2	2013-05-05	5 Fifth St., San Jose 95112
\.


--
-- TOC entry 1963 (class 0 OID 24713)
-- Dependencies: 168
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer (username, password, date_of_birth, email, name) FROM stdin;
CoffeeMan	cool12345	1987-09-22	Bob@gmail.com	Bobby Brown
HappyGilmore	tunaS	1987-09-22	Hgilmore@gmail.com	Happy Gilmore
CmpERules	password1234	1990-05-14	JoeShmoe@yahoo.com	Joe Schmoe
BobBarker69	password1010	1927-11-12	BBarker@yahoo.com	Bob Barker
PizzaIsCool	pizza7890	1990-03-25	pizzaman@yahoo.com	Bill Murray
\.


--
-- TOC entry 1965 (class 0 OID 24723)
-- Dependencies: 170
-- Data for Name: publishing_house; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publishing_house (pubname, address) FROM stdin;
Scholastic	1 Washington Sq., San Jose 95112
Random House	201 East 50th St., New York 10022
\.


--
-- TOC entry 1970 (class 0 OID 24779)
-- Dependencies: 175
-- Data for Name: transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY transaction (order_num, date, bought_by, book_bought) FROM stdin;
10	2013-01-01	CoffeeMan	1
11	2013-02-02	CoffeeMan	2
12	2013-03-03	HappyGilmore	3
13	2013-04-04	HappyGilmore	4
14	2013-05-05	CmpERules	5
15	2013-06-06	CmpERules	6
16	2013-07-07	BobBarker69	7
17	2013-08-08	BobBarker69	8
18	2013-09-09	PizzaIsCool	9
19	2013-10-10	PizzaIsCool	10
\.


--
-- TOC entry 1945 (class 2606 OID 24722)
-- Name: author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY author
    ADD CONSTRAINT author_pkey PRIMARY KEY (name);


--
-- TOC entry 1949 (class 2606 OID 24732)
-- Name: book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY book
    ADD CONSTRAINT book_pkey PRIMARY KEY (isbn);


--
-- TOC entry 1951 (class 2606 OID 24773)
-- Name: credit_card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY credit_card
    ADD CONSTRAINT credit_card_pkey PRIMARY KEY (card_num);


--
-- TOC entry 1943 (class 2606 OID 24717)
-- Name: customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (username);


--
-- TOC entry 1947 (class 2606 OID 24727)
-- Name: publishing_house_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY publishing_house
    ADD CONSTRAINT publishing_house_pkey PRIMARY KEY (pubname);


--
-- TOC entry 1953 (class 2606 OID 24783)
-- Name: transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (order_num);


--
-- TOC entry 1959 (class 2606 OID 24764)
-- Name: authorrating_authorrated_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY authorrating
    ADD CONSTRAINT authorrating_authorrated_fkey FOREIGN KEY (authorrated) REFERENCES author(name);


--
-- TOC entry 1958 (class 2606 OID 24759)
-- Name: authorrating_ratedby_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY authorrating
    ADD CONSTRAINT authorrating_ratedby_fkey FOREIGN KEY (ratedby) REFERENCES customer(username);


--
-- TOC entry 1954 (class 2606 OID 24733)
-- Name: book_authorname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY book
    ADD CONSTRAINT book_authorname_fkey FOREIGN KEY (authorname) REFERENCES author(name);


--
-- TOC entry 1955 (class 2606 OID 24738)
-- Name: book_pubhouse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY book
    ADD CONSTRAINT book_pubhouse_fkey FOREIGN KEY (pubhouse) REFERENCES publishing_house(pubname);


--
-- TOC entry 1957 (class 2606 OID 24751)
-- Name: bookrating_bookrated_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookrating
    ADD CONSTRAINT bookrating_bookrated_fkey FOREIGN KEY (bookrated) REFERENCES book(isbn);


--
-- TOC entry 1956 (class 2606 OID 24746)
-- Name: bookrating_ratedby_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bookrating
    ADD CONSTRAINT bookrating_ratedby_fkey FOREIGN KEY (ratedby) REFERENCES customer(username);


--
-- TOC entry 1960 (class 2606 OID 24774)
-- Name: credit_card_card_owner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY credit_card
    ADD CONSTRAINT credit_card_card_owner_fkey FOREIGN KEY (card_owner) REFERENCES customer(username);


--
-- TOC entry 1962 (class 2606 OID 24789)
-- Name: transaction_book_bought_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY transaction
    ADD CONSTRAINT transaction_book_bought_fkey FOREIGN KEY (book_bought) REFERENCES book(isbn);


--
-- TOC entry 1961 (class 2606 OID 24784)
-- Name: transaction_bought_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY transaction
    ADD CONSTRAINT transaction_bought_by_fkey FOREIGN KEY (bought_by) REFERENCES customer(username);


--
-- TOC entry 1977 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-04-21 19:24:04

--
-- PostgreSQL database dump complete
--

