-- שיטה 1: INSERT ידני
INSERT INTO DIFFICULTYLEVEL (DifficultyID, DifficultyName) VALUES
(1, 'Easy'),
(2, 'Moderate'),
(3, 'Hard'),
(4, 'Advanced'),
(5, 'Expert');

INSERT INTO TOURSTATUS (TourStatusID, StatusName) VALUES
(1, 'Open'),
(2, 'Closed'),
(3, 'Cancelled'),
(4, 'Completed'),
(5, 'Postponed');

INSERT INTO REGISTRATIONSTATUS (RegistrationStatusID, StatusName) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Cancelled'),
(4, 'Waiting List'),
(5, 'Confirmed');

INSERT INTO PAYMENTSTATUS (PaymentStatusID, StatusName) VALUES
(1, 'Pending'),
(2, 'Paid'),
(3, 'Failed'),
(4, 'Refunded'),
(5, 'Partial');

-- שיטה 2: bulk בעזרת generate_series
INSERT INTO DIFFICULTYLEVEL (DifficultyID, DifficultyName)
SELECT gs, 'Difficulty ' || gs
FROM generate_series(6,500) AS gs;

INSERT INTO TOURSTATUS (TourStatusID, StatusName)
SELECT gs, 'Tour Status ' || gs
FROM generate_series(6,500) AS gs;

INSERT INTO REGISTRATIONSTATUS (RegistrationStatusID, StatusName)
SELECT gs, 'Registration Status ' || gs
FROM generate_series(6,500) AS gs;

INSERT INTO PAYMENTSTATUS (PaymentStatusID, StatusName)
SELECT gs, 'Payment Status ' || gs
FROM generate_series(6,500) AS gs;

INSERT INTO GUIDE
(
    GuideID, FirstName, LastName, Phone, Email, BirthDate, JoinDate,
    DailyRate, ExperienceYears, Rating, Address, Notes
)
SELECT
    gs,
    'GuideFirst' || gs,
    'GuideLast' || gs,
    '050' || LPAD(gs::text, 7, '0'),
    'guide' || gs || '@mail.com',
    DATE '1980-01-01' + ((gs % 10000) * INTERVAL '1 day'),
    DATE '2015-01-01' + ((gs % 3000) * INTERVAL '1 day'),
    (300 + (gs % 200))::NUMERIC(8,2),
    (gs % 21),
    ((gs % 50) / 10.0)::NUMERIC(3,2),
    'Address ' || gs,
    'Guide note ' || gs
FROM generate_series(1,500) AS gs;

INSERT INTO ROUTE
(
    RouteID, Name, EstimatedLength, EstimatedDuration, Description, DifficultyID
)
SELECT
    gs,
    'Route ' || gs,
    (2 + (gs % 25))::NUMERIC(8,2),
    60 + (gs % 360),
    'Description for route ' || gs,
    ((gs - 1) % 500) + 1
FROM generate_series(1,500) AS gs;

INSERT INTO CUSTOMER
(
    CustomerID, FullName, Phone, Email, JoinDate
)
SELECT
    gs,
    'Customer ' || gs,
    '052' || LPAD(gs::text, 7, '0'),
    'customer' || gs || '@mail.com',
    DATE '2022-01-01' + ((gs % 1200) * INTERVAL '1 day')
FROM generate_series(1,500) AS gs;

INSERT INTO GUIDEDTOUR
(
    TourID, StartDate, EndDate, StartTime, EndTime, MeetingPoint, Price,
    MaxParticipants, Notes, TourStatusID, GuideID, RouteID
)
SELECT
    gs,
    DATE '2025-01-01' + ((gs % 365) * INTERVAL '1 day'),
    DATE '2025-01-01' + ((gs % 365) * INTERVAL '1 day') + INTERVAL '1 day',
    '08:00',
    '16:00',
    'Meeting Point ' || gs,
    (100 + (gs % 400))::NUMERIC(8,2),
    10 + (gs % 41),
    'Tour note ' || gs,
    ((gs - 1) % 500) + 1,
    ((gs - 1) % 500) + 1,
    ((gs - 1) % 500) + 1
FROM generate_series(1,500) AS gs;

INSERT INTO REGISTRATION
(
    RegistrationID, RegistrationDate, AmountToPay, Notes, TourID,
    RegistrationStatusID, CustomerID
)
SELECT
    gs,
    DATE '2025-01-01' + ((gs % 365) * INTERVAL '1 day'),
    (80 + (gs % 420))::NUMERIC(8,2),
    'Registration note ' || gs,
    ((gs - 1) % 500) + 1,
    ((gs - 1) % 500) + 1,
    ((gs - 1) % 500) + 1
FROM generate_series(1,20000) AS gs;

INSERT INTO PAYMENT
(
    PaymentID, PaymentDate, Amount, Notes, PaymentMethod,
    ReferenceNumber, RegistrationID, PaymentStatusID
)
SELECT
    gs,
    DATE '2025-01-01' + ((gs % 365) * INTERVAL '1 day'),
    (50 + (gs % 450))::NUMERIC(8,2),
    'Payment note ' || gs,
    CASE gs % 4
        WHEN 0 THEN 'Cash'
        WHEN 1 THEN 'Credit Card'
        WHEN 2 THEN 'Bank Transfer'
        ELSE 'PayPal'
    END,
    'REF' || gs,
    gs,
    ((gs - 1) % 500) + 1
FROM generate_series(1,20000) AS gs;