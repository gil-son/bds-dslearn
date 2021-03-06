INSERT INTO tb_user (name, email, password) VALUES ('Aaa','aaa@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bbb','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ccc','ccc@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO tb_course (name, img_uri, img_Gray_Uri) VALUES ('Bootcamp HTML','https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg','https://cdn.iconscout.com/icon/free/png-256/certificate-3155213-2630879.png');
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES('Learning HTML', 'Main route of the course', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES('Forum', 'Take your doubts', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES('Lives', 'Exclusive lives for the class', 3, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Chapter 1', 'In this chapter we will start', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1, null); -- first chapter don't require prerequisite
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Chapter 2', 'In this chapter we will continued', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1, 1); -- second chapter require the chapter first how prerequisite
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES('Chapter 3', 'In this chapter we will conclude', 3, 'https://cdn.pixabay.com/photo/2020/05/31/09/30/online-course-5241968_1280.jpg', 1, 2); -- third chapter require the chapter second how prerequisite

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T013:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T013:00:00Z', null, true, false);





INSERT INTO tb_lesson(title, position, section_id) VALUES('Lesson 1 from Chapter 1', 1, 1);
-- content of the lesson
INSERT INTO tb_content(id,text_content, video_Uri) VALUES( 1 , 'Support material', 'https://www.youtube.com/watch?v=Ejkb_YpuHWs&list=PLHz_AreHm4dkZ9-atkcmcBaMZdmLHft8n');

INSERT INTO tb_lesson(title, position, section_id) VALUES('Lesson 2 from Chapter 1', 1, 1);
-- content of the lesson
INSERT INTO tb_content(id,text_content, video_Uri) VALUES( 2, 'Support material', 'https://www.youtube.com/watch?v=Ejkb_YpuHWs&list=PLHz_AreHm4dkZ9-atkcmcBaMZdmLHft8n');


INSERT INTO tb_lesson(title, position, section_id) VALUES('Lesson 3 from Chapter 1', 2, 1);
-- content of the lesson
INSERT INTO tb_content(id,text_content, video_Uri) VALUES( 3, 'Support material', 'https://www.youtube.com/watch?v=Ejkb_YpuHWs&list=PLHz_AreHm4dkZ9-atkcmcBaMZdmLHft8n');


INSERT INTO tb_lesson(title, position, section_id) VALUES('Task 1 from Chapter 1', 4, 1);
-- task of the lesson
INSERT INTO tb_task(id,description, question_Count, approval_Count, weight, due_Date) VALUES( 4, 'do the work 1', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T013:00:00Z');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(2, 1, 1);


INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('First task feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Second task feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Third task feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);


INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);


INSERT INTO tb_topic(title, body, moment, author_id, offer_id, lesson_id) VALUES('Topic title 1', 'Topic body 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic(title, body, moment, author_id, offer_id, lesson_id) VALUES('Topic title 2', 'Topic body 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic(title, body, moment, author_id, offer_id, lesson_id) VALUES('Topic title 3', 'Topic body 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic(title, body, moment, author_id, offer_id, lesson_id) VALUES('Topic title 4', 'Topic body 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic(title, body, moment, author_id, offer_id, lesson_id) VALUES('Topic title 5', 'Topic body 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic(title, body, moment, author_id, offer_id, lesson_id) VALUES('Topic title 6', 'Topic body 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);


INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Try restarting the computer', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('It worked, thanks!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1); -- User cannot 'like' himself, so the like is user 1 and not user 2 that created the question


















