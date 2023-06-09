PGDMP     %                     {            market    14.3    14.3 S    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            n           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            o           1262    32788    market    DATABASE     c   CREATE DATABASE market WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE market;
                postgres    false                        2615    2200    Market_schem    SCHEMA        CREATE SCHEMA "Market_schem";
    DROP SCHEMA "Market_schem";
                postgres    false            p           0    0    SCHEMA "Market_schem"    COMMENT     >   COMMENT ON SCHEMA "Market_schem" IS 'standard public schema';
                   postgres    false    3            �            1259    33186    Brands    TABLE     g   CREATE TABLE "Market_schem"."Brands" (
    id integer NOT NULL,
    name character varying NOT NULL
);
 $   DROP TABLE "Market_schem"."Brands";
       Market_schem         heap    postgres    false    3            �            1259    33185    Brands_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Brands" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Brands_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    210    3            �            1259    33433    Cart    TABLE     :  CREATE TABLE "Market_schem"."Cart" (
    id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    size character varying NOT NULL,
    quantity integer NOT NULL,
    product_name character varying NOT NULL,
    product_brand character varying NOT NULL,
    price numeric NOT NULL
);
 "   DROP TABLE "Market_schem"."Cart";
       Market_schem         heap    postgres    false    3            �            1259    33432    Cart_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Cart" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Cart_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    232    3            �            1259    33194    Category    TABLE     i   CREATE TABLE "Market_schem"."Category" (
    id integer NOT NULL,
    name character varying NOT NULL
);
 &   DROP TABLE "Market_schem"."Category";
       Market_schem         heap    postgres    false    3            �            1259    33193    Category_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Category" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    212            �            1259    33202    Color    TABLE     f   CREATE TABLE "Market_schem"."Color" (
    id integer NOT NULL,
    name character varying NOT NULL
);
 #   DROP TABLE "Market_schem"."Color";
       Market_schem         heap    postgres    false    3            �            1259    33201    Color_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Color" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Color_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    214            �            1259    33233    Products    TABLE     }  CREATE TABLE "Market_schem"."Products" (
    id integer NOT NULL,
    description text NOT NULL,
    img_url character varying NOT NULL,
    price numeric NOT NULL,
    discount integer,
    name character varying NOT NULL,
    brand character varying NOT NULL,
    category character varying NOT NULL,
    color character varying NOT NULL,
    click integer DEFAULT 1 NOT NULL
);
 &   DROP TABLE "Market_schem"."Products";
       Market_schem         heap    postgres    false    3            �            1259    33232    Models_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Products" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Models_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    218            �            1259    33272    Order    TABLE     B  CREATE TABLE "Market_schem"."Order" (
    id integer NOT NULL,
    user_id integer NOT NULL,
    addres character varying(300) NOT NULL,
    order_data timestamp with time zone NOT NULL,
    check_sum numeric NOT NULL,
    status_name character varying DEFAULT 'Ожидает оплату'::character varying NOT NULL
);
 #   DROP TABLE "Market_schem"."Order";
       Market_schem         heap    postgres    false    3            �            1259    33210    OrderStatus    TABLE     s   CREATE TABLE "Market_schem"."OrderStatus" (
    id integer NOT NULL,
    status_name character varying NOT NULL
);
 )   DROP TABLE "Market_schem"."OrderStatus";
       Market_schem         heap    postgres    false    3            �            1259    33271    Order_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Order" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Order_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    222            �            1259    33302    Order_items    TABLE     �   CREATE TABLE "Market_schem"."Order_items" (
    order_id integer NOT NULL,
    item_id integer NOT NULL,
    id integer NOT NULL,
    product_id integer NOT NULL
);
 )   DROP TABLE "Market_schem"."Order_items";
       Market_schem         heap    postgres    false    3            �            1259    33317    Order_products_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Order_items" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Order_products_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    225            �            1259    33290    Storage    TABLE     �   CREATE TABLE "Market_schem"."Storage" (
    id integer NOT NULL,
    item_id integer NOT NULL,
    purchase_id integer NOT NULL,
    size character varying NOT NULL
);
 %   DROP TABLE "Market_schem"."Storage";
       Market_schem         heap    postgres    false    3            �            1259    33289    Products_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Storage" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Products_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    224    3            �            1259    33338    Purchase    TABLE     �   CREATE TABLE "Market_schem"."Purchase" (
    id integer NOT NULL,
    product_id integer NOT NULL,
    total numeric NOT NULL,
    quantity integer NOT NULL,
    price_per_unit numeric NOT NULL,
    purchase_date date
);
 &   DROP TABLE "Market_schem"."Purchase";
       Market_schem         heap    postgres    false    3            �            1259    33337    Purchase_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Purchase" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Purchase_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    230    3            �            1259    33325    Sizes    TABLE     f   CREATE TABLE "Market_schem"."Sizes" (
    id integer NOT NULL,
    name character varying NOT NULL
);
 #   DROP TABLE "Market_schem"."Sizes";
       Market_schem         heap    postgres    false    3            �            1259    33324    Sizes_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Sizes" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Sizes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    228            �            1259    33209    Status_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."OrderStatus" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Status_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    216            �            1259    33258    Users    TABLE       CREATE TABLE "Market_schem"."Users" (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    login character varying(32) NOT NULL,
    password_hash character varying NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(10)
);
 #   DROP TABLE "Market_schem"."Users";
       Market_schem         heap    postgres    false    3            �            1259    33257    Users_id_seq    SEQUENCE     �   ALTER TABLE "Market_schem"."Users" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Market_schem"."Users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            Market_schem          postgres    false    3    220            S          0    33186    Brands 
   TABLE DATA           4   COPY "Market_schem"."Brands" (id, name) FROM stdin;
    Market_schem          postgres    false    210   f       i          0    33433    Cart 
   TABLE DATA           u   COPY "Market_schem"."Cart" (id, user_id, product_id, size, quantity, product_name, product_brand, price) FROM stdin;
    Market_schem          postgres    false    232   Df       U          0    33194    Category 
   TABLE DATA           6   COPY "Market_schem"."Category" (id, name) FROM stdin;
    Market_schem          postgres    false    212   �f       W          0    33202    Color 
   TABLE DATA           3   COPY "Market_schem"."Color" (id, name) FROM stdin;
    Market_schem          postgres    false    214   �f       _          0    33272    Order 
   TABLE DATA           b   COPY "Market_schem"."Order" (id, user_id, addres, order_data, check_sum, status_name) FROM stdin;
    Market_schem          postgres    false    222   g       Y          0    33210    OrderStatus 
   TABLE DATA           @   COPY "Market_schem"."OrderStatus" (id, status_name) FROM stdin;
    Market_schem          postgres    false    216   h       b          0    33302    Order_items 
   TABLE DATA           R   COPY "Market_schem"."Order_items" (order_id, item_id, id, product_id) FROM stdin;
    Market_schem          postgres    false    225   �h       [          0    33233    Products 
   TABLE DATA           |   COPY "Market_schem"."Products" (id, description, img_url, price, discount, name, brand, category, color, click) FROM stdin;
    Market_schem          postgres    false    218   �h       g          0    33338    Purchase 
   TABLE DATA           l   COPY "Market_schem"."Purchase" (id, product_id, total, quantity, price_per_unit, purchase_date) FROM stdin;
    Market_schem          postgres    false    230   �j       e          0    33325    Sizes 
   TABLE DATA           3   COPY "Market_schem"."Sizes" (id, name) FROM stdin;
    Market_schem          postgres    false    228   �j       a          0    33290    Storage 
   TABLE DATA           K   COPY "Market_schem"."Storage" (id, item_id, purchase_id, size) FROM stdin;
    Market_schem          postgres    false    224   k       ]          0    33258    Users 
   TABLE DATA           W   COPY "Market_schem"."Users" (id, name, login, password_hash, email, phone) FROM stdin;
    Market_schem          postgres    false    220   �k       q           0    0    Brands_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Market_schem"."Brands_id_seq"', 3, true);
          Market_schem          postgres    false    209            r           0    0    Cart_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Market_schem"."Cart_id_seq"', 67, true);
          Market_schem          postgres    false    231            s           0    0    Category_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Market_schem"."Category_id_seq"', 4, true);
          Market_schem          postgres    false    211            t           0    0    Color_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Market_schem"."Color_id_seq"', 3, true);
          Market_schem          postgres    false    213            u           0    0    Models_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Market_schem"."Models_id_seq"', 8, true);
          Market_schem          postgres    false    217            v           0    0    Order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Market_schem"."Order_id_seq"', 5, true);
          Market_schem          postgres    false    221            w           0    0    Order_products_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Market_schem"."Order_products_id_seq"', 1, false);
          Market_schem          postgres    false    226            x           0    0    Products_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Market_schem"."Products_id_seq"', 70, true);
          Market_schem          postgres    false    223            y           0    0    Purchase_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Market_schem"."Purchase_id_seq"', 4, true);
          Market_schem          postgres    false    229            z           0    0    Sizes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Market_schem"."Sizes_id_seq"', 5, true);
          Market_schem          postgres    false    227            {           0    0    Status_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Market_schem"."Status_id_seq"', 6, true);
          Market_schem          postgres    false    215            |           0    0    Users_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"Market_schem"."Users_id_seq"', 16, true);
          Market_schem          postgres    false    219            �           2606    33375    Brands Brands_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY "Market_schem"."Brands"
    ADD CONSTRAINT "Brands_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY "Market_schem"."Brands" DROP CONSTRAINT "Brands_name_key";
       Market_schem            postgres    false    210            �           2606    33192    Brands Brands_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "Market_schem"."Brands"
    ADD CONSTRAINT "Brands_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY "Market_schem"."Brands" DROP CONSTRAINT "Brands_pkey";
       Market_schem            postgres    false    210            �           2606    33439    Cart Cart_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY "Market_schem"."Cart"
    ADD CONSTRAINT "Cart_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY "Market_schem"."Cart" DROP CONSTRAINT "Cart_pkey";
       Market_schem            postgres    false    232            �           2606    33377    Category Category_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY "Market_schem"."Category"
    ADD CONSTRAINT "Category_name_key" UNIQUE (name);
 P   ALTER TABLE ONLY "Market_schem"."Category" DROP CONSTRAINT "Category_name_key";
       Market_schem            postgres    false    212            �           2606    33200    Category Category_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Market_schem"."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY "Market_schem"."Category" DROP CONSTRAINT "Category_pkey";
       Market_schem            postgres    false    212            �           2606    33379    Color Color_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY "Market_schem"."Color"
    ADD CONSTRAINT "Color_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY "Market_schem"."Color" DROP CONSTRAINT "Color_name_key";
       Market_schem            postgres    false    214            �           2606    33208    Color Color_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY "Market_schem"."Color"
    ADD CONSTRAINT "Color_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY "Market_schem"."Color" DROP CONSTRAINT "Color_pkey";
       Market_schem            postgres    false    214            �           2606    33241    Products Models_img_url_key 
   CONSTRAINT     e   ALTER TABLE ONLY "Market_schem"."Products"
    ADD CONSTRAINT "Models_img_url_key" UNIQUE (img_url);
 Q   ALTER TABLE ONLY "Market_schem"."Products" DROP CONSTRAINT "Models_img_url_key";
       Market_schem            postgres    false    218            �           2606    33239    Products Models_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Market_schem"."Products"
    ADD CONSTRAINT "Models_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Market_schem"."Products" DROP CONSTRAINT "Models_pkey";
       Market_schem            postgres    false    218            �           2606    33278    Order Order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY "Market_schem"."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY "Market_schem"."Order" DROP CONSTRAINT "Order_pkey";
       Market_schem            postgres    false    222            �           2606    33323    Order_items Order_products_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Market_schem"."Order_items"
    ADD CONSTRAINT "Order_products_pkey" PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Market_schem"."Order_items" DROP CONSTRAINT "Order_products_pkey";
       Market_schem            postgres    false    225            �           2606    33306 &   Order_items Order_products_prod_id_key 
   CONSTRAINT     p   ALTER TABLE ONLY "Market_schem"."Order_items"
    ADD CONSTRAINT "Order_products_prod_id_key" UNIQUE (item_id);
 \   ALTER TABLE ONLY "Market_schem"."Order_items" DROP CONSTRAINT "Order_products_prod_id_key";
       Market_schem            postgres    false    225            �           2606    33296    Storage Products_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "Market_schem"."Storage"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);
 K   ALTER TABLE ONLY "Market_schem"."Storage" DROP CONSTRAINT "Products_pkey";
       Market_schem            postgres    false    224            �           2606    33344    Purchase Purchase_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Market_schem"."Purchase"
    ADD CONSTRAINT "Purchase_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY "Market_schem"."Purchase" DROP CONSTRAINT "Purchase_pkey";
       Market_schem            postgres    false    230            �           2606    33403    Sizes Sizes_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY "Market_schem"."Sizes"
    ADD CONSTRAINT "Sizes_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY "Market_schem"."Sizes" DROP CONSTRAINT "Sizes_name_key";
       Market_schem            postgres    false    228            �           2606    33331    Sizes Sizes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY "Market_schem"."Sizes"
    ADD CONSTRAINT "Sizes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY "Market_schem"."Sizes" DROP CONSTRAINT "Sizes_pkey";
       Market_schem            postgres    false    228            �           2606    33396    OrderStatus Status_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY "Market_schem"."OrderStatus"
    ADD CONSTRAINT "Status_name_key" UNIQUE (status_name);
 Q   ALTER TABLE ONLY "Market_schem"."OrderStatus" DROP CONSTRAINT "Status_name_key";
       Market_schem            postgres    false    216            �           2606    33216    OrderStatus Status_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Market_schem"."OrderStatus"
    ADD CONSTRAINT "Status_pkey" PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Market_schem"."OrderStatus" DROP CONSTRAINT "Status_pkey";
       Market_schem            postgres    false    216            �           2606    33268    Users Users_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY "Market_schem"."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 K   ALTER TABLE ONLY "Market_schem"."Users" DROP CONSTRAINT "Users_email_key";
       Market_schem            postgres    false    220            �           2606    33266    Users Users_login_key 
   CONSTRAINT     ]   ALTER TABLE ONLY "Market_schem"."Users"
    ADD CONSTRAINT "Users_login_key" UNIQUE (login);
 K   ALTER TABLE ONLY "Market_schem"."Users" DROP CONSTRAINT "Users_login_key";
       Market_schem            postgres    false    220            �           2606    33264    Users Users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY "Market_schem"."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY "Market_schem"."Users" DROP CONSTRAINT "Users_pkey";
       Market_schem            postgres    false    220            �           2606    33307 (   Order_items Order_products_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Order_items"
    ADD CONSTRAINT "Order_products_order_id_fkey" FOREIGN KEY (order_id) REFERENCES "Market_schem"."Order"(id);
 ^   ALTER TABLE ONLY "Market_schem"."Order_items" DROP CONSTRAINT "Order_products_order_id_fkey";
       Market_schem          postgres    false    3248    222    225            �           2606    33312 '   Order_items Order_products_prod_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Order_items"
    ADD CONSTRAINT "Order_products_prod_id_fkey" FOREIGN KEY (item_id) REFERENCES "Market_schem"."Storage"(id) NOT VALID;
 ]   ALTER TABLE ONLY "Market_schem"."Order_items" DROP CONSTRAINT "Order_products_prod_id_fkey";
       Market_schem          postgres    false    225    3250    224            �           2606    41553    Products Products_brand_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Products"
    ADD CONSTRAINT "Products_brand_fkey" FOREIGN KEY (brand) REFERENCES "Market_schem"."Brands"(name) NOT VALID;
 R   ALTER TABLE ONLY "Market_schem"."Products" DROP CONSTRAINT "Products_brand_fkey";
       Market_schem          postgres    false    3222    210    218            �           2606    41548    Products Products_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Products"
    ADD CONSTRAINT "Products_category_fkey" FOREIGN KEY (category) REFERENCES "Market_schem"."Category"(name) NOT VALID;
 U   ALTER TABLE ONLY "Market_schem"."Products" DROP CONSTRAINT "Products_category_fkey";
       Market_schem          postgres    false    3226    212    218            �           2606    41543    Products Products_color_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Products"
    ADD CONSTRAINT "Products_color_fkey" FOREIGN KEY (color) REFERENCES "Market_schem"."Color"(name) NOT VALID;
 R   ALTER TABLE ONLY "Market_schem"."Products" DROP CONSTRAINT "Products_color_fkey";
       Market_schem          postgres    false    214    3230    218            �           2606    33297    Storage Products_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Storage"
    ADD CONSTRAINT "Products_model_id_fkey" FOREIGN KEY (item_id) REFERENCES "Market_schem"."Products"(id) NOT VALID;
 T   ALTER TABLE ONLY "Market_schem"."Storage" DROP CONSTRAINT "Products_model_id_fkey";
       Market_schem          postgres    false    218    224    3240            �           2606    33404    Storage Products_size_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Storage"
    ADD CONSTRAINT "Products_size_fkey" FOREIGN KEY (size) REFERENCES "Market_schem"."Sizes"(name) NOT VALID;
 P   ALTER TABLE ONLY "Market_schem"."Storage" DROP CONSTRAINT "Products_size_fkey";
       Market_schem          postgres    false    224    3256    228            �           2606    33345    Purchase Purchase_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Market_schem"."Purchase"
    ADD CONSTRAINT "Purchase_model_id_fkey" FOREIGN KEY (product_id) REFERENCES "Market_schem"."Products"(id);
 U   ALTER TABLE ONLY "Market_schem"."Purchase" DROP CONSTRAINT "Purchase_model_id_fkey";
       Market_schem          postgres    false    3240    230    218            S   &   x�3����N�2�tL�LI,�2�JMM������� {��      i   5   x�33�44�4�4��4�t�Rp�rvU0T������N�44660������ ���      U   I   x�3�0���[.vs�.��x��¾�.캰�˘����.l
��p^X� �5����qqq �-�      W   %   x�3�t�IL��2���,I�2��/�H-����� t�X      _   �   x��P�N�0<;_�;id{��ɷ�1m\Z�;��P����?blqူ֒=;�3�^-�u��q�0�p��u#Ҙ�(�U%Ս�T-��W|`�	=Ρ՘�	}hC���2\�CGl�5���'{�4������H�>�xbzJ?ްI��k�
\�X6〙�{v\G�_8�<Fg��lCo;R�Q��͜8GT��[¬��p��R�ߢH���Gj�����r�gw>��H���֬ʴ;+���n�,˾s�d      Y   �   x�e���0Dc]����P�-�`ihl$���k;b.�{�>k�;^�x�CRgQ1b@�N�l&�!s댸x��E��i/�j�A=W���J�F�Ȳ3�1���dcTO�e���Q�SH�<N�'ڇ�5�?���q%"_�͈�      b      x������ � �      [   �  x���Mn�0���)t K$%�ݹF�0�"]x��R��X.]�n�]�mn��EA�3P7���-����x�ɐ��ݭ{���w�n�n�kTY�1/0c�5!u&�z��5,�������VO>�ie#m��D��n��r�(��2f)�1�@���!e���i�OZ�P��޶V��-Jk1�Ke�e����u�����ʈEU[%N<�L*��=�-��9!�����h:` ws��R/}�R�$i�x���H�#&�L$�4��!��� �������#�x������h�%�}w��{pw{�_OȻ�����>��T`���U��d���ěV[i�4K9~S�T�j�,��U�i�Ǻ�*��\�+%�|�2��8`�����ӳّO�����=�h���wz����j      g   9   x�]ɹ  ���d���s AGu�	�&	�Jea�H�3�W��z��v��~�      e   &   x�3�4��2�41�2�4��2�41�2�41����� @�      a   `   x�=Ϲ� C�xU��2ۋ���ƀ�7J�Ȇ��؀է>��l�)�������|Pu��RF9TR���A�Q6j7:R)��?ҩX*d=�P&(4      ]   �   x�m�;NA�x�[��q�l>	� q���fe�����9	7 1������TI=i��Q~��嫢Ե��9�����1����ԇ��Մ{>��pR%�l-��)*��Ψs2�3$P�� M�� ��f�]��QսЮ]��jk�<[vԮGq�U��ZBU>���V�{p=�~I��a��j:�ˉ�����M�]@�.���Mr��q�C:g�YD��Z�N�Q��{z���,Fu]�z]0     