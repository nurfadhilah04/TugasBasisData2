PGDMP                      
    z            siakad    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16397    siakad    DATABASE     }   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16406    dosen    TABLE     z   CREATE TABLE public.dosen (
    nip integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16405    dosen_nip_seq    SEQUENCE     ?   CREATE SEQUENCE public.dosen_nip_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dosen_nip_seq;
       public          postgres    false    217                       0    0    dosen_nip_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dosen_nip_seq OWNED BY public.dosen.nip;
          public          postgres    false    216            ?            1259    16399 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16398    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    215                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    214            ?            1259    16413    makul    TABLE     n   CREATE TABLE public.makul (
    idmk integer NOT NULL,
    namamk character varying(15),
    nilai integer
);
    DROP TABLE public.makul;
       public         heap    postgres    false            ?            1259    16412    makul_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.makul_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.makul_idmk_seq;
       public          postgres    false    219                       0    0    makul_idmk_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.makul_idmk_seq OWNED BY public.makul.idmk;
          public          postgres    false    218            p           2604    16409 	   dosen nip    DEFAULT     f   ALTER TABLE ONLY public.dosen ALTER COLUMN nip SET DEFAULT nextval('public.dosen_nip_seq'::regclass);
 8   ALTER TABLE public.dosen ALTER COLUMN nip DROP DEFAULT;
       public          postgres    false    217    216    217            o           2604    16402    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    214    215    215            q           2604    16416 
   makul idmk    DEFAULT     h   ALTER TABLE ONLY public.makul ALTER COLUMN idmk SET DEFAULT nextval('public.makul_idmk_seq'::regclass);
 9   ALTER TABLE public.makul ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    218    219    219            	          0    16406    dosen 
   TABLE DATA           2   COPY public.dosen (nip, nama, alamat) FROM stdin;
    public          postgres    false    217   ?                 0    16399 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    215                    0    16413    makul 
   TABLE DATA           4   COPY public.makul (idmk, namamk, nilai) FROM stdin;
    public          postgres    false    219   P                  0    0    dosen_nip_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dosen_nip_seq', 1, false);
          public          postgres    false    216                       0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    214                       0    0    makul_idmk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.makul_idmk_seq', 1, false);
          public          postgres    false    218            u           2606    16411    dosen dosen_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (nip);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    217            s           2606    16404    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    215            w           2606    16418    makul makul_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.makul
    ADD CONSTRAINT makul_pkey PRIMARY KEY (idmk);
 :   ALTER TABLE ONLY public.makul DROP CONSTRAINT makul_pkey;
       public            postgres    false    219            	   T   x?3222??+-?K̨L??M?J?K?2??????J?3ab? ?釬????Ę?-1#?*;??8???????IsniV)W? ??u         3   x?31N?Ĕ̜?N?ĬԼT.s3?hVP?85/%1/?+F??? Ty         '   x?366215?tq	??4?2665?<}??<?=... p!     