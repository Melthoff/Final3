PGDMP     '    %                {            MegaShop    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    41109    MegaShop    DATABASE     ~   CREATE DATABASE "MegaShop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "MegaShop";
                postgres    false            �            1259    41111    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    41110    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    41118    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    41117    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    41125    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    41124    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    41132    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    41131    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    41141    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    41151    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    41150    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    41140    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    41114    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    41121    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    41128 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    41135 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    41144 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    41154    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    41111    category 
   TABLE DATA                 public          postgres    false    215   �9       *          0    41118    image 
   TABLE DATA                 public          postgres    false    217   :       ,          0    41125    orders 
   TABLE DATA                 public          postgres    false    219   �=       .          0    41132    person 
   TABLE DATA                 public          postgres    false    221   >       0          0    41141    product 
   TABLE DATA                 public          postgres    false    223   ?       2          0    41151    product_cart 
   TABLE DATA                 public          postgres    false    225   �Q       ?           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 30, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 1, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 6, true);
          public          postgres    false    222            �           2606    41116    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    41123    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    41130    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    41139    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    41156    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    41149    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    41158 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    41164 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    41174 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    41169 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    41159 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    41184 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    41179 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (   {   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�bÅ}�.l����^uMk.O�12�}煽�^l��M�!� C�^�t�f�!M@�캰d ��Q�      *   �  x����n�7F�~��%́DI����"4N�8Aw�(�����}�R��	�_�f6�'���_?~��]\^}�=���a���Zwor��Í���z�{x������ �v���������x�{�P�4h�w�=+p��r'�����񤇻���o�w��/g�`ѱ�G�2#L3��J�^%��I�:�δ��&�G��a	r��z�\k-$�7�e�Yo�U$F���AO� ǀ4MB�m*+����H�)d�,�+˚ƜS��M`�06�@�!�ʴxe!F1��v̸�4������Y�S���|a
