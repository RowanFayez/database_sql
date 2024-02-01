use library;
 UPDATE library.book
    SET rate = 5
   WHERE book_id = 1 ;
   UPDATE library.book
    SET rate = 5
   where book_id=2;
    update library.book
    set rate=5
    where book_id=3;
    update library.book
    set rate=4.25
    where book_id=4;
    update library.book
    set rate=3
    where book_id=5;
    update library.book
    set rate=1.5
    where book_id=6;
    update library.book
    set rate=2.25
    where book_id=7;
    update library.book
    set rate=5
    where book_id=8;
    update library.book
    set rate=1.75
    where book_id=9;
    update library.book
    set rate=5
    where book_id=10;
    update library.book
    set rate=0.75
    where book_id=11;
    update library.book
    set rate=2
    where book_id=12;
    update library.book
    set rate=4.5
    where book_id=13;
    update library.book
    set rate=3.25
    where book_id=14;
    update library.book
    set rate=5
    where book_id=15;
    update library.book
    set rate=5
    where book_id=16;
    update library.book
    set rate=4.5
    where book_id=17;
    update library.book
    set rate=1.25
    where book_id=18;
    update library.book
    set rate=4
    where book_id=19;
    update library.book
    set rate=3.75
    where book_id=20;
    update library.book
    set rate=2
    where book_id=21;
    update library.book
    set rate=5
    where book_id=22;
    update library.book
    set rate=5
    where book_id=23;
    update library.book
    set rate=4
    where book_id=24;
    update library.book
    set rate=5
    where book_id=25;
    
 #upadte delete author_book
UPDATE library.author_book
SET book_id = 22
WHERE author_id = 23 AND book_id = 23;
UPDATE library.author_book
SET author_id = 21
WHERE author_id = 25 AND book_id = 25;
#return 
UPDATE library.author_book
SET book_id = 23
WHERE author_id = 23 AND book_id = 22;
UPDATE library.author_book
SET author_id = 25
WHERE author_id = 21 AND book_id = 25;

UPDATE library.copy_book
SET status = 'Not Available'
WHERE copy_id IN (4, 7, 13, 18, 23);

select * from  library.publisher;
#alter columns 
Alter Table publisher
ADD address VARCHAR(255);
#then drop column 
Alter Table publisher
Drop address ;

select* from library.book_loans;
UPDATE library.book_loans
    SET due_date =  '2023-09-25'
   WHERE copy_id= 9 ; #the unique one
   
   select* from library.borrower;
   DELETE FROM borrower
WHERE borrower_id > 20;

SELECT name FROM category 
 LIMIT 7;
 
 select title from book where rate=5;