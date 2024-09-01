CREATE TABLE tb_user (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL CHECK (LENGTH(name) >= 6),
    email VARCHAR(255) UNIQUE NOT NULL CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    password VARCHAR(128) NOT NULL CHECK (LENGTH(password) >= 8),
    birthday DATE CHECK (birthday < CURRENT_DATE),
    position VARCHAR(255) NOT NULL
);

INSERT INTO tb_user (id, name, email, password, birthday, position) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '1985-07-19', 'Manager'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password123', '1990-02-10', 'Developer'),
(3, 'Alice Johnson', 'alice.johnson@example.com', 'password123', '1988-03-15', 'Designer'),
(4, 'Bob Brown', 'bob.brown@example.com', 'password123', '1982-05-25', 'Analyst'),
(5, 'Carol White', 'carol.white@example.com', 'password123', '1975-11-30', 'Consultant'),
(6, 'David Green', 'david.green@example.com', 'password123', '1992-08-05', 'Developer'),
(7, 'Eve Black', 'eve.black@example.com', 'password123', '1989-12-12', 'Manager'),
(8, 'Frank Harris', 'frank.harris@example.com', 'password123', '1984-06-22', 'Engineer'),
(9, 'Grace Lewis', 'grace.lewis@example.com', 'password123', '1991-04-10', 'Designer'),
(10, 'Hank Clark', 'hank.clark@example.com', 'password123', '1987-09-18', 'Analyst'),
(11, 'Ivy Hall', 'ivy.hall@example.com', 'password123', '1993-01-02', 'Consultant'),
(12, 'Jack King', 'jack.king@example.com', 'password123', '1986-07-23', 'Developer'),
(13, 'Karen Scott', 'karen.scott@example.com', 'password123', '1983-10-14', 'Manager'),
(14, 'Larry Wright', 'larry.wright@example.com', 'password123', '1994-03-19', 'Engineer'),
(15, 'Mona Adams', 'mona.adams@example.com', 'password123', '1981-05-08', 'Designer'),
(16, 'Nina Turner', 'nina.turner@example.com', 'password123', '1990-11-15', 'Analyst'),
(17, 'Oscar Nelson', 'oscar.nelson@example.com', 'password123', '1989-12-01', 'Consultant'),
(18, 'Paula Collins', 'paula.collins@example.com', 'password123', '1995-06-29', 'Developer'),
(19, 'Quincy Moore', 'quincy.moore@example.com', 'password123', '1982-08-20', 'Manager'),
(20, 'Rita Evans', 'rita.evans@example.com', 'password123', '1984-07-14', 'Engineer'),
(21, 'Sam Carter', 'sam.carter@example.com', 'password123', '1996-02-25', 'Designer'),
(22, 'Tina Morris', 'tina.morris@example.com', 'password123', '1983-12-16', 'Analyst'),
(23, 'Ulysses Ward', 'ulysses.ward@example.com', 'password123', '1990-11-04', 'Consultant'),
(24, 'Vera Foster', 'vera.foster@example.com', 'password123', '1987-09-22', 'Manager'),
(25, 'Will Grant', 'will.grant@example.com', 'password123', '1988-03-05', 'Engineer'),
(26, 'Xena Phillips', 'xena.phillips@example.com', 'password123', '1991-07-29', 'Developer'),
(27, 'Yves Ramirez', 'yves.ramirez@example.com', 'password123', '1984-10-11', 'Designer'),
(28, 'Zara Brooks', 'zara.brooks@example.com', 'password123', '1993-05-14', 'Analyst'),
(29, 'Alan Reed', 'alan.reed@example.com', 'password123', '1986-12-22', 'Consultant'),
(30, 'Bella Howard', 'bella.howard@example.com', 'password123', '1992-09-03', 'Manager'),
(31, 'Charlie Stone', 'charlie.stone@example.com', 'password123', '1985-06-30', 'Engineer'),
(32, 'Diana Hughes', 'diana.hughes@example.com', 'password123', '1994-03-18', 'Developer'),
(33, 'Eric Watson', 'eric.watson@example.com', 'password123', '1980-08-15', 'Designer'),
(34, 'Fiona Bell', 'fiona.bell@example.com', 'password123', '1989-12-01', 'Analyst'),
(35, 'George Knight', 'george.knight@example.com', 'password123', '1991-10-09', 'Consultant'),
(36, 'Helen Young', 'helen.young@example.com', 'password123', '1987-04-17', 'Manager'),
(37, 'Ian Mitchell', 'ian.mitchell@example.com', 'password123', '1995-02-28', 'Engineer'),
(38, 'Judy Cooper', 'judy.cooper@example.com', 'password123', '1982-06-20', 'Developer'),
(39, 'Ken Ward', 'ken.ward@example.com', 'password123', '1990-01-04', 'Designer'),
(40, 'Lori Price', 'lori.price@example.com', 'password123', '1984-09-14', 'Analyst');
