from fastapi import APIRouter
import numpy as np

router = APIRouter()

@router.get("/matrix/add")
def add_matrices():
    a = np.random.rand(10, 10)
    b = np.random.rand(10, 10)
    return {"result": (a + b).tolist()}

