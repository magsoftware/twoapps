from flask import render_template, request
from app import app

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'Marek'}
    return render_template('index.html', title='Home', user=user)


@app.route('/login')
def login():
    return render_template('login.html', title='Sign In')


@app.route('/headers')
def headers():
    return render_template('headers.html', title='Headers', headers=request.headers)