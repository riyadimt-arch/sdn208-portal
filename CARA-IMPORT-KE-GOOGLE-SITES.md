# 📚 Cara Import ke Google Sites (Paling Mudah!)

## ⚠️ PENTING: Bukan Import Langsung!

Next.js **tidak bisa** di-import langsung ke Google Sites karena:
- Google Sites = Static HTML saja
- Next.js = Server-side code + Database + Authentication

**SOLUSI:** Deploy dulu → Link dari Google Sites

---

## ✅ Cara Paling Mudah (3 Menit)

### Step 1: Deploy ke Vercel (Gratis)

1. **Buka Vercel**
   ```
   https://vercel.com
   ```

2. **Sign Up/Login**
   - Pilih **"Continue with GitHub"** atau **"Continue with Google"**

3. **Buat Project Baru**
   - Klik **"Add New..."** → **"Project"**

4. **Import Repository**
   - Pilih repository `sdn208-portal`
   - (Jika belum ada, upload ke GitHub dulu)

5. **Deploy**
   - Klik tombol **"Deploy"**
   - Tunggu 2-3 menit

6. **Copy URL Hasil**
   ```
   https://sdn208-portal.vercel.app
   ```

---

### Step 2: Link ke Google Sites

#### Cara 1: Direct Button (Paling Simple)

1. **Buka Google Sites**
   - https://sites.google.com

2. **Edit Halaman**
   - Klik kanan → **Edit**

3. **Tambahkan Tombol**
   - Klik **Insert** → **Button**
   - Teks: **"🏫 Portal Sekolah"**
   - URL: `https://sdn208-portal.vercel.app`
   - Centang: **"Open in new tab"** ✓

4. **Simpan & Publish**
   - Klik **Publish**
   - Selesai! ✅

---

#### Cara 2: Card dengan Tombol (Lebih Profesional)

**Tampilan yang diinginkan:**
```
┌─────────────────────────────────────────┐
│  🏫 PORTAL SDN 208 LUGINASARI         │
│                                      │
│  Akses data siswa, guru, pembelajaran, │
│  dan ujian online                      │
│                                      │
│         [ Buka Portal Sekolah ]        │
└─────────────────────────────────────────┘
```

**Cara buat di Google Sites:**

1. **Insert Box**
   - Klik **Insert** → **Box**
   - Drag ke posisi yang diinginkan
   - Set background: Light blue
   - Set border: Rounded corners

2. **Tambahkan Judul**
   - Di dalam box, klik **Insert** → **Text**
   - Ketik: **"🏫 PORTAL SDN 208 LUGINASARI"**
   - Set font size: Large
   - Set color: Dark blue

3. **Tambahkan Deskripsi**
   - Klik **Insert** → **Text**
   - Ketik: "Akses data siswa, guru, pembelajaran, dan ujian online"
   - Set font size: Normal

4. **Tambahkan Tombol**
   - Klik **Insert** → **Button**
   - Text: **"Buka Portal Sekolah"**
   - URL: `https://sdn208-portal.vercel.app`
   - Style: Filled (solid color)
   - Color: Blue

5. **Align Semua ke Center**
   - Pilih semua elemen
   - Klik align center

6. **Publish** ✅

---

#### Cara 3: Image dengan Link

1. **Siapkan Gambar**
   - Logo sekolah
   - Atau banner dengan teks "Portal Sekolah"

2. **Upload ke Google Sites**
   - Klik **Insert** → **Image**
   - Upload gambar

3. **Add Link**
   - Klik gambar
   - Klik **Insert** → **Link**
   - URL: `https://sdn208-portal.vercel.app`

4. **Publish** ✅

---

## 🚫 Cara yang TIDAK Direkomendasikan

### Iframe Embed

**JANGAN gunakan iframe untuk portal ini!**

❌ **Masalah:**
- Login tidak akan work (cookie diblokir)
- Session management gagal
- User experience buruk
- Mobile experience jelek

