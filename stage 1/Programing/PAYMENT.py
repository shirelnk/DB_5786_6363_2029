import random
import pandas as pd
from faker import Faker
from sqlalchemy import create_engine

DATABASE_URI = 'postgresql://shirelnk:smnk12018@localhost:5432/TourGuide'
engine = create_engine(DATABASE_URI)

fake = Faker()
NUM_RECORDS = 20000

def generate_and_insert_payments():
    print(f"Generating {NUM_RECORDS} records and inserting directly to PostgreSQL...")
    
    try:
        print("Fetching valid registration IDs and payment status IDs from the database...")
        valid_registrations = pd.read_sql("SELECT registrationid FROM registration", engine)['registrationid'].tolist()
        valid_statuses = pd.read_sql("SELECT paymentstatusid FROM paymentstatus", engine)['paymentstatusid'].tolist()
        
        if not valid_registrations:
            print("Error: Registration table is empty. Please check your DB.")
            return
        if not valid_statuses:
            valid_statuses = [1, 2, 3, 4]
            
    except Exception as e:
        print(f"Error fetching IDs from DB: {e}")
        return

    payment_methods = ['Credit Card', 'Bank Transfer', 'PayPal', 'Cash', 'Check']
    
    data = []
    
    for pay_id in range(100, NUM_RECORDS + 100):
        pay_date = fake.date_between(start_date='-2y', end_date='today')
        amount = round(random.uniform(10.0, 9999.99), 2)
        
        notes = fake.sentence(nb_words=10).replace("\n", " ")
        if len(notes) > 500: 
            notes = notes[:497] + "..."
            
        method = random.choice(payment_methods)
        ref_num = fake.bothify(text='REF-#######-??').upper()
        
        reg_id = random.choice(valid_registrations)
        status_id = random.choice(valid_statuses)

        data.append({
            'paymentid': pay_id,
            'paymentdate': pay_date,
            'amount': amount,
            'notes': notes,
            'paymentmethod': method,
            'referencenumber': ref_num,
            'registrationid': reg_id,
            'paymentstatusid': status_id
        })

    df = pd.DataFrame(data)

    try:
        df.to_sql('payment', engine, if_exists='append', index=False)
        print(f"Success! {NUM_RECORDS} rows have been inserted into the 'payment' table.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == '__main__':
    generate_and_insert_payments()