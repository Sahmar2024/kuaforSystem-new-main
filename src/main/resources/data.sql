
insert into barbers(email, name, phone_number) VALUES ('mahmut@gmail.com', 'Mahmut', '+90-578-568-4885'),
                                                      ('mirac@gmail.com', 'Mirac', '+90-578-568-4885'),
                                                      ('ferdi@gmail.com', 'Ferdi', '+90-578-568-4885'),
                                                      ('ergun@gmail.com', 'Ergun', '+90-578-568-4885'),
                                                      ('shahmar@mail.ru', 'Shahmar', '+90-578-568-4885');

insert into services(duration,name,price) values (30, 'Erkek Saç Kesimi', 50),
                                                 (15, 'Sakal Düzeltme', 20),
                                                 (50, 'Erkeklerin Renklendirilmesi', 30),
                                                 (10, 'Fön / Fırçalama', 20);


INSERT INTO service_provider
(service_id, barber_id)
VALUES
(1, 1),
(1, 2),
(1, 5),
(1, 4),
(2, 1),
(2, 5),
(2, 3),
(3, 1),
(3, 2),
(4, 3),
(4, 5);