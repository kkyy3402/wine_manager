import pandas as pd
import pickle
from joblib import dump, load
import datetime

MESSAGE_ERORR = "데이터가 존재하지 않습니다"
MESSAGE_OK = "성공"

class WineManager:

    data = {
        'fixed acidity': [9.1, 8.3],
        'volatile acidity': [0.27, 0.625],
        'citric acid': [0.45, 0.2],
        'residual sugar': [10.6, 1.5],
        'chlorides': [0.035, 0.08],
        'free sulfur dioxide': [28.0, 27.0],
        'total sulfur dioxide': [124, 119.0],
        'density': [0.9997, 0.9972],
        'pH': [3.2, 3.16],
        'sulphates': [0.46, 1.12],
        'alcohol': [10.4, 8.5],
        'type': [0, 1]
    }

    user_Data = {
        "userId": 1234,
        "storage_data": [
            {
                "storage_name": "복분자 저장소",
                "sensor_data": [8.5, 0.28, 0.56, 1.8, 0.092, 35.0, 103, 0.9969, 3.3, 0.75, 10.5, 7, 1],
                "status": None
            },
            {
                "storage_name": "와인 저장소",
                "sensor_data": [8.3, 0.625, 0.2, 1.5, 0.08, 27.0, 119.0, 0.9972, 3.16, 1.12, 9.1,1],
                "status": None
            }
        ]
    }

    def __init__(self, userId):
        self.userId = userId
        print("Hello {} from manager".format(userId))
        self.load_model_data()

    # 모델을 불러온다. 
    def load_model_data(self):
        self.x_test = pd.DataFrame(self.data)
        random_forest_model_filename = 'assets/model_data/random_forest_model.sav'
        self.loaded_model = pickle.load(open(random_forest_model_filename, 'rb')) 

    # 예측을 실시한다. 
    def predict_result(self) -> float:

        startTime = datetime.datetime.now()
        # 예측 결과를 predict_results에 저장
        self.predict_results = self.loaded_model.predict(self.x_test)
        endTime = datetime.datetime.now()

        # 예측하는데 걸린 시간을 측정
        elapsed_time_in_mills = (endTime - startTime).microseconds / 1000

        storage_datas = self.user_Data["storage_data"]
        for idx, storage_data in enumerate(storage_datas):
            storage_data["status"] = int(self.predict_results[idx])

        self.user_Data["elapsed_time"] = elapsed_time_in_mills
        
    def return_data(self, status, data):
        return {
            "responseCode" : 200 if status == True else 404,
            "message" : MESSAGE_OK if status == True else MESSAGE_ERORR, 
            "data" : data
        }    

    def get_user_data(self):
        self.predict_result()

        if self.user_Data["userId"] == self.userId:
            datas = self.user_Data
            return self.return_data(True, datas)
        else:
            return self.return_data(False, None)
