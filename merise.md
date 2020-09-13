ETAPE 1:

METHODE MERISE
analyse des entités:

-USER:First-name,lastname,email,password,avatar_url,role,created_at,updated_at
-ARTICLES:title,content,excerpt,image_url,state,created_at,updated_at
-CATEGORIES:name,image_url,created_at,updated_at
-APPLICATION:content,state,created_at,updated_at




analyse des relations :

user>articles :
verbe : writes
un user ecrit un min de 0 articles et un max de N articles : (0:N)
un article peuvent etre ecrit par un min de 1 user et un max de 1 user : 1:1
relation type (1:N);

Articles>categories :

verbe : has
un article peut avoir un min  1 category et un max de 1 : (1:1)
une category peut etre eue par un au min 0 category et au max N :(1:N)
relation type (1:N);

USER>Application

verbe : applies
application peut avoir par au min 1 user et au max 1 user
user peut apply 0 application et au max 1 
relation type(1:1);

USER :firstname,lastnameemail,password,avatar_url,role,created_at,updated-at
writes, 11 ARTICLE, ON USER
ARTICLE:title,content,excerpt,image_url,state,created_at,updated_at
has, 11 ARTICLE, 0N CATEGORY
CATEGORY:name,image_url,created_at,updated_at
applies, 11 APPLICATION, 01 USER
APPLICATION:content,state,created_at,updated_at