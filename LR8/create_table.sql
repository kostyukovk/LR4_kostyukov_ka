CREATE TABLE Абитуриент (
    Абитуриент_ID SERIAL PRIMARY KEY,
    Имя VARCHAR(50),
    Фамилия VARCHAR(50),
    Дата_рождения DATE,
    Адрес VARCHAR(100)
);
CREATE TABLE Экзаменатор (
    Экзаменатор_ID SERIAL PRIMARY KEY,
    Имя VARCHAR(50),
    Фамилия VARCHAR(50),
    Специализация VARCHAR(50),
    Уровень_оплаты DECIMAL(10, 2)
);
CREATE TABLE Экзамен (
    Экзамен_ID SERIAL PRIMARY KEY,
    Название VARCHAR(100),
    Дата_проведения DATE,
    Аудитория VARCHAR(50)
);
CREATE TABLE Результат_экзамена (
    Результат_ID SERIAL PRIMARY KEY,
    Оценка INTEGER,
    Дата_сдачи DATE,
    Абитуриент_ID INTEGER REFERENCES Абитуриент(Абитуриент_ID),
    Экзамен_ID INTEGER REFERENCES Экзамен(Экзамен_ID),
    Экзаменатор_ID INTEGER REFERENCES Экзаменатор(Экзаменатор_ID)
);
CREATE TABLE Оплата_экзаменатора (
    Оплата_ID SERIAL PRIMARY KEY,
    Сумма_оплаты DECIMAL(10, 2),
    Дата_оплаты DATE,
    Экзаменатор_ID INTEGER REFERENCES Экзаменатор(Экзаменатор_ID)
);
