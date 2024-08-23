CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    password_hash TEXT NOT NULL,
    user_name TEXT NOT NULL,
    user_email TEXT UNIQUE NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE course (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    userId TEXT NOT NULL FOREIGN KEY,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    like INT NOT NULL,
    distance FLOAT NOT NULL,
    viewcount INT NOT NULL,
    lat FLOAT[] NOT NULL,
    lng FLOAT[] NOT NULL,
    location TEXT NOT NULL,
    marathon BOOLEAN,
);

CREATE TABLE like (
    id SERIAL PRIMARY KEY,
    course TEXT NOT NULL FOREIGN KEY,
    userId TEXT NOT NULL FOREIGN KEY,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);