from flask import FLASK
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Simple flask application'