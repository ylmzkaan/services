from flask import Flask, render_template, request

app = Flask(__name__)

# Define a simple route
@app.route('/')
def index():
    return 'Hello, World!'

# Define a route that takes input from the user
@app.route('/greet', methods=['GET', 'POST'])
def greet():
    if request.method == 'POST':
        name = request.form['name']
        return f'Hello, {name}!'
    return '''
        <form method="post">
            <label for="name">Enter your name:</label><br>
            <input type="text" id="name" name="name"><br>
            <input type="submit" value="Submit">
        </form>
    '''

if __name__ == '__main__':
    app.run(debug=True)
