from pydantic import BaseModel
from typing import List

class PriceItem(BaseModel):
    material: str
    price: float

class PricesResponse(BaseModel):
    prices: List[PriceItem]
