# 📖 PANDUAN DEPLOY GRATIS + GOOGLE SITES

## 🎯 Cara Cepat (3 Langkah)

### Step 1: Deploy ke Vercel (Gratis)

1. **Buka Vercel**
   - Kunjungi: https://vercel.com
   - Login dengan **Google** atau **GitHub**

2. **Buat Project Baru**
   - Klik **"Add New..."**
   - Pilih **"Project"**

3. **Import dari GitHub**
   - Klik **"Import"** di repository Anda
   - Jika belum ada, upload dulu ke GitHub

4. **Deploy**
   - Klik **"Deploy"**
   - Tunggu 2-3 menit

5. **Dapatkan URL**
   ```
   https://sdn208-portal.vercel.app
   ```

---

### Step 2: Integrasi ke Google Sites

#### Method 1: Direct Link (Paling Simple)

1. **Buka Google Sites**
   - https://sites.google.com

2. **Edit Halaman**
   - Klik kanan → **Edit**

3. **Tambahkan Tombol Portal**
   - Klik **Insert** → **Button** (atau Text)
   - Teks: **"🏫 Portal Sekolah"**
   - URL: `https://sdn208-portal.vercel.app`
   - Centang: **"Open in new tab"**

4. **Simpan & Publish** ✅

---

#### Method 2: Gambar + Link (Lebih Menarik)

1. **Siapkan Gambar**
   - Gunakan logo sekolah
   - Atau gambar dengan teks "Portal Sekolah"

2. **Upload ke Google Sites**
   - Klik **Insert** → **Image**
   - Upload gambar

3. **Add Link**
   - Klik gambar
   - Klik **Insert** → **Link**
   - URL: `https://sdn208-portal.vercel.app`

4. **Publish** ✅

---

#### Method 3: Card/Box dengan Tombol (Profesional)

```
┌─────────────────────────────────┐
│  🏫 Portal SDN 208 LUGINASARI  │
│                                 │
│  Akses data siswa, guru, dan    │
│  pembelajaran interaktif        │
│                                 │
│  [ Buka Portal Sekolah ]        │
└─────────────────────────────────┘
```

**Cara Buat:**

1. Di Google Sites, klik **Insert** → **Box**
2. Set background color (misal: biru muda)
3. Tambahkan:
   - Text title
   - Text deskripsi
   - Button dengan link ke Vercel URL

---

## 📝 Cara Upload ke GitHub

### Jika Belum Punya GitHub Account:

1. **Buat Account**
   - Kunjungi: https://github.com
   - Sign Up (Gratis)

2. **Buat Repository Baru**
   - Klik **"+"** → **"New repository"**
   - Repository name: `sdn208-portal`
   - Klik **"Create repository"**

3. **Push Code**
   ```bash
   cd /path/to/sdn208-portal
   git init
   git add .
   git commit -m "Portal Sekolah SDN 208"
   git remote add origin https://github.com/USERNAME/sdn208-portal.git
   git push -u origin main
   ```

4. **Ganti USERNAME** dengan username GitHub Anda

---

## 🎨 Cara Deploy ke Netlify (Alternatif Gratis)

### Step 1: Build Project

```bash
bun run build
```

### Step 2: Deploy via Web

1. **Buka Netlify**
   - https://app.netlify.com

2. **Drag & Drop**
   - Drag folder `.next` ke area upload
   - Tunggu upload selesai

3. **Settings**
   - Publish directory: `.next`
   - Build command: `bun run build`

4. **Dapatkan URL**
   ```
   https://sdn208-portal.netlify.app
   ```

---

## 🔥 Cara Deploy ke Railway (Dengan Database)

### Kelebihan:
- ✅ Gratis $5 credit
- ✅ Database otomatis
- ✅ Deploy otomatis

### Langkah-langkah:

1. **Buka Railway**
   - https://railway.app

2. **New Project**
   - Click **"New Project"**

3. **Deploy from GitHub**
   - Pilih repository `sdn208-portal`

4. **Add Database**
   - Click **"New Service"**
   - Pilih **PostgreSQL**

5. **Setup Variables**
   - Copy DATABASE_URL
   - Paste ke environment variables

6. **Deploy** ✅

---

## 📱 Cara Test di Mobile

### Setelah Deploy:

1. **Buka URL di Browser**
   ```
   https://sdn208-portal.vercel.app
   ```

2. **Test Login**
   - Username: `admin`
   - Password: `admin123`

