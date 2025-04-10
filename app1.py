from flask import Flask

app = Flask(__name__)

@app.route('/')
def company_name():
    return "Company: EcoVoyage"

@app.route('/developer')
def developer_name():
    return "Developer: Jaina Jani"

@app.route('/id')
def student_id():
    return "Student ID: 100996578"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
