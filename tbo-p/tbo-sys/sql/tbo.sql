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
   CODE_                varchar(32) not null comment '部门_CODE_',
   NAME_                varchar(64) comment '部门_NAME_',
   PARENT_CODE_         varchar(32) comment '父部门_CODE_',
   PARENT_LIST_         int comment '部门列表_',
   ORDER_               varchar(32) comment '排序_',
   ROLE_CODE_           varchar(32) comment '角色_CODE_',
   STATUS_              varchar(8) comment '状态_（0-可用，1-停用）',
   CREATED_BY_          varchar(12) comment '创建人_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '创建时间_',
   UPDATE_BY_           varchar(12) comment '修改时间_',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '修改时间_',
   primary key (CODE_)
);

/*==============================================================*/
/* Table: sys_menu                                              */
/*==============================================================*/
create table sys_menu
(
   CODE_                varchar(12) not null comment '菜单_CODE_',
   NAME_                varchar(32) comment '菜单_NAME_',
   PARENT_CODE_         varchar(12) comment '父菜单_CODE_',
   ROLE_CODE_           varchar(12) comment '角色_CODE_',
   URL_                 varchar(64) comment '地址_',
   ICON_                varchar(32) comment '图标_',
   PUBLIC_              varchar(6) comment '是否公用（0-是，1-否）',
   STATUS_              varchar(6) comment '状态_（0-可用，1-停用）',
   CREATED_BY_          varchar(12) comment '创建人_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '创建时间_',
   UPDATE_BY_           varchar(12) comment '修改人_',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '修改时间_',
   primary key (CODE_)
);

/*==============================================================*/
/* Table: sys_role                                              */
/*==============================================================*/
create table sys_role
(
   CODE_                varchar(12) not null comment '角色_CODE_',
   NAME_                varchar(12) not null comment '角色_NAME_',
   MENU_CODE_           varchar(12) not null comment '菜单_CODE_',
   DEPT_CODE_           varchar(12) not null comment '部门_CODE_',
   STATUS_              varchar(12) not null comment '状态_（0-可用，1-停用）',
   CREATED_BY_          varchar(12) comment '创建者_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '创建时间_',
   UPDATE_BY_           varchar(12) comment '修改人',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '修改时间_',
   primary key (CODE_)
);

/*==============================================================*/
/* Table: sys_staff                                             */
/*==============================================================*/
create table sys_staff
(
   CODE_                varchar(12) not null comment '员工_CODE_',
   NAME_                varchar(32) not null comment '员工_NAME_',
   DEPT_CODE_           varchar(12) not null comment '部门_CODE_',
   ROLE_CODE_           varchar(12) not null comment '角色_CODE_',
   LOGIN_NAME_          varchar(32) not null comment '用户名_',
   PASSWORD_            varchar(64) not null comment '密码_',
   EMAIL_               varchar(32) not null comment '邮箱地址_',
   PHONE_               varchar(12) not null comment '电话号码_',
   GENDER_              varchar(2) not null comment '性别_',
   STATUS_              varchar(2) comment '状态_（0-可用，1-停用）',
   CREATED_BY_          varchar(12) comment '创建人_',
   CREATED_TIME_        timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '创建时间_',
   UPDATE_BY_           varchar(12) comment '修改时间_',
   UPDATE_TIME_         timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '修改时间_',
   primary key (CODE_)
);