�
���Qg ��!�d�t����VG���`h��Y+��"`����\7��UY��|��kV|j�)�`j*�|:7����,�4�W޹� >'��Ԗ��-��U��
#+C���cV�"D�e��o/���k}|�Z���t�,���s���,c'w5��!���Жc����(�˕��!(�s�J)��-�K��}e�&d�̆��7�+�*�mY�j����I�[f���*���5=�Q'�f�`�-֣6#4
L�]@E1������ο�^�;������[���-�����@�?ly���S�ʨ�(M SЖHe�	m���o+\˱��i�mZ�ҥI��m���C�b�@�M/x̭��Tw>G<7��2QX��7��&��t�n_����mS.VN�
�����&r�/���!2�����{�9/�d���i֣p��:64WP�3�o���8/�Ӗ�J�P�J�c �`R5����6��������3F�9�N�s�J�D-��m	����,�<z�y���d�,��	9&ކ��(��~��I�;k~S�@dn$�>,�/?ß7����U3t2~i���J+��J�����OheV>���ѶD#zCu������?&H���s��6�~|Ȉ�YG��!���W�~����--�X�F�~�ձ6��6\e���Ǵ&�W���C��l      ,   
   x���          .   �   x���OO�0 �;����l3�x���ɨ�g��tX��M���O/���^^�^~Q��i�$�@���3QɁ�`Bw6`�����XHΪ)���30Y��"���1�.1�������y�5Ol�c��8eg�F:�+u@�#�(I��
}�C�^�)��/���kzgD�����þb�Tulh�}������k�\v_�C�n_(�~֞�7�7Zbڿ�Յ�ڊQt��ۦ_      0      x��[�n��G�;�^D�tl��+CI�d
�.r�E,��*w����\���C��TQ��x�����'��
}��B����{����8���(�Ϝ9{�^���֚�S7�|r�\��u���������Ņ;g�̙�;sgzi����?�ҟ�f��/�-ܫ���s3t������b�,�-���?O/�~����9C?�����gswΚO'&o_�i�W������@ut`x��_�]�VG�/\:Mߦ/�8m�ʹ����@o5m�ǘ?��i'�z[����Ӹ��{j���2}�o�}|�A����.��f|��v�>���m��o7�r7=���gӤ	�Ə�[膄���?�ѿ+|��KW:�]MM�oI>F���Ц����X�d�h��ɧ�m�袬N{�+r&��Iک`�t��|��6�It}kҺ!a��x>���O�H75y�锴n����Rbx��U��ȯ�L�Ѡ�|��h�C�⩙�Y������������YymHp����V;$_������zk�5���R�r𝪇>zj��T��b�᧵p"R���@T*�$��G_gZ1�^���Kb
�)I�i��b{e��gxb�Vx���m�߲I�~!�bL������������V �]��C$�]Ŭ�C�3N�{߁�6�����Sۗ�Mo�vC_�3#�]a�7asm;��60���ž'�5 �U��[7��[��Rt��=�f�с ��^Y��S&ǝ�v�auإ뺆�'�$��pH��OM}��y.�K�Fk��g�dS�Z�������(^�a�-:{o�=,86Z)�?�"� ��2|��lN��?a3�Ƴ�ql�s�S���l۠?{[�,�GݵH�m������lq�$�`�"�}��̼�����64^�'����4ܕ�K��������p�`o�l�3~,��t��,JRT���߰�n��p���C4���UJY�5�	��+n�앓@vi�C�Db������;=BICB?2f�DYF��ສ��{������]��\ �6|����N�������(8$�u���8��L������e)�+�w�LY�b�,����������}Cv���C���\BcGS\/��)t�$�����^n�:Ⴎ�U6���[�$�.�<�{N�����$��R���U��<f�g�֎����F/T���>�[��wwv��T^�@W����]>�ѩ��U����I�ε������>M�{;′l�P�5@�e9�8��t�=A]��1/,�!m�]�:�/�OC@��l�!-�IyK���Õ:��b#�Eҷ���"����v�4�<��d~�������dA�^��6Y�̂F�b��l`����ؾ�ق$������,��c��m�U�Hܯ�Yے�y����AOf�Z��\#���^4�����3g��᳒�!�}ɋ��}%j#u�v����ҩgJiT9�ű��#�;�T�_�92(�ٕ�����8�t ������ k�D+��7I��"�L�FQC�,�%�*o����/c?�r�e��*SD��w�ʲ5��s���I�TM��1c#��,�|��H������uw�t˃�.�6��+ �g���.�A��9{��n?�Y|G�8�E;S�#د�;�r'���Tgs/�
���״xU~Ng@%E���a7��ڲ?���FE�;v��X%��HV�^ �ۥ�(��j��	_m��%Rmd'���j�������>$nlZ��$�{�A�4�U�W���9�k��|i%+\���?	L��^1�2Д�8�h\Y������[Gx!_�]�z��ƣ��c6O=�%`��mc�,D]9p;I�8��>{��؇!Ұ����<�&{�������|Q����ݸ�o��F�~]9'8�w��`+��'�]�ĥQioHU
�o"�7��r�}�m/�-k�2��`\�%�Ґ��[y	��WW��`�X�Třp5ZH�k�q��TϢ�@k��l��c��yá���ҳS��2���X���$�>}����m�1+[���{�#E�q����HU��נ@<�g�s�Q�3D.k0Q�u���0s�mhe��O�/�bB�ٗJ:��m��e���ڈ-l+�����*�G���ž�Oh�Ѡ+4QK|�q�f�O�"d�W�(f�H���'�8�^'-^���7?\��|�pwv���'��͖pZ:��s��.mp��ֶ���"�yre�˯���G��� ��
!oIa-��j�����lA#�ɖvΗ5eFڧ�9�3�u@ls�:�8QbMB���ަb����� �F���9O �(�I�l�|#u6�=���jH_s��aD�d&W���+E�x1YuOK&�ʈ���`�6��@N� �͈̋��\�i9S$'�)��vX�T�,\����
�HZ"��O��(�J̴���xp:����v@0Q�Q������s�
���&�K�bd�u�ĸX�Q`�%m39 �� QgP[�=m�"��4A��`l7UO�v�L'J��[����Ý�Fwv���;��u���k�u��H祍���$�E���+��5�:쫨\9F�Ap)�^J�
V���ezŗ����$`kdd��D���K�JR�#8�2ؒJ�-�f��Q�e2�����V[�e38Ξ��R�����Io�TԱD*@����H�W��z��P�8^�"ڞ�lA��$�F	�D��i��xvL.��v�j��a�]<�OJP��M�-�V
�u�:��p�5.�}�Ϭh;.v�6�j��5
���oU���[����؅�-W�C��"홱�{��E`;z�znp�:6T��[�4�pkv������{����t��ͥqMu�(��4 �EZ��%8�,m�
?��3���t7�uW�Tl�ul������aO�Nvu��05���!�t!'<M�4�&���|]�HkGv/{�%�I�ԂW�~��v
��2� ��~-�|���Z��̮��N�U%�i�i��k�N^�-=xqr	%�N�6f�*)�E�moH���ȲMV�������ێ@�C^(��e��vQG��r�@t�2t/�i��܀�ז��z~�@RsIjE�ə9h�eh����th[��Am��h��\a�Q�/P^!�4�M�RT���c���]G�|��YQ"S��I��w�sv�[X�/D%�~�׹�J)[k�Xqh�V��!i�H(EZ�&���h�f!7�v��h�3(�I��0����if���t���+�o>��)s��tu���1C����2�ksf�  �������_�/��x!��]?�7ys�L]�����;�fd�Jz��V�>�(�Ķ��X�<л�_�h�,18����?��*+��YT�d8�CXG��ma��&*�%�QrKG"y��k�WHƺ��VmvP%��T
0�~�3k�V�k±,�N�2��.�2��^����-)���Hϛ`A��[j7ߝ/��ۺ�O��P�?�H����L����V	���qE�dw�#[=�-KRR�H�U>	 y�W%�י�,dԏS�"�l��kEY����*J�e哫4�e�%l|J9#FH^A��%�x���ǖK.q�N~,����ch�_��WN�^��d\����JƖj�K�(A'��^�$b�Z�(7��E�<���R�I
�����4���o��OߖȪ!�wd���?�`��Ԋ1k��AR��5�+����s^� �!h�ʚ��i���ֱ�z^�Xm��v%e�,i0�S�������f8u�5_c"����RS	{�Z�ޗF�<V:g+F��k,���YO@;��ϲ�Z����Ζ��Y�o)�#Ou�/tzB�^C�I5iu#co5)����q�v��o�Y�K�H��m�sm�\�\)!q%�%�׻e����u6	�#�����9�,k���363jX4�¬���܁L�)�b��B�����b�sx�Ll׬���=J�Q��������5�o�V�"Ң,�r--��>��e@��k��j2S
;�[��V�����Kj�A� �  �*���Lߛ���\H�7�b�җ�;��{*%�s�zc��o��T�ȅjP}�T���۳�̕��5��'�Ʋ�ćK���dv����11c}���p�U����L���,�5��nT�k�q�r�+z3 3�����)r3���+ �����3 )��2�����?��Q�H3r�Ŷ�8n9.%t�t8�5�F-�o�W�(��`+E��E�B�3�:â�L���l��l�}�d�5��f١K��So���}�lZ�6C�#��_E$�bd���B� i��,ʈ<�a�Q�*��H��t�Ĩ��"��ZWFY]��mQ+�aI$��織Z����cԕ��˽�U�^�嫮}��lI�CC�*���Z8_p$�yM�&�^�8b1F�(�̂$�t���V��)��+oQ�	ec���b&-�y�)��m�-�:ן�O��@��N`��j� 7[���0���e�u~�lw�q��}�-���@ �J8'SV��-t��Z*�9�W7�]�C!��?o���fg�'�!�Wi Z۹0ePD�4^ځ�B=��N�싋C'�6Y4e�9�c�s���䩴.tRۃs�Ai�h����U�Ǎ���ʴ���Խy�����K����h�`�x�@S�|�~K��U�m�ݾ51u�\��y����s>+�_�!�N��f�Y      2   N   x���v
Q���W((M��L�+(�O)M.�ON,*Q��L�Q(H-*�ϋ3���)�
a�>���
�:
F@�i��� E6�     