from fastapi import FastAPI

app = FastAPI(openapi_prefix="/api")

@app.get("/")
def home():
    return {}