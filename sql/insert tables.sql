  use library;
 SELECT * FROM library.category;
INSERT INTO category (category_id, category_name) VALUES
    (1, 'Fiction'),
    (2, 'Science Fiction'),
    (3, 'Fantasy'),
    (4, 'Mystery'),
    (5, 'Romance'),
    (6, 'Thriller'),
    (7, 'Horror'),
    (8, 'Non-fiction'),
    (9, 'Biography'),
    (10, 'Self-help'),
    (11, 'Cooking'),
    (12, 'History'),
    (13, 'Poetry'),
    (14, 'Art'),
    (15, 'Travel'),
    (16, 'Science'),
    (17, 'Business'),
    (18, 'Philosophy'),
    (19, 'Fiction'), -- Duplicate entry  Fiction 
    (20, 'Children'),
    (21, 'Fiction'), -- Duplicate entry  Fiction 
    (22, 'Fantasy'), -- Duplicate entry  Fantasy 
    (23, 'Romance'), -- Duplicate entry  Romance 
    (24, 'Horror'), -- Duplicate entry Horror 
    (25, 'Biography'); -- Duplicate entry  Biography


    #insert
    use library;
    SELECT * FROM library.book;
-- Inserting values into the Book table with real book titles related to categories
INSERT INTO book (book_id, title, category_id) VALUES 
    (1, 'The Great Gatsby', 1), -- Fiction
    (2, 'Dune', 2), -- Science Fiction
    (3, 'The Hobbit', 3), -- Fantasy
    (4, 'The Girl with the Dragon Tattoo', 4), -- Mystery
    (5, 'Pride and Prejudice', 5), -- Romance
    (6, 'The Da Vinci Code', 6), -- Thriller
    (7, 'The Shining', 7), -- Horror
    (8, 'Sapiens: A Brief History of Humankind', 8), -- Non-fiction
    (9, 'Steve Jobs', 9), -- Biography
    (10, 'Atomic Habits', 10), -- Self-help
    (11, 'The Joy of Cooking', 11), -- Cooking
    (12, 'Guns, Germs, and Steel', 12), -- History
    (13, 'Milk and Honey', 13), -- Poetry
    (14, 'The Picture of Dorian Gray', 14), -- Art
    (15, 'Eat, Pray, Love', 15), -- Travel
    (16, 'A Brief History of Time', 16), -- Science
    (17, 'The Lean Startup', 17), -- Business
    (18, "Sophie's World", 18), -- Philosophy
    (19, 'Animal Farm', 1),  -- Duplicate entry for Fiction  # may cause trouble
    (20, "Charlotte's Web", 20), -- Children
    (21, 'The Great Gatsby', 1), -- Duplicate entry for Fiction
    (22, 'The Hobbit', 3), -- Duplicate entry for Fantasy
    (23, 'Pride and Prejudice', 5), -- Duplicate entry for Romance
    (24, 'The Shining', 7), -- Duplicate entry for Horror
    (25, 'Steve Jobs', 9); -- Duplicate entry for Biography

#insert author
 use library;
SELECT * FROM library.author;
INSERT INTO author (author_id, author_name, address) VALUES
    (1, 'F. Scott Fitzgerald', 'United States'), -- The Great Gatsby
    (2, 'Frank Herbert', 'United States'), -- Dune
    (3, 'J.R.R. Tolkien', 'United Kingdom'), -- The Hobbit
    (4, 'Stieg Larsson', 'Sweden'), -- The Girl with the Dragon Tattoo
    (5, 'Jane Austen', 'United Kingdom'), -- Pride and Prejudice
    (6, 'Dan Brown', 'United States'), -- The Da Vinci Code
    (7, 'Stephen King', 'United States'), -- The Shining
    (8, 'Yuval Noah Harari', 'Israel'), -- Sapiens: A Brief History of Humankind
    (9, 'Walter Isaacson', 'United States'), -- Steve Jobs
    (10, 'James Clear', 'United States'), -- Atomic Habits
    (11, 'Irma S. Rombauer', 'United States'), -- The Joy of Cooking
    (12, 'Jared Diamond', 'United States'), -- Guns, Germs, and Steel
    (13, 'Rupi Kaur', 'Canada'), -- Milk and Honey
    (14, 'Oscar Wilde', 'United Kingdom'), -- The Picture of Dorian Gray
    (15, 'Elizabeth Gilbert', 'United States'), -- Eat, Pray, Love
    (16, 'Stephen Hawking', 'United Kingdom'), -- A Brief History of Time
    (17, 'Eric Ries', 'United States'), -- The Lean Startup
    (18, 'Jostein Gaarder', 'Norway'), -- Sophie's World
	(19, 'George Orwell', 'United Kingdom'), -- Animal Farm
    (20, 'E.B. White', 'United States'), -- Charlotte's Web
    (21, 'F. Scott Fitzgerald', 'United States'), -- The Great Gatsby (duplicate entry)
    (22, 'J.R.R. Tolkien', 'United Kingdom'), -- The Hobbit (duplicate entry)
    (23, 'Jane Austen', 'United Kingdom'), -- Pride and Prejudice (duplicate entry)
    (24, 'Stephen King', 'United States'), -- The Shining (duplicate entry)
    (25, 'Walter Isaacson', 'United States'); -- Steve Jobs (duplicate entry)
    #insert author_book
    use library;
