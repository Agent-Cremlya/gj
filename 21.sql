PGDMP     .    5                {            putin    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16405    putin    DATABASE     y   CREATE DATABASE putin WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE putin;
                postgres    false            �            1259    16419 
   Categories    TABLE     h   CREATE TABLE public."Categories" (
    "Category_id" integer NOT NULL,
    "Tittle" integer NOT NULL
);
     DROP TABLE public."Categories";
       public         heap    postgres    false            �            1259    16417    Categories_Category_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_Category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Categories_Category_id_seq";
       public          postgres    false    217                       0    0    Categories_Category_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Categories_Category_id_seq" OWNED BY public."Categories"."Category_id";
          public          postgres    false    215            �            1259    16418    Categories_Tittle_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_Tittle_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Categories_Tittle_seq";
       public          postgres    false    217                       0    0    Categories_Tittle_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Categories_Tittle_seq" OWNED BY public."Categories"."Tittle";
          public          postgres    false    216            �            1259    16429    Order_details    TABLE     �   CREATE TABLE public."Order_details" (
    "Order_details_id" integer,
    produkt_id integer,
    quantity integer,
    "Subtotal" integer
);
 #   DROP TABLE public."Order_details";
       public         heap    postgres    false            �            1259    16425    Orders    TABLE     n   CREATE TABLE public."Orders" (
    id integer NOT NULL,
    "Customer_id" integer,
    "total_Sum" integer
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    16424    Orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Orders_id_seq";
       public          postgres    false    219                       0    0    Orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;
          public          postgres    false    218            �            1259    16412    produkti    TABLE     �   CREATE TABLE public.produkti (
    "Produkt_id" integer,
    produkt_title character varying,
    "Produkt_description" text,
    "Price" integer,
    "Quality" integer
);
    DROP TABLE public.produkti;
       public         heap    postgres    false            s           2604    16422    Categories Category_id    DEFAULT     �   ALTER TABLE ONLY public."Categories" ALTER COLUMN "Category_id" SET DEFAULT nextval('public."Categories_Category_id_seq"'::regclass);
 I   ALTER TABLE public."Categories" ALTER COLUMN "Category_id" DROP DEFAULT;
       public          postgres    false    215    217    217            t           2604    16423    Categories Tittle    DEFAULT     |   ALTER TABLE ONLY public."Categories" ALTER COLUMN "Tittle" SET DEFAULT nextval('public."Categories_Tittle_seq"'::regclass);
 D   ALTER TABLE public."Categories" ALTER COLUMN "Tittle" DROP DEFAULT;
       public          postgres    false    217    216    217            u           2604    16428 	   Orders id    DEFAULT     j   ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);
 :   ALTER TABLE public."Orders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                      0    16419 
   Categories 
   TABLE DATA           ?   COPY public."Categories" ("Category_id", "Tittle") FROM stdin;
    public          postgres    false    217   �       
          0    16429    Order_details 
   TABLE DATA           _   COPY public."Order_details" ("Order_details_id", produkt_id, quantity, "Subtotal") FROM stdin;
    public          postgres    false    220   �       	          0    16425    Orders 
   TABLE DATA           B   COPY public."Orders" (id, "Customer_id", "total_Sum") FROM stdin;
    public          postgres    false    219   	                 0    16412    produkti 
   TABLE DATA           j   COPY public.produkti ("Produkt_id", produkt_title, "Produkt_description", "Price", "Quality") FROM stdin;
    public          postgres    false    214   &                  0    0    Categories_Category_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Categories_Category_id_seq"', 1, false);
          public          postgres    false    215                       0    0    Categories_Tittle_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Categories_Tittle_seq"', 1, false);
          public          postgres    false    216                       0    0    Orders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Orders_id_seq"', 1, false);
          public          postgres    false    218                  x������ � �      
      x������ � �      	      x������ � �         `   x�31�0����/�\���^��y�9M8-,�L��Ȅ���/�㼰qKXX �Ȕ��h'Nؘ��z ��}v��t2���qqq -'œ     