use library;
#creats tables

CREATE TABLE category (
    category_id INT PRIMARY KEY ,
    category_name VARCHAR(255) NOT NULL
);


CREATE TABLE book (
    book_id INT PRIMARY KEY ,
    title VARCHAR(255) NOT NULL,
    category_id INT not null, #1
    rate FLOAT CHECK (rate >= 0 AND rate <= 5),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);


CREATE TABLE author (
    author_id INT PRIMARY KEY ,
    author_name VARCHAR(255) NOT NULL, ##
    address VARCHAR(255)
);


CREATE TABLE author_book (
    author_id INT  not null, #2
    book_id INT  NOT NULL,
    PRIMARY KEY (author_id, book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);


CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY ,
    publisher_name VARCHAR(255) NOT NULL #3
);


CREATE TABLE copy_book (
    copy_id INT PRIMARY KEY , 
    book_id INT not null, #4
    publisher_id INT NOT NULL,
    publication_year YEAR,
    status VARCHAR(50),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
);
CREATE TABLE borrower (
    borrower_id INT PRIMARY KEY ,
    borrower_name VARCHAR(255) NOT NULL,
    borrower_address VARCHAR(255) #5
);

CREATE TABLE book_loans (
    borrower_id INT ,
    copy_id INT ,
    borrow_date DATE,
    due_date DATE,
    PRIMARY KEY (borrower_id, copy_id,borrow_date), #6
    FOREIGN KEY (borrower_id) REFERENCES borrower(borrower_id),
    FOREIGN KEY (copy_id) REFERENCES copy_book(copy_id)
);


CREATE TABLE borrower_phone (
    borrower_id INT NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    PRIMARY KEY (borrower_id, phone_number),
    FOREIGN KEY (borrower_id) REFERENCES borrower(borrower_id)
);