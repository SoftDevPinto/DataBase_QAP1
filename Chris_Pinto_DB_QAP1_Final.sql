PGDMP     )                	    z           postgres    14.5    14.5 2    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            L           1262    14020    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            M           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3660                        2615    16493    Chris_Pinto_DB_QAP1    SCHEMA     %   CREATE SCHEMA "Chris_Pinto_DB_QAP1";
 #   DROP SCHEMA "Chris_Pinto_DB_QAP1";
                postgres    false                        2615    16394    test_20220908    SCHEMA        CREATE SCHEMA test_20220908;
    DROP SCHEMA test_20220908;
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            N           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16513    aircraft    TABLE     ?   CREATE TABLE "Chris_Pinto_DB_QAP1".aircraft (
    id bigint NOT NULL,
    craft_type character(255),
    airline_name character(255),
    number_passengers bigint
);
 +   DROP TABLE "Chris_Pinto_DB_QAP1".aircraft;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16530    airport_aircraft_from_to    TABLE     ?   CREATE TABLE "Chris_Pinto_DB_QAP1".airport_aircraft_from_to (
    airports_name bigint NOT NULL,
    aircraft_type bigint NOT NULL,
    depart_from bigint NOT NULL,
    arrive_to bigint NOT NULL
);
 ;   DROP TABLE "Chris_Pinto_DB_QAP1".airport_aircraft_from_to;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16508    airports    TABLE     ?   CREATE TABLE "Chris_Pinto_DB_QAP1".airports (
    id bigint NOT NULL,
    airport_name character(255) NOT NULL,
    airport_id character(3) NOT NULL,
    city_id bigint
);
 +   DROP TABLE "Chris_Pinto_DB_QAP1".airports;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16533    arrivals    TABLE     s   CREATE TABLE "Chris_Pinto_DB_QAP1".arrivals (
    id bigint NOT NULL,
    arrivals_name character(255) NOT NULL
);
 +   DROP TABLE "Chris_Pinto_DB_QAP1".arrivals;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16494    cities    TABLE     ?   CREATE TABLE "Chris_Pinto_DB_QAP1".cities (
    id bigint NOT NULL,
    city_name character(255) NOT NULL,
    province character(255) NOT NULL,
    population bigint,
    airport_name character(1)
);
 )   DROP TABLE "Chris_Pinto_DB_QAP1".cities;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16525    passenger_aircraft    TABLE     }   CREATE TABLE "Chris_Pinto_DB_QAP1".passenger_aircraft (
    passenger_id bigint NOT NULL,
    aircraft_id bigint NOT NULL
);
 5   DROP TABLE "Chris_Pinto_DB_QAP1".passenger_aircraft;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16574    passenger_airport    TABLE     |   CREATE TABLE "Chris_Pinto_DB_QAP1".passenger_airport (
    passenger_id bigint NOT NULL,
    airports_id bigint NOT NULL
);
 4   DROP TABLE "Chris_Pinto_DB_QAP1".passenger_airport;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16501    passengers_list    TABLE     ?   CREATE TABLE "Chris_Pinto_DB_QAP1".passengers_list (
    "id " bigint NOT NULL,
    first_name character(255) NOT NULL,
    last_name character(255) NOT NULL,
    phone_number bigint NOT NULL
);
 2   DROP TABLE "Chris_Pinto_DB_QAP1".passengers_list;
       Chris_Pinto_DB_QAP1         heap    postgres    false    7            ?            1259    16419    course_review    TABLE     ?   CREATE TABLE test_20220908.course_review (
    id bigint NOT NULL,
    description text NOT NULL,
    user_id bigint NOT NULL,
    course_id bigint NOT NULL
);
 (   DROP TABLE test_20220908.course_review;
       test_20220908         heap    postgres    false    6            ?            1259    16407    courses    TABLE     g   CREATE TABLE test_20220908.courses (
    id bigint NOT NULL,
    name text,
    scheduled_time date
);
 "   DROP TABLE test_20220908.courses;
       test_20220908         heap    postgres    false    6            ?            1259    16436    user_courses    TABLE     i   CREATE TABLE test_20220908.user_courses (
    users_id bigint NOT NULL,
    course_id bigint NOT NULL
);
 '   DROP TABLE test_20220908.user_courses;
       test_20220908         heap    postgres    false    6            ?            1259    16395    users    TABLE     l   CREATE TABLE test_20220908.users (
    id bigint NOT NULL,
    name character(255),
    course_id bigint
);
     DROP TABLE test_20220908.users;
       test_20220908         heap    postgres    false    6            B          0    16513    aircraft 
   TABLE DATA           b   COPY "Chris_Pinto_DB_QAP1".aircraft (id, craft_type, airline_name, number_passengers) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    219   ?;       D          0    16530    airport_aircraft_from_to 
   TABLE DATA           w   COPY "Chris_Pinto_DB_QAP1".airport_aircraft_from_to (airports_name, aircraft_type, depart_from, arrive_to) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    221   <       A          0    16508    airports 
   TABLE DATA           X   COPY "Chris_Pinto_DB_QAP1".airports (id, airport_name, airport_id, city_id) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    218   ?<       E          0    16533    arrivals 
   TABLE DATA           D   COPY "Chris_Pinto_DB_QAP1".arrivals (id, arrivals_name) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    222   ?=       ?          0    16494    cities 
   TABLE DATA           b   COPY "Chris_Pinto_DB_QAP1".cities (id, city_name, province, population, airport_name) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    216   ?>       C          0    16525    passenger_aircraft 
   TABLE DATA           V   COPY "Chris_Pinto_DB_QAP1".passenger_aircraft (passenger_id, aircraft_id) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    220   p?       F          0    16574    passenger_airport 
   TABLE DATA           U   COPY "Chris_Pinto_DB_QAP1".passenger_airport (passenger_id, airports_id) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    223   ??       @          0    16501    passengers_list 
   TABLE DATA           d   COPY "Chris_Pinto_DB_QAP1".passengers_list ("id ", first_name, last_name, phone_number) FROM stdin;
    Chris_Pinto_DB_QAP1          postgres    false    217   @       =          0    16419    course_review 
   TABLE DATA           S   COPY test_20220908.course_review (id, description, user_id, course_id) FROM stdin;
    test_20220908          postgres    false    214   ?@       <          0    16407    courses 
   TABLE DATA           B   COPY test_20220908.courses (id, name, scheduled_time) FROM stdin;
    test_20220908          postgres    false    213   A       >          0    16436    user_courses 
   TABLE DATA           B   COPY test_20220908.user_courses (users_id, course_id) FROM stdin;
    test_20220908          postgres    false    215   ]A       ;          0    16395    users 
   TABLE DATA           ;   COPY test_20220908.users (id, name, course_id) FROM stdin;
    test_20220908          postgres    false    212   ?A       ?           2606    16519    aircraft aircraft_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".aircraft DROP CONSTRAINT aircraft_pkey;
       Chris_Pinto_DB_QAP1            postgres    false    219            ?           2606    16512    airports airports_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".airports DROP CONSTRAINT airports_pkey;
       Chris_Pinto_DB_QAP1            postgres    false    218            ?           2606    16539    arrivals arrivals_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".arrivals
    ADD CONSTRAINT arrivals_pkey PRIMARY KEY (id, arrivals_name);
 O   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".arrivals DROP CONSTRAINT arrivals_pkey;
       Chris_Pinto_DB_QAP1            postgres    false    222    222            ?           2606    16500    cities cities_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".cities DROP CONSTRAINT cities_pkey;
       Chris_Pinto_DB_QAP1            postgres    false    216            ?           2606    16529 *   passenger_aircraft passenger_aircraft_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".passenger_aircraft
    ADD CONSTRAINT passenger_aircraft_pkey PRIMARY KEY (passenger_id, aircraft_id);
 c   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".passenger_aircraft DROP CONSTRAINT passenger_aircraft_pkey;
       Chris_Pinto_DB_QAP1            postgres    false    220    220            ?           2606    16578 (   passenger_airport passenger_airport_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".passenger_airport
    ADD CONSTRAINT passenger_airport_pkey PRIMARY KEY (passenger_id, airports_id);
 a   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".passenger_airport DROP CONSTRAINT passenger_airport_pkey;
       Chris_Pinto_DB_QAP1            postgres    false    223    223            ?           2606    16507 $   passengers_list passengers_list_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".passengers_list
    ADD CONSTRAINT passengers_list_pkey PRIMARY KEY ("id ");
 ]   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".passengers_list DROP CONSTRAINT passengers_list_pkey;
       Chris_Pinto_DB_QAP1            postgres    false    217            ?           2606    16425     course_review course_review_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_20220908.course_review
    ADD CONSTRAINT course_review_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY test_20220908.course_review DROP CONSTRAINT course_review_pkey;
       test_20220908            postgres    false    214            ?           2606    16413    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY test_20220908.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY test_20220908.courses DROP CONSTRAINT courses_pkey;
       test_20220908            postgres    false    213            ?           2606    16399    users initial_table_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY test_20220908.users
    ADD CONSTRAINT initial_table_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY test_20220908.users DROP CONSTRAINT initial_table_pkey;
       test_20220908            postgres    false    212            ?           2606    16450    user_courses user_courses_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT user_courses_pkey PRIMARY KEY (users_id, course_id) INCLUDE (users_id, course_id);
 O   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT user_courses_pkey;
       test_20220908            postgres    false    215    215            ?           2606    16520    airports city_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".airports
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES "Chris_Pinto_DB_QAP1".cities(id) NOT VALID;
 I   ALTER TABLE ONLY "Chris_Pinto_DB_QAP1".airports DROP CONSTRAINT city_fk;
       Chris_Pinto_DB_QAP1          postgres    false    216    3485    218            ?           2606    16431    course_review course    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.course_review
    ADD CONSTRAINT course FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id) NOT VALID;
 E   ALTER TABLE ONLY test_20220908.course_review DROP CONSTRAINT course;
       test_20220908          postgres    false    213    3479    214            ?           2606    16439    user_courses courses    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT courses FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id);
 E   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT courses;
       test_20220908          postgres    false    213    3479    215            ?           2606    16414    users courses_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.users
    ADD CONSTRAINT courses_fk FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id) NOT VALID;
 A   ALTER TABLE ONLY test_20220908.users DROP CONSTRAINT courses_fk;
       test_20220908          postgres    false    212    213    3479            ?           2606    16426    course_review users    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.course_review
    ADD CONSTRAINT users FOREIGN KEY (user_id) REFERENCES test_20220908.users(id) NOT VALID;
 D   ALTER TABLE ONLY test_20220908.course_review DROP CONSTRAINT users;
       test_20220908          postgres    false    3477    212    214            ?           2606    16444    user_courses users    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT users FOREIGN KEY (users_id) REFERENCES test_20220908.users(id) NOT VALID;
 C   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT users;
       test_20220908          postgres    false    3477    212    215            B   i   x????	? @?s2???"]???X?HT???D?	??[?"?z͔`Pm桦??[q??ExL?????b?????`??%p.?=:??<b?g=?炈x?ԍ      D   ?   x???A
