create database egg_article;

use egg_article;

create table article(
    id int(10) not null auto_increment,
    img text default null comment '缩略图',
    title varchar(80) default null comment '文章标题',
    summary varchar(300) default null comment '文章简介',
    content text default null comment '文章内容',
    createTime timestamp default null comment '发布时间',
    primary key(id) 
)engine = InnoDB AUTO_INCREMENT = 1 comment '文章表';

insert into article(title, img, summary, content, createTime)
value('Flutter 入门实践', 'https://user-images.githubusercontent.com/27181965/112964153-a5491580-917a-11eb-949a-b4c579704d75.png','极速构建漂亮的原生应用', 'Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。', '2021-3-23');
