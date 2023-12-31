PGDMP                      {         
   lenya_basa    16.1    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398 
   lenya_basa    DATABASE     ~   CREATE DATABASE lenya_basa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE lenya_basa;
                postgres    false            �            1259    16400 
   categories    TABLE     \   CREATE TABLE public.categories (
    id integer NOT NULL,
    category character varying
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16399    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    216            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    215            �            1259    16410    fanbook    TABLE     �   CREATE TABLE public.fanbook (
    id integer NOT NULL,
    category_fanbook integer,
    name character varying,
    information character varying
);
    DROP TABLE public.fanbook;
       public         heap    postgres    false            �            1259    16409    fanbook_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fanbook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.fanbook_id_seq;
       public          postgres    false    218            �           0    0    fanbook_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.fanbook_id_seq OWNED BY public.fanbook.id;
          public          postgres    false    217                       2604    16403    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                       2604    16413 
   fanbook id    DEFAULT     h   ALTER TABLE ONLY public.fanbook ALTER COLUMN id SET DEFAULT nextval('public.fanbook_id_seq'::regclass);
 9   ALTER TABLE public.fanbook ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16400 
   categories 
   TABLE DATA           2   COPY public.categories (id, category) FROM stdin;
    public          postgres    false    216   �       �          0    16410    fanbook 
   TABLE DATA           J   COPY public.fanbook (id, category_fanbook, name, information) FROM stdin;
    public          postgres    false    218   �       �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    215            �           0    0    fanbook_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.fanbook_id_seq', 6, true);
          public          postgres    false    217                       2606    16407    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    216                       2606    16417    fanbook fanbook_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.fanbook
    ADD CONSTRAINT fanbook_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.fanbook DROP CONSTRAINT fanbook_pkey;
       public            postgres    false    218                       1259    16408    ix_categories_id    INDEX     E   CREATE INDEX ix_categories_id ON public.categories USING btree (id);
 $   DROP INDEX public.ix_categories_id;
       public            postgres    false    216                       1259    16419    ix_fanbook_id    INDEX     ?   CREATE INDEX ix_fanbook_id ON public.fanbook USING btree (id);
 !   DROP INDEX public.ix_fanbook_id;
       public            postgres    false    218            �      x������ � �      �      x��[�r$�]k��кG63��M�#�laG��[H�			c&0������U�U��s2���@ݪǽ�8y��կϞ�=���ٳ�O�={��??����/�U��e������?~+?����������+�>��C�dn�M������0���jT�k��+���&�����}%��r�0��<����p)�-��p�O���rxѯeE��<O_?\���c�W�"�ʖ1�7��J~{�o�c=��Z?𙷅�g����n���rA%7����w�]��{���e?�\��+]~wp�����<�NKة����-6�J�i���(�/�>ô����݈[�������>f����s#�}����~���x�X����j���.��G����ۧ�뾑���Lo|j>�;��k��|U�u�-6b��}C��ߨYuu�?�
JY���r'��z��!�zY��O����쳿�=�W0L4��t%^�^�g�>�j	�8���[��Dv$��A��mj~s_p���vu�-��!p容F���a��3'��Z�>��[]�F����#H`�1�Q6�/�.z���o�|[�	r������5����;��ľ�7y>����L KX��XaS�q�U���?��O��
_1�᜗�.YΝ�PV]!W���Tm7
�F��;��FM��z�������k�8���j�B}���+�*m��=ĩ���ꬥ�:��v��f@����ƒ��z}�N
9!R���ء,B�I��u�Ȩ����_8p2 ��;.>�pz��vD�-��-�^,(��
���S��.b{�;/D�ҬQ�԰�B�j��H9ч/��F��5Fhaf$�On�d-�~���`��j���l�P^]t��-_�B�}���$�:G'����O	i��Zn.O_$.N�=�@k�&�Kd�B����NeˏbFM�*�&����7��#�Z߽2�6�Z�%�Q �I}�Ɗ�T��C���P1����v�LR������{:�e�[�;�ٻ��t2P���	❻t����ʇ=��3�0>nG���� �it1�W(q��"K��PJ�q�͹�v�4N��!�
>���2y�3,(�Ow{!�Y��y�
 �m�IU໕�@0�`E��M
<bj�Zs�d�}M�L:c%�窰��m����\�՜��\�i���s�k��Ze���j��5܏���9/jz@�D�{t����&jxM���y\���
h�HI9���F���"]����Ī�^-�
l⒐S!Y��)H�P�sS�᎘�*3[s�����3���jtV �1�F�U^qC4�� Z���*�[]����T��_��:a��طHQ�c� 8f�.\������v�t�ъ�^��8Hk�!��ϝn\I���Z`?~!�D��4�����+T����Ԙ�"YI����A0eF�SC2�?|͈�
��񁩅����-�ڑ,�BWi+U��j�f�q�Sp�@pO܂ҢF_���i�����<��:��9��a���B�Z�/��rs�ʱ��G�HtV�z��C�l�v�SV4�^ט���?���Ѧ��E�(���!_�bP���7�9T�S���jDB��5!��QQ��*�ORV~��U\	kq����l�f�x���C�:(���6,v��tᥤ��6�0k����Sk�JSŠ�'�R~0�*V��X1�w�I�6��ϑx&/W���	@�k�@6��`�.�9��~�2̴�����d}��^V�g�\.\��5W��*�ْ�3�Xǲ��ј�Is�V����"4����n4�@�s��d�I��*���,*�Y��&0 ]�1�"63	�[���`H>������]#A���D<����h�2^\\D��"���I��!e� H��5wP^ب��,���-��}�ܪ��	;� ���f�47���ID5"Թ����l���چQِ���b^�������q���#����C�68Z�yQ��־I��T�[EEo�����H�Qj>a��.�}5!ߘ4q1S�O;J	S��h�L�m/�p�ץ�Nҡ@�9����K�I��E'1q:���0���pe��5���N{0��6U�"��j���k������Km�M��	�y/�F�M�2u�����3��?��o�g�%P>�lLC~��%��v�h�b�XIm����E	V�LBu�*5`b���j܌=Ͳ�sԈrm��-�6I��/ִ�(�^�.Ф�v$�T��Q�C�4���vWnQ�P�7,�+N��F��{6l� �K�- ���窟��^_���5H�Uc-M�R��J�6��q��.��q3'?�<b�j�+�aS�4Rt_z�[�4L1A���Pv8�gͭdZ�ա#c�f���]@\�"��O��)�v�'�g�&���!nF��-^G9�������7P��uw�9�!&���@E���9p�R�NE��"��m���b�`=>r�a��MIr	�����O͇e�a3̙���i>2IX��}�2�U���2��@��6ְJ>b�S
g1��O�@;�5�-�bK�r�A=F�a��?�[o��'%�^�FmU��;�L3$�^�>hFT������&K�ػ\��j����!H�^���VT\}<�̀	Q�����3�}ǎ�&S�<x��~��m��CAKJ\�!җ���m?+��{�P<L7�|g-��;�O}3p$�|�DV#S��Do�z�ж�-�Gl�Z��f)����~#�-|Ă�B]��j:á^�p8�C)��q���2�����`��^���o�#?6@Q�8�Ä���
̠��mQ?�Lp���b�w���qtlXnӛ(�f�i�Mh덨��f��m2ؙ��(g�Gm�#ߌB�r��8޲<�P�SS�}8RV*��G�7�	xE&��U��ʍ�:�T�$�ґcC����b�1���ѥ ��k.�Ѭ��).L+�5&U�J�Y3(�ֆ���)�m�X�iR�ܮ�9��O��+���/�s�2����2h��(/�=I�S 4[Z�KP����LK��E���s$�j��O\���0�r���	]Q>x@V&�RxD�Öi�G}X�ѣ�a���"�A���V�|�_�Xpw	��faN+���=�@�0��Ӳk�>[0��%/��j�9鞟!�Y���$�32�ݯ=^��9��I6I��<0���WE���4�����)}����[�#+y���	�[�s�"D&n������Y`�¹w�S�HՖӚ 򛶭���(�����?6��;�!Q@bo��sFi���M�����H�P�J��hNޱ Kh\(��'3�v:�`w�Zp�����'vUK��ִk�|V�(���G�{��ҩs7��f�x����E�W9��GCL\�=��DH@��hdY�	��
��y�h�T�E�Z�ZW'(,R݄�a�&����I�U�y�� ���5)T��������fWdG�B���l�� HLO+�ǥzи~ĦU��y������`�+J����Տx~n�װ�c>��l��3Ix�	��a5�B�%�u
 �C��|�����X�Ehpdϵrf��+lh�N���OBp��H�Դ(x��2*[�
���{ػ�(�oB�����<R%'#&6��;�H��y�s���q�E�\��$�7��z�COh��G�E]� ���Z����~����&����5E8���;�Zv����󲆕��?�@_ �~}�aTK�0����<�.2�r:}�ʗ�cį4�v��"���P0��[��dW6��m{�X!Z�_�<(9��t+>������X�1r�/~Q�n�s7J�-�Q��AQz��M�\�
��&�iWe��#8�q�w�D\Q׷Y{�~QS/[[pO-j��Bߏ�vƥ�7[
�(,��wI��*2'U���$Kq0��AF����}���PE��B62 ��z���L�s���1S�|����^&��,��*�ĚSC��&u�H�(�L����A����ƭ��l�)�axV����:vh��y8��t��ge8 �  ds�(�$�g�c�	Gl�8y���P X���a�
��v>y���`�|��S^*�0�k�Y����f#��</z5��֘��@���?�(���!�C0����',,z��Bl�f�<@We��|����p��/]��6�9��vAJ8���/l�6�w�ᘑ���Y54El\b��Ƴ{6C�I�.��B*�A��{?�a�O�ݜ_�)(�]�͢y��g8d����Mh��\��`��:I�q��vAH'It,y~B^�
$�ٔ2�鎎Ҝ��e+��ڹ<�BGk�5q@Y����Q�J�r�g���d˜z�<�a�i���C�G�ִ�q�*�#�^����e��t�� е�u�6T�,}S2��)���^����q�;�k�Qa��5�6�t^|s�7�;�h8��v�4Y)�k���2� �:e�<��0�3������t&��������3S��EGX�[�:��^���cghmm��1LV~�ӫ>3�#�GJ1�w���яQ��:l��@.8c��!�(,�Y��!��F�"%پ]F�/��ay�٦���_�9��szu��ǰ�	h6�)�:�摿V�
��/<F�z�z��9�UXI���DQ8����.���������?����{g������g���œ�.�<y�?EKd     