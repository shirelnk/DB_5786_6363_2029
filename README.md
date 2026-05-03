# Tour Guide Management System  
---

## Cover Page

**Submitted by:**  
Gilat Malka – 213196363  
Shirel Ankawa – 209692029  

**System Name:**  
Tour Guide Management System  

**Selected Unit:**  
Guided Tour Management  

---

## Table of Contents
- [Phase 1: Design and Build the Database](#phase-1-design-and-build-the-database)
  - [Introduction](#introduction)
  - [System Screens (AI)](#system-screens-ai)
  - [ERD Diagram](#erd-diagram)
  - [DSD Diagram](#dsd-diagram)
  - [Design Decisions](#design-decisions)
  - [Data Insertion](#data-insertion)
  - [Backup and Restore](#backup-and-restore)
- [Phase 2: Advanced SQL and Data Manipulation](#phase-2-advanced-sql-and-data-manipulation)
  - [Introduction](#introduction)
  - [Complex SELECT Queries (Paired Queries)](#complex-select-queries-paired-queries)
  - [Additional SELECT Queries](#additional-select-queries)
  - [DELETE Queries](#delete-queries)
  - [UPDATE Queries](#update-queries)
  - [Constraints](#constraints)
  - [Transaction Management](#transaction-management)
  - [Indexes](#indexes)
  - [Backup 2](#backup-2)
  - [Summary](#summary)


##  Introduction

**System Purpose:**  
The system is intended for the full operational management of a tour company. It serves as a central working tool for company managers, enabling them to manage the human resource aspect (guides), the product aspect (tour routes), the sales aspect (customer registrations), as well as the financial and feedback aspects.

**Data Stored in the System:**  
• **Guides:** Personal information, contact details, languages, professional specializations, quality rating, and daily salary.  
• **Routes:** Geographical definitions (region), difficulty level, estimated length, and a list of Points of Interest (POI) that make up the route.  
• **Tours:** Specific instances of routes on certain dates, including guide assignment, participant limit, and real-time occupancy tracking.  
• **Customers & Registrations:** Customer database and their linkage to specific tours, including payment status tracking and number of reserved seats.  
• **Payments & Feedback:** Documentation of financial transactions and collection of traveler reviews for service improvement.  

**Main Functionalities:**  
• **Tour Lifecycle Management:** From creating the route, through scheduling the tour and assigning a guide, to customer registration and payment collection.  
• **Data Analysis (Analytics):** A dashboard displaying revenues, occupancy rates in tours, and guide availability.  
• **Advanced Search and Filtering:** Ability to locate guides by language or region, and routes by difficulty level or length.  
• **Status Management:** Dynamic tracking of guide status (active/inactive) and tour status (planned/completed/canceled).  

The purpose of the system is to enable efficient, organized, and data-driven management of guided tour operations.

---

## System Screens (AI)

The system was characterized using a Top-Down approach with the help of AI tools for generating initial screens.
The prototype of the system was developed using Google AI Studio as part of the Top-Down characterization process.  
It can be accessed here: https://ai.studio/apps/cd7c04a5-8c88-45ec-b967-1ed674755d64

### Navigation Menu

The system includes a side menu that allows quick and convenient access to all parts of the system:

- Dashboard  
- Guides  
- Tours  
- Routes  
- Customers  
- Registrations  
- Assignments  
- Payments  
- Feedback  
- Reports  
- Settings  

<img width="396" height="676" alt="image" src="https://github.com/user-attachments/assets/f64f9c91-c484-461d-9275-a512ecf5469a" />

<img width="394" height="660" alt="image" src="https://github.com/user-attachments/assets/53b42abd-c6bf-468f-ab38-a9045648fd3a" />

<img width="390" height="675" alt="image" src="https://github.com/user-attachments/assets/a04710bf-ad0a-4e03-9391-d036e1f1d3ea" />

---

### Dashboard

The home screen of the system presenting key data:

- Number of active guides  
- Upcoming tours  
- Open registrations  
- Total revenues  
- Graphs showing activity trends  

<img width="1494" height="723" alt="image" src="https://github.com/user-attachments/assets/1878516d-bc31-4c6c-b319-ba34a8015e04" />

<img width="1493" height="724" alt="image" src="https://github.com/user-attachments/assets/2676ce0b-bf04-4acd-9516-6963edd3e2ec" />

<img width="1489" height="721" alt="image" src="https://github.com/user-attachments/assets/e59abd5f-0781-405e-bf2a-01afe28c837e" />

---

### Guide Management

A module for managing tour guides:

- Guide list  
- Guide details  
- Add and edit guides  

<img width="1491" height="734" alt="image" src="https://github.com/user-attachments/assets/9c8fd7cf-76b8-41d1-8aa9-3e4a4d76c267" />

---

### Route Management

Management of routes including Points of Interest (POI):

- Route list  
- Route description  
- Points of Interest  
- Create and edit routes  

<img width="1492" height="724" alt="image" src="https://github.com/user-attachments/assets/45f53d88-2999-4893-a680-dfac11fecaa9" />

---

###  Tour Management

The operational core of the system:

- Tour list  
- Tour details  
- Create a new tour  
- Assign a guide  

<img width="1478" height="716" alt="image" src="https://github.com/user-attachments/assets/997e7d5a-51f4-4a75-91c7-bd39d9314cbd" />

---

###  Customers and Registrations

Managing customers and their participation in tours:

- Customer database  
- Tour registrations  
- Payment status
- 
<img width="1491" height="718" alt="image" src="https://github.com/user-attachments/assets/e5eb7872-7f00-4849-be71-1e149961fe6a" />

<img width="1488" height="732" alt="image" src="https://github.com/user-attachments/assets/d8bc9be3-ec0e-4a39-aed4-0485b3a1bd0e" />

---

### 🔄Assignments

A dedicated screen for assigning guides to tours.

<img width="1473" height="706" alt="image" src="https://github.com/user-attachments/assets/d4a666a3-2eed-4b7d-9707-e5fca52e8d86" />

<img width="1490" height="791" alt="image" src="https://github.com/user-attachments/assets/7b00f63d-dcbd-4aac-90f7-9fba82924bbf" />

---

###  Payments and Feedback

- Payment tracking  
- Customer feedback  
<img width="1487" height="720" alt="image" src="https://github.com/user-attachments/assets/520da0b6-2a7b-44c8-bfda-2e3159f5dc2e" />

<img width="1473" height="717" alt="image" src="https://github.com/user-attachments/assets/b8269322-6041-4f3c-8063-628a3d1d51b5" />

<img width="1468" height="719" alt="image" src="https://github.com/user-attachments/assets/2eeaaf07-e7db-4c66-8d1c-332062a14931" />

---

###  Settings

Management of business details and general system settings.

<img width="1484" height="707" alt="image" src="https://github.com/user-attachments/assets/45f9c33a-bf52-44f8-95d1-d094ae4191a9" />
<img width="1491" height="729" alt="image" src="https://github.com/user-attachments/assets/7239ab39-62df-4035-94be-d2efc0a9230c" />


---

##  ERD Diagram

The ERD diagram presents the entities in the system and the relationships between them.

<img width="4704" height="1908" alt="ERD" src="https://github.com/user-attachments/assets/417feaee-2e51-488f-9660-7ecac34a407d" />

---

##  DSD Diagram

The DSD diagram presents the actual structure of the database:

- Tables  
- Primary keys  
- Foreign keys  
- Constraints  

<img width="4704" height="1908" alt="DSD" src="https://github.com/user-attachments/assets/e9172dae-f240-4b32-80da-083fa8224ce0" />

---

##  Design Decisions

During the construction of the system, several design and architectural decisions were made in order to improve efficiency and stability:

**A. Transition from a "Sites" model to a "Points of Interest" model:**  
• **The decision:** We canceled the independent "Site" entity and replaced it with an array of text strings inside the Route entity.  
• **The reason:** Flexibility and simplicity. In tour management, sometimes the stopping point is "a viewpoint under the oak tree" or "a historic street corner," which does not always justify creating a full entity in the database with address and images. The new model allows the tour manager to build a dynamic and fast route without dependence on a rigid site repository.  

**B. Separation between "Route" and "Tour":**  
• **The decision:** A complete separation between the route definition and the calendar event.  
• **The reason:** Reusability of data. A route is a company asset that does not change often. A tour is its specific instance. This separation makes it possible to run the same route dozens of times with different guides and on different dates without duplicating the route data itself.  

**C. Use of Enums for status management:**  
• **The decision:** Defining fixed statuses (such as TourStatus, PaymentStatus).  
• **The reason:** Preventing human error and ensuring Data Integrity. Using fixed values ensures that the business logic (for example: "it is not possible to register a customer for a canceled tour") works consistently throughout all parts of the system.  

**D. Dashboard-First interface design based on cards and tables:**  
• **The decision:** Using Tailwind CSS to create a clean interface with emphasis on a visual dashboard.  
• **The reason:** User Experience (UX). Operations managers need fast, scannable information. The statistic cards at the top of the page allow business decisions to be made within seconds, while the detailed tables allow deeper examination of the data when needed.  

**E. Centralizing logic in ScreenRenderer:**  
• **The decision:** Managing navigation and screen display through one central component that manages the state.  
• **The reason:** Simplicity of maintenance. Since מדובר in a Single Page Application (SPA), managing navigation in this way enables smooth transitions between screens without page refresh, and preserves full synchronization between the global search and the information displayed on the current screen.  

---

##  Data Insertion

Data insertion into the system was carried out using three methods:

### Method 1 – Manual Data Insertion (SQL)
![generateData](https://github.com/user-attachments/assets/c0abb5ce-6324-4495-a401-c8321b2fdd1b)

---

### Method 2 – Using CSV / Mockaroo Files
![mockotoo](https://github.com/user-attachments/assets/051b5030-e6d1-4728-a691-3ca3442cfc4d)

---

### Method 3 – Creating Data Through Code
![ai_studio](https://github.com/user-attachments/assets/a45370d9-ab88-45fb-8e56-12bf5b36c443)

---

##  Backup and Restore

## 🔹 Backup File
A backup of the database "DBsecret" was created using pgAdmin.

The backup file was saved as:
backup_12_04_2026.sql

The backup was created in Plain format.
<img width="1914" height="1079" alt="image" src="https://github.com/user-attachments/assets/dd89766b-5b51-4fb6-9bea-d6dddf4b261f" />


## 🔹 Restore

To verify the backup file, a restore process was performed.

A new database named "DBsecret_restore" was created on another machine.

The backup file was executed using the pgAdmin Query Tool.

After execution:
- All tables were recreated successfully
- All data was restored

Verification was performed by running SELECT queries and checking:
- 500 rows in regular tables
- 20,000 rows in large tables (REGISTRATION, PAYMENT)

This confirms that the backup file is valid and working correctly.

##  Summary

At this stage, the following were completed:

- System characterization  
- Construction of ERD and DSD diagrams  
- Database creation  
- Data insertion using three methods  
- Performing backup and restore  

The system constitutes a stable foundation for continued development in the next stages.
---

# Phase 2: Advanced SQL and Data Manipulation

---

## Introduction

In this phase, we expanded the system by implementing advanced SQL capabilities.

The main goals of this phase were:

- Writing complex SELECT queries  
- Performing UPDATE and DELETE operations  
- Adding constraints using ALTER TABLE  
- Demonstrating transaction control (ROLLBACK & COMMIT)  
- Improving performance using indexes  
- Creating an updated backup of the system  

This phase strengthens the database logic, ensures data integrity, and improves performance.

---

## Complex SELECT Queries

Each query below includes:

A description in English
A screenshot of the query execution in SSMS
A screenshot showing the result (only 5 rows maximum per screenshot)

---

### Query 1 – High-Earning Guides Report

#### Description
This query finds guides who generated high revenue during March 2026.  
It connects guides, guided tours, registrations, and payments, and calculates the total revenue generated by each guide.

#### Option A – JOIN (Efficient)

```sql
SELECT 
    CONCAT(g.FirstName, ' ', g.LastName) AS GuideName,
    g.Email,
    EXTRACT(MONTH FROM p.PaymentDate) AS PaymentMonth,
    SUM(p.Amount) AS TotalEarned
FROM GUIDE g
JOIN GUIDEDTOUR gt ON g.GuideID = gt.GuideID
JOIN REGISTRATION r ON gt.TourID = r.TourID
JOIN PAYMENT p ON r.RegistrationID = p.RegistrationID
WHERE EXTRACT(YEAR FROM p.PaymentDate) = 2026
  AND EXTRACT(MONTH FROM p.PaymentDate) = 3
GROUP BY g.GuideID, g.FirstName, g.LastName, g.Email, EXTRACT(MONTH FROM p.PaymentDate)
HAVING SUM(p.Amount) > 5000
ORDER BY TotalEarned DESC;
```

📸 
<img width="546" height="634" alt="image" src="https://github.com/user-attachments/assets/467a2537-8097-4b86-beab-110160acf181" />

---

#### Option B – Nested IN

```sql
SELECT CONCAT(FirstName, ' ', LastName) AS GuideName 
FROM GUIDE
WHERE GuideID IN (
    SELECT GuideID FROM GUIDEDTOUR WHERE TourID IN (
        SELECT TourID FROM REGISTRATION WHERE RegistrationID IN (
            SELECT RegistrationID FROM PAYMENT
            WHERE EXTRACT(MONTH FROM PaymentDate) = 3 
              AND EXTRACT(YEAR FROM PaymentDate) = 2026
        )
    )
);
```

📸
<img width="418" height="603" alt="image" src="https://github.com/user-attachments/assets/396994c5-db15-446a-88ac-f3ea82db7b18" />


#### Explanation
Option A is more efficient because it uses JOIN operations directly between related tables. This allows the database optimizer to build a better execution plan.  
Option B uses nested IN subqueries, which are harder to read and may require more internal filtering.

---

### Query 2 – Monthly Revenue Analysis for 2026

#### Description
This query calculates the total monthly revenue for the year 2026 and counts the number of payment transactions in each month.

#### Option A – GROUP BY

```sql
SELECT 
    EXTRACT(YEAR FROM PaymentDate) AS Year,
    EXTRACT(MONTH FROM PaymentDate) AS Month, 
    SUM(Amount) AS MonthlyIncome,
    COUNT(PaymentID) AS TransactionCount
FROM PAYMENT
WHERE EXTRACT(YEAR FROM PaymentDate) = 2026
GROUP BY EXTRACT(YEAR FROM PaymentDate), EXTRACT(MONTH FROM PaymentDate)
ORDER BY Month;
```

📸
<img width="474" height="268" alt="image" src="https://github.com/user-attachments/assets/8d9431f8-f300-498c-9630-36c7344fefd2" />

---

#### Option B – Subquery

```sql
SELECT Month, SUM(Amount) AS Total 
FROM (
    SELECT EXTRACT(MONTH FROM PaymentDate) AS Month, Amount
    FROM PAYMENT
    WHERE EXTRACT(YEAR FROM PaymentDate) = 2026
) AS MonthlyStats 
GROUP BY Month
ORDER BY Month;
```

📸
<img width="819" height="211" alt="image" src="https://github.com/user-attachments/assets/2f575731-7424-4268-86df-d7ca5f4f7616" />



#### Explanation
Option A is more efficient because it performs the aggregation directly on the PAYMENT table.  
Option B first creates an intermediate result and then groups it, which makes the query less direct.

---

### Query 3 – Debtors List: Jerusalem Tours with Pending Payments

#### Description
This query finds customers registered for Jerusalem-related tours whose registration status is still pending.  
It helps the company identify customers who may still need payment follow-up.

#### Option A – JOIN

```sql
SELECT DISTINCT c.FullName, c.Phone, r.RegistrationID, rt.Name AS RouteName
FROM CUSTOMER c
JOIN REGISTRATION r ON c.CustomerID = r.CustomerID
JOIN GUIDEDTOUR gt ON r.TourID = gt.TourID
JOIN ROUTE rt ON gt.RouteID = rt.RouteID
WHERE rt.Description LIKE '%Jerusalem%' 
  AND r.RegistrationStatusID = (
      SELECT RegistrationStatusID
      FROM REGISTRATIONSTATUS
      WHERE StatusName = 'Pending'
  );
```

📸
.. חסר



---

#### Option B – EXISTS

```sql
SELECT FullName, Phone
FROM CUSTOMER c
WHERE EXISTS (
    SELECT 1
    FROM REGISTRATION r 
    JOIN GUIDEDTOUR gt ON r.TourID = gt.TourID
    JOIN ROUTE rt ON gt.RouteID = rt.RouteID
    WHERE r.CustomerID = c.CustomerID 
      AND rt.Description LIKE '%Jerusalem%' 
      AND r.RegistrationStatusID = (
          SELECT RegistrationStatusID
          FROM REGISTRATIONSTATUS
          WHERE StatusName = 'Pending'
      )
);
```

📸 



#### Explanation
Option A is better when we want to display detailed information from several tables, such as registration ID and route name.  
Option B is useful when we only need to check whether a matching record exists.

---

### Query 4 – Elite Guides: Above Average Rating and High Activity

#### Description
This query identifies guides who are highly active and have a rating above the average guide rating.  
It helps the company locate strong guides who may be suitable for important tours.

#### Option A – HAVING with Scalar Subquery

```sql
SELECT g.FirstName, g.LastName, g.Rating, COUNT(gt.TourID) AS TourCount
FROM GUIDE g
JOIN GUIDEDTOUR gt ON g.GuideID = gt.GuideID
GROUP BY g.GuideID, g.FirstName, g.LastName, g.Rating
HAVING COUNT(gt.TourID) > 3 
   AND g.Rating > (SELECT AVG(Rating) FROM GUIDE);
```

📸 
<img width="717" height="412" alt="image" src="https://github.com/user-attachments/assets/53a16e60-1595-4bf4-b260-99659814f886" />


---

#### Option B – Inline View

```sql
SELECT g.FirstName, g.LastName, TCounts.cnt
FROM GUIDE g
JOIN (
    SELECT GuideID, COUNT(*) AS cnt
    FROM GUIDEDTOUR
    GROUP BY GuideID
) TCounts ON g.GuideID = TCounts.GuideID
WHERE TCounts.cnt > 3
  AND g.Rating > (SELECT AVG(Rating) FROM GUIDE);
```

📸
<img width="813" height="304" alt="image" src="https://github.com/user-attachments/assets/d682b415-3608-4be9-b221-d9fb356e365d" />


#### Explanation
Option A is simpler because the aggregation and filtering are performed in one query using GROUP BY and HAVING.  
Option B separates the counting logic into an inline view, which can be useful when the aggregated result needs to be reused.

---

## Additional SELECT Queries

---

### Query 5 – Real-Time Availability: Tours in the Next 7 Days

#### Description
This query shows tours scheduled for the next seven days and calculates how many available places remain for each tour.

```sql
SELECT 
    gt.TourID, 
    rt.Name AS RouteName, 
    gt.StartDate AS Starting,
    gt.MaxParticipants,
    (gt.MaxParticipants - (
        SELECT COUNT(*)
        FROM REGISTRATION r
        WHERE r.TourID = gt.TourID
    )) AS AvailableSlots
FROM GUIDEDTOUR gt
JOIN ROUTE rt ON gt.RouteID = rt.RouteID
WHERE gt.StartDate BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days'
ORDER BY gt.StartDate;
```

📸
<img width="1057" height="432" alt="image" src="https://github.com/user-attachments/assets/a11182f9-c769-402d-a528-49e8e7f579b0" />


---

### Query 6 – VIP Customer Loyalty Program

#### Description
This query finds customers who spent more than 2000 during the last year.  
It can be used to identify loyal customers for discounts, benefits, or marketing campaigns.

```sql
SELECT 
    c.FullName, 
    c.Email, 
    SUM(p.Amount) AS TotalSpent,
    MAX(p.PaymentDate) AS LastPayment
FROM CUSTOMER c
JOIN REGISTRATION r ON c.CustomerID = r.CustomerID
JOIN PAYMENT p ON r.RegistrationID = p.RegistrationID
WHERE p.PaymentDate >= CURRENT_DATE - INTERVAL '1 year'
GROUP BY c.CustomerID, c.FullName, c.Email
HAVING SUM(p.Amount) > 2000;
```

📸
<img width="387" height="574" alt="image" src="https://github.com/user-attachments/assets/a200165e-ac81-43c8-ae03-91a858429a85" />


---

### Query 7 – Popular Routes Analysis

#### Description
This query analyzes popular routes by counting how many guided tours were created for each route and calculating the total capacity.

```sql
SELECT 
    r.Name, 
    SUM(gt.MaxParticipants) AS TotalCapacity,
    COUNT(gt.TourID) AS Occurrences
FROM ROUTE r
JOIN GUIDEDTOUR gt ON r.RouteID = gt.RouteID
GROUP BY r.RouteID, r.Name
HAVING COUNT(gt.TourID) >= 2
ORDER BY TotalCapacity DESC;
```

📸 
<img width="309" height="262" alt="image" src="https://github.com/user-attachments/assets/688516e8-08a9-42f4-a6ea-c54bfaafd0aa" />


---

### Query 8 – Quality Control: Low Experience Feedback

#### Description
This query displays feedback connected to tours guided by guides with less than two years of experience.  
It supports quality control and helps management review cases that may require improvement.

```sql
SELECT 
    CONCAT(g.FirstName, ' ', g.LastName) AS GuideName,
    g.ExperienceYears,
    rt.Name AS RouteName,
    r.Notes AS Feedback
FROM REGISTRATION r
JOIN GUIDEDTOUR gt ON r.TourID = gt.TourID
JOIN GUIDE g ON gt.GuideID = g.GuideID
JOIN ROUTE rt ON gt.RouteID = rt.RouteID
WHERE g.ExperienceYears < 2
  AND r.Notes IS NOT NULL;
```

📸
<img width="678" height="826" alt="image" src="https://github.com/user-attachments/assets/5c4dafe5-fec4-41c4-9376-028d49929515" />
---

## DELETE Operations

Each DELETE operation includes a short description, the SQL command, a screenshot before execution, a screenshot of the execution, and a screenshot after execution.

---

### Delete 1 – Remove Customers with No Activity in 3 Years

#### Description
This query removes customers who have not registered for any tour during the last three years.  
It helps keep the customer table clean and removes inactive records.

```sql
DELETE FROM CUSTOMER
WHERE CustomerID NOT IN (
    SELECT DISTINCT CustomerID FROM REGISTRATION 
    WHERE RegistrationDate > CURRENT_DATE - INTERVAL '3 years'
);
```

📸 Before execution:
<img width="1321" height="891" alt="delete1_before_stage2 png" src="https://github.com/user-attachments/assets/5c2a4bec-5ea6-46d0-8101-1a1954ff1640" />

📸 Delete execution:
<img width="1311" height="879" alt="delete1_stage2 png" src="https://github.com/user-attachments/assets/de2e5b52-8bd5-411e-84b0-494de71cc105" />

📸 After execution:
<img width="1318" height="875" alt="delete1_after_stage2 png" src="https://github.com/user-attachments/assets/59dff830-2c10-4f1f-b7dc-7fb3e52ccd41" />
---

### Delete 2 – Delete Payments Older Than 5 Years

#### Description
This query removes old payment records that are more than five years old.  
It supports data retention and keeps the payment table focused on relevant financial history.

```sql
DELETE FROM PAYMENT
WHERE PaymentDate < CURRENT_DATE - INTERVAL '5 years';
```

📸 Before execution:
<img width="1330" height="887" alt="delete2_before_stage2 png" src="https://github.com/user-attachments/assets/aae9ed8e-ce59-47d0-91c4-678b9e38b76a" />


📸 Delete execution:
<img width="1336" height="885" alt="delete2_stage2 png" src="https://github.com/user-attachments/assets/dd05e9cc-a4a2-4a34-a87d-d20c8cdcc811" />

📸 After execution:
<img width="1342" height="888" alt="delete2_after_stage2 png" src="https://github.com/user-attachments/assets/feef4039-de5d-4ba4-9a0f-2351605eac83" />

---

### Delete 3 – Delete Routes That Were Never Assigned to a Tour

#### Description
This query deletes routes that were never used in any guided tour.  
It helps remove unused route definitions from the system.

```sql
DELETE FROM ROUTE
WHERE RouteID NOT IN (
    SELECT DISTINCT RouteID FROM GUIDEDTOUR
);
```

📸 Before execution:
<img width="1324" height="893" alt="delete3_before_stage2 png" src="https://github.com/user-attachments/assets/d466f20f-2dc8-443b-9acd-c73776133c4a" />


📸 Delete execution:
<img width="1343" height="895" alt="delete3_stage2" src="https://github.com/user-attachments/assets/c65ba6a1-e566-48cc-8c4e-739735104ef5" />


📸 After execution:
<img width="1324" height="877" alt="delete3_after_stage2" src="https://github.com/user-attachments/assets/08cbef32-f199-4e11-9dd7-5fe950869201" />

