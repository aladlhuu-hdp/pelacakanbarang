from flask import Blueprint, request, jsonify
from datetime import datetime, timezone, timedelta
import mysql.connector
import pytz

def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="25262526",
        database="pbl" 
    )

public_bp = Blueprint('public_bp', __name__)

@public_bp.route('/multi_resi', methods=['POST'])
def multi_resi():
    data = request.get_json()
    resi_list = data.get('resi_list', [])

    if not resi_list:
        return jsonify({"status": "fail", "message":"Daftar resi kosong"})
    
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    
    try:
        placeholders = ','.join(['%s'] * len (resi_list))
        query = f"""
            select*from cstracking
            where package_id in({placeholders}) 
            order by tanggal_kirim ASC, estimasi_tiba ASC
        """
        cursor.execute(query, resi_list)
        hasil = cursor.fetchall()
        while cursor .nextset():
            pass

        tracking_list = hasil if hasil else []

        for item in hasil:
            cursor2 = conn.cursor()
            cursor2.execute("""
                INSERT INTO tracking (resi, status_update, lokasi_terkini)
                VALUES (%s, %s, %s)
            """, (item['package_id'], item['status_paket'], item['alamat']))
            cursor2.close()

        conn.commit()
        
        if hasil:
            return jsonify({
                "status": "success",
                "data": hasil,
                "tracking": tracking_list
            })
        else:
            return jsonify({"status": "fail", "message": "Resi tidak ditemukan"})
        
        for d in hasil:
                if isinstance(d.get('tanggal_kirim'), datetime):
                    d['tanggal_kirim'] = d['tanggal_kirim'].strftime('%Y-%m-%d')

        return jsonify({
                "status": "success",
                "data": hasil
            })  

    except Exception as e:
        return jsonify({"status": "fail", "message": str(e)})  
    finally:  
        cursor.close()
        conn.close()
