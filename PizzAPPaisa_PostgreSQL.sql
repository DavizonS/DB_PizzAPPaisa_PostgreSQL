PGDMP  2    	                |            PizzAPPaisa_PostgreSQL    16.4    16.4 A               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16397    PizzAPPaisa_PostgreSQL    DATABASE     �   CREATE DATABASE "PizzAPPaisa_PostgreSQL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
 (   DROP DATABASE "PizzAPPaisa_PostgreSQL";
                postgres    false            �            1259    16475    Ingrediente    TABLE     �   CREATE TABLE public."Ingrediente" (
    "idIngrediente" character varying(6) NOT NULL,
    "Descripcion" character varying(30) NOT NULL,
    "Existencias" numeric NOT NULL
);
 !   DROP TABLE public."Ingrediente";
       public         heap    postgres    false            �            1259    16462    Linea    TABLE     �   CREATE TABLE public."Linea" (
    "idSabor" character varying(6) NOT NULL,
    "idPedido" integer NOT NULL,
    "numeroPorciones" smallint NOT NULL
);
    DROP TABLE public."Linea";
       public         heap    postgres    false            �            1259    16498 	   Proveedor    TABLE     2  CREATE TABLE public."Proveedor" (
    "idProveedor" integer NOT NULL,
    "nombreProveedor" character varying(60) NOT NULL,
    "apellidosProveedor" character varying(60),
    "Direccion" character varying(80) NOT NULL,
    "Indicasiones" character varying(100),
    "telefonoProveedor" bigint NOT NULL
);
    DROP TABLE public."Proveedor";
       public         heap    postgres    false            �            1259    16497    Proveedor_idProveedor_seq    SEQUENCE     �   CREATE SEQUENCE public."Proveedor_idProveedor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Proveedor_idProveedor_seq";
       public          postgres    false    227                       0    0    Proveedor_idProveedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Proveedor_idProveedor_seq" OWNED BY public."Proveedor"."idProveedor";
          public          postgres    false    226            �            1259    16434    Reserva    TABLE     '  CREATE TABLE public."Reserva" (
    "idPedido" bigint NOT NULL,
    "fechaHoraRealizacion" timestamp with time zone NOT NULL,
    "fechaHoraEntrega" timestamp with time zone NOT NULL,
    "precioTotal" bigint NOT NULL,
    "Entregado" boolean NOT NULL,
    "usuarioDocumento" bigint NOT NULL
);
    DROP TABLE public."Reserva";
       public         heap    postgres    false            �            1259    16433    Reserva_idPedido_seq    SEQUENCE        CREATE SEQUENCE public."Reserva_idPedido_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Reserva_idPedido_seq";
       public          postgres    false    219                       0    0    Reserva_idPedido_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Reserva_idPedido_seq" OWNED BY public."Reserva"."idPedido";
          public          postgres    false    218            �            1259    16457    Sabor    TABLE     �   CREATE TABLE public."Sabor" (
    "idSabor" character varying(6) NOT NULL,
    "nombrePizza" character varying(20) NOT NULL,
    "precioPorcion" bigint NOT NULL
);
    DROP TABLE public."Sabor";
       public         heap    postgres    false            �            1259    16418    Usuario    TABLE     �  CREATE TABLE public."Usuario" (
    "tipoUsuario" character varying(5) NOT NULL,
    "usuarioNombre" character varying(50) NOT NULL,
    "usuarioApellidos" character varying(60),
    "tipoDocumento" character varying(5) NOT NULL,
    "Correo" character varying(50) NOT NULL,
    "Contrasena" character varying(50) NOT NULL,
    "Documento" bigint NOT NULL,
    "usuarioTelefono" bigint NOT NULL
);
    DROP TABLE public."Usuario";
       public         heap    postgres    false            �            1259    16446    ordenCompra    TABLE     �   CREATE TABLE public."ordenCompra" (
    "idOrden" integer NOT NULL,
    "fechaPedido" date NOT NULL,
    "usuarioDocumento" bigint NOT NULL
);
 !   DROP TABLE public."ordenCompra";
       public         heap    postgres    false            �            1259    16445    ordenCompra_idOrden_seq    SEQUENCE     �   CREATE SEQUENCE public."ordenCompra_idOrden_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ordenCompra_idOrden_seq";
       public          postgres    false    221                       0    0    ordenCompra_idOrden_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ordenCompra_idOrden_seq" OWNED BY public."ordenCompra"."idOrden";
          public          postgres    false    220            �            1259    16506    ordenIngrediente    TABLE       CREATE TABLE public."ordenIngrediente" (
    "idOrden" integer NOT NULL,
    "idIngrediente" character varying(6) NOT NULL,
    "idProveedor" integer NOT NULL,
    "cantidadSolicitada" numeric NOT NULL,
    "cantidadComparada" numeric NOT NULL,
    "fechaCompra" date NOT NULL
);
 &   DROP TABLE public."ordenIngrediente";
       public         heap    postgres    false            �            1259    16504    ordenIngrediente_idOrden_seq    SEQUENCE     �   CREATE SEQUENCE public."ordenIngrediente_idOrden_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."ordenIngrediente_idOrden_seq";
       public          postgres    false    230                       0    0    ordenIngrediente_idOrden_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ordenIngrediente_idOrden_seq" OWNED BY public."ordenIngrediente"."idOrden";
          public          postgres    false    228            �            1259    16505     ordenIngrediente_idProveedor_seq    SEQUENCE     �   CREATE SEQUENCE public."ordenIngrediente_idProveedor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."ordenIngrediente_idProveedor_seq";
       public          postgres    false    230                       0    0     ordenIngrediente_idProveedor_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."ordenIngrediente_idProveedor_seq" OWNED BY public."ordenIngrediente"."idProveedor";
          public          postgres    false    229            �            1259    16482    saborIngrediente    TABLE     �   CREATE TABLE public."saborIngrediente" (
    "idSabor" character varying(6) NOT NULL,
    "idIngrediente" character varying(6) NOT NULL,
    "Cantidad" numeric NOT NULL
);
 &   DROP TABLE public."saborIngrediente";
       public         heap    postgres    false            �            1259    16408    tipoDocumento    TABLE     �   CREATE TABLE public."tipoDocumento" (
    "idTipoDocumento" character varying(5) NOT NULL,
    "tipoDocumento" character varying(40) NOT NULL
);
 #   DROP TABLE public."tipoDocumento";
       public         heap    postgres    false            �            1259    16413    tipoUsuario    TABLE     �   CREATE TABLE public."tipoUsuario" (
    "idTipoUsuario" character varying(5) NOT NULL,
    "tipoUsuario" character varying(30) NOT NULL
);
 !   DROP TABLE public."tipoUsuario";
       public         heap    postgres    false            H           2604    16501    Proveedor idProveedor    DEFAULT     �   ALTER TABLE ONLY public."Proveedor" ALTER COLUMN "idProveedor" SET DEFAULT nextval('public."Proveedor_idProveedor_seq"'::regclass);
 H   ALTER TABLE public."Proveedor" ALTER COLUMN "idProveedor" DROP DEFAULT;
       public          postgres    false    227    226    227            F           2604    16437    Reserva idPedido    DEFAULT     z   ALTER TABLE ONLY public."Reserva" ALTER COLUMN "idPedido" SET DEFAULT nextval('public."Reserva_idPedido_seq"'::regclass);
 C   ALTER TABLE public."Reserva" ALTER COLUMN "idPedido" DROP DEFAULT;
       public          postgres    false    219    218    219            G           2604    16449    ordenCompra idOrden    DEFAULT     �   ALTER TABLE ONLY public."ordenCompra" ALTER COLUMN "idOrden" SET DEFAULT nextval('public."ordenCompra_idOrden_seq"'::regclass);
 F   ALTER TABLE public."ordenCompra" ALTER COLUMN "idOrden" DROP DEFAULT;
       public          postgres    false    221    220    221            I           2604    16509    ordenIngrediente idOrden    DEFAULT     �   ALTER TABLE ONLY public."ordenIngrediente" ALTER COLUMN "idOrden" SET DEFAULT nextval('public."ordenIngrediente_idOrden_seq"'::regclass);
 K   ALTER TABLE public."ordenIngrediente" ALTER COLUMN "idOrden" DROP DEFAULT;
       public          postgres    false    230    228    230            J           2604    16510    ordenIngrediente idProveedor    DEFAULT     �   ALTER TABLE ONLY public."ordenIngrediente" ALTER COLUMN "idProveedor" SET DEFAULT nextval('public."ordenIngrediente_idProveedor_seq"'::regclass);
 O   ALTER TABLE public."ordenIngrediente" ALTER COLUMN "idProveedor" DROP DEFAULT;
       public          postgres    false    230    229    230            �          0    16475    Ingrediente 
   TABLE DATA           V   COPY public."Ingrediente" ("idIngrediente", "Descripcion", "Existencias") FROM stdin;
    public          postgres    false    224   Q       �          0    16462    Linea 
   TABLE DATA           K   COPY public."Linea" ("idSabor", "idPedido", "numeroPorciones") FROM stdin;
    public          postgres    false    223   xR                 0    16498 	   Proveedor 
   TABLE DATA           �   COPY public."Proveedor" ("idProveedor", "nombreProveedor", "apellidosProveedor", "Direccion", "Indicasiones", "telefonoProveedor") FROM stdin;
    public          postgres    false    227   S       �          0    16434    Reserva 
   TABLE DATA           �   COPY public."Reserva" ("idPedido", "fechaHoraRealizacion", "fechaHoraEntrega", "precioTotal", "Entregado", "usuarioDocumento") FROM stdin;
    public          postgres    false    219   �U       �          0    16457    Sabor 
   TABLE DATA           L   COPY public."Sabor" ("idSabor", "nombrePizza", "precioPorcion") FROM stdin;
    public          postgres    false    222   KV       �          0    16418    Usuario 
   TABLE DATA           �   COPY public."Usuario" ("tipoUsuario", "usuarioNombre", "usuarioApellidos", "tipoDocumento", "Correo", "Contrasena", "Documento", "usuarioTelefono") FROM stdin;
    public          postgres    false    217   W       �          0    16446    ordenCompra 
   TABLE DATA           U   COPY public."ordenCompra" ("idOrden", "fechaPedido", "usuarioDocumento") FROM stdin;
    public          postgres    false    221   ~X                 0    16506    ordenIngrediente 
   TABLE DATA           �   COPY public."ordenIngrediente" ("idOrden", "idIngrediente", "idProveedor", "cantidadSolicitada", "cantidadComparada", "fechaCompra") FROM stdin;
    public          postgres    false    230   Y       �          0    16482    saborIngrediente 
   TABLE DATA           T   COPY public."saborIngrediente" ("idSabor", "idIngrediente", "Cantidad") FROM stdin;
    public          postgres    false    225   :Z       �          0    16408    tipoDocumento 
   TABLE DATA           M   COPY public."tipoDocumento" ("idTipoDocumento", "tipoDocumento") FROM stdin;
    public          postgres    false    215   �Z       �          0    16413    tipoUsuario 
   TABLE DATA           G   COPY public."tipoUsuario" ("idTipoUsuario", "tipoUsuario") FROM stdin;
    public          postgres    false    216   \[                  0    0    Proveedor_idProveedor_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Proveedor_idProveedor_seq"', 1, false);
          public          postgres    false    226                       0    0    Reserva_idPedido_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Reserva_idPedido_seq"', 1, false);
          public          postgres    false    218                       0    0    ordenCompra_idOrden_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ordenCompra_idOrden_seq"', 1, false);
          public          postgres    false    220                       0    0    ordenIngrediente_idOrden_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."ordenIngrediente_idOrden_seq"', 1, false);
          public          postgres    false    228                       0    0     ordenIngrediente_idProveedor_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."ordenIngrediente_idProveedor_seq"', 1, false);
          public          postgres    false    229            P           2606    16531    Usuario Documento 
   CONSTRAINT     \   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Documento" PRIMARY KEY ("Documento");
 ?   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "Documento";
       public            postgres    false    217            X           2606    16481    Ingrediente idIngrediente 
   CONSTRAINT     h   ALTER TABLE ONLY public."Ingrediente"
    ADD CONSTRAINT "idIngrediente" PRIMARY KEY ("idIngrediente");
 G   ALTER TABLE ONLY public."Ingrediente" DROP CONSTRAINT "idIngrediente";
       public            postgres    false    224            T           2606    16451    ordenCompra idOrden 
   CONSTRAINT     \   ALTER TABLE ONLY public."ordenCompra"
    ADD CONSTRAINT "idOrden" PRIMARY KEY ("idOrden");
 A   ALTER TABLE ONLY public."ordenCompra" DROP CONSTRAINT "idOrden";
       public            postgres    false    221            Z           2606    16503    Proveedor idProveedor 
   CONSTRAINT     b   ALTER TABLE ONLY public."Proveedor"
    ADD CONSTRAINT "idProveedor" PRIMARY KEY ("idProveedor");
 C   ALTER TABLE ONLY public."Proveedor" DROP CONSTRAINT "idProveedor";
       public            postgres    false    227            V           2606    16461    Sabor idSabor 
   CONSTRAINT     V   ALTER TABLE ONLY public."Sabor"
    ADD CONSTRAINT "idSabor" PRIMARY KEY ("idSabor");
 ;   ALTER TABLE ONLY public."Sabor" DROP CONSTRAINT "idSabor";
       public            postgres    false    222            L           2606    16412    tipoDocumento idTipoDocumento 
   CONSTRAINT     n   ALTER TABLE ONLY public."tipoDocumento"
    ADD CONSTRAINT "idTipoDocumento" PRIMARY KEY ("idTipoDocumento");
 K   ALTER TABLE ONLY public."tipoDocumento" DROP CONSTRAINT "idTipoDocumento";
       public            postgres    false    215            N           2606    16417    tipoUsuario idTipoUsuario 
   CONSTRAINT     h   ALTER TABLE ONLY public."tipoUsuario"
    ADD CONSTRAINT "idTipoUsuario" PRIMARY KEY ("idTipoUsuario");
 G   ALTER TABLE ONLY public."tipoUsuario" DROP CONSTRAINT "idTipoUsuario";
       public            postgres    false    216            R           2606    16439    Reserva idpedido 
   CONSTRAINT     X   ALTER TABLE ONLY public."Reserva"
    ADD CONSTRAINT idpedido PRIMARY KEY ("idPedido");
 <   ALTER TABLE ONLY public."Reserva" DROP CONSTRAINT idpedido;
       public            postgres    false    219            a           2606    16492    saborIngrediente idIngrediente    FK CONSTRAINT     �   ALTER TABLE ONLY public."saborIngrediente"
    ADD CONSTRAINT "idIngrediente" FOREIGN KEY ("idIngrediente") REFERENCES public."Ingrediente"("idIngrediente");
 L   ALTER TABLE ONLY public."saborIngrediente" DROP CONSTRAINT "idIngrediente";
       public          postgres    false    224    225    4696            c           2606    16518    ordenIngrediente idIngrediente    FK CONSTRAINT     �   ALTER TABLE ONLY public."ordenIngrediente"
    ADD CONSTRAINT "idIngrediente" FOREIGN KEY ("idIngrediente") REFERENCES public."Ingrediente"("idIngrediente");
 L   ALTER TABLE ONLY public."ordenIngrediente" DROP CONSTRAINT "idIngrediente";
       public          postgres    false    224    230    4696            d           2606    16513    ordenIngrediente idOrden    FK CONSTRAINT     �   ALTER TABLE ONLY public."ordenIngrediente"
    ADD CONSTRAINT "idOrden" FOREIGN KEY ("idOrden") REFERENCES public."ordenCompra"("idOrden");
 F   ALTER TABLE ONLY public."ordenIngrediente" DROP CONSTRAINT "idOrden";
       public          postgres    false    4692    230    221            _           2606    16470    Linea idPedido    FK CONSTRAINT     �   ALTER TABLE ONLY public."Linea"
    ADD CONSTRAINT "idPedido" FOREIGN KEY ("idPedido") REFERENCES public."Reserva"("idPedido");
 <   ALTER TABLE ONLY public."Linea" DROP CONSTRAINT "idPedido";
       public          postgres    false    223    219    4690            e           2606    16523    ordenIngrediente idProveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public."ordenIngrediente"
    ADD CONSTRAINT "idProveedor" FOREIGN KEY ("idProveedor") REFERENCES public."Proveedor"("idProveedor");
 J   ALTER TABLE ONLY public."ordenIngrediente" DROP CONSTRAINT "idProveedor";
       public          postgres    false    230    4698    227            `           2606    16465    Linea idSabor    FK CONSTRAINT     {   ALTER TABLE ONLY public."Linea"
    ADD CONSTRAINT "idSabor" FOREIGN KEY ("idSabor") REFERENCES public."Sabor"("idSabor");
 ;   ALTER TABLE ONLY public."Linea" DROP CONSTRAINT "idSabor";
       public          postgres    false    222    4694    223            b           2606    16487    saborIngrediente idSabor    FK CONSTRAINT     �   ALTER TABLE ONLY public."saborIngrediente"
    ADD CONSTRAINT "idSabor" FOREIGN KEY ("idSabor") REFERENCES public."Sabor"("idSabor");
 F   ALTER TABLE ONLY public."saborIngrediente" DROP CONSTRAINT "idSabor";
       public          postgres    false    225    222    4694            [           2606    16428    Usuario tipoDocumento    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "tipoDocumento" FOREIGN KEY ("tipoDocumento") REFERENCES public."tipoDocumento"("idTipoDocumento");
 C   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "tipoDocumento";
       public          postgres    false    217    215    4684            \           2606    16423    Usuario tipoUsuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "tipoUsuario" FOREIGN KEY ("tipoUsuario") REFERENCES public."tipoUsuario"("idTipoUsuario");
 A   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "tipoUsuario";
       public          postgres    false    216    217    4686            ]           2606    16532    Reserva usuarioDocumento    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reserva"
    ADD CONSTRAINT "usuarioDocumento" FOREIGN KEY ("usuarioDocumento") REFERENCES public."Usuario"("Documento") NOT VALID;
 F   ALTER TABLE ONLY public."Reserva" DROP CONSTRAINT "usuarioDocumento";
       public          postgres    false    219    217    4688            ^           2606    16537    ordenCompra usuarioDocumento    FK CONSTRAINT     �   ALTER TABLE ONLY public."ordenCompra"
    ADD CONSTRAINT "usuarioDocumento" FOREIGN KEY ("usuarioDocumento") REFERENCES public."Usuario"("Documento") NOT VALID;
 J   ALTER TABLE ONLY public."ordenCompra" DROP CONSTRAINT "usuarioDocumento";
       public          postgres    false    221    4688    217            �   O  x�U��n�0D��� چ�A`BU/Nb5��F@z��;��J��og��u�K�W��~0�Y=�6�B���@G�)	B�l'��R}q]�h<{V���&���F�����sJ�n4��8؄l�����Q-��ɷ�sĎ�����S�F���읅����;�����w ��|�e�����t4���!I���Y�$�4��M�f׫YC��2�2�I�aУ�kм̳��鍶���8�8�U���eI�a6Nm�:=���4�H95��������qT`����A�f�;�v�W��g��x����g	/վ�Frj�Դԯ�D�#`�}�Ђ�      �   z   x�E���0C��� 
