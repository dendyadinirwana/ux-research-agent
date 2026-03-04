# Synthesis Deep — Deep Reference

> Dibaca Claude saat:
> - Stage 1: User punya data mentah yang perlu di-cluster & di-interpret
> - Stage 2: Butuh rumuskan insight statement dan prioritasi problem
> - Kapanpun user menyebut "affinity map", "insight", "opportunity", "HMW"

---

## Table of Contents
1. [Dari Data Mentah ke Insight](#1-dari-data-ke-insight)
2. [Affinity Mapping — Proses & Fasilitasi](#2-affinity-mapping)
3. [Insight Statements yang Kuat](#3-insight-statements)
4. [Opportunity Sizing](#4-opportunity-sizing)
5. [How Might We (HMW)](#5-how-might-we)
6. [Prioritasi — Framework & Pilih yang Tepat](#6-prioritasi)

---

## 1. Dari Data Mentah ke Insight

### Tiga Level Synthesis

```
LEVEL 1 — OBSERVASI (apa yang terjadi)
"User sering mengulang klik pada tombol yang sama."
"Tiga dari lima responden menyebut kata 'bingung'."
→ Hanya deskripsi. Belum punya nilai strategis.

LEVEL 2 — PATTERN (mengapa ini konsisten)
"User tidak mendapat feedback visual setelah klik — mereka tidak yakin aksinya berhasil."
→ Lebih kuat, tapi masih missing 'so what'.

LEVEL 3 — INSIGHT (makna + implikasi)
"User kehilangan kepercayaan pada sistem saat tidak ada konfirmasi aksi — 
mereka butuh micro-feedback yang meyakinkan, bukan sekadar loading spinner."
→ Siap jadi landasan keputusan desain.
```

**Tugas Claude:** Jangan berhenti di Level 1. Push user (dan diri sendiri) ke Level 3.

### Cek Kualitas Insight
Insight yang baik lulus 4 pertanyaan ini:
```
□ Apakah ini berbasis data — bukan asumsi tim?
□ Apakah ini mengungkap sesuatu yang belum obvious?
□ Apakah ini bisa jadi landasan untuk keputusan desain?
□ Apakah ini menyebut user behavior, bukan fitur yang diinginkan?
```

---

## 2. Affinity Mapping — Proses & Fasilitasi

### Kapan pakai
Punya 15+ raw data points (quotes, observasi, pain points) yang belum terstruktur.

### Proses (versi interaktif dengan user)

**Step 1 — Dump semua data:**
```
"Oke, kita mulai dengan brain dump.
Sebutin semua yang lo atau tim lo observe / dengar dari user — jangan filter dulu.
Bisa quotes, perilaku, keluhan, hal yang mengejutkan. Satu per satu."

[Claude catat setiap item sebagai note terpisah]
```

**Step 2 — Cluster berdasarkan kesamaan:**
```
"Gw mulai cluster yang kelihatan nyambung.
Lo bisa kasih input kalau ada yang menurut lo harus dipisah atau digabung.

CLUSTER SEMENTARA:
📌 [Tema A]: [note 1], [note 2], [note 3]
📌 [Tema B]: [note 4], [note 5]
📌 [Tema C]: [note 6], [note 7], [note 8]
❓ BELUM JELAS: [note 9] — ini masuk mana menurut lo?"
```

**Step 3 — Kasih nama cluster yang meaningful:**
```
Nama cluster yang baik:
✅ "Anxiety saat tidak ada konfirmasi"
✅ "Trust yang hilang di onboarding"
❌ "Masalah UX" (terlalu generic)
❌ "Pain points checkout" (terlalu deskriptif, belum insight)

Nama cluster = pernyataan tentang perilaku/emosi user, bukan label kategori produk.
```

**Step 4 — Hierarchy (kalau perlu):**
```
Kalau cluster banyak (> 6), cari super-cluster:

SUPER CLUSTER: [Tema besar]
├── Cluster A: ...
├── Cluster B: ...
└── Cluster C: ...

SUPER CLUSTER: [Tema besar lain]
├── Cluster D: ...
└── Cluster E: ...
```

### Output Affinity Map dalam Text
```
═══════════════════════════════════════════════════════════════════
🗺 AFFINITY MAP — [Nama Project]
Total data points: [X] | Clusters: [Y]
═══════════════════════════════════════════════════════════════════

📌 CLUSTER 1: "[Nama cluster — pernyataan behavior/emosi]"
   Frequency: [X dari Y responden / sessions]
   Data points:
   • [Quote atau observasi konkret]
   • [Quote atau observasi konkret]
   Key tension: [Apa yang user mau vs apa yang terjadi]

📌 CLUSTER 2: "[Nama cluster]"
   Frequency: ...
   Data points: ...
   Key tension: ...

❓ OUTLIER (belum masuk cluster manapun):
   • [item] — worth watching karena: ...
═══════════════════════════════════════════════════════════════════
```

---

## 3. Insight Statements yang Kuat

### Formula Insight Statement
```
"[Segmen user spesifik] [melakukan perilaku X] bukan karena [asumsi umum / obvious reason],
tapi karena [underlying reason dari riset].
Ini berarti [implikasi strategis untuk desain / bisnis]."
```

### Contoh — Kuat vs Lemah
```
❌ LEMAH:
"User kesulitan menggunakan fitur pencarian."
→ Ini observasi. Bukan insight.

✅ KUAT:
"User yang baru pertama kali buka platform tidak menggunakan search bar
bukan karena tidak tahu fiturnya ada, tapi karena mereka belum tahu
apa yang harus dicari — mereka butuh discovery, bukan pencarian.
Ini berarti fitur explore/browse jauh lebih kritis dari search untuk new user."
```

### Cara Claude bantu user formulasikan insight:
```
"Lo punya observasi: [parafrase dari yang user bilang].

Gw mau coba formulasiin ini jadi insight. Koreksi kalau ada yang salah:

'[User segment] [perilaku] — bukan karena [asumsi tim yang umum],
tapi karena [interpretasi dari data lo].
Implikasinya: [apa yang harusnya berubah di desain/produk].'

Ini akurat? Ada nuance yang hilang?"
```

---

## 4. Opportunity Sizing

### Kapan pakai
Stage 2 Define — setelah punya beberapa insight, user perlu prioritasi mana yang paling worth solving.

### Framework — 3 Dimensi Opportunity

```
Untuk setiap insight/problem yang ditemukan, evaluasi 3 hal:

1. IMPORTANCE (seberapa penting buat user)
   Skala 1–5:
   5 = Blocker — tanpa ini user tidak bisa/mau lanjut
   3 = Friction — bikin repot tapi masih bisa workaround
   1 = Nice to have — user gak notice kalau tidak ada

2. SATISFACTION (seberapa terpenuhi saat ini)
   Skala 1–5:
   5 = Sudah sangat terpenuhi (tidak perlu disentuh)
   3 = Sebagian terpenuhi
   1 = Sama sekali tidak terpenuhi (gap besar)

3. FREQUENCY (seberapa sering ini terjadi)
   Skala 1–5:
   5 = Terjadi setiap kali pakai produk
   3 = Kadang-kadang
   1 = Edge case / sangat jarang
```

**Opportunity Score:**
```
OPPORTUNITY SCORE = Importance + (Importance - Satisfaction)

Score tinggi = Penting tapi belum terpenuhi = Opportunity besar

Tambahkan Frequency sebagai multiplier:
PRIORITY SCORE = Opportunity Score × (Frequency/5)
```

### Output Tabel Prioritasi
```
═══════════════════════════════════════════════════════════════════
📊 OPPORTUNITY SIZING TABLE
═══════════════════════════════════════════════════════════════════
PROBLEM / INSIGHT         │ IMP │ SAT │ OPP │ FREQ │ PRIORITY
──────────────────────────┼─────┼─────┼─────┼──────┼─────────
[Insight 1]               │  5  │  2  │  8  │  5   │ 🔴 HIGH
[Insight 2]               │  4  │  3  │  5  │  3   │ 🟡 MED
[Insight 3]               │  3  │  4  │  2  │  2   │ 🟢 LOW
[Insight 4]               │  5  │  5  │  5  │  4   │ ⚪ SKIP*
─────────────────────────────────────────────────────────────────
*Penting tapi sudah terpenuhi — jangan break yang sudah kerja
═══════════════════════════════════════════════════════════════════
```

**Cara Claude fasilitasi ini:**
```
"Kita punya [X] insight dari riset. Gw mau bantu lo prioritasin.
Untuk setiap insight, gw minta lo rate 3 hal — skala 1–5:

1. Seberapa PENTING ini buat user? (1=nice to have, 5=blocker)
2. Seberapa TERPENUHI ini sekarang? (1=belum sama sekali, 5=sudah sangat baik)
3. Seberapa SERING ini terjadi? (1=jarang, 5=setiap pakai)

Kita mulai dari [Insight 1]: [deskripsi singkat]. Rating lo?"
```

---

## 5. How Might We (HMW)

### Kapan pakai
Bridge dari problem ke ideation — di akhir Stage 2 sebelum masuk Stage 3.

### Formula HMW yang Baik
```
"How might we [verb] [subject] [so that / without] [constraint/outcome]?"

✅ BAIK:
"How might we help new users discover relevant content
without requiring them to know what they're looking for?"

❌ TERLALU SEMPIT (sudah implied solution):
"How might we add a recommendation carousel to the home page?"

❌ TERLALU LUAS:
"How might we improve user experience?"
```

### HMW Generator — dari insight ke HMW
```
Dari setiap insight, bisa generate 3 tipe HMW:

INSIGHT: "User baru tidak tahu apa yang harus dicari — mereka butuh discovery."

TYPE 1 — Solve langsung:
"How might we help user baru explore tanpa perlu tau apa yang mereka cari?"

TYPE 2 — Remove friction:
"How might we mengurangi anxiety user baru saat pertama buka platform?"

TYPE 3 — Amplify positive:
"How might we memanfaatkan curiosity user baru sebagai entry point?"

→ Ketiga tipe ini menghasilkan arah ideasi yang berbeda.
```

**Cara Claude generate HMW bareng user:**
```
"Dari insight ini: '[insight statement]'

Gw coba generate 3 HMW dengan angle berbeda:

1. [HMW — angle solve langsung]
2. [HMW — angle remove friction]
3. [HMW — angle amplify positive]

Mana yang paling menarik buat lo eksplorasi lebih jauh?
Atau lo punya angle lain yang gw miss?"
```

---

## 6. Prioritasi — Framework & Pilih yang Tepat

### Panduan pilih framework prioritasi:

| Situasi | Framework yang Cocok |
|---------|---------------------|
| Banyak insight, tidak tau mulai dari mana | Opportunity Sizing (section 4) |
| Tim sudah punya kandidat solusi | Impact vs Effort Matrix |
| Perlu justify ke stakeholder dengan data | Opportunity Sizing + Metrics Tie-in |
| Sprint pendek, resource terbatas | MoSCoW (Must/Should/Could/Won't) |
| Produk mature, user base besar | Kano Model |

### Impact vs Effort Matrix (quick version)
```
                HIGH IMPACT
                     │
    QUICK WINS   │   BIG BETS
    (Prioritas   │   (Plan dulu,
     utama)      │    jadwalkan)
─────────────────┼─────────────────
    FILL-INS     │   THANKLESS TASKS
    (Kalau ada   │   (Hindari atau
     waktu)      │    delegate)
                     │
                LOW IMPACT
    LOW EFFORT        HIGH EFFORT
```

**Fasilitasi dengan user:**
```
"Kita punya [X] insights/ideas. Gw gambar 4 kuadran — lo tentuin posisi masing-masing:
High/Low Impact × High/Low Effort.

Mulai dari [item 1]: menurut lo ini effort-nya gimana? Impact-nya ke user seberapa besar?"
```

---

*Reference ini adalah bagian dari skill `ux-deep-research`. Kembali ke SKILL.md untuk routing stage berikutnya.*
