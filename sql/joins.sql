use library;

-- inner join

SELECT borrower_name, phone_number
FROM borrower 
INNER JOIN borrower_phone
ON borrower_phone.borrower_id = borrower.borrower_id;


-- who borrowed the book:
SELECT copy_id, borrower_name, borrow_date, due_date
FROM borrower 
INNER JOIN book_loans
ON borrower.borrower_id = book_loans.borrower_id;


-- left join

SELECT book_id, title, rate, category_name
FROM book
LEFT JOIN category 
ON book.category_id = category.category_id;

SELECT publisher_name, copy_id, book.book_id, title 
FROM publisher
LEFT JOIN copy_book 
ON publisher. publisher_id = copy_book.publisher_id
INNER JOIN book
ON copy_book.book_id = book.book_id;

-- right join 

SELECT author.author_id, author_name, address, book_id
FROM author
RIGHT JOIN author_book
ON author.author_id = author_book.author_id;

SELECT copy_id, publication_year, status, category_name, title
FROM copy_book
RIGHT JOIN book
ON copy_book.book_id = book.book_id
INNER JOIN category
ON book.category_id = category.category_id;

-- cross join
-- generate all combinations

SELECT author.author_name, publisher.publisher_name 
FROM author
CROSS JOIN publisher
ORDER BY author.author_name;

SELECT title, category_name 
FROM book 
CROSS JOIN category
ORDER BY title;

-- functions

SELECT COUNT(borrower_id) AS number_of_borrowers 
FROM borrower;

SELECT COUNT(book_id) AS number_of_books, rate
FROM book GROUP BY rate;

SELECT borrower.borrower_id, borrower_name, borrower_address, COUNT(copy_id)
FROM borrower
LEFT JOIN book_loans
ON borrower.borrower_id = book_loans.borrower_id
GROUP BY borrower.borrower_id, borrower_name, borrower_address;