3. **Test Fitur**
   - Dashboard
   - Data Guru
   - Data Siswa
   - Pembelajaran

---

## ⚙️ Setup Custom Domain (Opsional)

### Untuk Domain Sekolah: `portal.sdn208.sch.id`

### Step 1: Setup di Vercel

1. **Vercel Dashboard**
   - Buka project
   - Klik **Settings** → **Domains**

2. **Add Domain**
   - Masukkan: `portal.sdn208.sch.id`
   - Klik **Add**

3. **Copy DNS Settings**
   - Vercel akan memberikan CNAME record

### Step 2: Update DNS di Domain Provider

Login ke domain provider (misal: Niagahoster, IDCloudHost, dll)

Tambahkan CNAME:
```
Type: CNAME
Host: portal
Value: cname.vercel-dns.com
TTL: 3600
```

### Step 3: Update Google Sites

Gunakan custom domain:
```
https://portal.sdn208.sch.id
```

---

## 🚨 Troubleshooting

### Problem: Build Failed di Vercel

**Solution:**
1. Cek **Environment Variables**
   - Pastikan `DATABASE_URL` sudah di-set
   - Value: `file:./db/custom.db`

2. Cek **Build Log**
   - Vercel Dashboard → Deployments → View logs

### Problem: Login Tidak Work di Iframe

**Solution:**
- Gunakan **Direct Link** bukan Iframe
- Iframe memblokir cookie
- Direct link lebih baik untuk UX

### Problem: Database Not Found

**Solution:**
1. Add `DATABASE_URL` di Environment Variables
2. Value: `file:./db/custom.db`
3. Redeploy

### Problem: Styles Not Loading

**Solution:**
1. Cek Tailwind config
2. Pastikan build successful
3. Clear browser cache

---

## 📞 Bantuan

### Links Penting:
- **Vercel**: https://vercel.com/docs
- **Netlify**: https://docs.netlify.com
- **Google Sites**: https://support.google.com/sites

### Akun Demo:
| Role | Username | Password |
|------|----------|----------|
| Admin | admin | admin123 |
| Guru | guru1 | guru123 |
| Siswa | siswa1 | siswa123 |

---

## ✅ Checklist Sebelum Deploy

- [ ] Code sudah di-commit ke GitHub
- [ ] Build berhasil (`bun run build`)
- [ ] Lint berhasil (`bun run lint`)
- [ ] Database sudah seeded (`bun run prisma/seed.ts`)
- [ ] Environment variables sudah di-set
- [ ] Custom domain sudah di-setup (opsional)
- [ ] Link sudah ditambahkan di Google Sites

---

## 🎉 Setelah Deploy Sukses

### Workflow Update:

```bash
# 1. Edit code
vim src/app/page.tsx

# 2. Test local
bun run dev

# 3. Commit
git add .
git commit -m "Update: perbaikan bug"

# 4. Push
git push

# 5. Vercel otomatis deploy! ✅
```

---

## 💡 Tips & Tricks

### 1. Auto-Deploy
- Vercel auto-deploy saat push ke GitHub
- Tidak perlu manual deploy lagi

### 2. Preview Environment
- Setiap pull request = preview URL
- Test sebelum production

### 3. Analytics
- Vercel Analytics gratis
- Track visitor dan performance

### 4. Speed
- Vercel CDN global
- Cepat di seluruh dunia

---

## 📊 Perbandingan Platform

| Fitur | Vercel | Netlify | Railway |
|-------|--------|---------|---------|
| Harga | Gratis | Gratis | Gratis ($5 credit) |
| Auto-deploy | ✅ | ✅ | ✅ |
| SSL Gratis | ✅ | ✅ | ✅ |
| Custom Domain | ✅ | ✅ | ✅ |
| CDN Global | ✅ | ✅ | ⚠️ |
| Database | ❌ | ❌ | ✅ |
| Next.js Support | ✅ | ✅ | ✅ |

**Rekomendasi: Vercel** (paling simple dan gratis)

---

## 🎓 Tutorial Video (Opsional)

### Jika Butuh Tutorial Visual:

1. **YouTube Search**: "Deploy Next.js to Vercel"
2. **YouTube Search**: "Google Sites embed external link"

---

## 📞 Kontak

Untuk bantuan lebih lanjut:
- **School**: SDN 208 Luginasari Sukagalih
- **Phone**: (022) 2030044
- **Location**: Jl. Luginasari No. 208, Sukagalih, Kota Bandung

---

**Selamat Deploy! 🚀**
