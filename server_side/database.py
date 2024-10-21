from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker


db_url = 'postgresql://postgres:200512@localhost:5433/musicapp'

engine = create_engine(db_url)
Session_local = sessionmaker(autoflush=False,autocommit = False, bind = engine)

def get_db():
    db = Session_local()
    try:
        yield db
    finally:
        db.close()