PGDMP     9    8                y            hrms    13.2    13.2 z    u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            x           1262    16892    hrms    DATABASE     a   CREATE DATABASE hrms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hrms;
                postgres    false            �            1259    18697    candidate_foreign_languages    TABLE     �   CREATE TABLE public.candidate_foreign_languages (
    id integer NOT NULL,
    level integer NOT NULL,
    cv_id integer,
    foreign_language_id integer NOT NULL
);
 /   DROP TABLE public.candidate_foreign_languages;
       public         heap    postgres    false            �            1259    18695 "   candidate_foreign_languages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidate_foreign_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.candidate_foreign_languages_id_seq;
       public          postgres    false    228            y           0    0 "   candidate_foreign_languages_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.candidate_foreign_languages_id_seq OWNED BY public.candidate_foreign_languages.id;
          public          postgres    false    227            �            1259    18705    candidate_knowledges    TABLE     �   CREATE TABLE public.candidate_knowledges (
    id integer NOT NULL,
    cv_id integer,
    programming_technology_id integer
);
 (   DROP TABLE public.candidate_knowledges;
       public         heap    postgres    false            �            1259    18703    candidate_knowledges_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidate_knowledges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.candidate_knowledges_id_seq;
       public          postgres    false    230            z           0    0    candidate_knowledges_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.candidate_knowledges_id_seq OWNED BY public.candidate_knowledges.id;
          public          postgres    false    229            �            1259    17823 
   candidates    TABLE     �   CREATE TABLE public.candidates (
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    identity_id character varying(11) NOT NULL,
    birth_year integer NOT NULL,
    candidate_id integer NOT NULL
);
    DROP TABLE public.candidates;
       public         heap    postgres    false            �            1259    18079    cv    TABLE     
  CREATE TABLE public.cv (
    id integer NOT NULL,
    github_adress character varying(300) NOT NULL,
    linkedin_adress character varying(300) NOT NULL,
    covering_letter character varying(300) NOT NULL,
    image_id integer,
    candidate_id integer NOT NULL
);
    DROP TABLE public.cv;
       public         heap    postgres    false            �            1259    18077    cirriculum_vitaes_id_seq    SEQUENCE     �   ALTER TABLE public.cv ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cirriculum_vitaes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    18014    cities    TABLE     b   CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.cities;
       public         heap    postgres    false            �            1259    18012    cities_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cities_city_id_seq;
       public          postgres    false    217            {           0    0    cities_city_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.cities_city_id_seq OWNED BY public.cities.id;
          public          postgres    false    216            �            1259    17699    employee_confirms    TABLE     �   CREATE TABLE public.employee_confirms (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    is_confirmed boolean NOT NULL,
    confirm_date date NOT NULL
);
 %   DROP TABLE public.employee_confirms;
       public         heap    postgres    false            �            1259    17704    employee_confirms_employers    TABLE     o   CREATE TABLE public.employee_confirms_employers (
    id integer NOT NULL,
    employer_id integer NOT NULL
);
 /   DROP TABLE public.employee_confirms_employers;
       public         heap    postgres    false            �            1259    17709 	   employees    TABLE     �   CREATE TABLE public.employees (
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    17714 	   employers    TABLE     �   CREATE TABLE public.employers (
    company_name character varying(350) NOT NULL,
    web_site character varying(350) NOT NULL,
    phone_number character varying(11) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.employers;
       public         heap    postgres    false            �            1259    18506    foreign_languages    TABLE     m   CREATE TABLE public.foreign_languages (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
 %   DROP TABLE public.foreign_languages;
       public         heap    postgres    false            �            1259    18504    foreign_languages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.foreign_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.foreign_languages_id_seq;
       public          postgres    false    222            |           0    0    foreign_languages_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.foreign_languages_id_seq OWNED BY public.foreign_languages.id;
          public          postgres    false    221            �            1259    17600    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    18187    images    TABLE     �   CREATE TABLE public.images (
    id integer NOT NULL,
    public_image_id character varying(50) NOT NULL,
    url character varying(255) NOT NULL,
    created_date date NOT NULL
);
    DROP TABLE public.images;
       public         heap    postgres    false            �            1259    18789    images_id_seq    SEQUENCE     �   ALTER TABLE public.images ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    17976    job_adverts    TABLE     �  CREATE TABLE public.job_adverts (
    id integer NOT NULL,
    max_salary smallint NOT NULL,
    min_salary smallint NOT NULL,
    deadline date NOT NULL,
    count_of_receivable_candidate smallint NOT NULL,
    job_requirements character varying(500) NOT NULL,
    job_position_id integer NOT NULL,
    is_active boolean DEFAULT true,
    city_id integer NOT NULL,
    employer_id integer NOT NULL,
    published_date date DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.job_adverts;
       public         heap    postgres    false            �            1259    17974    job_adverts_advert_id_seq    SEQUENCE     �   ALTER TABLE public.job_adverts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.job_adverts_advert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    18681    job_histories    TABLE     �   CREATE TABLE public.job_histories (
    id integer NOT NULL,
    company_name character varying(255),
    finished_date date,
    is_finished boolean,
    started_date date,
    position_id integer,
    cv_id integer
);
 !   DROP TABLE public.job_histories;
       public         heap    postgres    false            �            1259    18679    job_histories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_histories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.job_histories_id_seq;
       public          postgres    false    226            }           0    0    job_histories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.job_histories_id_seq OWNED BY public.job_histories.id;
          public          postgres    false    225            �            1259    17722    job_positions    TABLE     �   CREATE TABLE public.job_positions (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    is_active boolean DEFAULT true NOT NULL
);
 !   DROP TABLE public.job_positions;
       public         heap    postgres    false            �            1259    17781    job_titles_id_seq    SEQUENCE     �   ALTER TABLE public.job_positions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.job_titles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            �            1259    18713    programming_technologies    TABLE     k   CREATE TABLE public.programming_technologies (
    id integer NOT NULL,
    name character varying(255)
);
 ,   DROP TABLE public.programming_technologies;
       public         heap    postgres    false            �            1259    18711    programming_technologies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programming_technologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.programming_technologies_id_seq;
       public          postgres    false    232            ~           0    0    programming_technologies_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.programming_technologies_id_seq OWNED BY public.programming_technologies.id;
          public          postgres    false    231            �            1259    18533    schools    TABLE       CREATE TABLE public.schools (
    id integer NOT NULL,
    department character varying(255) NOT NULL,
    graduated_date date,
    name character varying(255) NOT NULL,
    started_date date NOT NULL,
    cv_id integer,
    is_graduated boolean NOT NULL
);
    DROP TABLE public.schools;
       public         heap    postgres    false            �            1259    18531    schools_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.schools_id_seq;
       public          postgres    false    224                       0    0    schools_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.schools_id_seq OWNED BY public.schools.id;
          public          postgres    false    223            �            1259    17729    users    TABLE     �   CREATE TABLE public.users (
    email character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    id integer NOT NULL,
    password_repeat character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17727    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207            �            1259    17734    verification_code_candidates    TABLE     �   CREATE TABLE public.verification_code_candidates (
    candidate_id integer NOT NULL,
    verification_code_id integer NOT NULL
);
 0   DROP TABLE public.verification_code_candidates;
       public         heap    postgres    false            �            1259    17739    verification_code_employers    TABLE     �   CREATE TABLE public.verification_code_employers (
    employer_id integer NOT NULL,
    verification_code_id integer NOT NULL
);
 /   DROP TABLE public.verification_code_employers;
       public         heap    postgres    false            �            1259    17746    verification_codes    TABLE     �   CREATE TABLE public.verification_codes (
    id integer NOT NULL,
    code character varying(350),
    is_verified boolean DEFAULT false,
    verified_date date,
    created_date date NOT NULL
);
 &   DROP TABLE public.verification_codes;
       public         heap    postgres    false            �            1259    17744    verification_codes_id_seq    SEQUENCE     �   ALTER TABLE public.verification_codes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.verification_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            �           2604    18700    candidate_foreign_languages id    DEFAULT     �   ALTER TABLE ONLY public.candidate_foreign_languages ALTER COLUMN id SET DEFAULT nextval('public.candidate_foreign_languages_id_seq'::regclass);
 M   ALTER TABLE public.candidate_foreign_languages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    18708    candidate_knowledges id    DEFAULT     �   ALTER TABLE ONLY public.candidate_knowledges ALTER COLUMN id SET DEFAULT nextval('public.candidate_knowledges_id_seq'::regclass);
 F   ALTER TABLE public.candidate_knowledges ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    18017 	   cities id    DEFAULT     k   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_city_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    18509    foreign_languages id    DEFAULT     |   ALTER TABLE ONLY public.foreign_languages ALTER COLUMN id SET DEFAULT nextval('public.foreign_languages_id_seq'::regclass);
 C   ALTER TABLE public.foreign_languages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    18684    job_histories id    DEFAULT     t   ALTER TABLE ONLY public.job_histories ALTER COLUMN id SET DEFAULT nextval('public.job_histories_id_seq'::regclass);
 ?   ALTER TABLE public.job_histories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    18716    programming_technologies id    DEFAULT     �   ALTER TABLE ONLY public.programming_technologies ALTER COLUMN id SET DEFAULT nextval('public.programming_technologies_id_seq'::regclass);
 J   ALTER TABLE public.programming_technologies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    18536 
   schools id    DEFAULT     h   ALTER TABLE ONLY public.schools ALTER COLUMN id SET DEFAULT nextval('public.schools_id_seq'::regclass);
 9   ALTER TABLE public.schools ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            m          0    18697    candidate_foreign_languages 
   TABLE DATA           \   COPY public.candidate_foreign_languages (id, level, cv_id, foreign_language_id) FROM stdin;
    public          postgres    false    228   !�       o          0    18705    candidate_knowledges 
   TABLE DATA           T   COPY public.candidate_knowledges (id, cv_id, programming_technology_id) FROM stdin;
    public          postgres    false    230   P�       ^          0    17823 
   candidates 
   TABLE DATA           b   COPY public.candidates (first_name, last_name, identity_id, birth_year, candidate_id) FROM stdin;
    public          postgres    false    213   ��       b          0    18014    cities 
   TABLE DATA           *   COPY public.cities (id, name) FROM stdin;
    public          postgres    false    217   ��       d          0    18079    cv 
   TABLE DATA           i   COPY public.cv (id, github_adress, linkedin_adress, covering_letter, image_id, candidate_id) FROM stdin;
    public          postgres    false    219   9�       R          0    17699    employee_confirms 
   TABLE DATA           X   COPY public.employee_confirms (id, employee_id, is_confirmed, confirm_date) FROM stdin;
    public          postgres    false    201   ۘ       S          0    17704    employee_confirms_employers 
   TABLE DATA           F   COPY public.employee_confirms_employers (id, employer_id) FROM stdin;
    public          postgres    false    202   ��       T          0    17709 	   employees 
   TABLE DATA           >   COPY public.employees (first_name, last_name, id) FROM stdin;
    public          postgres    false    203   �       U          0    17714 	   employers 
   TABLE DATA           M   COPY public.employers (company_name, web_site, phone_number, id) FROM stdin;
    public          postgres    false    204   @�       g          0    18506    foreign_languages 
   TABLE DATA           5   COPY public.foreign_languages (id, name) FROM stdin;
    public          postgres    false    222   ��       e          0    18187    images 
   TABLE DATA           H   COPY public.images (id, public_image_id, url, created_date) FROM stdin;
    public          postgres    false    220   ��       `          0    17976    job_adverts 
   TABLE DATA           �   COPY public.job_adverts (id, max_salary, min_salary, deadline, count_of_receivable_candidate, job_requirements, job_position_id, is_active, city_id, employer_id, published_date) FROM stdin;
    public          postgres    false    215   s�       k          0    18681    job_histories 
   TABLE DATA           w   COPY public.job_histories (id, company_name, finished_date, is_finished, started_date, position_id, cv_id) FROM stdin;
    public          postgres    false    226   �       V          0    17722    job_positions 
   TABLE DATA           =   COPY public.job_positions (id, title, is_active) FROM stdin;
    public          postgres    false    205   ,�       q          0    18713    programming_technologies 
   TABLE DATA           <   COPY public.programming_technologies (id, name) FROM stdin;
    public          postgres    false    232   ��       i          0    18533    schools 
   TABLE DATA           j   COPY public.schools (id, department, graduated_date, name, started_date, cv_id, is_graduated) FROM stdin;
    public          postgres    false    224   X�       X          0    17729    users 
   TABLE DATA           E   COPY public.users (email, password, id, password_repeat) FROM stdin;
    public          postgres    false    207   Ŝ       Y          0    17734    verification_code_candidates 
   TABLE DATA           Z   COPY public.verification_code_candidates (candidate_id, verification_code_id) FROM stdin;
    public          postgres    false    208   %�       Z          0    17739    verification_code_employers 
   TABLE DATA           X   COPY public.verification_code_employers (employer_id, verification_code_id) FROM stdin;
    public          postgres    false    209   B�       \          0    17746    verification_codes 
   TABLE DATA           `   COPY public.verification_codes (id, code, is_verified, verified_date, created_date) FROM stdin;
    public          postgres    false    211   _�       �           0    0 "   candidate_foreign_languages_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.candidate_foreign_languages_id_seq', 17, true);
          public          postgres    false    227            �           0    0    candidate_knowledges_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.candidate_knowledges_id_seq', 22, true);
          public          postgres    false    229            �           0    0    cirriculum_vitaes_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.cirriculum_vitaes_id_seq', 149, true);
          public          postgres    false    218            �           0    0    cities_city_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cities_city_id_seq', 10, true);
          public          postgres    false    216            �           0    0    foreign_languages_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.foreign_languages_id_seq', 9, true);
          public          postgres    false    221            �           0    0    hibernate_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hibernate_sequence', 4, true);
          public          postgres    false    200            �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 16, true);
          public          postgres    false    233            �           0    0    job_adverts_advert_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.job_adverts_advert_id_seq', 21, true);
          public          postgres    false    214            �           0    0    job_histories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.job_histories_id_seq', 26, true);
          public          postgres    false    225            �           0    0    job_titles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.job_titles_id_seq', 8, true);
          public          postgres    false    212            �           0    0    programming_technologies_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.programming_technologies_id_seq', 19, true);
          public          postgres    false    231            �           0    0    schools_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.schools_id_seq', 22, true);
          public          postgres    false    223            �           0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 104, true);
          public          postgres    false    206            �           0    0    verification_codes_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.verification_codes_id_seq', 22, true);
          public          postgres    false    210            �           2606    18702 <   candidate_foreign_languages candidate_foreign_languages_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.candidate_foreign_languages
    ADD CONSTRAINT candidate_foreign_languages_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.candidate_foreign_languages DROP CONSTRAINT candidate_foreign_languages_pkey;
       public            postgres    false    228            �           2606    18710 .   candidate_knowledges candidate_knowledges_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.candidate_knowledges
    ADD CONSTRAINT candidate_knowledges_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.candidate_knowledges DROP CONSTRAINT candidate_knowledges_pkey;
       public            postgres    false    230            �           2606    18673    candidates candidates_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT candidates_pkey PRIMARY KEY (candidate_id);
 D   ALTER TABLE ONLY public.candidates DROP CONSTRAINT candidates_pkey;
       public            postgres    false    213            �           2606    18086    cv cirriculum_vitaes_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cv
    ADD CONSTRAINT cirriculum_vitaes_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.cv DROP CONSTRAINT cirriculum_vitaes_pkey;
       public            postgres    false    219            �           2606    18019    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    217            �           2606    17703 (   employee_confirms employee_confirms_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.employee_confirms
    ADD CONSTRAINT employee_confirms_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.employee_confirms DROP CONSTRAINT employee_confirms_pkey;
       public            postgres    false    201            �           2606    18511 (   foreign_languages foreign_languages_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.foreign_languages
    ADD CONSTRAINT foreign_languages_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.foreign_languages DROP CONSTRAINT foreign_languages_pkey;
       public            postgres    false    222            �           2606    18689     job_histories job_histories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.job_histories
    ADD CONSTRAINT job_histories_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.job_histories DROP CONSTRAINT job_histories_pkey;
       public            postgres    false    226            �           2606    17726    job_positions job_titles_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_titles_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.job_positions DROP CONSTRAINT job_titles_pkey;
       public            postgres    false    205            �           2606    18774    images photos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT photos_pkey;
       public            postgres    false    220            �           2606    18341    employees pk_employees 
   CONSTRAINT     T   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public            postgres    false    203            �           2606    18322    employers pk_employers 
   CONSTRAINT     T   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT pk_employers PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employers DROP CONSTRAINT pk_employers;
       public            postgres    false    204            �           2606    17983    job_adverts pk_job_adverts 
   CONSTRAINT     X   ALTER TABLE ONLY public.job_adverts
    ADD CONSTRAINT pk_job_adverts PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.job_adverts DROP CONSTRAINT pk_job_adverts;
       public            postgres    false    215            �           2606    18718 6   programming_technologies programming_technologies_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.programming_technologies
    ADD CONSTRAINT programming_technologies_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.programming_technologies DROP CONSTRAINT programming_technologies_pkey;
       public            postgres    false    232            �           2606    18541    schools schools_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.schools DROP CONSTRAINT schools_pkey;
       public            postgres    false    224            �           2606    17733    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    207            �           2606    17750 *   verification_codes verification_codes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.verification_codes
    ADD CONSTRAINT verification_codes_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.verification_codes DROP CONSTRAINT verification_codes_pkey;
       public            postgres    false    211            �           2606    17776 P   employee_confirms_employers employee_confirms_employers_employee_confirm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_confirms_employers
    ADD CONSTRAINT employee_confirms_employers_employee_confirm_id_fkey FOREIGN KEY (id) REFERENCES public.employee_confirms(id) NOT VALID;
 z   ALTER TABLE ONLY public.employee_confirms_employers DROP CONSTRAINT employee_confirms_employers_employee_confirm_id_fkey;
       public          postgres    false    201    202    2971            �           2606    18724 7   candidate_foreign_languages fk2kj1olqm449bne3xlt5tqx2av    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidate_foreign_languages
    ADD CONSTRAINT fk2kj1olqm449bne3xlt5tqx2av FOREIGN KEY (foreign_language_id) REFERENCES public.foreign_languages(id);
 a   ALTER TABLE ONLY public.candidate_foreign_languages DROP CONSTRAINT fk2kj1olqm449bne3xlt5tqx2av;
       public          postgres    false    228    2993    222            �           2606    18754 #   schools fk3leg2o46td0dt6kf657hwtx2o    FK CONSTRAINT     }   ALTER TABLE ONLY public.schools
    ADD CONSTRAINT fk3leg2o46td0dt6kf657hwtx2o FOREIGN KEY (cv_id) REFERENCES public.cv(id);
 M   ALTER TABLE ONLY public.schools DROP CONSTRAINT fk3leg2o46td0dt6kf657hwtx2o;
       public          postgres    false    219    2989    224            �           2606    18667 &   candidates fk85obmpkah7gyfl601gvb47bb2    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT fk85obmpkah7gyfl601gvb47bb2 FOREIGN KEY (candidate_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.candidates DROP CONSTRAINT fk85obmpkah7gyfl601gvb47bb2;
       public          postgres    false    213    207    2979            �           2606    18764 7   verification_code_employers fk9ktms79h38ntqs8g51pjvvrrb    FK CONSTRAINT     �   ALTER TABLE ONLY public.verification_code_employers
    ADD CONSTRAINT fk9ktms79h38ntqs8g51pjvvrrb FOREIGN KEY (verification_code_id) REFERENCES public.verification_codes(id);
 a   ALTER TABLE ONLY public.verification_code_employers DROP CONSTRAINT fk9ktms79h38ntqs8g51pjvvrrb;
       public          postgres    false    211    209    2981            �           2606    18674    cv fk_cv_candidates    FK CONSTRAINT     �   ALTER TABLE ONLY public.cv
    ADD CONSTRAINT fk_cv_candidates FOREIGN KEY (candidate_id) REFERENCES public.candidates(candidate_id) NOT VALID;
 =   ALTER TABLE ONLY public.cv DROP CONSTRAINT fk_cv_candidates;
       public          postgres    false    2983    213    219            �           2606    18342    employees fk_employees_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_users FOREIGN KEY (id) REFERENCES public.users(id) NOT VALID;
 F   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_users;
       public          postgres    false    207    203    2979            �           2606    18323    employers fk_employers_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT fk_employers_users FOREIGN KEY (id) REFERENCES public.users(id) NOT VALID;
 F   ALTER TABLE ONLY public.employers DROP CONSTRAINT fk_employers_users;
       public          postgres    false    2979    207    204            �           2606    18006 (   job_adverts fk_job_adverts_job_positions    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_adverts
    ADD CONSTRAINT fk_job_adverts_job_positions FOREIGN KEY (job_position_id) REFERENCES public.job_positions(id) NOT VALID;
 R   ALTER TABLE ONLY public.job_adverts DROP CONSTRAINT fk_job_adverts_job_positions;
       public          postgres    false    2977    215    205            �           2606    18739 )   job_histories fkcimagubed3tydojr0ik9w7y65    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_histories
    ADD CONSTRAINT fkcimagubed3tydojr0ik9w7y65 FOREIGN KEY (position_id) REFERENCES public.job_positions(id);
 S   ALTER TABLE ONLY public.job_histories DROP CONSTRAINT fkcimagubed3tydojr0ik9w7y65;
       public          postgres    false    226    205    2977            �           2606    18729 0   candidate_knowledges fkd77nt9ac5v20xc10y03askx3k    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidate_knowledges
    ADD CONSTRAINT fkd77nt9ac5v20xc10y03askx3k FOREIGN KEY (cv_id) REFERENCES public.cv(id);
 Z   ALTER TABLE ONLY public.candidate_knowledges DROP CONSTRAINT fkd77nt9ac5v20xc10y03askx3k;
       public          postgres    false    2989    219    230            �           2606    18053 '   job_adverts fkeshbhuv73peilh3ohw5wu4bfs    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_adverts
    ADD CONSTRAINT fkeshbhuv73peilh3ohw5wu4bfs FOREIGN KEY (city_id) REFERENCES public.cities(id);
 Q   ALTER TABLE ONLY public.job_adverts DROP CONSTRAINT fkeshbhuv73peilh3ohw5wu4bfs;
       public          postgres    false    2987    217    215            �           2606    18352 '   job_adverts fkix1xey8g9v6sxlq9u00lggi7r    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_adverts
    ADD CONSTRAINT fkix1xey8g9v6sxlq9u00lggi7r FOREIGN KEY (employer_id) REFERENCES public.employers(id);
 Q   ALTER TABLE ONLY public.job_adverts DROP CONSTRAINT fkix1xey8g9v6sxlq9u00lggi7r;
       public          postgres    false    215    2975    204            �           2606    18734 0   candidate_knowledges fkm40txnupt51qthkn0obgafpw5    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidate_knowledges
    ADD CONSTRAINT fkm40txnupt51qthkn0obgafpw5 FOREIGN KEY (programming_technology_id) REFERENCES public.programming_technologies(id);
 Z   ALTER TABLE ONLY public.candidate_knowledges DROP CONSTRAINT fkm40txnupt51qthkn0obgafpw5;
       public          postgres    false    232    3003    230            �           2606    18759 8   verification_code_candidates fkol4a9cy0pqvcp040h6wpg6rjm    FK CONSTRAINT     �   ALTER TABLE ONLY public.verification_code_candidates
    ADD CONSTRAINT fkol4a9cy0pqvcp040h6wpg6rjm FOREIGN KEY (verification_code_id) REFERENCES public.verification_codes(id);
 b   ALTER TABLE ONLY public.verification_code_candidates DROP CONSTRAINT fkol4a9cy0pqvcp040h6wpg6rjm;
       public          postgres    false    208    2981    211            �           2606    18429 '   job_adverts fkrvh9jxl4ma44v3sv4chqptsh2    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_adverts
    ADD CONSTRAINT fkrvh9jxl4ma44v3sv4chqptsh2 FOREIGN KEY (employer_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.job_adverts DROP CONSTRAINT fkrvh9jxl4ma44v3sv4chqptsh2;
       public          postgres    false    207    2979    215            �           2606    18749 )   job_histories fks48b47yqvw0k2eosfq8rfly82    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_histories
    ADD CONSTRAINT fks48b47yqvw0k2eosfq8rfly82 FOREIGN KEY (cv_id) REFERENCES public.cv(id);
 S   ALTER TABLE ONLY public.job_histories DROP CONSTRAINT fks48b47yqvw0k2eosfq8rfly82;
       public          postgres    false    219    2989    226            �           2606    18784    cv fkt1axutgo30ebl1jo8f8gspxqb    FK CONSTRAINT        ALTER TABLE ONLY public.cv
    ADD CONSTRAINT fkt1axutgo30ebl1jo8f8gspxqb FOREIGN KEY (image_id) REFERENCES public.images(id);
 H   ALTER TABLE ONLY public.cv DROP CONSTRAINT fkt1axutgo30ebl1jo8f8gspxqb;
       public          postgres    false    219    220    2991            �           2606    18719 7   candidate_foreign_languages fkt5aoykchmsdgx2dmc1lpuhtvv    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidate_foreign_languages
    ADD CONSTRAINT fkt5aoykchmsdgx2dmc1lpuhtvv FOREIGN KEY (cv_id) REFERENCES public.cv(id);
 a   ALTER TABLE ONLY public.candidate_foreign_languages DROP CONSTRAINT fkt5aoykchmsdgx2dmc1lpuhtvv;
       public          postgres    false    228    2989    219            m      x�34�4�44��4�24�43M�b���� 7��      o   !   x�32�44��4�223L����#�=... O;�      ^   .   x�;:/1#3���1�ч������������������+F��� �I�      b   j   x�3�<���$1/�4��Ȯ��,�2�t��N,J�2�tLI�K�2��M�I,�L�2�t*-*N�2�t-��<:?5�ނ3�(1�*?�˒38���Ѐ�;?Ȉ���� �� w      d   �   x�M�M
�0�ur�w I(�'�n�6�G��$��^�3t�]�,
�f�a�b{6�.���q�}������C@�{sΪa_���ǰ�cZ�M������h��0Ok��4�s��6T��~��7��*P�	�u�5��M`�D����()���?I      R      x������ � �      S      x������ � �      T      x�s�M��v����41����� 3N1      U   6   x�IM���K�Tp��-H̫�,�
$C�z@�����������Ԑ�ܘ+F��� Nij      g   `   x�3�<�!/=3'�*9�˘ӭ(1���ƪ�D.Nǜ��< ˔3�����S��8�J�/O�2�+I̩+��t,J, 	[r���f������� �"�      e   m   x�m���  �3�"cv4��e"~���������kӓCֿ݆g������<��R�O�u�KSK
p��b��\�}�;��C�����T9�5�NS�{9+)�Mk*      `   `   x�32�4300�4FF��f�����^�e��F�i@ln�3�56�22��1E�ch
ӣ���$���\C@���Ҝ�"NS��"T�b���� �e�      k   9   x�32�)-�NN���4202�50"� ���BK.#3�����Լb
c���� q�(      V   x   x�3�t+���-.IL�VpI-K��/H-�,�2�t
�楠s��'e椢�p���躢)6�OMB1��O+)O,JUp,J��,IM.
�#��U[p:����(��9+������ ��=/      q   �   x�5��
�@ ���i��Iil��]��LŴ��Ӡ��aF`��y�洰�oM�x��@ƒ.�=�J���l��X�!�B�J��o}���("à� ��l
���A>u�?r�>�}�v��9�q�O�/ �ӄ"D�/&�/4u+Y      i   ]   x�32�t��I�,N�L,R�=�'#5/%�8'���L�?�#�K�JsB2��RK���,K-*�,I-��4202�50"NCK�4�=... ��w      X   P   x�K�M�)N���s��/�M���K���442�41����(r(IM����K��K����32��r�s04[��T��qqq 5B�      Y      x������ � �      Z      x������ � �      \      x������ � �     