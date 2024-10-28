from fastapi import FastAPI
from app.models import PricesResponse, PriceItem




app = FastAPI()

@app.get("/prices", response_model=PricesResponse)
def get_prices():
    prices = {
    "Brass": 2.50,
    "Aluminum": 1.80,
    "Cold Rolled Steel": 0.90,
    "Hot Rolled Steel": 0.80,
    "Copper": 3.00,
    "Stainless Steel": 2.20,
        "Galvanized Steel": 1.00
    }
    prices = [PriceItem(material=material, price=price) for material, price in prices.items()]
    return PricesResponse(prices=prices)
