# 🏫 Portal SDN 208 Luginasari Sukagalih Kota Bandung

Portal sekolah modern, elegan, informatif, dan interaktif dengan Next.js 16, TypeScript, dan Prisma.

## ✨ Fitur

- 🔐 **Autentikasi** dengan Database (Login/Logout)
- 👥 **Data Guru & Siswa** dari database
- 📚 **Pembelajaran Interaktif** untuk Kelas 1-6
- 📝 **Platform Ujian Online**
- 🛡️ **Form Pengaduan Bullying**
- 🌐 **Link E-Raport & Dapodik**
- 📍 **Google Maps** + Informasi Kontak
- 🎨 **Design Modern** dengan shadcn/ui
- 📱 **Responsive** untuk Mobile & Desktop

## 🚀 Deploy Gratis ke Vercel

### Cara Paling Mudah (5 Menit)

#### 1️⃣ Push ke GitHub

```bash
# Jika belum di GitHub
git add .
git commit -m "Portal Sekolah SDN 208"
git remote add origin https://github.com/USERNAME/sdn208-portal.git
git push -u origin main
```

#### 2️⃣ Deploy ke Vercel

1. Buka [vercel.com](https://vercel.com)
2. Sign Up / Login dengan **GitHub**
3. Klik **"Add New..."** → **"Project"**
4. Pilih repository `sdn208-portal`
5. Klik **"Deploy"**
6. Tunggu 2-3 menit... Selesai! ✅

#### 3️⃣ Dapatkan URL

Setelah deploy selesai, Anda akan dapat URL seperti:
```
https://sdn208-portal.vercel.app
```

#### 4️⃣ Setup Environment Variables

Di Vercel Dashboard:

1. Buka **Settings** → **Environment Variables**
2. Tambahkan:
   - **DATABASE_URL**: `file:./db/custom.db`
3. Redeploy dari **Deployments** → **Redeploy**

---

## 🔗 Integrasi ke Google Sites

### Method 1: Direct Link (Paling Recommended)

#### Langkah-langkah:

1. **Buka Google Sites**
   - [sites.google.com](https://sites.google.com)

2. **Edit Halaman**
   - Klik kanan → Edit halaman

3. **Tambahkan Tombol/Link**
   - Klik **Insert** → **Button** atau **Text**
   - Set teks: **"Portal Sekolah"**
   - Set URL: `https://sdn208-portal.vercel.app`
   - Pilih opsi: **"Open in new tab"**

4. **Simpan & Publish**

✅ **Keuntungan:**
- Login berfungsi 100%
- Cepat dan simple
- Tidak ada masalah iframe/cookie
- User experience lebih baik

---

### Method 2: Embed Iframe (Untuk Preview di Google Sites)

⚠️ **Peringatan:** Login mungkin tidak work karena cookie diblokir di iframe.

#### Langkah-langkah:

1. **Di Google Sites**
   - Klik **Insert** → **Embed** → **By URL**

2. **Masukkan URL**
   ```
   https://sdn208-portal.vercel.app
   ```

3. **Adjust Size**
   - Width: 100%
   - Height: 800px

4. **Publish**

❌ **Keterbatasan:**
- Cookie tidak bekerja (login fail)
- Scroll experience kurang baik
- Tidak direkomendasikan untuk aplikasi dengan login

---

### Method 3: Custom Domain (Untuk Sekolah Profesional)

#### Langkah 1: Setup di Vercel

1. Buka project di Vercel Dashboard
2. **Settings** → **Domains**
3. Add domain: `portal.sdn208.sch.id`
4. Ikuti instruksi DNS

#### Langkah 2: Update DNS di Domain Provider

Tambahkan CNAME record:
```
Type: CNAME
Name: portal
Value: cname.vercel-dns.com
```

#### Langkah 3: Link di Google Sites

Gunakan custom domain di Google Sites:
```
https://portal.sdn208.sch.id
```

---

## 📋 Struktur Project

```
sdn208-portal/
├── prisma/
│   ├── schema.prisma       # Database schema
│   └── seed.ts             # Demo data
├── src/
│   ├── app/
│   │   ├── api/            # API routes
│   │   │   ├── auth/       # Authentication
│   │   │   ├── guru/       # Guru data
│   │   │   └── siswa/      # Siswa data
│   │   └── page.tsx        # Main page
│   ├── components/
│   │   └── ui/             # shadcn/ui components
│   └── lib/
│       └── db.ts            # Prisma client
├── db/
│   └── custom.db           # SQLite database
├── public/                 # Static files
└── vercel.json            # Vercel config
```

## 🔐 Akun Demo untuk Testing

| Role | Username | Password |
|------|----------|----------|
| **Admin** | `admin` | `admin123` |
| **Guru** | `guru1` | `guru123` |
| **Siswa** | `siswa1` | `siswa123` |

## 🛠️ Commands

```bash
# Development
bun run dev

# Build untuk production
bun run build

# Lint code
bun run lint

# Push database schema
bun run db:push

# Generate Prisma Client
bun run db:generate

# Seed database dengan data demo
bun run prisma/seed.ts
```

## 🌐 Platform Hosting Gratis

### Vercel (Recommended) ✅
- **Cost**: FREE
- **Limit**: Unlimited personal projects
- **Features**: Auto-deploy, SSL, CDN
- **Link**: [vercel.com](https://vercel.com)

### Netlify (Alternatif)
- **Cost**: FREE
- **Limit**: 100GB bandwidth/month
- **Features**: Auto-deploy, SSL
- **Link**: [netlify.com](https://netlify.com)

### Railway (Dengan Database)
- **Cost**: FREE ($5 credit/month)
- **Limit**: Setelah credit habis, bayar
- **Features**: Database + hosting
- **Link**: [railway.app](https://railway.app)

---

## 📝 Workflow Update Production

Setiap kali ada perubahan:

```bash
# 1. Commit changes
git add .
git commit -m "Update: tambah fitur baru"

# 2. Push ke GitHub
git push

# 3. Vercel otomatis deploy! ✅
```

Vercel akan otomatis build dan deploy setiap kali Anda push ke GitHub.

---

## 🎨 Tech Stack

- **Framework**: Next.js 16 with App Router
- **Language**: TypeScript 5
- **Styling**: Tailwind CSS 4
- **UI Components**: shadcn/ui
- **Database**: Prisma ORM + SQLite
- **Authentication**: Custom implementation with bcrypt
- **Animations**: Framer Motion
- **Icons**: Lucide React
- **Hosting**: Vercel (Gratis)

---

## 💡 Tips & Best Practices

### 1. Security
- ✅ Password di-hash dengan bcrypt
- ✅ HTTP-only cookies
- ✅ Environment variables
- ✅ Input validation

### 2. Performance
- ✅ Image optimization (Next.js Image)
- ✅ Static generation
- ✅ CDN (Vercel)

### 3. SEO
- ✅ Meta tags
- ✅ Sitemap (opsional)
- ✅ Open Graph (opsional)

---

## 📞 Support

- **School**: SDN 208 Luginasari Sukagalih Kota Bandung
- **Phone**: (022) 2030044
- **Address**: Jl. Luginasari No. 208, Sukagalih, Kec. Sukajadi, Kota Bandung

---

## 📄 License

Copyright © 2025 SDN 208 Luginasari Sukagalih Kota Bandung. All rights reserved.
