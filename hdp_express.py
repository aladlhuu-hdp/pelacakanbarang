from flask import Flask, render_template
from flask_cors import CORS
from routes.admin import admin_bp
from routes.public import public_bp

app = Flask(__name__)
CORS(app)

app.register_blueprint(admin_bp)
app.register_blueprint(public_bp)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/admin')
def admin():
    return render_template('admin_login.html')

@app.route('/dashboard', methods=['GET', 'POST'])
def dashboard_admin():
    return render_template('daleman_admin/admin_dashboard.html')

@app.route('/search')
def search():
    return render_template("daleman_admin/search.html")

@app.route('/update')
def update():
    return render_template("daleman_admin/update.html")

@app.route('/riwayat')
def riwayat():
    return render_template("daleman_admin/riwayat.html")

@app.route('/tracking')
def tracking():
    return render_template("daleman_admin/tracking.html")


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