SELECT * FROM library.author_book;
INSERT INTO author_book (author_id, book_id) VALUES
    (1, 1), 
    (2, 2), 
    (3, 3),
    (4, 4),
    (5, 5), 
    (6, 6), 
    (7, 7), 
    (8, 8), 
    (9, 9), 
    (10, 10), 
    (11, 11), 
    (12, 12), 
    (13, 13), 
    (14, 14),
    (15, 15), 
    (16, 16),
    (17, 17), 
    (18, 18),
    (19, 19), 
    (20, 20), 
    (21, 21), 
    (22, 22),
    (23, 23), 
    (24, 24),
    (25, 25); 
# insert publisher
 use library;
SELECT * FROM library.publisher;
INSERT INTO publisher (publisher_id, publisher_name) VALUES
    (1, 'Penguin Books'),
    (2, 'HarperCollins'),
    (3, 'Random House'),
    (4, 'Simon & Schuster'),
    (5, 'Macmillan Publishers'),
    (6, 'Hachette Livre'),
    (7, 'Bloomsbury Publishing'),
    (8, 'Scholastic Corporation'),
    (9, 'Pearson PLC'),
    (10, 'Oxford University Press'),
    (11, 'Cambridge University Press'),
    (12, 'Wiley'),
    (13, 'Springer Nature'),
    (14, 'Elsevier'),
    (15, 'Taylor & Francis'),
    (16, 'Harvard University Press'),
    (17, 'MIT Press'),
    (18, 'Yale University Press'),
    (19, 'University of Chicago Press'),
    (20, 'Columbia University Press'),
    (21, 'Princeton University Press'),
    (22, 'Stanford University Press'),
    (23, 'Cornell University Press'),
    (24, 'Berkeley Publishing Group'),
    (25, 'NYU Press');
    
    #insert copy_book
use library;
SELECT * FROM library.copy_book;
INSERT INTO copy_book (copy_id, book_id, publisher_id, publication_year, status)
VALUES
    (1, 1, 1, '2020', 'Available'),
    (2, 2, 2, '2005', 'Available'),
    (3, 3, 3, '1999', 'Available'),
    (4, 4, 4, '2008', 'Available'),
    (5, 5, 5, '1913', 'Available'),
    (6, 6, 6, '2003', 'Available'),
    (7, 7, 7, '1977', 'Available'),
    (8, 8, 8, '2014', 'Available'),
    (9, 9, 9, '2011', 'Available'),
    (10, 10, 10, '2018', 'Available'),
    (11, 11, 11, '2006', 'Available'),
    (12, 12, 12, '1997', 'Available'),
    (13, 13, 13, '2014', 'Available'),
    (14, 14, 14, '1990', 'Available'),
    (15, 15, 15, '2006', 'Available'),
    (16, 16, 16, '1988', 'Available'),
    (17, 17, 17, '2011', 'Available'),
    (18, 18, 18, '1991', 'Available'),
    (19, 19, 19, '1945', 'Available'),
    (20, 20, 20, '1952', 'Available'),
    (21, 21, 21, '2020', 'Available'),
    (22, 22, 22, '1937', 'Available'),
    (23, 23, 23, '1913', 'Available'),
    (24, 24, 24, '1977', 'Available'),
    (25, 25, 25, '2011', 'Available');
 
