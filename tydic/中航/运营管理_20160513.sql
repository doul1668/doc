/*userdb*/
/*将现有的“门户账号管理”菜单名称更改为“采购企业账号管理”*/
update t_system_menu a set a.MENU_NAME='采购企业账号管理' where a.MENU_ID=111005;
/*将现有的“解锁用户”菜单名称更改为“锁定用户列表”*/
update t_system_menu a set a.MENU_NAME='锁定用户列表' where a.MENU_ID=111009;
/*将现有的“在线时长统计”菜单名称更改为“在线时长列表”*/
update t_system_menu a set a.MENU_NAME='在线时长列表' where a.MENU_ID=111010;
/*新增一级菜单“内容管理”*/
INSERT INTO t_system_menu(MENU_ID,PARENT_ID,MENU_CODE,MENU_NAME,URL_OR_METHOD,MENU_ICON_URL,MENU_VIEW_TYPE,MENU_IMPL_TYPE,FUNCTION_TYPE,MENU_VIEW_ORDER,OPER_STAFF,OPER_TIME,STATUS) VALUES('100002', '0', 'x02', '内容管理', '/rest/article/arcticleManager', '', '1', '', '2', '', '100001', '2016/3/20 15:17', '1');
/*将“文章管理”移到“内容管理”一级菜单下，并更名为“帮助中心”*/
update t_system_menu set PARENT_ID='100002',MENU_CODE='x02_1',MENU_NAME='帮助中心' where menu_id=110007;
/*更新menu_id=110007相关的资源权限表*/
/*将“文章列表”移到“帮助中心”二级菜单下*/
update t_system_menu set PARENT_ID='110007',MENU_CODE='x02_1_1',MENU_NAME='帮助中心' where menu_id=111011;
/*更新menu_id=111011相关的资源权限表*/
/*新增一级菜单“供应商会员管理”*/
INSERT INTO t_system_menu(MENU_ID,PARENT_ID,MENU_CODE,MENU_NAME,URL_OR_METHOD,MENU_ICON_URL,MENU_VIEW_TYPE,MENU_IMPL_TYPE,FUNCTION_TYPE,MENU_VIEW_ORDER,OPER_STAFF,OPER_TIME,STATUS) VALUES('100003', '0', 'x03', '供应商会员管理', '/rest/supplier/querySupplierOnlineCount', '', '1', '', '2', '', '100001', '2016/3/20 15:17', '1');
/*新增menu_id=100003相关的资源权限表*/
/*新增二级菜单“企业合格供应商目录”*/
INSERT INTO t_system_menu(MENU_ID,PARENT_ID,MENU_CODE,MENU_NAME,URL_OR_METHOD,MENU_ICON_URL,MENU_VIEW_TYPE,MENU_IMPL_TYPE,FUNCTION_TYPE,MENU_VIEW_ORDER,OPER_STAFF,OPER_TIME,STATUS) VALUES('110009', '100003', 'x03_1', '企业合格供应商目录', '/rest/supplier/querySupplierOnlineCount', '', '2', '', '2', '', '100001', '2016/3/20 15:17', '1');
/*新增menu_id=110009相关的资源权限表*/
/*新增三级菜单“合格供应商上线统计”*/
INSERT INTO t_system_menu(MENU_ID,PARENT_ID,MENU_CODE,MENU_NAME,URL_OR_METHOD,MENU_ICON_URL,MENU_VIEW_TYPE,MENU_IMPL_TYPE,FUNCTION_TYPE,MENU_VIEW_ORDER,OPER_STAFF,OPER_TIME,STATUS) VALUES('111013', '110009', 'x03_13_1', '合格供应商上线统计', '/rest/supplier/querySupplierOnlineCount', '', '3', '', '2', '', '100001', '2016/3/20 15:17', '1');
/*新增menu_id=111013相关的资源权限表*/