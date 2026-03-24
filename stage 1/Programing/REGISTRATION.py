import random
import pandas as pd
from faker import Faker
from sqlalchemy import create_engine

DATABASE_URI = 'postgresql://shirelnk:smnk12018@localhost:5432/TourGuide'
engine = create_engine(DATABASE_URI)

fake = Faker()
NUM_RECORDS = 20000

def generate_and_insert_registrations():
    print(f"Generating {NUM_RECORDS} records and inserting directly to REGISTRATION table...")
    
    try:
        print("Fetching valid customer IDs and tour IDs from the database...")
        valid_customers = pd.read_sql("SELECT customerid FROM customer", engine)['customerid'].tolist()
        valid_tours = pd.read_sql("SELECT tourid FROM guidedtour", engine)['tourid'].tolist()
        
        if not valid_customers or not valid_tours:
            print("Error: Customer or GuidedTour table is empty. Please check your DB.")
            return
    except Exception as e:
        print(f"Error fetching IDs from DB: {e}")
        return
        
    MAX_STATUS_ID = 4  

    data = []
    
    for reg_id in range(100, NUM_RECORDS + 100):
        reg_date = fake.date_between(start_date='-3y', end_date='today')
        
        amount = round(random.uniform(50.0, 5000.0), 2)
        
        notes = fake.sentence(nb_words=8)
        if len(notes) > 500: 
            notes = notes[:497] + "..."
        
        cust_id = random.choice(valid_customers)
        tour_id = random.choice(valid_tours)
        status_id = random.randint(1, MAX_STATUS_ID)

        data.append({
            'registrationid': reg_id,
            'registrationdate': reg_date,
            'amounttopay': amount,
            'notes': notes,
            'tourid': tour_id,
            'registrationstatusid': status_id,
            'customerid': cust_id
        })

    df = pd.DataFrame(data)

    try:
        df.to_sql('registration', engine, if_exists='append', index=False)
        print(f"Success! {NUM_RECORDS} rows have been inserted into the 'registration' table.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == '__main__':
    generate_and_insert_registrations()