use library;
SELECT * FROM library.borrower;
INSERT INTO borrower (borrower_id, borrower_name, borrower_address) VALUES
    (1, 'John Doe', '123 Main Street'),
    (2, 'Jane Smith', '456 Elm Street'),
    (3, 'Alice Johnson', '789 Oak Avenue'),
    (4, 'Michael Brown', '567 Pine Street'),
    (5, 'Emily Davis', '890 Cedar Avenue'),
    (6, 'Robert Wilson', '432 Maple Road'),
    (7, 'Olivia Miller', '876 Birch Lane'),
    (8, 'William Garcia', '654 Ash Street'),
    (9, 'Ava Martinez', '234 Oakwood Drive'),
    (10, 'Daniel Thompson', '543 Elmwood Drive'),
    (11, 'Sophia Lee', '987 Pinecrest Avenue'),
    (12, 'Ethan Harris', '876 Maple Avenue'),
    (13, 'Isabella Clark', '345 Cedar Lane'),
    (14, 'Mason King', '890 Oakhurst Avenue'),
    (15, 'Amelia Turner', '456 Pinecrest Lane'),
    (16, 'Henry Rodriguez', '765 Birchwood Drive'),
    (17, 'Charlotte Carter', '234 Maplewood Drive'),
    (18, 'Liam Ward', '876 Elm Avenue'),
    (19, 'Harper Flores', '567 Ashwood Lane'),
    (20, 'Evelyn Cooper', '123 Oakwood Avenue'),
    (21, 'James Foster', '678 Cedar Lane'),
    (22, 'Alexander Diaz', '456 Pine Drive'),
    (23, 'Abigail Stewart', '987 Elmwood Avenue'),
    (24, 'Ella Simmons', '654 Birchwood Lane'),
    (25, 'Benjamin Rivera', '234 Maple Lane');
#insert book_loans 
-- Creating a stored procedure
DELIMITER //
CREATE PROCEDURE borrow_book(
    IN p_borrower_id INT,
    IN p_copy_id INT,
    IN p_borrow_date DATE,
    IN p_due_date DATE
)
BEGIN
    DECLARE copy_status VARCHAR(255);

    -- Get the status of the book copy
    SELECT status INTO copy_status
    FROM copy_book
    WHERE copy_id = p_copy_id;

    -- Check if the book is available
    IF copy_status = 'Available' THEN
        -- Book is available, proceed with the insertion
        INSERT INTO book_loans (borrower_id, copy_id, borrow_date, due_date)
        VALUES (p_borrower_id, p_copy_id, p_borrow_date, p_due_date);

        -- Optionally update the status of the book copy to mark it as borrowed
        -- UPDATE copy_book SET status = 'Borrowed' WHERE copy_id = p_copy_id;
    ELSE
        -- Book is not available, handle the error or take appropriate action
        SIGNAL SQLSTATE '45000' # some error code 
        SET MESSAGE_TEXT = 'Book is not available for borrowing';
    END IF;
END //
DELIMITER ;

select * from library.book_loans;

CALL borrow_book(1, 1, '2023-01-01', '2023-01-15'); #now when calling says the book whether avalible or not and stop the insert
CALL borrow_book(1, 4, '2023-01-01', '2023-01-15'); #error cause his statue not anvalible
INSERT INTO book_loans (borrower_id, copy_id, borrow_date, due_date)
VALUES
    
    (2, 12, '2023-02-03', '2023-02-15'),
    (3, 3, '2023-03-12', '2023-03-15'), 
    (4, 10, '2023-04-01', '2023-04-15'),
    (5, 7, '2023-05-11', '2023-05-15'), 
    (6, 5, '2023-06-01', '2023-06-15'),
    (7, 6, '2023-07-01', '2023-07-15'), 
    (8, 4, '2023-08-01', '2023-08-15'), 
    (9, 9, '2023-09-01', '2023-09-15'),
    (10, 8, '2023-10-01', '2023-10-15');
 

select * from library.borrower_phone; 
INSERT INTO borrower_phone (borrower_id, phone_number)
VALUES
    (1, '0123456789'), #multi_value
    (1, '0112345678'), #multi_value
    (2, '0101234567'),
    (3, '0154321098'), #multi_value
    (3, '0111111111'), #multi_value
    (4, '0122222222'),
    (5, '0105555555'),
    (7, '0123456780'),
    (9, '0112345671'),
    (10, '0109876543'),
    (11, '0123456781'),
    (12, '0112345672'),
    (13, '0101234562'),
    (14, '0154321092'),
    (15, '0111111112'),
    (16, '0122222223'),
    (17, '0105555553'),
    (18, '0123456784'),
    (19, '0112345675'),
    (19, '0109876546');
    