�1dH���ULہ���v*�';����&C[�:���)uТljA����ԃ���`P+>d�Ǯn��z��8"]2#��=%-wOw�	,3�rv��e�6�3_�$�         �  x�m�Mn�0���S�Z��?��t���p� �(�a$� �)H��S�b�2mK����͛o�ѻwkK�m�˺�ڦ5�r����W�� ��{��9��N����on�Zr>G!�N3&`�U���~���6UixF2�H�]c���=Ie�$<��i-��kS�Wmi����r�gJ'i�Ο�z��$������5��Y�/O�m�9�p����ݮ*LmO��XP�~EUR��&�:�RX6f來����y�g!�&���`��n�<����ϤJtz�� �,�ؐ�����hlyU�0�|(��~8��pg|���Rh:M�|2�A���>��~�}�ڪ��g#;� (���q��R�(���W��������ܤ�"�1�Q`�|���po}c�2F�d@�D�Q�Cy�c��|JD�r\%҇
V��&I���)��#}��'>�;���m�9F�F9b$SB���5�H�4�L�$��"f�D����mS�F{���t�!"�9�X_R��R�	�-N{���c�r�������'3�P�]�wͦGrm��<�cv��b1�(�2,����E�T�DJ1Bq�{)7�sz8���������LkjJ�ɕ��t����Q�"r�z������      �   �   x�u�K� ���@*0��%랠�W���"���,IY��m�����;b��l|��Ij�Km����.���u�\
�r�ma?�4J9�!΀�_� E�C���?2F%�.0Ρ��L5�!����hQq�W(_��� w��؋i($� +�K�SQ�x��`|6      �   �   x�-�A�0E��Sp�(��Zkt�f�4���^�3x1[�n���Ê���I��}���)I˕*��錳8B��mE/5�
�-B�����,�c����B��Z3��c�%�[�jY݄���D��X���*h}� �́�1-XE� ���%l��d~_g��Ⅴ�@���q�J�"��wS0�����!��hiA?      �   W  x�m�Oo�0��Çi����͢Ac���;�\MiI���kA��q"ϓ�G߶Y�?�U�V4��Jhq�j�v�qU�+L�BI�[��$q�'��|�_�I���n���Fa��e���j����~���ǁz_�WG��J���}�T>�K�܏�e�,O�h�M6�l��5[C��U���.O���gG8���˭�41�,FO.��C0#��ۡ���w�]ê�#�jq�;$s�Yrp�Z�oW�̊.�q�B�6���(�s"]|�#׾`M_�?����φডO�!7�����0�q2E���!y2_�������g�vy�����E�>XE�
��      �      x�U���0ѳ�%�����:r3���$D����YB��1�vS��^�Ok�w9Y�O���pf��������PD�R���Y��R��_��@
w��ZH��IJ΁/����$�p�&��f�v�f[           x�m�An�0E���3�0,E`�.�����X�d���k8����⤽�����p� ���N�A
�3�hj�;j�xMGD[���#�[��Q��^{XV�j�S�q��]�+)�q��	Z�⨷�C\�5.��=�3lQ	xb6y��fO�X�o�,�@��a�	����?�v�Y�#N��L4�GXr��E��iJi���GKؘ�ax�K��[b���y���I�Mq�d"m�R���T��ʶ����p���>CJ����GXB���џ!i,�F�Fͦ��}%� �R      �   �   x�U�Q� �g9�q�<@��F�����R��b�/��cI-2�x��°~ ǝ�Fr!��|Ҳ�L�D������.�E��|��\m0��"�YD7M��#|S�<�/ϾV���E݊l>HT"�a�g�\g��s[ؾ$%��7Dj���ߨ���|d;      �   ]   x�U�1� k���O��6�
��AH|�X��ff�ٰJ�`E-�.�b���jy�:��ƕ��[y\��Ҹ�oZN��D�U~!�ݰ(G      �   ;   x�st����tL����,.)JL�/�r���t��L�+I�
s�s	�K�KI���qqq ϕG     