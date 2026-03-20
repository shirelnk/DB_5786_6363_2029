--
-- PostgreSQL database dump
--

\restrict UIyAJB1zvJTw3EkkGCqK1u7bvpaUpJkIqeddocyV9oysthxfIk3oGLMt6Vm0Eww

-- Dumped from database version 18.3 (Debian 18.3-1.pgdg13+1)
-- Dumped by pg_dump version 18.3 (Debian 18.3-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.customer (
    customerid integer NOT NULL,
    fullname character varying(100) NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(100) NOT NULL,
    joindate date
);


ALTER TABLE public.customer OWNER TO shirelnk;

--
-- Name: difficultylevel; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.difficultylevel (
    difficultyid integer NOT NULL,
    difficultyname character varying(50) NOT NULL
);


ALTER TABLE public.difficultylevel OWNER TO shirelnk;

--
-- Name: guide; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.guide (
    guideid integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(100) NOT NULL,
    birthdate date,
    joindate date,
    dailyrate numeric(8,2),
    experienceyears integer,
    rating numeric(3,2),
    address character varying(200),
    notes character varying(500),
    CONSTRAINT guide_dailyrate_check CHECK ((dailyrate >= (0)::numeric)),
    CONSTRAINT guide_experienceyears_check CHECK ((experienceyears >= 0)),
    CONSTRAINT guide_rating_check CHECK (((rating >= (0)::numeric) AND (rating <= (5)::numeric)))
);


ALTER TABLE public.guide OWNER TO shirelnk;

--
-- Name: guidedtour; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.guidedtour (
    tourid integer NOT NULL,
    startdate date NOT NULL,
    enddate date,
    starttime character varying(10),
    endtime character varying(10),
    meetingpoint character varying(200) NOT NULL,
    price numeric(8,2),
    maxparticipants integer,
    notes character varying(500),
    tourstatusid integer NOT NULL,
    guideid integer NOT NULL,
    routeid integer NOT NULL,
    CONSTRAINT guidedtour_check CHECK (((enddate IS NULL) OR (enddate >= startdate))),
    CONSTRAINT guidedtour_maxparticipants_check CHECK ((maxparticipants > 0)),
    CONSTRAINT guidedtour_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.guidedtour OWNER TO shirelnk;

--
-- Name: payment; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.payment (
    paymentid integer NOT NULL,
    paymentdate date NOT NULL,
    amount numeric(8,2),
    notes character varying(500),
    paymentmethod character varying(50) NOT NULL,
    referencenumber character varying(50),
    registrationid integer NOT NULL,
    paymentstatusid integer NOT NULL,
    CONSTRAINT payment_amount_check CHECK ((amount >= (0)::numeric))
);


ALTER TABLE public.payment OWNER TO shirelnk;

--
-- Name: paymentstatus; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.paymentstatus (
    paymentstatusid integer NOT NULL,
    statusname character varying(50) NOT NULL
);


ALTER TABLE public.paymentstatus OWNER TO shirelnk;

--
-- Name: registration; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.registration (
    registrationid integer NOT NULL,
    registrationdate date NOT NULL,
    amounttopay numeric(8,2),
    notes character varying(500),
    tourid integer NOT NULL,
    registrationstatusid integer NOT NULL,
    customerid integer NOT NULL,
    CONSTRAINT registration_amounttopay_check CHECK ((amounttopay >= (0)::numeric))
);


ALTER TABLE public.registration OWNER TO shirelnk;

--
-- Name: registrationstatus; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.registrationstatus (
    registrationstatusid integer NOT NULL,
    statusname character varying(50) NOT NULL
);


ALTER TABLE public.registrationstatus OWNER TO shirelnk;

--
-- Name: route; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.route (
    routeid integer NOT NULL,
    name character varying(100) NOT NULL,
    estimatedlength numeric(8,2),
    estimatedduration integer,
    description character varying(500),
    difficultyid integer NOT NULL,
    CONSTRAINT route_estimatedduration_check CHECK ((estimatedduration > 0)),
    CONSTRAINT route_estimatedlength_check CHECK ((estimatedlength >= (0)::numeric))
);


ALTER TABLE public.route OWNER TO shirelnk;

--
-- Name: tourstatus; Type: TABLE; Schema: public; Owner: shirelnk
--

CREATE TABLE public.tourstatus (
    tourstatusid integer NOT NULL,
    statusname character varying(50) NOT NULL
);


ALTER TABLE public.tourstatus OWNER TO shirelnk;

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.customer (customerid, fullname, phone, email, joindate) FROM stdin;
\.


--
-- Data for Name: difficultylevel; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.difficultylevel (difficultyid, difficultyname) FROM stdin;
\.


--
-- Data for Name: guide; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.guide (guideid, firstname, lastname, phone, email, birthdate, joindate, dailyrate, experienceyears, rating, address, notes) FROM stdin;
\.


--
-- Data for Name: guidedtour; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.guidedtour (tourid, startdate, enddate, starttime, endtime, meetingpoint, price, maxparticipants, notes, tourstatusid, guideid, routeid) FROM stdin;
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.payment (paymentid, paymentdate, amount, notes, paymentmethod, referencenumber, registrationid, paymentstatusid) FROM stdin;
\.


--
-- Data for Name: paymentstatus; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.paymentstatus (paymentstatusid, statusname) FROM stdin;
\.


--
-- Data for Name: registration; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.registration (registrationid, registrationdate, amounttopay, notes, tourid, registrationstatusid, customerid) FROM stdin;
\.


--
-- Data for Name: registrationstatus; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.registrationstatus (registrationstatusid, statusname) FROM stdin;
\.


--
-- Data for Name: route; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.route (routeid, name, estimatedlength, estimatedduration, description, difficultyid) FROM stdin;
\.


--
-- Data for Name: tourstatus; Type: TABLE DATA; Schema: public; Owner: shirelnk
--

COPY public.tourstatus (tourstatusid, statusname) FROM stdin;
\.


--
-- Name: customer customer_email_key; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_email_key UNIQUE (email);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);


--
-- Name: difficultylevel difficultylevel_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.difficultylevel
    ADD CONSTRAINT difficultylevel_pkey PRIMARY KEY (difficultyid);


--
-- Name: guide guide_email_key; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.guide
    ADD CONSTRAINT guide_email_key UNIQUE (email);


--
-- Name: guide guide_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.guide
    ADD CONSTRAINT guide_pkey PRIMARY KEY (guideid);


--
-- Name: guidedtour guidedtour_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.guidedtour
    ADD CONSTRAINT guidedtour_pkey PRIMARY KEY (tourid);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (paymentid);


--
-- Name: paymentstatus paymentstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.paymentstatus
    ADD CONSTRAINT paymentstatus_pkey PRIMARY KEY (paymentstatusid);


--
-- Name: registration registration_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_pkey PRIMARY KEY (registrationid);


--
-- Name: registrationstatus registrationstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.registrationstatus
    ADD CONSTRAINT registrationstatus_pkey PRIMARY KEY (registrationstatusid);


--
-- Name: route route_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_pkey PRIMARY KEY (routeid);


--
-- Name: tourstatus tourstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.tourstatus
    ADD CONSTRAINT tourstatus_pkey PRIMARY KEY (tourstatusid);


--
-- Name: guidedtour guidedtour_guideid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.guidedtour
    ADD CONSTRAINT guidedtour_guideid_fkey FOREIGN KEY (guideid) REFERENCES public.guide(guideid);


--
-- Name: guidedtour guidedtour_routeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.guidedtour
    ADD CONSTRAINT guidedtour_routeid_fkey FOREIGN KEY (routeid) REFERENCES public.route(routeid);


--
-- Name: guidedtour guidedtour_tourstatusid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.guidedtour
    ADD CONSTRAINT guidedtour_tourstatusid_fkey FOREIGN KEY (tourstatusid) REFERENCES public.tourstatus(tourstatusid);


--
-- Name: payment payment_paymentstatusid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_paymentstatusid_fkey FOREIGN KEY (paymentstatusid) REFERENCES public.paymentstatus(paymentstatusid);


--
-- Name: payment payment_registrationid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_registrationid_fkey FOREIGN KEY (registrationid) REFERENCES public.registration(registrationid);


--
-- Name: registration registration_customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid);


--
-- Name: registration registration_registrationstatusid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_registrationstatusid_fkey FOREIGN KEY (registrationstatusid) REFERENCES public.registrationstatus(registrationstatusid);


--
-- Name: registration registration_tourid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_tourid_fkey FOREIGN KEY (tourid) REFERENCES public.guidedtour(tourid);


--
-- Name: route route_difficultyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shirelnk
--

ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_difficultyid_fkey FOREIGN KEY (difficultyid) REFERENCES public.difficultylevel(difficultyid);


--
-- PostgreSQL database dump complete
--

\unrestrict UIyAJB1zvJTw3EkkGCqK1u7bvpaUpJkIqeddocyV9oysthxfIk3oGLMt6Vm0Eww