?0F??9??7??????p??B?D?G??(??????F???S??m?uhhjסSW?v?a?v؅??y߿??{??v:?l??]u?hjסSW?v?a?v<?h??SG??y?Щ???(?(??u????;??Î?͵??.??ԮCW?v?a?v??CڹVZﹼ]??;???;찋?k?G?#???{?=???y?־??l?      A   ?   x???Mj?@?ךS?????.?E?K)?Q???0??F&??;????<>?>-??⪭d?dB?*???z5?gĸ?eX????b?Ȋ?l ??r8?*?????cq??|?	?X?t?,?%?????Y݆s????@???M?rC????]??6???"ܧ?ԥ?d]?j?f&( ???.???s~??K??ԥ&????W?&???t?R?z??r?]?? ?`Bw      E   ?   x???=
A???9????k??V
66A??????ۻ^?)?;???.?9۠#?4W?bʑj?p57?F)??????<?6???#Gy???	????a?$??ښ?8??Sm??n?*)??V?;h%ƉZK?u
?{?^!=?{?[i???A?K7,?      ?   ?   x???[?0E?/?p??Ed???+֔???c?J?k??
?MNf4?\^????6??9.|
?'i??i?ݱ0?P?gzI;I???C̞?]$?ՍRjm?b???? -%???? ?!tsP?jFJoi))@?w)o?(?@??Ű??3??????D?s??Z??Ʈ-T?1}?D?v?????v?W????,???A?       C   2   x???  ?7?I?4??'?\?Tˈ?????Û7o>|????%=x-      F   S   x?̱? C??;lKd???G?Q??f????4??E?ۭ?k???rȫ?l??̍yo̘?`????&܄=?a?I???}      @   ?   x???A? E?3??M??.?-?U??ۗ???/xs????W4?b؛j?-,iE[??ǽ??*mZ?%?y????&??3??hņ????Y܂??q-?Қ[ڜ??????x??[?$I??@S??݆3]?;z?=????R?^\F{?8c???1??)?+      =   =   x?3?,??,VH?/*-NU ?ҋRK99??q??L????K????k?i????? ?k#?      <   7   x?3?LI,ILJ,N-?4202?5??54?2??J,K,N.?,(A7?#???qqq ?=?      >   $   x?3?4?2?4bc.c ??6???ؐ+F??? S?a      ;   R   x?3?,I-.Q??Ӑˈ37?({?2??ӈ˄?%?,3e?]2p Ɯ??99????\???E??풁?0????? ?è?     