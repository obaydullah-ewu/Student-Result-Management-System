PGDMP                         w            btredb    12.1    12.0 �    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    16393    btredb    DATABASE     �   CREATE DATABASE btredb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE btredb;
                postgres    false            �            1259    16425 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            j           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            k           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            l           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            m           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            n           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            o           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    16627    courses_course    TABLE     �   CREATE TABLE public.courses_course (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    credit character varying(14) NOT NULL,
    section character varying(2) NOT NULL,
    offer_course_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.courses_course;
       public         heap    postgres    false            �            1259    16625    courses_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_course_id_seq;
       public          postgres    false    232            p           0    0    courses_course_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses_course.id;
          public          postgres    false    231            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            q           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            r           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            s           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16552    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16635    enrollcourses_enrollcourse    TABLE     �   CREATE TABLE public.enrollcourses_enrollcourse (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    offer_course_date timestamp with time zone NOT NULL,
    course_id integer NOT NULL,
    teacher_id integer NOT NULL
);
 .   DROP TABLE public.enrollcourses_enrollcourse;
       public         heap    postgres    false            �            1259    16633 !   enrollcourses_enrollcourse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enrollcourses_enrollcourse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.enrollcourses_enrollcourse_id_seq;
       public          postgres    false    234            t           0    0 !   enrollcourses_enrollcourse_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.enrollcourses_enrollcourse_id_seq OWNED BY public.enrollcourses_enrollcourse.id;
          public          postgres    false    233            �            1259    16575    listings_listing    TABLE     �  CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    zipcode character varying(20) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    garage integer NOT NULL,
    sqft integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id integer NOT NULL
);
 $   DROP TABLE public.listings_listing;
       public         heap    postgres    false            �            1259    16573    listings_listing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.listings_listing_id_seq;
       public          postgres    false    224            u           0    0    listings_listing_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;
          public          postgres    false    223            �            1259    16610    notices_notice    TABLE     �   CREATE TABLE public.notices_notice (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    hire_date timestamp with time zone NOT NULL,
    teacher_id integer NOT NULL
);
 "   DROP TABLE public.notices_notice;
       public         heap    postgres    false            �            1259    16608    notices_notice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notices_notice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.notices_notice_id_seq;
       public          postgres    false    230            v           0    0    notices_notice_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.notices_notice_id_seq OWNED BY public.notices_notice.id;
          public          postgres    false    229            �            1259    16564    realtors_realtor    TABLE     .  CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    email character varying(50) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE public.realtors_realtor;
       public         heap    postgres    false            �            1259    16562    realtors_realtor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.realtors_realtor_id_seq;
       public          postgres    false    222            w           0    0    realtors_realtor_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;
          public          postgres    false    221            �            1259    17021    results_course    TABLE     �   CREATE TABLE public.results_course (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    credit character varying(14) NOT NULL,
    offer_course_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.results_course;
       public         heap    postgres    false            �            1259    17019    results_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.results_course_id_seq;
       public          postgres    false    244            x           0    0    results_course_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.results_course_id_seq OWNED BY public.results_course.id;
          public          postgres    false    243            �            1259    17077    results_notice    TABLE     �   CREATE TABLE public.results_notice (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    hire_date timestamp with time zone NOT NULL,
    teacher_id integer NOT NULL
);
 "   DROP TABLE public.results_notice;
       public         heap    postgres    false            �            1259    17075    results_notice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_notice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.results_notice_id_seq;
       public          postgres    false    252            y           0    0    results_notice_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.results_notice_id_seq OWNED BY public.results_notice.id;
          public          postgres    false    251            �            1259    16990    results_student    TABLE       CREATE TABLE public.results_student (
    id integer NOT NULL,
    uuid character varying(50) NOT NULL,
    phone character varying(15) NOT NULL,
    admission_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    role character varying(10) NOT NULL
);
 #   DROP TABLE public.results_student;
       public         heap    postgres    false            �            1259    16988    results_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.results_student_id_seq;
       public          postgres    false    240            z           0    0    results_student_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.results_student_id_seq OWNED BY public.results_student.id;
          public          postgres    false    239            �            1259    17037    results_studentcourse    TABLE     �   CREATE TABLE public.results_studentcourse (
    id integer NOT NULL,
    enroll_course_date timestamp with time zone NOT NULL,
    course_id integer NOT NULL,
    student_id integer NOT NULL
);
 )   DROP TABLE public.results_studentcourse;
       public         heap    postgres    false            �            1259    17035    results_studentcourse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_studentcourse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.results_studentcourse_id_seq;
       public          postgres    false    248            {           0    0    results_studentcourse_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.results_studentcourse_id_seq OWNED BY public.results_studentcourse.id;
          public          postgres    false    247            �            1259    17069    results_submissiongrade    TABLE     2  CREATE TABLE public.results_submissiongrade (
    id integer NOT NULL,
    mid1 double precision,
    mid2 double precision,
    lab double precision,
    quiz double precision,
    final double precision,
    course_id integer NOT NULL,
    student_id integer NOT NULL,
    teacher_id integer NOT NULL
);
 +   DROP TABLE public.results_submissiongrade;
       public         heap    postgres    false            �            1259    17067    results_submissiongrade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_submissiongrade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.results_submissiongrade_id_seq;
       public          postgres    false    250            |           0    0    results_submissiongrade_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.results_submissiongrade_id_seq OWNED BY public.results_submissiongrade.id;
          public          postgres    false    249            �            1259    17006    results_teacher    TABLE       CREATE TABLE public.results_teacher (
    id integer NOT NULL,
    uuid character varying(50) NOT NULL,
    phone character varying(15) NOT NULL,
    joining_date timestamp with time zone NOT NULL,
    role character varying(10) NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.results_teacher;
       public         heap    postgres    false            �            1259    17004    results_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.results_teacher_id_seq;
       public          postgres    false    242            }           0    0    results_teacher_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.results_teacher_id_seq OWNED BY public.results_teacher.id;
          public          postgres    false    241            �            1259    17029    results_teachercourse    TABLE     �   CREATE TABLE public.results_teachercourse (
    id integer NOT NULL,
    enroll_course_date timestamp with time zone NOT NULL,
    course_id integer NOT NULL,
    teacher_id integer NOT NULL
);
 )   DROP TABLE public.results_teachercourse;
       public         heap    postgres    false            �            1259    17027    results_teachercourse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.results_teachercourse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.results_teachercourse_id_seq;
       public          postgres    false    246            ~           0    0    results_teachercourse_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.results_teachercourse_id_seq OWNED BY public.results_teachercourse.id;
          public          postgres    false    245            �            1259    16655 (   studentenrollcourses_studentenrollcourse    TABLE     �   CREATE TABLE public.studentenrollcourses_studentenrollcourse (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    enroll_course_date timestamp with time zone NOT NULL,
    course_id integer NOT NULL
);
 <   DROP TABLE public.studentenrollcourses_studentenrollcourse;
       public         heap    postgres    false            �            1259    16653 /   studentenrollcourses_studentenrollcourse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentenrollcourses_studentenrollcourse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.studentenrollcourses_studentenrollcourse_id_seq;
       public          postgres    false    236                       0    0 /   studentenrollcourses_studentenrollcourse_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.studentenrollcourses_studentenrollcourse_id_seq OWNED BY public.studentenrollcourses_studentenrollcourse.id;
          public          postgres    false    235            �            1259    16594    students_student    TABLE       CREATE TABLE public.students_student (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    phone character varying(15) NOT NULL,
    email character varying(30) NOT NULL,
    is_mvp boolean NOT NULL,
    admission_date timestamp with time zone NOT NULL
);
 $   DROP TABLE public.students_student;
       public         heap    postgres    false            �            1259    16592    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public          postgres    false    226            �           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students_student.id;
          public          postgres    false    225            �            1259    16941     submissiongrades_submissiongrade    TABLE     ;  CREATE TABLE public.submissiongrades_submissiongrade (
    id integer NOT NULL,
    mid1 double precision,
    mid2 double precision,
    lab double precision,
    quiz double precision,
    final double precision,
    course_id integer NOT NULL,
    student_id integer NOT NULL,
    teacher_id integer NOT NULL
);
 4   DROP TABLE public.submissiongrades_submissiongrade;
       public         heap    postgres    false            �            1259    16939 '   submissiongrades_submissiongrade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.submissiongrades_submissiongrade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.submissiongrades_submissiongrade_id_seq;
       public          postgres    false    238            �           0    0 '   submissiongrades_submissiongrade_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.submissiongrades_submissiongrade_id_seq OWNED BY public.submissiongrades_submissiongrade.id;
          public          postgres    false    237            �            1259    16602    teachers_teacher    TABLE       CREATE TABLE public.teachers_teacher (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    phone character varying(15) NOT NULL,
    email character varying(30) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE public.teachers_teacher;
       public         heap    postgres    false            �            1259    16600    teachers_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_teacher_id_seq;
       public          postgres    false    228            �           0    0    teachers_teacher_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers_teacher.id;
          public          postgres    false    227                       2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211                       2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                        2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            !           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            "           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            *           2604    16630    courses_course id    DEFAULT     v   ALTER TABLE ONLY public.courses_course ALTER COLUMN id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);
 @   ALTER TABLE public.courses_course ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            #           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            +           2604    16638    enrollcourses_enrollcourse id    DEFAULT     �   ALTER TABLE ONLY public.enrollcourses_enrollcourse ALTER COLUMN id SET DEFAULT nextval('public.enrollcourses_enrollcourse_id_seq'::regclass);
 L   ALTER TABLE public.enrollcourses_enrollcourse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            &           2604    16578    listings_listing id    DEFAULT     z   ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);
 B   ALTER TABLE public.listings_listing ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            )           2604    16613    notices_notice id    DEFAULT     v   ALTER TABLE ONLY public.notices_notice ALTER COLUMN id SET DEFAULT nextval('public.notices_notice_id_seq'::regclass);
 @   ALTER TABLE public.notices_notice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            %           2604    16567    realtors_realtor id    DEFAULT     z   ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);
 B   ALTER TABLE public.realtors_realtor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            0           2604    17024    results_course id    DEFAULT     v   ALTER TABLE ONLY public.results_course ALTER COLUMN id SET DEFAULT nextval('public.results_course_id_seq'::regclass);
 @   ALTER TABLE public.results_course ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            4           2604    17080    results_notice id    DEFAULT     v   ALTER TABLE ONLY public.results_notice ALTER COLUMN id SET DEFAULT nextval('public.results_notice_id_seq'::regclass);
 @   ALTER TABLE public.results_notice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            .           2604    16993    results_student id    DEFAULT     x   ALTER TABLE ONLY public.results_student ALTER COLUMN id SET DEFAULT nextval('public.results_student_id_seq'::regclass);
 A   ALTER TABLE public.results_student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            2           2604    17040    results_studentcourse id    DEFAULT     �   ALTER TABLE ONLY public.results_studentcourse ALTER COLUMN id SET DEFAULT nextval('public.results_studentcourse_id_seq'::regclass);
 G   ALTER TABLE public.results_studentcourse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            3           2604    17072    results_submissiongrade id    DEFAULT     �   ALTER TABLE ONLY public.results_submissiongrade ALTER COLUMN id SET DEFAULT nextval('public.results_submissiongrade_id_seq'::regclass);
 I   ALTER TABLE public.results_submissiongrade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            /           2604    17009    results_teacher id    DEFAULT     x   ALTER TABLE ONLY public.results_teacher ALTER COLUMN id SET DEFAULT nextval('public.results_teacher_id_seq'::regclass);
 A   ALTER TABLE public.results_teacher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            1           2604    17032    results_teachercourse id    DEFAULT     �   ALTER TABLE ONLY public.results_teachercourse ALTER COLUMN id SET DEFAULT nextval('public.results_teachercourse_id_seq'::regclass);
 G   ALTER TABLE public.results_teachercourse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            ,           2604    16658 +   studentenrollcourses_studentenrollcourse id    DEFAULT     �   ALTER TABLE ONLY public.studentenrollcourses_studentenrollcourse ALTER COLUMN id SET DEFAULT nextval('public.studentenrollcourses_studentenrollcourse_id_seq'::regclass);
 Z   ALTER TABLE public.studentenrollcourses_studentenrollcourse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            '           2604    16597    students_student id    DEFAULT     z   ALTER TABLE ONLY public.students_student ALTER COLUMN id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students_student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            -           2604    16944 #   submissiongrades_submissiongrade id    DEFAULT     �   ALTER TABLE ONLY public.submissiongrades_submissiongrade ALTER COLUMN id SET DEFAULT nextval('public.submissiongrades_submissiongrade_id_seq'::regclass);
 R   ALTER TABLE public.submissiongrades_submissiongrade ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            (           2604    16605    teachers_teacher id    DEFAULT     z   ALTER TABLE ONLY public.teachers_teacher ALTER COLUMN id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);
 B   ALTER TABLE public.teachers_teacher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            8          0    16425 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   oU      :          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �U      6          0    16417    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �U      <          0    16443 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �X      >          0    16453    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   @\      @          0    16461    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ]\      O          0    16627    courses_course 
   TABLE DATA           V   COPY public.courses_course (id, name, credit, section, offer_course_date) FROM stdin;
    public          postgres    false    232   z\      B          0    16521    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �\      4          0    16407    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   sd      2          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   Te      C          0    16552    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   �h      Q          0    16635    enrollcourses_enrollcourse 
   TABLE DATA           i   COPY public.enrollcourses_enrollcourse (id, title, offer_course_date, course_id, teacher_id) FROM stdin;
    public          postgres    false    234   �j      G          0    16575    listings_listing 
   TABLE DATA           �   COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
    public          postgres    false    224   �j      M          0    16610    notices_notice 
   TABLE DATA           W   COPY public.notices_notice (id, title, description, hire_date, teacher_id) FROM stdin;
    public          postgres    false    230   pk      E          0    16564    realtors_realtor 
   TABLE DATA           b   COPY public.realtors_realtor (id, name, photo, description, email, is_mvp, hire_date) FROM stdin;
    public          postgres    false    222   �k      [          0    17021    results_course 
   TABLE DATA           M   COPY public.results_course (id, name, credit, offer_course_date) FROM stdin;
    public          postgres    false    244   zl      c          0    17077    results_notice 
   TABLE DATA           W   COPY public.results_notice (id, title, description, hire_date, teacher_id) FROM stdin;
    public          postgres    false    252   �l      W          0    16990    results_student 
   TABLE DATA           Y   COPY public.results_student (id, uuid, phone, admission_date, user_id, role) FROM stdin;
    public          postgres    false    240   6n      _          0    17037    results_studentcourse 
   TABLE DATA           ^   COPY public.results_studentcourse (id, enroll_course_date, course_id, student_id) FROM stdin;
    public          postgres    false    248   �n      a          0    17069    results_submissiongrade 
   TABLE DATA           v   COPY public.results_submissiongrade (id, mid1, mid2, lab, quiz, final, course_id, student_id, teacher_id) FROM stdin;
    public          postgres    false    250   .o      Y          0    17006    results_teacher 
   TABLE DATA           W   COPY public.results_teacher (id, uuid, phone, joining_date, role, user_id) FROM stdin;
    public          postgres    false    242   �o      ]          0    17029    results_teachercourse 
   TABLE DATA           ^   COPY public.results_teachercourse (id, enroll_course_date, course_id, teacher_id) FROM stdin;
    public          postgres    false    246   p      S          0    16655 (   studentenrollcourses_studentenrollcourse 
   TABLE DATA           l   COPY public.studentenrollcourses_studentenrollcourse (id, title, enroll_course_date, course_id) FROM stdin;
    public          postgres    false    236   ip      I          0    16594    students_student 
   TABLE DATA           Z   COPY public.students_student (id, name, phone, email, is_mvp, admission_date) FROM stdin;
    public          postgres    false    226   �p      U          0    16941     submissiongrades_submissiongrade 
   TABLE DATA              COPY public.submissiongrades_submissiongrade (id, mid1, mid2, lab, quiz, final, course_id, student_id, teacher_id) FROM stdin;
    public          postgres    false    238   �p      K          0    16602    teachers_teacher 
   TABLE DATA           U   COPY public.teachers_teacher (id, name, phone, email, is_mvp, hire_date) FROM stdin;
    public          postgres    false    228   Cq      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 13, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    courses_course_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.courses_course_id_seq', 3, true);
          public          postgres    false    231            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 107, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);
          public          postgres    false    202            �           0    0 !   enrollcourses_enrollcourse_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.enrollcourses_enrollcourse_id_seq', 1, false);
          public          postgres    false    233            �           0    0    listings_listing_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.listings_listing_id_seq', 2, true);
          public          postgres    false    223            �           0    0    notices_notice_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notices_notice_id_seq', 5, true);
          public          postgres    false    229            �           0    0    realtors_realtor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 4, true);
          public          postgres    false    221            �           0    0    results_course_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.results_course_id_seq', 6, true);
          public          postgres    false    243            �           0    0    results_notice_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.results_notice_id_seq', 2, true);
          public          postgres    false    251            �           0    0    results_student_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.results_student_id_seq', 4, true);
          public          postgres    false    239            �           0    0    results_studentcourse_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.results_studentcourse_id_seq', 7, true);
          public          postgres    false    247            �           0    0    results_submissiongrade_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.results_submissiongrade_id_seq', 6, true);
          public          postgres    false    249            �           0    0    results_teacher_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.results_teacher_id_seq', 7, true);
          public          postgres    false    241            �           0    0    results_teachercourse_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.results_teachercourse_id_seq', 5, true);
          public          postgres    false    245            �           0    0 /   studentenrollcourses_studentenrollcourse_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.studentenrollcourses_studentenrollcourse_id_seq', 1, true);
          public          postgres    false    235            �           0    0    students_student_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.students_student_id_seq', 6, true);
          public          postgres    false    225            �           0    0 '   submissiongrades_submissiongrade_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.submissiongrades_submissiongrade_id_seq', 4, true);
          public          postgres    false    237            �           0    0    teachers_teacher_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 3, true);
          public          postgres    false    227            B           2606    16550    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            G           2606    16487 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            J           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            D           2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            =           2606    16473 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            ?           2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            R           2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            U           2606    16502 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            L           2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            X           2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            [           2606    16516 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            O           2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            q           2606    16632 "   courses_course courses_course_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.courses_course DROP CONSTRAINT courses_course_pkey;
       public            postgres    false    232            ^           2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            8           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            :           2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            6           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            b           2606    16559 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            t           2606    16640 :   enrollcourses_enrollcourse enrollcourses_enrollcourse_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.enrollcourses_enrollcourse
    ADD CONSTRAINT enrollcourses_enrollcourse_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.enrollcourses_enrollcourse DROP CONSTRAINT enrollcourses_enrollcourse_pkey;
       public            postgres    false    234            g           2606    16583 &   listings_listing listings_listing_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_pkey;
       public            postgres    false    224            n           2606    16618 "   notices_notice notices_notice_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.notices_notice
    ADD CONSTRAINT notices_notice_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.notices_notice DROP CONSTRAINT notices_notice_pkey;
       public            postgres    false    230            e           2606    16572 &   realtors_realtor realtors_realtor_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.realtors_realtor DROP CONSTRAINT realtors_realtor_pkey;
       public            postgres    false    222            �           2606    17026 "   results_course results_course_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.results_course
    ADD CONSTRAINT results_course_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.results_course DROP CONSTRAINT results_course_pkey;
       public            postgres    false    244            �           2606    17085 "   results_notice results_notice_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.results_notice
    ADD CONSTRAINT results_notice_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.results_notice DROP CONSTRAINT results_notice_pkey;
       public            postgres    false    252                       2606    16995 $   results_student results_student_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.results_student
    ADD CONSTRAINT results_student_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.results_student DROP CONSTRAINT results_student_pkey;
       public            postgres    false    240            �           2606    16997 +   results_student results_student_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.results_student
    ADD CONSTRAINT results_student_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.results_student DROP CONSTRAINT results_student_user_id_key;
       public            postgres    false    240            �           2606    17042 0   results_studentcourse results_studentcourse_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.results_studentcourse
    ADD CONSTRAINT results_studentcourse_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.results_studentcourse DROP CONSTRAINT results_studentcourse_pkey;
       public            postgres    false    248            �           2606    17074 4   results_submissiongrade results_submissiongrade_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.results_submissiongrade
    ADD CONSTRAINT results_submissiongrade_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.results_submissiongrade DROP CONSTRAINT results_submissiongrade_pkey;
       public            postgres    false    250            �           2606    17011 $   results_teacher results_teacher_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.results_teacher
    ADD CONSTRAINT results_teacher_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.results_teacher DROP CONSTRAINT results_teacher_pkey;
       public            postgres    false    242            �           2606    17013 +   results_teacher results_teacher_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.results_teacher
    ADD CONSTRAINT results_teacher_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.results_teacher DROP CONSTRAINT results_teacher_user_id_key;
       public            postgres    false    242            �           2606    17034 0   results_teachercourse results_teachercourse_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.results_teachercourse
    ADD CONSTRAINT results_teachercourse_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.results_teachercourse DROP CONSTRAINT results_teachercourse_pkey;
       public            postgres    false    246            x           2606    16660 V   studentenrollcourses_studentenrollcourse studentenrollcourses_studentenrollcourse_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.studentenrollcourses_studentenrollcourse
    ADD CONSTRAINT studentenrollcourses_studentenrollcourse_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.studentenrollcourses_studentenrollcourse DROP CONSTRAINT studentenrollcourses_studentenrollcourse_pkey;
       public            postgres    false    236            j           2606    16599 &   students_student students_student_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.students_student
    ADD CONSTRAINT students_student_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.students_student DROP CONSTRAINT students_student_pkey;
       public            postgres    false    226            {           2606    16946 F   submissiongrades_submissiongrade submissiongrades_submissiongrade_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.submissiongrades_submissiongrade
    ADD CONSTRAINT submissiongrades_submissiongrade_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.submissiongrades_submissiongrade DROP CONSTRAINT submissiongrades_submissiongrade_pkey;
       public            postgres    false    238            l           2606    16607 &   teachers_teacher teachers_teacher_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.teachers_teacher
    ADD CONSTRAINT teachers_teacher_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.teachers_teacher DROP CONSTRAINT teachers_teacher_pkey;
       public            postgres    false    228            @           1259    16551    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            E           1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            H           1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            ;           1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            P           1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            S           1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            V           1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            Y           1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            M           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            \           1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            _           1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            `           1259    16561 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            c           1259    16560 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            r           1259    16651 -   enrollcourses_enrollcourse_course_id_4b81155f    INDEX     y   CREATE INDEX enrollcourses_enrollcourse_course_id_4b81155f ON public.enrollcourses_enrollcourse USING btree (course_id);
 A   DROP INDEX public.enrollcourses_enrollcourse_course_id_4b81155f;
       public            postgres    false    234            u           1259    16652 .   enrollcourses_enrollcourse_teacher_id_d9ca74b8    INDEX     {   CREATE INDEX enrollcourses_enrollcourse_teacher_id_d9ca74b8 ON public.enrollcourses_enrollcourse USING btree (teacher_id);
 B   DROP INDEX public.enrollcourses_enrollcourse_teacher_id_d9ca74b8;
       public            postgres    false    234            h           1259    16589 $   listings_listing_realtor_id_90583529    INDEX     g   CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);
 8   DROP INDEX public.listings_listing_realtor_id_90583529;
       public            postgres    false    224            o           1259    16624 "   notices_notice_teacher_id_5d35cf57    INDEX     c   CREATE INDEX notices_notice_teacher_id_5d35cf57 ON public.notices_notice USING btree (teacher_id);
 6   DROP INDEX public.notices_notice_teacher_id_5d35cf57;
       public            postgres    false    230            �           1259    17109 "   results_notice_teacher_id_1f941a0b    INDEX     c   CREATE INDEX results_notice_teacher_id_1f941a0b ON public.results_notice USING btree (teacher_id);
 6   DROP INDEX public.results_notice_teacher_id_1f941a0b;
       public            postgres    false    252            �           1259    17065 (   results_studentcourse_course_id_651dc596    INDEX     o   CREATE INDEX results_studentcourse_course_id_651dc596 ON public.results_studentcourse USING btree (course_id);
 <   DROP INDEX public.results_studentcourse_course_id_651dc596;
       public            postgres    false    248            �           1259    17066 )   results_studentcourse_student_id_4b7060da    INDEX     q   CREATE INDEX results_studentcourse_student_id_4b7060da ON public.results_studentcourse USING btree (student_id);
 =   DROP INDEX public.results_studentcourse_student_id_4b7060da;
       public            postgres    false    248            �           1259    17101 *   results_submissiongrade_course_id_d9dae040    INDEX     s   CREATE INDEX results_submissiongrade_course_id_d9dae040 ON public.results_submissiongrade USING btree (course_id);
 >   DROP INDEX public.results_submissiongrade_course_id_d9dae040;
       public            postgres    false    250            �           1259    17102 +   results_submissiongrade_student_id_683a49fe    INDEX     u   CREATE INDEX results_submissiongrade_student_id_683a49fe ON public.results_submissiongrade USING btree (student_id);
 ?   DROP INDEX public.results_submissiongrade_student_id_683a49fe;
       public            postgres    false    250            �           1259    17103 +   results_submissiongrade_teacher_id_3491fde7    INDEX     u   CREATE INDEX results_submissiongrade_teacher_id_3491fde7 ON public.results_submissiongrade USING btree (teacher_id);
 ?   DROP INDEX public.results_submissiongrade_teacher_id_3491fde7;
       public            postgres    false    250            �           1259    17053 (   results_teachercourse_course_id_0b64dc67    INDEX     o   CREATE INDEX results_teachercourse_course_id_0b64dc67 ON public.results_teachercourse USING btree (course_id);
 <   DROP INDEX public.results_teachercourse_course_id_0b64dc67;
       public            postgres    false    246            �           1259    17054 )   results_teachercourse_teacher_id_334449ed    INDEX     q   CREATE INDEX results_teachercourse_teacher_id_334449ed ON public.results_teachercourse USING btree (teacher_id);
 =   DROP INDEX public.results_teachercourse_teacher_id_334449ed;
       public            postgres    false    246            v           1259    16666 ;   studentenrollcourses_studentenrollcourse_course_id_9b923373    INDEX     �   CREATE INDEX studentenrollcourses_studentenrollcourse_course_id_9b923373 ON public.studentenrollcourses_studentenrollcourse USING btree (course_id);
 O   DROP INDEX public.studentenrollcourses_studentenrollcourse_course_id_9b923373;
       public            postgres    false    236            y           1259    16962 3   submissiongrades_submissiongrade_course_id_d3eedb04    INDEX     �   CREATE INDEX submissiongrades_submissiongrade_course_id_d3eedb04 ON public.submissiongrades_submissiongrade USING btree (course_id);
 G   DROP INDEX public.submissiongrades_submissiongrade_course_id_d3eedb04;
       public            postgres    false    238            |           1259    16963 4   submissiongrades_submissiongrade_student_id_215a056a    INDEX     �   CREATE INDEX submissiongrades_submissiongrade_student_id_215a056a ON public.submissiongrades_submissiongrade USING btree (student_id);
 H   DROP INDEX public.submissiongrades_submissiongrade_student_id_215a056a;
       public            postgres    false    238            }           1259    16964 4   submissiongrades_submissiongrade_teacher_id_99282245    INDEX     �   CREATE INDEX submissiongrades_submissiongrade_teacher_id_99282245 ON public.submissiongrades_submissiongrade USING btree (teacher_id);
 H   DROP INDEX public.submissiongrades_submissiongrade_teacher_id_99282245;
       public            postgres    false    238            �           2606    16481 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    2879    207            �           2606    16476 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2884    211    209            �           2606    16467 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2874    205    207            �           2606    16496 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2884    215    209            �           2606    16491 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    215    2892            �           2606    16510 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2879    207    217            �           2606    16505 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2892    213            �           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2874    219            �           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2892    213            �           2606    16641 O   enrollcourses_enrollcourse enrollcourses_enroll_course_id_4b81155f_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollcourses_enrollcourse
    ADD CONSTRAINT enrollcourses_enroll_course_id_4b81155f_fk_courses_c FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.enrollcourses_enrollcourse DROP CONSTRAINT enrollcourses_enroll_course_id_4b81155f_fk_courses_c;
       public          postgres    false    234    232    2929            �           2606    16646 P   enrollcourses_enrollcourse enrollcourses_enroll_teacher_id_d9ca74b8_fk_teachers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollcourses_enrollcourse
    ADD CONSTRAINT enrollcourses_enroll_teacher_id_d9ca74b8_fk_teachers_ FOREIGN KEY (teacher_id) REFERENCES public.teachers_teacher(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.enrollcourses_enrollcourse DROP CONSTRAINT enrollcourses_enroll_teacher_id_d9ca74b8_fk_teachers_;
       public          postgres    false    2924    234    228            �           2606    16584 L   listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id;
       public          postgres    false    2917    224    222            �           2606    16619 H   notices_notice notices_notice_teacher_id_5d35cf57_fk_teachers_teacher_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.notices_notice
    ADD CONSTRAINT notices_notice_teacher_id_5d35cf57_fk_teachers_teacher_id FOREIGN KEY (teacher_id) REFERENCES public.teachers_teacher(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.notices_notice DROP CONSTRAINT notices_notice_teacher_id_5d35cf57_fk_teachers_teacher_id;
       public          postgres    false    228    2924    230            �           2606    17104 G   results_notice results_notice_teacher_id_1f941a0b_fk_results_teacher_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_notice
    ADD CONSTRAINT results_notice_teacher_id_1f941a0b_fk_results_teacher_id FOREIGN KEY (teacher_id) REFERENCES public.results_teacher(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.results_notice DROP CONSTRAINT results_notice_teacher_id_1f941a0b_fk_results_teacher_id;
       public          postgres    false    2947    242    252            �           2606    16998 @   results_student results_student_user_id_03723f98_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_student
    ADD CONSTRAINT results_student_user_id_03723f98_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.results_student DROP CONSTRAINT results_student_user_id_03723f98_fk_auth_user_id;
       public          postgres    false    2892    240    213            �           2606    17055 S   results_studentcourse results_studentcourse_course_id_651dc596_fk_results_course_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_studentcourse
    ADD CONSTRAINT results_studentcourse_course_id_651dc596_fk_results_course_id FOREIGN KEY (course_id) REFERENCES public.results_course(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.results_studentcourse DROP CONSTRAINT results_studentcourse_course_id_651dc596_fk_results_course_id;
       public          postgres    false    2951    248    244            �           2606    17060 U   results_studentcourse results_studentcourse_student_id_4b7060da_fk_results_student_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_studentcourse
    ADD CONSTRAINT results_studentcourse_student_id_4b7060da_fk_results_student_id FOREIGN KEY (student_id) REFERENCES public.results_student(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.results_studentcourse DROP CONSTRAINT results_studentcourse_student_id_4b7060da_fk_results_student_id;
       public          postgres    false    240    248    2943            �           2606    17091 M   results_submissiongrade results_submissiongr_student_id_683a49fe_fk_results_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_submissiongrade
    ADD CONSTRAINT results_submissiongr_student_id_683a49fe_fk_results_s FOREIGN KEY (student_id) REFERENCES public.results_student(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.results_submissiongrade DROP CONSTRAINT results_submissiongr_student_id_683a49fe_fk_results_s;
       public          postgres    false    240    2943    250            �           2606    17096 M   results_submissiongrade results_submissiongr_teacher_id_3491fde7_fk_results_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_submissiongrade
    ADD CONSTRAINT results_submissiongr_teacher_id_3491fde7_fk_results_t FOREIGN KEY (teacher_id) REFERENCES public.results_teacher(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.results_submissiongrade DROP CONSTRAINT results_submissiongr_teacher_id_3491fde7_fk_results_t;
       public          postgres    false    2947    242    250            �           2606    17116 W   results_submissiongrade results_submissiongrade_course_id_d9dae040_fk_results_course_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_submissiongrade
    ADD CONSTRAINT results_submissiongrade_course_id_d9dae040_fk_results_course_id FOREIGN KEY (course_id) REFERENCES public.results_course(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.results_submissiongrade DROP CONSTRAINT results_submissiongrade_course_id_d9dae040_fk_results_course_id;
       public          postgres    false    2951    244    250            �           2606    17014 @   results_teacher results_teacher_user_id_7fea0f38_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_teacher
    ADD CONSTRAINT results_teacher_user_id_7fea0f38_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.results_teacher DROP CONSTRAINT results_teacher_user_id_7fea0f38_fk_auth_user_id;
       public          postgres    false    242    2892    213            �           2606    17043 S   results_teachercourse results_teachercourse_course_id_0b64dc67_fk_results_course_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_teachercourse
    ADD CONSTRAINT results_teachercourse_course_id_0b64dc67_fk_results_course_id FOREIGN KEY (course_id) REFERENCES public.results_course(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.results_teachercourse DROP CONSTRAINT results_teachercourse_course_id_0b64dc67_fk_results_course_id;
       public          postgres    false    246    244    2951            �           2606    17048 U   results_teachercourse results_teachercourse_teacher_id_334449ed_fk_results_teacher_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.results_teachercourse
    ADD CONSTRAINT results_teachercourse_teacher_id_334449ed_fk_results_teacher_id FOREIGN KEY (teacher_id) REFERENCES public.results_teacher(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.results_teachercourse DROP CONSTRAINT results_teachercourse_teacher_id_334449ed_fk_results_teacher_id;
       public          postgres    false    242    2947    246            �           2606    16661 ]   studentenrollcourses_studentenrollcourse studentenrollcourses_course_id_9b923373_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentenrollcourses_studentenrollcourse
    ADD CONSTRAINT studentenrollcourses_course_id_9b923373_fk_courses_c FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.studentenrollcourses_studentenrollcourse DROP CONSTRAINT studentenrollcourses_course_id_9b923373_fk_courses_c;
       public          postgres    false    2929    232    236            �           2606    16947 U   submissiongrades_submissiongrade submissiongrades_sub_course_id_d3eedb04_fk_courses_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissiongrades_submissiongrade
    ADD CONSTRAINT submissiongrades_sub_course_id_d3eedb04_fk_courses_c FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.submissiongrades_submissiongrade DROP CONSTRAINT submissiongrades_sub_course_id_d3eedb04_fk_courses_c;
       public          postgres    false    2929    232    238            �           2606    16983 V   submissiongrades_submissiongrade submissiongrades_sub_student_id_215a056a_fk_students_    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissiongrades_submissiongrade
    ADD CONSTRAINT submissiongrades_sub_student_id_215a056a_fk_students_ FOREIGN KEY (student_id) REFERENCES public.students_student(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.submissiongrades_submissiongrade DROP CONSTRAINT submissiongrades_sub_student_id_215a056a_fk_students_;
       public          postgres    false    226    238    2922            �           2606    16957 V   submissiongrades_submissiongrade submissiongrades_sub_teacher_id_99282245_fk_teachers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissiongrades_submissiongrade
    ADD CONSTRAINT submissiongrades_sub_teacher_id_99282245_fk_teachers_ FOREIGN KEY (teacher_id) REFERENCES public.teachers_teacher(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.submissiongrades_submissiongrade DROP CONSTRAINT submissiongrades_sub_teacher_id_99282245_fk_teachers_;
       public          postgres    false    238    2924    228            8      x������ � �      :      x������ � �      6   #  x�u�Q�� D��)r�U�6���H+o�2��vd;��ۯ�t7f�~%Wpu����t���c��´-_�n���}��D��9N� ��E`�kx�M�i��.��������3,��z���Dk��,7'@p�X��	2֓EAF�����2��M��J��9|� ��"`CV�.�q��ְ4]4���t��O��	�����'�һ�q|uz��/��_��}=C�G���Q�s#�?p_�8o�d���]���z��hVʈ�>3&�N���:A�UF(���ݧ[����2"����!&�MNb,���C�R����K�#X�V$�p�1�n��Q�X�	��2B)_��u��͐�ZZ�Vd��j����_1�{��WC�ҿ����>�oK�T�H=��S�D����X�]e��=�����<�T'�MXBJd�(0��61�=k�ײrx�Tge/ �+!QN�R��y �Ju����@,u6�S�x��?�Y/�U*X�K>���a���� ���(�rN��63�^����T�ɒZ����.��2^wY�g�mՋ����:1���Bg�TVT韕}h3mE�YS�3m�>�m�ϴ-�v�B�V6�폍�D�Y[m4W6�u�Fse�Y_i4'��Y����� 0�\98���"]9E&���"s8R&�'���ІoC���p(����6�6t�؆�hCw��4�C�v�1�L �j7�8���9&��@��t�)M��Ւ�^���%|[o	~S���ɪ=�i"�5���^�#!�6�b����g�H��?~(���"�	      <   T  x�}�[��: ���+|�mg��Pn�$G��xC�M&9AAA((/��u��3�Hx(�4|�v-����3��D`������k}o��uJh����D�����t ð��A�eݯ�.EQ�0D�7���	���B+�<��
 I'kI�
��T���UPT�T�ސ��Py�S<&3ƀ	��t�o��0�QK�4�[ԥ���i�E�g���9[����[D��#��e�������͊���Q'��MB��_�\bq
Ǳ���b�F�ڣ#{2��	�t��I�E�[��ޟ���-O��j�`c����2�LjJ��m��qs�A|��
�YY�y$�x�9��[+�8f�W;��.��R��9�W��a��7�Z�mc譊��A�o�$��˜�|�R�m�OA}��^d9��q�9��IYz�'
*3���q|�hcx�*�u����N0��y���\�w�����F�9гȡM�&U���K�
�,�	����{���4��3�'Kf>��|���X>�'Ĝ�yT�.B��͎��엥�й��
Ԕ��8ܞ^��B �I"P��������ʓ6ojF�s3۾����iG�1�M���g��_���x�;i��H_J�oB���!V� Ẅ���h];�m�{��7�W��b,��-��s�Ǥo��@Ó�Ϡ)D�w��|��߳dnh��xR4�V�_�L�?6�HXQ8t����5}�����]���p�`��	's���7ߋ|X�]��q��/�acԵ{�m5k�h��VF������h�6�ݟp^��WGO����G}iW������W>�+��I��DTnݸ�m4� �̵�      >      x������ � �      @      x������ � �      O   A   x�3�tv514�4�4�420��54�54V00�26�20�60�2�17�@Scjael	R���� S�      B   �  x��Y�n�}^}łO	5�n}�7�6� 6@�@�%�4� �W�a��Tuϐ;=3�2�'��s���Tթ��C~��r������Ň���ҭ��ۛ��o��]������v{���ֿ����UZ�+lIrGɥ�"�,�*0z��_{�;'^���p�����������W�z7�:+�4�����ԉ8��(W�����ra�Ңs'����n~s��`�b���wz�.�<DϠ�z_���_�!u`'v��A��������ᇺ�����n{�����v�i�a�|j)Q/�%�Lh���?Gp��yD�mW��@�P����(�,���y]��b�J=QJ70%`v1z�yLp*(7��ç���닿�/�6�/���v��1�@}
����>�~�~|:\?�SCn��
�K �c�677G�<"��]��ԧ�V���g�������|�>;�<���t����ns�DZ� :I�u;�z{���-�c�$��C�R�xj����	j������B�B����9Gx�T-K�5�eM�-����o�������v�{�YVsC������9�A�]��x�k����+�-����S_�9�"�b; H�ف�"�E�N�E�)�V|H�Z��'�1Wa�%��|��x}5wI�h�0�N�޽
$��h��$l	��,"����ͧ�7�s,�p$3���%�S��ᙀ�)�x��#�!~�[D��k��ۧ�����?���^��������s�#)��z�mHΑ�8�t�^���B�Qv Z ��i��8�ǁOU_��6 ���[v9����%4,Z������g?�އD�aI �O�%/�(!�
�)P���@�ʂa�[��Ӑ2��U�C[��wы�&�S|Z+"mNB����X��$��F�� �1�b���V7�T�(K�s������ǄiR=��H0���R�.� ��aG���25���,$��3W�����z�)���c۲Џŷp�����^觋��� �ig侳-�3.V=��S�ZJ��T�]U2_�˦hJ�]�!/}/[�-�j�]� ��(�+S����uw��2J����@k����r���m�Ԩ�=m�P�|�#�S�}�L]�*�����4[�Ug�"3ֈl.��Z^��%��vF���~T�L}�N��µse���|�>M����BQ��#��$�ljQq�z�rͧ8��WF�y���<��d�(�Y'f�aJ��&2z��0��� N	t����U5��-�3�b��ӿ��{��Gh%��L+9I�ԏK����l4i����ѭ�̆��|���5�ݪQs^��3�g�n�~Y��J�ҧu����|J̅�"�W
L
k�ӊN11�d����zQzh�.��S-�" 1��ŞgV���U J��~��͠�%�V�F .�*��}���}�:Tm�j|$�s�J���͇B�&z��֗��qLʳ��g�L�$9+��<��_��V��A�6�Pϒ��*�D��<i��d�Ty���um��d�!'����|Q*��+av)�p�KbH�S��\�g{��v����/N�j%��=ۓG�Z��n�Oڊ_=���K�p���Aahu�f0���#��9�[�#�!���B���t�r�T+��a�[���y�Z���,`1�E��0�,�>s��M �6$	�Z)Nn��Zu��9ip%3�ͬ��c�S���ZP����aJ*h�[�,�P6rlX��Z"
������Bi]m��b5$U���G��rn9̱���9p͗���b|���U��^B�No�g�mL���Zj��ϝi�w[�i�f�����l�đ�٦	{�c{t����<�z���g�X;�1��:tXnQe�ʉ1�Zι�hvB}2�S�>�@`�� �}�{MM,�؂�R�y
��gj�ܫW��ؚa      4   �   x�mPˎ�0<�Ǭ�����x�Zr���n�i��0� ���!A�'�:��n0�܃j�	�3H.#��(���j�=F�u�'P~ukx��B������E�+������v`�W��R��յSDr�@}yF�=p�c��ҡ-�}!����o�� ��>	�S�AK\?/����U�ץ03n��nz�ؘpn)�o��A���      2   )  x���mo�8�?����W7������de�K#�������߉��	M����3��8u��q|�šB@��z���@��/��H^��)-���~���Ʒ�
-��TT�k�>��cV�O���p��{���/߅�|>FH���ɠO�Bu��6�%�޺���4 ș�����,_����V�x�rT�Ϭ�a��1���k=sI�>\�?���u���ʮ(ZP��/�Z��#��� �R�2��r��xl�$�l5����������w65�=�\��X)���o�����{�M;�(�b�3�f)�w���j��!u?�}ׇk���M�!2�&Zq�Н6+��$W����S(�6��
Ă���t{���l�^1�[í���oy�2]:`�!.�|x��C$�d��#W�=�F�^��Rzay5�.E\���X��gdΑI~�ح���b��um<dh�4��a���Å����/u)��.��cuz����2�עR�0"5�h�1��T��R��OKVIRS?��V	/�J���REl��ij�"�T7?��?\y�<�Rs�D����kk��sk�n�0�K(��3�v���X.��P�A�+��%���:���U���|��mP�G�@��ovK@Xz���L�� ��z���Q�e� �&�<ˉ��S�m�iN:�t�1E��V�_�� )� Rx��$\�Ò��+@��G���I���V/C��G��OK"�;���
mUQd�@�w� <��(�(�v����"avz��R�D�[�r�E�|/Ǿ��5��˿˗���Xw��      C   8  x����n�@�u��W��0H�4v(3(��1`��pmf��8J*����HW��Gה��cW݁��@���_*/uDU>QM�w�j�P-e�2��Tk���/w��0j���t-%U��'˓6/��n�#������@x7O�b�^a���3�K[$1;���xu'R��3Uo�Y����'�^���|2X��2��<AW��w����W�(����U����#��D�G�:'��s����L�aBҚ�,��ڍI�t]H�?���3D������Il����\J�cu9g&D+�؟\ԕ���̓-v�v�p�!��"vǢ�a;\ee�7��K�-l����q���#�ޘ��'�o��%����B�3���؛7LQ��Q����n΄�����z��=��h;w`��;�*j�������������̇��A �̻]-'ŏ"�7�tvީ��j*Jl�c�u���!� �@�DC���N�p�=d�u����C1�9?C����C��������
�i^���?����VS?�R��ݗv|�w��ľ��Z.�?�!pG      Q      x������ � �      G   n   x�%�1�0��+�Q��5D$-�4�RYI�p0�X�=��l�D�V��
��T�S2@�=�ĺ$Kߖ�}���Ҝ����m�ï���(OrB7��Y:7z��u��      M   /   x�3�LL�,�BN#CK]C#]Cc3+#+Km3N#�=... �,�      E   �   x�����@��+�,��"Tv��� ��!�����W��a0ϻ)�q5��#eqD���M��r�ix{40�ih��2����u�:3v��m^���>&���Y�Ƌ�sZ�,L�Өf�a�}��vP��.,�w�D�H\����kƬ F�l6�u��������:�9�<�u_�      [   i   x�m�;�@���{����/��"�	����@^:H��-�j 	�O�	��o�����d��I�"���a�lD��0�-;��K��2?�X:JD	��Ӟ@�X9>���&&V      c   3  x�mQ�N�0=�_�;]�tec�B�vC H\��[��d��D��t�M�b��=�������H�l�^��&�t�w�h<�68ؒ�Cl�T�Q�*�-:(��`���#Hj���Ic����=���d:�����yhqk�|HO��1�{��f��y5���3�C=��q���F%�#�sRg?n3��F�0�<ȏH�|���y|� +�h���sx�u�O�O�c$2И�@��1��y�8g ��[7��tę(gb�]]��B��D�e���m�>����.�p���B��X��E]�&Z���i�~��w      W   �   x�m�;�0���"{D��`�tL�.M�_[U�4����;*:!� y�&jcQ�Y����Wr(�<^��8�|��m�ABL����:�:c=V�5�'���j�X@L � �| a�䅨Q����RJo R4�      _   S   x�eͻ� ј�¹�N�Z��A�fgT�#5�.i��-�R�AOL?�@;1�DDڱ;e� �M\�z�D��4���r�      a   C   x�5�� !B�a#�zs��qTs)�B@�zl�8�!�����R� �z�����c���6�Ն�      Y   }   x�mν
A�:y
{Y�L�?��b#r`-�?z{Z�a�	���V���P�~�wI�d~B��:�E^���X�bP�҆tH�����ց	��:�	5�`��6ijl~G�д�Q�q8�sL��zQ�7:�2W      ]   K   x�m˱�0��?=
�m����P����<��]���F#��@=3��	���^�5#ߙ��6 7���      S      x������ � �      I   h   x�3��/��O�40�0761526��M�OJ�L)��I� K:��&f��%��r�pZ��+�X[�Xh�q�qVef$� �����������7F��� np#�      U   5   x�-��	  ��0��u��ö���X�ʹ�����tv����7�;H>u�	�      K   `   x�uˡ�  �||���/�V3(�7��N����s R/����Qx=m��a�S��C;j봥=��=FE0�Y�|o�Vr��&d�����5D     