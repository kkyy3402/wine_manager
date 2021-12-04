import pandas as pd
import pickle
from joblib import dump, load

data = {
    'fixed acidity': [7.4, 7.8],
    'volatile acidity': [0.7, 0.88],
    'citric acid': [0.00, 0.00],
    'residual sugar': [1.9, 2.6],
    'chlorides': [0.076, 0.098],
    'free sulfur dioxide': [11.0, 25],
    'total sulfur dioxide': [34.0, 67.0],
    'density': [0.99780, 0.99680],
    'pH': [3.51, 3.20],
    'sulphates': [0.56, 0.68],
    'alcohol': [9.4, 9.8],
    'type': [1, 1]
}

test_data = {
    "user_id" : 1234,
    "datas": [
        {
            "name": "복분자 저장소",
            "sensor_data" : [7.4, 0.70, 0.00, 1.9, 0.076, 11.0, 34.0, 0.99780, 3.51, 0.56, 9.4,1]
        },
        {
            "name" : "와인 저장소",
            "sensor_data" : [7.8,0.88,0.00,2.6,0.098,25.0,67.0,0.99680,3.20,0.68,9.8,1]
        }
    ]
}

x_test = pd.DataFrame(data)

print(x_test)

naive_model_reuslt_filename = 'random_forest_model.sav'

# load model file
loaded_model = pickle.load(open(naive_model_reuslt_filename, 'rb'))

# load scaler file
sc = load('std_scaler.bin')
x_test = sc.fit_transform(x_test)

print(x_test)
