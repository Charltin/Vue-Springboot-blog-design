
-- ������־
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log`(  
  `log_id` INT NOT NULL AUTO_INCREMENT COMMENT '����id',
  `operator_id` INT COMMENT '������(�û�)id',
  `operate_ip` VARCHAR(60) COMMENT '��������Ip',
  `operate_type` VARCHAR(10) COMMENT '��������',
  `operate_desc` VARCHAR(50) COMMENT '��������',
  `request_params` TEXT COMMENT '�������',
  `request_url` VARCHAR(100) COMMENT '�����ַ',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`log_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- ����
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`(  
  `article_id` INT NOT NULL AUTO_INCREMENT COMMENT '����id',
  `module` VARCHAR(50) COMMENT 'ģ��',
  `type` VARCHAR(50) COMMENT '��������',
  `classify` VARCHAR(50) COMMENT '���ࣨ���壩',
  `title` VARCHAR(100) COMMENT '����',
  `author` VARCHAR(60) COMMENT '����',
  `user_id` INT COMMENT '���ߣ��û���id',
  `rux_words` VARCHAR(100) COMMENT '�ؼ���',
  `summary` VARCHAR(200) COMMENT '���',
  `content` TEXT COMMENT '����(html��ʽ)',
  `word_content` TEXT COMMENT '�ĵ�����(�༭���е�ԭ��ʽ)',
  `word_type` CHAR(1) COMMENT '�ĵ��༭������',
  `art_state` CHAR(2) COMMENT '���µ�״̬',
  `art_img_path` VARCHAR(100) COMMENT 'ͼƬ·��',
  `likes` INT COMMENT 'ϲ������',
  `views` INT COMMENT '�������',
  `commons` INT COMMENT '��������',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`article_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- �����û�
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user`(  
  `user_id` INT NOT NULL AUTO_INCREMENT COMMENT '�û�id',
  `user_code` VARCHAR(20) COMMENT '�û��˺�',
  `password` VARCHAR(300) COMMENT '�û�����',
  `user_nick_name` VARCHAR(60) COMMENT '�û��ǳ�',
  `gender` VARCHAR(10) COMMENT '�Ա�',
  `user_img_path` VARCHAR(100) COMMENT 'ͷ��ͼƬ·��',
  `summary` VARCHAR(200) COMMENT '�û����',
  `age` INT COMMENT '����',
  `phone_number` VARCHAR(100) COMMENT '�绰',
  `moblie` VARCHAR(100) COMMENT '�ֻ���',
  `email` VARCHAR(100) COMMENT '����',
  `address` VARCHAR(200) COMMENT '��ַ',
  `graduate_school` VARCHAR(100) COMMENT '��ҵԺУ',
  `education` VARCHAR(50) COMMENT 'ѧ��',
  `birtd` DATETIME COMMENT '��������',
  `user_real_name` VARCHAR(60) COMMENT '��ʵ����',
  `user_type` CHAR(1) COMMENT '�û�����',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`user_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- ���·���
DROP TABLE IF EXISTS `article_kind`;
CREATE TABLE `article_kind`(  
  `art_kinds_id` INT NOT NULL AUTO_INCREMENT COMMENT '����id',
  `module` VARCHAR(50) COMMENT 'ģ��',
  `type` VARCHAR(50) COMMENT '��������',
  `classify` VARCHAR(50) COMMENT '���ࣨ���壩',
  `sum` INT COMMENT '��������',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`art_kinds_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- ����
DROP TABLE IF EXISTS `leaving_msg`;
CREATE TABLE `leaving_msg`(  
  `msg_id` INT NOT NULL AUTO_INCREMENT COMMENT '����id',
  `type` VARCHAR(20) COMMENT '��������',
  `user_id` INT COMMENT '�����û�id',
  `article_id` INT COMMENT '��������id',
  `content` TEXT COMMENT '��������',
  `upper_id` INT COMMENT '���Ը���id',
  `msg_order` INT COMMENT '����˳����Ϊ�Ӽ���',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`msg_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- �ⲿ����
DROP TABLE IF EXISTS `outer_link`;
CREATE TABLE `outer_link`(  
  `link_id` INT NOT NULL AUTO_INCREMENT COMMENT '����id',
  `type` VARCHAR(50) COMMENT '��������',
  `depict` VARCHAR(100) COMMENT '����',
  `link` VARCHAR(100) COMMENT '����',
  `sequence` INT COMMENT '˳��',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`link_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- ��ϵ��
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`(  
  `contact_id` INT NOT NULL AUTO_INCREMENT COMMENT '����id',
  `type` VARCHAR(50) COMMENT '����',
  `name` VARCHAR(50) COMMENT '����',
  `depict` VARCHAR(200) COMMENT '����',
  `words` VARCHAR(20) COMMENT '����',
  `user_id` INT COMMENT '��Ա(�û�)id',
  `img_path` VARCHAR(100) COMMENT '������ͼƬ',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`contact_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- �ļ��ϴ�
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file`(  
  `path_id` INT NOT NULL AUTO_INCREMENT COMMENT '����id',
  `type` VARCHAR(50) COMMENT '��������',
  `classify` VARCHAR(50) COMMENT '���ࣨ���壩',
  `file_name` VARCHAR(60) COMMENT 'ͼƬ��',
  `suffix` VARCHAR(10) COMMENT 'ͼƬ��׺',
  `img_path` VARCHAR(100) COMMENT 'ͼƬ·��',
  `sequence` INT COMMENT '˳��',
  `user_id` INT COMMENT '�����ˣ��û���id',
  `status` CHAR(1) COMMENT '����״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`path_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


-- ����
DROP TABLE IF EXISTS `const`;
CREATE TABLE `const`(  
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '����',
  `depict` VARCHAR(50) COMMENT '����',
  `code` VARCHAR(10) COMMENT '��������',
  `val` VARCHAR(50) COMMENT '����ֵ',
  `upper_code` VARCHAR(10) COMMENT '��һ����������',
  `status` CHAR(1) COMMENT '״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8;


-- ����
DROP TABLE IF EXISTS `todo`;
CREATE TABLE `todo`(  
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '����',
  `type` CHAR(1) COMMENT '����',
  `title` VARCHAR(20) COMMENT '����',
  `depict` VARCHAR(200) COMMENT '����',
  `status` CHAR(1) COMMENT '״̬',
  `insert_time` DATETIME COMMENT '����ʱ��',
  `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8;