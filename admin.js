function tampilkanMenu(id) {
  const sections = document.querySelectorAll('.section');
  sections.forEach(sec => sec.style.display = 'none');

  const section = document.getElementById(id);
  if (section) {
    section.style.display = 'block';
  } else {
    console.warn(`Elemen dengan ID ${id} tidak ditemukan`);
  }
}

async function searchPaket() {
  const keyword = document.getElementById("keywordInput").value.trim();

  if (!keyword) {
    alert("Masukkan kata kunci pencarian.");
    return;
  }

  const response = await fetch("http://192.168.1.10:5000/admin/search_paket", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ keyword })
  });

  const result = await response.json();
  const tbody = document.getElementById("hasilPencarian");
  tbody.innerHTML = "";

  if (result.status === "success" && result.data.length > 0) {
    result.data.forEach(item => {
      const row = `
        <tr>
          <td>${item.package_id}</td>
          <td>${item.jenis_barang}</td>
          <td>${item.nama}</td>
          <td>${item.no_telepon}
        </tr>
      `;
      tbody.innerHTML += row;
    });
  } else {
    tbody.innerHTML = `<tr><td colspan="3" style="color:red;">Data tidak ditemukan</td></tr>`;
  }
}


    async function updateStatusResi() {
    const resi = document.getElementById("inputResiUpdate").value;
    const statusBaru = document.getElementById("inputStatusBaru").value;

    if (!resi || !statusBaru) {
        alert("Lengkapi form dulu bang.");
        return;
    }

    const response = await fetch("http://192.168.1.10:5000/admin/update_resi", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ resi: resi, status_update: statusBaru })
    });

    const result = await response.json();
    document.getElementById("updateMessage").innerText = result.message;

    if (result.status === "success") {
        loadTrackingLog(); // refresh tabel kalo perlu
    }
    }



  async function searchRiwayatResi() {
    const resi = document.getElementById("searchResi").value;
    if (!resi) {
      alert("Masukkan resi terlebih dahulu.");
      return;
    }

    const response = await fetch("http://192.168.1.10:5000/admin/search_tracking", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ resi_id: resi })
    });




    const result = await response.json();
    console.log("HASIL FETCD:",result);
    const tbody = document.getElementById("searchResult");
    tbody.innerHTML = "";

    if (result.status === "success" && result.data.length > 0) {
      result.data.forEach(item => {
        const row = `
          <tr>
            <td>${item.resi}</td>
            <td>${item.status_update}</td>
            <td>${item.waktu}</td>
            <td>${item.lokasi_terkini}</td>
          </tr>
        `;
        tbody.innerHTML += row;
      });
    } else {
      tbody.innerHTML = `<tr><td colspan="4" style="color:red;">Resi tidak ditemukan</td></tr>`;
    }
  }



    async function loadData() {
      const res = await fetch("http://192.168.1.10:5000/admin/data_tracking");
      const result = await res.json();
      const tbody = document.getElementById("dataTracking");
      if (!tbody) return; // Hindari error kalau elemen gak ada
      tbody.innerHTML = "";

      if (result.status === "success") {
        result.data.forEach(item => {
          const row = `
            <tr>
              <td>${item.tracking_id}</td>
              <td>${item.shipment_id}</td>
              <td>${item.status_update}</td>
              <td>${item.timestamp ? item.timestamp.split('T')[0] : '-'}</td>
              <td>${item.alamat}</td>
            </tr>
          `;
          tbody.innerHTML += row;
        });
      } else {
        tbody.innerHTML = `<tr><td colspan="5" style="color:red;">${result.message}</td></tr>`;
      }
    }



    async function loadTrackingLog() {
    const res = await fetch("http://192.168.1.10:5000/admin/data_tracking");
    const data = await res.json();
    console.log("Tracking log dari backend:", data);

    const tbody = document.getElementById("logPublic");
    if (!tbody) {
      console.warn("Elemen dengan id 'logPublic' tidak ditemukan.");
      return;
    }
    
    tbody.innerHTML = "";
    
    data.forEach(item => {
        const utcDate = new Date(item.waktu);
        // Kurangi 7 jam (dalam milidetik: 7 * 60 * 60 * 1000)
        const jakartaDate = new Date(utcDate.getTime() - (7 * 60 * 60 * 1000));
        const tanggalFormatted = jakartaDate.toLocaleString('id-ID', {
            hour12: false
        });
        const row = `
        <tr>
            <td>${item.resi}</td>
            <td>${item.status_update}</td>
            <td>${tanggalFormatted}</td>
            <td>${item.lokasi_terkini}</td>
        </tr>
        `;
        tbody.innerHTML += row;
    });
    }

window.onload = () => {
  if (typeof tampilkanMenu === "section") tampilkanMenu('pencarian');
  if (typeof loadData === "section") loadData();
  if (typeof loadTrackingLog === "section") loadTrackingLog();
}

