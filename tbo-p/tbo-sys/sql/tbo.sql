/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/10/21 0:24:44                           */
/*==============================================================*/


drop table if exists sys_dept;

drop table if exists sys_menu;

drop table if exists sys_role;

drop table if exists sys_staff;

/*==============================================================*/
/* Table: sys_dept                                              */
/*==============================================================*/
create table sys_dept
(
   CODE_                varchar(32) not null comment '����_CODE_',
   NAME_                varchar(64) comment '����_NAME_',
   PARENT_CODE_         varchar(32) comment '������_CODE_',
   PARENT_LIST_         int comment '�����б�_',
   ORDER_               varchar(32) comment '����_',
   ROLE_CODE_           varchar(32) comment '��ɫ_CODE_',
   STATUS_              varchar(8) comment '״̬_��0-���ã�1-ͣ�ã�',
   CREATED_BY_          varchar(12) comment '������_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��_',
   UPDATE_BY_           varchar(12) comment '�޸�ʱ��_',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '�޸�ʱ��_',
   primary key (CODE_)
);

/*==============================================================*/
/* Table: sys_menu                                              */
/*==============================================================*/
create table sys_menu
(
   CODE_                varchar(12) not null comment '�˵�_CODE_',
   NAME_                varchar(32) comment '�˵�_NAME_',
   PARENT_CODE_         varchar(12) comment '���˵�_CODE_',
   ROLE_CODE_           varchar(12) comment '��ɫ_CODE_',
   URL_                 varchar(64) comment '��ַ_',
   ICON_                varchar(32) comment 'ͼ��_',
   PUBLIC_              varchar(6) comment '�Ƿ��ã�0-�ǣ�1-��',
   STATUS_              varchar(6) comment '״̬_��0-���ã�1-ͣ�ã�',
   CREATED_BY_          varchar(12) comment '������_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��_',
   UPDATE_BY_           varchar(12) comment '�޸���_',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '�޸�ʱ��_',
   primary key (CODE_)
);

/*==============================================================*/
/* Table: sys_role                                              */
/*==============================================================*/
create table sys_role
(
   CODE_                varchar(12) not null comment '��ɫ_CODE_',
   NAME_                varchar(12) not null comment '��ɫ_NAME_',
   MENU_CODE_           varchar(12) not null comment '�˵�_CODE_',
   DEPT_CODE_           varchar(12) not null comment '����_CODE_',
   STATUS_              varchar(12) not null comment '״̬_��0-���ã�1-ͣ�ã�',
   CREATED_BY_          varchar(12) comment '������_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��_',
   UPDATE_BY_           varchar(12) comment '�޸���',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '�޸�ʱ��_',
   primary key (CODE_)
);

/*==============================================================*/
/* Table: sys_staff                                             */
/*==============================================================*/
create table sys_staff
(
   CODE_                varchar(12) not null comment 'Ա��_CODE_',
   NAME_                varchar(32) not null comment 'Ա��_NAME_',
   DEPT_CODE_           varchar(12) not null comment '����_CODE_',
   ROLE_CODE_           varchar(12) not null comment '��ɫ_CODE_',
   LOGIN_NAME_          varchar(32) not null comment '�û���_',
   PASSWORD_            varchar(64) not null comment '����_',
   EMAIL_               varchar(32) not null comment '�����ַ_',
   PHONE_               varchar(12) not null comment '�绰����_',
   GENDER_              varchar(2) not null comment '�Ա�_',
   STATUS_              varchar(2) comment '״̬_��0-���ã�1-ͣ�ã�',
   CREATED_BY_          varchar(12) comment '������_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '����ʱ��_',
   UPDATE_BY_           varchar(12) comment '�޸�ʱ��_',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '�޸�ʱ��_',
   primary key (CODE_)
);

