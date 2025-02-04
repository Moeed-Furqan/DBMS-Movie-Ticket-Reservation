PGDMP  9    9                {            cinemate    16.1    16.1 ?    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16564    cinemate    DATABASE     ~   CREATE DATABASE cinemate WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Pakistan.1252';
    DROP DATABASE cinemate;
                postgres    false            �            1255    24818 1   signup_user(character varying, character varying) 	   PROCEDURE     '  CREATE PROCEDURE public.signup_user(IN p_email_id character varying, IN p_password character varying, OUT p_signup_success boolean)
    LANGUAGE plpgsql
    AS $$ BEGIN -- Check if the email already exists
    IF EXISTS (
        SELECT 1
        FROM web_user
        WHERE Email_ID = p_email_id
    ) THEN p_signup_success := FALSE;
-- Email already exists
ELSE -- Insert the user into the table
INSERT INTO web_user (Email_ID, password)
VALUES (p_email_id, p_password);
p_signup_success := TRUE;
-- Signup successful
END IF;
END;
$$;
 �   DROP PROCEDURE public.signup_user(IN p_email_id character varying, IN p_password character varying, OUT p_signup_success boolean);
       public          postgres    false            �            1259    24883    booking    TABLE     �   CREATE TABLE public.booking (
    booking_id integer NOT NULL,
    no_of_tickets integer,
    total_cost integer,
    user_id integer NOT NULL,
    shows_show_id integer
);
    DROP TABLE public.booking;
       public         heap    postgres    false            �            1259    24881    booking_booking_id_seq    SEQUENCE     �   CREATE SEQUENCE public.booking_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.booking_booking_id_seq;
       public          postgres    false    225            �           0    0    booking_booking_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.booking_booking_id_seq OWNED BY public.booking.booking_id;
          public          postgres    false    223            �            1259    24882    booking_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.booking_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.booking_user_id_seq;
       public          postgres    false    225            �           0    0    booking_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.booking_user_id_seq OWNED BY public.booking.user_id;
          public          postgres    false    224            �            1259    24860    movie    TABLE       CREATE TABLE public.movie (
    movie_id integer NOT NULL,
    moviename character varying(60),
    director character varying(50),
    description character varying(100),
    pg_rating integer,
    total_time integer,
    status boolean,
    images character varying(60)[]
);
    DROP TABLE public.movie;
       public         heap    postgres    false            �            1259    24859    movie_movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movie_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.movie_movie_id_seq;
       public          postgres    false    220            �           0    0    movie_movie_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.movie_movie_id_seq OWNED BY public.movie.movie_id;
          public          postgres    false    219            �            1259    24780    payment    TABLE     �   CREATE TABLE public.payment (
    cardnumber character varying(16),
    cvv character varying(3),
    total_cost integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    24779    payment_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.payment_user_id_seq;
       public          postgres    false    218            �           0    0    payment_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.payment_user_id_seq OWNED BY public.payment.user_id;
          public          postgres    false    217            �            1259    24913    seats_remaining    TABLE     ^   CREATE TABLE public.seats_remaining (
    show_id integer NOT NULL,
    isbooked integer[]
);
 #   DROP TABLE public.seats_remaining;
       public         heap    postgres    false            �            1259    24912    seats_remaining_show_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seats_remaining_show_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.seats_remaining_show_id_seq;
       public          postgres    false    229            �           0    0    seats_remaining_show_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.seats_remaining_show_id_seq OWNED BY public.seats_remaining.show_id;
          public          postgres    false    228            �            1259    24870    shows    TABLE     �   CREATE TABLE public.shows (
    show_id integer NOT NULL,
    showtime time without time zone,
    show_date date,
    show_type character varying(3),
    movie_id integer,
    show_day character varying(5)
);
    DROP TABLE public.shows;
       public         heap    postgres    false            �            1259    24869    shows_show_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shows_show_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shows_show_id_seq;
       public          postgres    false    222            �           0    0    shows_show_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shows_show_id_seq OWNED BY public.shows.show_id;
          public          postgres    false    221            �            1259    24901    ticket    TABLE     �   CREATE TABLE public.ticket (
    ticket_id integer NOT NULL,
    booking_id integer,
    class character varying(3),
    silver_price integer,
    gold_price integer
);
    DROP TABLE public.ticket;
       public         heap    postgres    false            �            1259    24900    ticket_ticket_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_ticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ticket_ticket_id_seq;
       public          postgres    false    227            �           0    0    ticket_ticket_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ticket_ticket_id_seq OWNED BY public.ticket.ticket_id;
          public          postgres    false    226            �            1259    24757    web_user    TABLE     �   CREATE TABLE public.web_user (
    web_user_id integer NOT NULL,
    email_id character varying(30),
    password character varying(30)
);
    DROP TABLE public.web_user;
       public         heap    postgres    false            �            1259    24756    web_user_web_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_user_web_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_user_web_user_id_seq;
       public          postgres    false    216            �           0    0    web_user_web_user_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_user_web_user_id_seq OWNED BY public.web_user.web_user_id;
          public          postgres    false    215            >           2604    24886    booking booking_id    DEFAULT     x   ALTER TABLE ONLY public.booking ALTER COLUMN booking_id SET DEFAULT nextval('public.booking_booking_id_seq'::regclass);
 A   ALTER TABLE public.booking ALTER COLUMN booking_id DROP DEFAULT;
       public          postgres    false    223    225    225            ?           2604    24887    booking user_id    DEFAULT     r   ALTER TABLE ONLY public.booking ALTER COLUMN user_id SET DEFAULT nextval('public.booking_user_id_seq'::regclass);
 >   ALTER TABLE public.booking ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    225    224    225            <           2604    24863    movie movie_id    DEFAULT     p   ALTER TABLE ONLY public.movie ALTER COLUMN movie_id SET DEFAULT nextval('public.movie_movie_id_seq'::regclass);
 =   ALTER TABLE public.movie ALTER COLUMN movie_id DROP DEFAULT;
       public          postgres    false    219    220    220            ;           2604    24783    payment user_id    DEFAULT     r   ALTER TABLE ONLY public.payment ALTER COLUMN user_id SET DEFAULT nextval('public.payment_user_id_seq'::regclass);
 >   ALTER TABLE public.payment ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    218    217    218            A           2604    24916    seats_remaining show_id    DEFAULT     �   ALTER TABLE ONLY public.seats_remaining ALTER COLUMN show_id SET DEFAULT nextval('public.seats_remaining_show_id_seq'::regclass);
 F   ALTER TABLE public.seats_remaining ALTER COLUMN show_id DROP DEFAULT;
       public          postgres    false    228    229    229            =           2604    24873    shows show_id    DEFAULT     n   ALTER TABLE ONLY public.shows ALTER COLUMN show_id SET DEFAULT nextval('public.shows_show_id_seq'::regclass);
 <   ALTER TABLE public.shows ALTER COLUMN show_id DROP DEFAULT;
       public          postgres    false    221    222    222            @           2604    24904    ticket ticket_id    DEFAULT     t   ALTER TABLE ONLY public.ticket ALTER COLUMN ticket_id SET DEFAULT nextval('public.ticket_ticket_id_seq'::regclass);
 ?   ALTER TABLE public.ticket ALTER COLUMN ticket_id DROP DEFAULT;
       public          postgres    false    227    226    227            :           2604    24760    web_user web_user_id    DEFAULT     |   ALTER TABLE ONLY public.web_user ALTER COLUMN web_user_id SET DEFAULT nextval('public.web_user_web_user_id_seq'::regclass);
 C   ALTER TABLE public.web_user ALTER COLUMN web_user_id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    24883    booking 
   TABLE DATA           `   COPY public.booking (booking_id, no_of_tickets, total_cost, user_id, shows_show_id) FROM stdin;
    public          postgres    false    225   �I       �          0    24860    movie 
   TABLE DATA           r   COPY public.movie (movie_id, moviename, director, description, pg_rating, total_time, status, images) FROM stdin;
    public          postgres    false    220   cJ       �          0    24780    payment 
   TABLE DATA           G   COPY public.payment (cardnumber, cvv, total_cost, user_id) FROM stdin;
    public          postgres    false    218   
N       �          0    24913    seats_remaining 
   TABLE DATA           <   COPY public.seats_remaining (show_id, isbooked) FROM stdin;
    public          postgres    false    229   'N       �          0    24870    shows 
   TABLE DATA           \   COPY public.shows (show_id, showtime, show_date, show_type, movie_id, show_day) FROM stdin;
    public          postgres    false    222   KS       �          0    24901    ticket 
   TABLE DATA           X   COPY public.ticket (ticket_id, booking_id, class, silver_price, gold_price) FROM stdin;
    public          postgres    false    227   �W       �          0    24757    web_user 
   TABLE DATA           C   COPY public.web_user (web_user_id, email_id, password) FROM stdin;
    public          postgres    false    216   �W                   0    0    booking_booking_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.booking_booking_id_seq', 13, true);
          public          postgres    false    223                       0    0    booking_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.booking_user_id_seq', 1, false);
          public          postgres    false    224                       0    0    movie_movie_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movie_movie_id_seq', 20, true);
          public          postgres    false    219                       0    0    payment_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.payment_user_id_seq', 1, false);
          public          postgres    false    217                       0    0    seats_remaining_show_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.seats_remaining_show_id_seq', 1, false);
          public          postgres    false    228                       0    0    shows_show_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.shows_show_id_seq', 80, true);
          public          postgres    false    221                       0    0    ticket_ticket_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ticket_ticket_id_seq', 1, false);
          public          postgres    false    226                       0    0    web_user_web_user_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.web_user_web_user_id_seq', 7, true);
          public          postgres    false    215            I           2606    24889    booking booking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (booking_id);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    225            E           2606    24867    movie movie_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movie_id);
 :   ALTER TABLE ONLY public.movie DROP CONSTRAINT movie_pkey;
       public            postgres    false    220            M           2606    24920 $   seats_remaining seats_remaining_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.seats_remaining
    ADD CONSTRAINT seats_remaining_pkey PRIMARY KEY (show_id);
 N   ALTER TABLE ONLY public.seats_remaining DROP CONSTRAINT seats_remaining_pkey;
       public            postgres    false    229            G           2606    24875    shows shows_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.shows
    ADD CONSTRAINT shows_pkey PRIMARY KEY (show_id);
 :   ALTER TABLE ONLY public.shows DROP CONSTRAINT shows_pkey;
       public            postgres    false    222            K           2606    24906    ticket ticket_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (ticket_id);
 <   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_pkey;
       public            postgres    false    227            C           2606    24762    web_user web_user_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.web_user
    ADD CONSTRAINT web_user_pkey PRIMARY KEY (web_user_id);
 @   ALTER TABLE ONLY public.web_user DROP CONSTRAINT web_user_pkey;
       public            postgres    false    216            P           2606    24895 "   booking booking_shows_show_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_shows_show_id_fkey FOREIGN KEY (shows_show_id) REFERENCES public.shows(show_id);
 L   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_shows_show_id_fkey;
       public          postgres    false    225    4679    222            Q           2606    24890    booking booking_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.web_user(web_user_id);
 F   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_user_id_fkey;
       public          postgres    false    225    216    4675            N           2606    24784    payment payment_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.web_user(web_user_id);
 F   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_user_id_fkey;
       public          postgres    false    218    216    4675            S           2606    24921 ,   seats_remaining seats_remaining_show_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seats_remaining
    ADD CONSTRAINT seats_remaining_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.shows(show_id);
 V   ALTER TABLE ONLY public.seats_remaining DROP CONSTRAINT seats_remaining_show_id_fkey;
       public          postgres    false    229    222    4679            O           2606    24876    shows shows_movie_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.shows
    ADD CONSTRAINT shows_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movie(movie_id);
 C   ALTER TABLE ONLY public.shows DROP CONSTRAINT shows_movie_id_fkey;
       public          postgres    false    220    4677    222            R           2606    24907    ticket ticket_booking_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.booking(booking_id);
 G   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_booking_id_fkey;
       public          postgres    false    225    227    4681            �   ]   x�U��� г=LE>��K���TA�O�l�A�84�?�'�v:����0�0�H,V����wj5؏Ť�M�؂�ɠ��A�+t�}�| �$k      �   �  x���_o�8şͧ�ZB)��tiU�ޫR�ծ�TM76$v�q��U��N�B��HAB0>����8��Ơ
$���b+t������#����ʦ��ឣ�;4�Ts.�su�,�����|���w�I�mr�V�n%��T盘��K\��A��7b?��dk���P�*��<+��Ë02��ßIL�`��3e�x҂��@FA+_U�u�G�=���f6�Vi���,�s�M�<��R�X�Rw�1f/�Ý���o4F�`!��Y֞�u"�a�d�%�BGܧ���0��W9��7[�:�m<럨$�Xg���nf<!y����l+,YUY��#T�3N��6K�X
v!j�W�ׄ�c�s3x�&��A㿩��V'�FeuҴk���D�	A[ڙ4�OO�Qu��k6�Ist3��#x���aK'��*��r���G#?e!�-W�*�5F��axd�!6���YC���;h�����a7�Gs%��h�t��c�<��\��`,��|��&+�b��φ�i�t���#6gH�k\�ٝ�᎛�ؾ�ϒF��8�VZ�̪jk��=PX��� �Rra�#5�As�E�(�e���e����*������{N]�`r�x��t���R~�SZՒ�`a��>#����9�%�����ICX�w�;��8�6�]��%���CV�$�e@���0)�~���15lu�%]Q�vkT7��S���C�|��^�UD7�c�Xn����a�\�QQy���Mحwr������ڬ��SW��L�p�R:NӾ����-0��Č�Az��Y��`�M��O���{�O:GFA�Ք�r�c�C��*Z�����f�ǻ�%�_�FC�JU �~�Kِ�"P/�`�d l�M���ƹL�=h�'���y���J-�j      �      x������ � �      �     x��[�� �}<K���IޥorûW�Ŏ}����\�l�ЂX-�._��ש���7�%8�}Iۺ�f�iI��oOY-��N*��"^%]{4��3����=z�������۴��F�dѰW��36���o����3�^8KZN��S��KbT������=����`3�ǅhk.�!8�N(�_� ¨!���',KϞ�3m�ݵ�����8�=���]	������G?_k�4��N�v<�F��~:J��{�~d(�6 ��-�)ɧ�'��^#!w�YK{��z� v+j��@c��O}�-�	�A-i�*+!��a��I6@ip������o�E�A���o�ݛZ�����k��N:��Ak�����[w��Bp�~Um9�������Jp�l���?�`��a��4i'����ԣ�$��O8̦��*���]�HTT��"?�X�B��΢g�GgLJ{�iQ�&�ɺdCgUl�!5�n�)h�s������M��ǠMeY���t�����3b�Ǧ�>��Z�8R�o5��t��`A����+6:!������FLi��zҪY��ࠢ���� ><h�y}���l��S�}_�9���0�q�nG<A��"�b��m��i�~\ H�}Bj�t�r����n 8�-�d���β�Tp.��)��4�=�t&�Y��(G��׮a�>��G�ŧ&^."h���s5�.^���^z�4zq��f�W���@�&8�N���a.$8�ΨY.�rV#�p��`6umՌ8�	$ĮVK�+����"OSn6�hm�#Xgوk,:R8Y �`;��H1)�Ţ�/I�~��ht�O>���'Ĩ?i�Dp�-���ٖ�~�V	�E;�AL�����A'���aUAݔM����ٿ���zug�:Y'���o���f��Xf��;j8�ȑ+I ��P�t����Op����g|T�pe�%�ʗ�3r�F'�}/ٱs ���;�F2O?��9��;��p�Ap������mG<��^s�k�	��W����D����	��^�iM��3�Z��0�@�_�Z��y~�q��o}ȕf��5 ���
�.�Y�Ep[�����j�,3%J�>b�T#݀[l4�����7��6 @ H��e�Sx�=����!8�*@G ���[
�JD��d[�x�K�a��ñ���{�5)g�GJ6Oέ�x��Φw{Sh����M]ۑ�#l͎�q��^"�%݅�x_��2�S���2v~J����臐��YD����D��F�LI�'g�MKtd����v��K��;��m>�f      �   W  x�m���7�k��X����F�T6��M�H��Hͬŝu�X|��v�� :Ի������'�F��_���A� 8ػ���Mᦸ���N�l�
aSҐΏ�)���Ҍp�t$��5�ܨ}��������:N������[7F$߱`S��B��%�nj�yd�]%��.n�}����� �O���Q���lk`R����%�';}���_���:�tlf�Ҿ���,������G-`c�N��%j�̮�"w"�]�(�g�hFr�q��oh��߿1���#�M0z{����AD�.
��kH��fkc�F׉��6�õf� Ϗ�mP־��߃h-@ݕ�`т���v�>�?�P0I����͌l����&�al�񼭭�/�LK*;g]ĥ��`KlQkfE�ll<S���u=�`��R��YGq\~0N?�
��b�t���5.*~�v��.����$�Ч� ��n�׶�VZ'E/�fs�c3�r��hlTrӂibP{��UAŖE��=2�1n��0�h1QA�*��K�<�}�\���"g�r%��0\�1�-@�XŎ� ��A�&�6I���s��("F�z���j�>�H��+�i�($N1AYs��iI���oX��%�:	)�p{�{��4>����$�~�ד��ͬ@@�BA�&��^�l��+7�t��4�K���ۜ��5�� s�*��a.U�#��.u��r�@D~!F��Ef���!�\yQ�&v�!K�*+f�ƻ��.��*+a1X��ْm<0��Z��k<_.0���ƴ��r#�X�p�9xzцWn�*fn��؂7��-������r�G����-���Փ��Ek���:K�U�����F���$9����r_�i[�S�0���쟝�5H�H�۫��yƋOǖ��/�W����[(�9�D/�W��Ͼ\p�p_�jɝ��C�����k�R��a�K��W��[�.�2^pq��������F����aT���8�ӭty�8��|}��[�z2h4�'�ɭ��Ok�>����8O���b�`�;}��X'��gݔ��wqO���z���e'7�;*�Ga�6�.��������X      �      x������ � �      �   N   x�3���OMM�442�2Bbs���n�E��y`��m�鑘�Y��A���&�������9SRs�*b���� �     