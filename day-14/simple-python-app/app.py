from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hi, this is Kiranmai from India! How are you?'

if __name__ == '__main__':
    app.run()

