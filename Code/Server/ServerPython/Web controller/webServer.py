#create a flask server that serves a webpage from the file index.html
from flask import Flask, render_template
app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html')

#run the flask server
if __name__ == '__main__':
    app.run(debug=True)
    #app.run(host='