✅ **Gunakan Direct Link saja!**

---

## 📖 Cara Upload ke GitHub (Step-by-Step)

### Jika Belum Punya GitHub:

1. **Buat Account GitHub**
   - Kunjungi: https://github.com
   - Klik **Sign Up**
   - Gratis!

2. **Buat Repository Baru**
   - Login ke GitHub
   - Klik **"+"** (pojok kanan atas)
   - Pilih **"New repository"**

3. **Setup Repository**
   - Repository name: `sdn208-portal`
   - Description: `Portal Sekolah SDN 208 Luginasari`
   - Pilih: **Public**
   - Centang: **"Initialize this repository with a README"**
   - Klik **"Create repository"**

4. **Push Code**
   - Buka terminal di folder project
   - Jalankan:

```bash
# Inisialisasi git
git init

# Add semua file
git add .

# Commit
git commit -m "Portal Sekolah SDN 208"

# Add remote (ganti USERNAME)
git remote add origin https://github.com/USERNAME/sdn208-portal.git

# Push ke GitHub
git push -u origin main
```

5. **Ganti USERNAME** dengan username GitHub Anda!

---

## 🎯 Full Workflow (Dari Awal sampai Selesai)

### Hari 1: Setup & Deploy

```
1️⃣ Buat GitHub account
2️⃣ Upload code ke GitHub
3️⃣ Deploy ke Vercel (otomatis dari GitHub)
4️⃣ Dapatkan URL: https://sdn208-portal.vercel.app
5️⃣ Link ke Google Sites
```

### Hari 2+: Update & Deploy

```
1️⃣ Edit code di lokal
2️⃣ Test: bun run dev
3️⃣ Commit: git add . && git commit -m "update"
4️⃣ Push: git push
5️⃣ Vercel otomatis deploy! ✅
```

---

## 🔧 Troubleshooting

### Problem: Vercel Build Failed

**Cek:**
1. Pastikan file tidak ada di .gitignore
2. Cek build log di Vercel dashboard
3. Pastikan dependencies lengkap

**Solution:**
- Run `bun run build` di lokal
- Pastikan build sukses

---

### Problem: Link di Google Sites Tidak Klik

**Cek:**
1. Pastikan URL benar (http vs https)
2. Pastikan tidak ada spasi di URL

**Solution:**
- Copy URL langsung dari Vercel
- Paste tanpa edit

---

### Problem: Login Tidak Work

**Cek:**
1. Jangan gunakan iframe
2. Pastikan menggunakan Direct Link
3. Clear browser cache

**Solution:**
- Gunakan direct link / tombol
- Buka di tab baru

---

## 📱 Test Setelah Deploy

### Checklist:

- [ ] Buka URL Vercel
- [ ] Test login: admin / admin123
- [ ] Cek dashboard
- [ ] Cek data guru
- [ ] Cek data siswa
- [ ] Test link di Google Sites
- [ ] Test di mobile

---

## 🎉 Success!

Jika semua langkah selesai:

✅ Portal deploy di Vercel
✅ Terlink di Google Sites
✅ Bisa diakses publik
✅ Login berfungsi
✅ Mobile responsive

**Selamat! 🎊**

---

## 💡 Tips

1. **Custom Domain**
   - Setup di Vercel → Settings → Domains
   - Tambahkan domain sekolah
   - Update DNS

2. **Analytics**
   - Vercel Analytics gratis
   - Track visitor

3. **Speed**
   - Vercel CDN global
   - Cepat di seluruh dunia

---

## 📞 Bantuan

### Akun Demo Testing:
| Role | Username | Password |
|------|----------|----------|
| Admin | admin | admin123 |
| Guru | guru1 | guru123 |
| Siswa | siswa1 | siswa123 |

### Links:
- **Vercel**: https://vercel.com/docs
- **Google Sites**: https://support.google.com/sites

---

**Sampai jumpa di deployment! 🚀**
