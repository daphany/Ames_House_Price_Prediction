from flask import request, Flask, render_template
from flask_pymongo import PyMongo
from joblib import dump, load
import numpy as np
from sklearn import preprocessing
from sklearn.preprocessing import StandardScaler, MinMaxScaler
from sklearn.linear_model import LinearRegression
from pickle import load as p_load

mlr_model = load('mlr_model.joblib')
# load scaler 
scaler = p_load(open('scaler.pkl', 'rb'))

# from flask import Flask
app = Flask(__name__)
 
# model = pickle.load(open('model.pkl', 'rb'))
col=['neighborhood','total_area','overallqual','garagecars','fullbath','yearbuilt','yearremodadd']
 
@app.route("/")
def index():
    return render_template("index.html")


@app.route('/predict', methods=['POST', 'GET'])
def predict():
    int_features = [int(x) for x in request.form.values()]
    final = np.array(int_features, dtype=float).reshape(1, -1)
    final_scaled = scaler.transform(final)
    prediction=mlr_model.predict(final_scaled)
    prediction=np.exp(prediction)
    print(prediction[0])
    output = prediction[0].round(2)[0]
    
    return render_template('index.html', pred=output)
 
if __name__ == "__main__":
   app.run()

