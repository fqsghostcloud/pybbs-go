

-- CREATE DATABASE minibbs DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

INSERT INTO `permission` (`id`, `pid`, `name`, `description`, `url`)
VALUES
	(1,0,'','话题节点',''),
	(2,1,'topic:add','创建话题','/topic/create'),
	(3,1,'topic:edit','编辑话题','/topic/edit/[0-9]+'),
	(4,1,'topic:delete','删除话题','/topic/delete/[0-9]+'),
	(5,0,'','回复节点',''),
	(6,5,'reply:delete','删除回复','/reply/delete/[0-9]+'),
	(7,5,'reply:save','创建回复','/reply/save'),
	(8,5,'reply:up','点赞回复','/reply/up'),
	(12,0,'','权限节点',''),
	(13,12,'user:list','用户列表','/user/list'),
	(14,12,'user:edit','角色配置','/user/edit/[0-9]+'),
	(15,12,'user:delete','用户删除','/user/delete/[0-9]+'),
	(16,12,'role:list','角色列表','/role/list'),
	(17,12,'role:add','添加角色','/role/add'),
	(18,12,'role:delete','删除角色','/role/delete/[0-9]+'),
	(20,12,'role:edit','编辑角色','/role/edit/[0-9]+'),
	(21,12,'permission:list','权限列表','/permission/list'),
	(22,12,'permission:add','添加权限','/permission/add'),
	(23,12,'permission:edit','编辑权限','/permission/edit/[0-9]+'),
	(24,12,'permission:delete','删除权限','/permission/delete/[0-9]+'),
	(25,12,'topic:manage','帖子管理','/topic/manage'),
	(26,12,'topic:edit','公告编辑','/about/edit'),
	(27,1,'topic:chat','聊天室','/topic/join/ws'),
	(28,1,'tag:manage','标签管理','/tag/manage');








INSERT INTO `reply` (`id`, `topic_id`, `content`, `user_id`, `up`, `in_time`)
VALUES
	(1,1,'分享世界',1,0,'2016-08-26 09:22:52');






INSERT INTO `role` (`id`, `name`)
VALUES
    (3,'管理员'), 
	(5,'普通用户');





INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`)
VALUES
	(47,4,3),
	(48,4,4),
	(49,4,6),
	(50,5,2),
	(51,5,7),
	(52,5,8),
	(64,3,2),
	(65,3,3),
	(66,3,4),
	(67,3,6),
	(68,3,7),
	(69,3,8),
	(70,3,13),
	(71,3,14),
	(72,3,15),
	(73,3,16),
	(74,3,17),
	(75,3,18),
	(76,3,20),
	(77,3,21),
	(78,3,22),
	(79,3,23),
	(80,3,24);




INSERT INTO `tag` (`id`, `name`)
VALUES
	(1,'docker'),
	(3,'golang'),
	(2,'kubernetes');






INSERT INTO `user` (`id`, `username`, `password`, `token`, `image`, `email`, `signature`, `in_time`, `last_time`, `active`)
VALUES
	(1,'root','$2a$10$9LjYG/iOJaifWlJeAUwXOuFjDjhHrTRHdpdXk6zKYbNDMJ25Hexwq','fcd1cb8e-b71f-46c3-9974-7225997b40c7','/static/imgs/default.png','11278996513@qq.com','个人介绍','2016-08-26 09:22:16','1970-01-01 00:00:00', '1');








INSERT INTO `user_roles` (`id`, `user_id`, `role_id`)
VALUES
	(5,1,3);



