from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import HTMLResponse
from data_base import *
import uvicorn
app = FastAPI()



#uvicorn main:app --reload

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
#определяем зависимость
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.get("/")
def read_root():
    html_content = "<h2>Leonka luchyi sait (pravda!)</h2>"
    return HTMLResponse(content=html_content)


@app.get("/fanbook")
async def root():
    return db.query(fanbook).order_by(fanbook.id).all()