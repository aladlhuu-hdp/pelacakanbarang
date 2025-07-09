from flask import Blueprint, request, jsonify, render_template
import mysql.connector  
from datetime import datetime
import pytz

def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="25262526",
        database="pbl" 
    )

admin_bp = Blueprint('admin_bp', __name__)

# ✅ Route Login Admin
@admin_bp.route('/admin/login', methods=['POST'])
def login_admin():
    data = request.get_json()
    username = data.get('username')
    password = data.get('password')

    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM admin WHERE username=%s AND password=%s", (username, password))
    admin = cursor.fetchone()
    cursor.close()
    conn.close()

    if admin:
        return jsonify({"status": "success", "message": "Login berhasil"})
    else:
        return jsonify({"status": "fail", "message": "Username atau password salah"})


@admin_bp.route('/admin/data_tracking', methods=['GET'])
def data_tracking():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM tracking ORDER BY waktu DESC")
    results = cursor.fetchall()
    cursor.close()
    conn.close()

    jakarta_tz = pytz.timezone("Asia/Jakarta")
    for row in results:
        if 'waktu' in row and row['waktu']:
            localized = row['waktu'].replace(tzinfo=pytz.UTC).astimezone(jakarta_tz)
            row['waktu'] = localized.isoformat()
    
    return jsonify(results)

@admin_bp.route('/admin/search_tracking', methods=['POST'])
def search_tracking():
    data = request.get_json()
    resi_id = data.get('resi_id')

    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("""
        SELECT * FROM tracking
        WHERE resi = %s
        ORDER BY waktu DESC
    """, (resi_id,))
    results = cursor.fetchall()
    cursor.close()
    conn.close()

    return jsonify({"status": "success", "data": results})

@admin_bp.route('/admin/update_resi', methods=['POST'])
def update_resi():
    data = request.get_json()
    resi = data.get('resi')
    status_update = data.get('status_update')

    if not resi or not status_update:
        return jsonify({"status": "fail", "message": "Resi dan status harus diisi"})

    conn = get_connection()
    cursor = conn.cursor()
    
    try:
        cursor.execute("""
            UPDATE tracking
            SET status_update = %s
            WHERE resi = %s
        """, (status_update, resi))
        conn.commit()

        if cursor.rowcount > 0:
            return jsonify({"status": "success", "message": "Status berhasil diperbarui"})
        else:
            return jsonify({"status": "fail", "message": "Resi tidak ditemukan"})
    except Exception as e:
        return jsonify({"status": "fail", "message": f"Terjadi error: {str(e)}"})
    finally:
        cursor.close()
        conn.close()

@admin_bp.route('/admin/search_paket', methods=['POST'])
def search_paket():
    data = request.get_json()
    keyword = data.get('keyword', '').strip()

    if not keyword:
        return jsonify({"status": "fail", "message": "Keyword kosong"})

    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    sql = """
        SELECT package_id, jenis_barang, nama, no_telepon
        FROM cstracking
        WHERE jenis_barang LIKE %s
        OR nama LIKE %s
        ORDER BY package_id DESC
    """
    param = ('%' + keyword + '%', '%' + keyword + '%')
    cursor.execute(sql, param)

    results = cursor.fetchall()
    cursor.close()
    conn.close()

    return jsonify({"status": "success", "data": results})

