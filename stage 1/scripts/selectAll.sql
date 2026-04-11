-- =====================================================
-- Row counts for all tables
-- =====================================================
SELECT 'GUIDE' AS Table_Name, COUNT(*) FROM GUIDE
UNION ALL
SELECT 'DIFFICULTYLEVEL', COUNT(*) FROM DIFFICULTYLEVEL
UNION ALL
SELECT 'ROUTE', COUNT(*) FROM ROUTE
UNION ALL
SELECT 'TOURSTATUS', COUNT(*) FROM TOURSTATUS
UNION ALL
SELECT 'GUIDEDTOUR', COUNT(*) FROM GUIDEDTOUR
UNION ALL
SELECT 'CUSTOMER', COUNT(*) FROM CUSTOMER
UNION ALL
SELECT 'REGISTRATIONSTATUS', COUNT(*) FROM REGISTRATIONSTATUS
UNION ALL
SELECT 'REGISTRATION', COUNT(*) FROM REGISTRATION
UNION ALL
SELECT 'PAYMENTSTATUS', COUNT(*) FROM PAYMENTSTATUS
UNION ALL
SELECT 'PAYMENT', COUNT(*) FROM PAYMENT;

-- =====================================================
-- Sample rows from each table
-- =====================================================
SELECT * FROM GUIDE FETCH FIRST 10 ROWS ONLY;
SELECT * FROM DIFFICULTYLEVEL FETCH FIRST 10 ROWS ONLY;
SELECT * FROM ROUTE FETCH FIRST 10 ROWS ONLY;
SELECT * FROM TOURSTATUS FETCH FIRST 10 ROWS ONLY;
SELECT * FROM GUIDEDTOUR FETCH FIRST 10 ROWS ONLY;
SELECT * FROM CUSTOMER FETCH FIRST 10 ROWS ONLY;
SELECT * FROM REGISTRATIONSTATUS FETCH FIRST 10 ROWS ONLY;
SELECT * FROM REGISTRATION FETCH FIRST 10 ROWS ONLY;
SELECT * FROM PAYMENTSTATUS FETCH FIRST 10 ROWS ONLY;
SELECT * FROM PAYMENT FETCH FIRST 10 ROWS ONLY;

-- =====================================================
-- Join query: registration with customer, tour and status
-- =====================================================
SELECT 
    R.RegistrationID,
    C.FullName AS Customer_Name,
    T.StartDate AS Tour_Date,
    RS.StatusName AS Reg_Status
FROM REGISTRATION R
JOIN CUSTOMER C ON R.CustomerID = C.CustomerID
JOIN GUIDEDTOUR T ON R.TourID = T.TourID
JOIN REGISTRATIONSTATUS RS ON R.RegistrationStatusID = RS.RegistrationStatusID
FETCH FIRST 20 ROWS ONLY;

-- =====================================================
-- Join query: payment with registration and payment status
-- =====================================================
SELECT 
    P.PaymentID,
    P.Amount,
    P.PaymentMethod,
    PS.StatusName AS Payment_Status,
    R.RegistrationID
FROM PAYMENT P
JOIN PAYMENTSTATUS PS ON P.PaymentStatusID = PS.PaymentStatusID
JOIN REGISTRATION R ON P.RegistrationID = R.RegistrationID
FETCH FIRST 20 ROWS ONLY;

-- =====================================================
-- Join query: guided tour with guide and route
-- =====================================================
SELECT 
    T.TourID,
    T.MeetingPoint,
    G.FirstName || ' ' || G.LastName AS Guide_Name,
    RT.Name AS Route_Name
FROM GUIDEDTOUR T
JOIN GUIDE G ON T.GuideID = G.GuideID
JOIN ROUTE RT ON T.RouteID = RT.RouteID
FETCH FIRST 20 ROWS ONLY;