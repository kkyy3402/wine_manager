from flask import Flask, request
from controller.wine_quality_controller import WineManager
import json


app = Flask(__name__)

@app.route('/api/v1')
def hello():
    userId = int(request.args.get('userId'))
    manager = WineManager(userId)
    userData = manager.get_user_data()

    return json.dumps(userData)

def start_server():
    app.run(host='0.0.0.0', port=80, debug=False)

if __name__ == "__main__":
    start_server()