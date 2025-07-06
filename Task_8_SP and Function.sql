
USE LIBRARYDB;

DELIMITER //

CREATE PROCEDURE GetLoanHistoryByMember1(IN input_member_id INT)
BEGIN
    SELECT 
        L.LoanID,
        B.Title,
        L.LoanDate,
        L.ReturnDate
    FROM Loans L
    JOIN Books B ON L.BookID = B.BookID
    WHERE L.MemberID = input_member_id;
END //

DELIMITER ;

CALL GETLOANHISTORYBYMEMBER(2);
