# Stakeholder Layer — Deep Reference

> Dibaca Claude saat:
> - Stage 6–7: User siap present hasil riset ke internal
> - User menyebut "gimana cara jelasin ke PM / CEO / engineering?"
> - User perlu "jual" temuan riset supaya dapat buy-in

---

## Table of Contents
1. [Kenapa Research Sering Diabaikan](#1-kenapa-research-diabaikan)
2. [Stakeholder Mapping](#2-stakeholder-mapping)
3. [Narasi Riset yang Membujuk](#3-narasi-yang-membujuk)
4. [Format Presentasi per Audiens](#4-format-per-audiens)
5. [Handling Pushback](#5-handling-pushback)
6. [Research Repository — Supaya Insight Tidak Hilang](#6-research-repository)

---

## 1. Kenapa Research Sering Diabaikan

Research yang bagus bisa mati karena cara penyampaian yang salah. Pola yang sering terjadi:

```
❌ Research dump — presentasi semua temuan tanpa kurasi
❌ Data tanpa narasi — grafik dan quote tanpa "so what"
❌ Insight tanpa rekomendasi — "ini masalahnya" tanpa "ini yang kita lakukan"
❌ Salah audiens — bahasa researcher di depan orang bisnis
❌ Timing yang buruk — terlambat di saat keputusan sudah dibuat
```

**Prinsip inti:** Stakeholder tidak peduli dengan proses riset — mereka peduli dengan keputusan yang lebih baik.

---

## 2. Stakeholder Mapping

Sebelum prepare presentasi, bantu user identifikasi audiens:

```
"Siapa yang akan lo present temuan ini?

Untuk setiap stakeholder, lo perlu tau:
1. Apa yang mereka PEDULI (metric / goal mereka)
2. Apa yang mereka KHAWATIRKAN (risk yang mereka manage)
3. Seberapa dalam mereka tahu tentang UX research

Gw bantu lo peta dulu — sebutin nama/role stakeholder utama."
```

**Stakeholder Matrix:**
```
═══════════════════════════════════════════════════════════════════
👥 STAKEHOLDER MAP
═══════════════════════════════════════════════════════════════════
ROLE          │ PEDULI         │ KHAWATIR       │ UX LITERACY
──────────────┼────────────────┼────────────────┼─────────────
CEO/Founder   │ Growth, vision │ Salah arah     │ Low-Medium
Product Lead  │ Roadmap, ship  │ Effort sia-sia │ Medium-High
Engineering   │ Feasibility    │ Scope creep    │ Low-Medium
Marketing     │ Message, user  │ Churn          │ Medium
Sales         │ Deal velocity  │ Objeksi user   │ Low
Finance       │ ROI, cost      │ Budget waste   │ Low
═══════════════════════════════════════════════════════════════════

→ Setiap audiens butuh framing yang berbeda.
```

---

## 3. Narasi Riset yang Membujuk

### The Insight Narrative Framework

Gunakan struktur ini — bukan slide per slide:

```
1. SITUASI (konteks yang mereka sudah tahu)
   "Kita [lagi di sini / punya masalah ini] — dan itu yang jadi trigger riset ini."

2. KOMPLIKASI (temuan yang mengejutkan)
   "Tapi dari riset, kita nemuin sesuatu yang berbeda dari yang kita assume..."

3. PERTANYAAN (yang langsung timbul)
   "Ini raise pertanyaan besar: [masalah yang harus diselesaikan]."

4. JAWABAN (rekomendasi yang grounded)
   "Dan jawaban yang datanya support adalah..."

5. AKSI (konkret dan assignable)
   "Langkah selanjutnya: [siapa, ngapain, kapan]."
```

**Contoh penerapan:**
```
Situasi:    "Conversion rate checkout kita stagnan di 34% selama 4 bulan."
Komplikasi: "Ternyata 60% drop-off bukan karena harga — tapi karena user
             tidak percaya datanya aman di step input kartu."
Pertanyaan: "Bagaimana kita bisa rebuild trust di momen paling kritis?"
Jawaban:    "Data menunjukkan trust signal yang visible di step kartu
             bisa address 60% dari drop-off itu."
Aksi:       "Proposal: A/B test trust badge + SSL indicator di step 3.
             PIC: [nama], timeline: 2 minggu."
```

### Prinsip penyampaian insight:
```
✅ Mulai dengan "Kita nemuin..." bukan "Gw nemuin..."
✅ Quote user langsung — suara user lebih kuat dari suara researcher
✅ Satu insight = satu slide/section — jangan campur
✅ Pastikan setiap insight punya implikasi yang jelas: "Ini berarti..."
✅ Data kuantitatif untuk legitimasi, kualitatif untuk empati
```

---

## 4. Format Presentasi per Audiens

### CEO / Founder
```
FORMAT: Exec summary (1 halaman atau 5 menit max)

STRUKTUR:
• Headline insight: satu kalimat yang mengubah perspektif
• Business implication: dampak ke revenue / growth / retention
• Recommended decision: pilihan konkret yang perlu dibuat
• Risk jika tidak diambil: cost of inaction

HINDARI: Detail metodologi, semua findings, jargon UX

BUKA DENGAN:
"Ada satu temuan yang mungkin counter-intuitive tapi
punya implikasi besar ke [goal bisnis mereka]..."
```

### Product Lead / PM
```
FORMAT: Decision brief (1–2 halaman atau 15 menit)

STRUKTUR:
• Context & research question
• Top 3 findings (dengan evidence)
• Opportunity sizing (mana yang paling worth solving)
• Rekomendasi prioritasi
• Open questions yang masih perlu dijawab

MEREKA PALING SENSITIF TERHADAP:
• "Ini akan menambah scope" → Frame sebagai "ini justru bantu fokus"
• "Riset butuh waktu" → Tunjukkan ROI: riset 2 minggu vs build 3 bulan salah arah
```

### Engineering
```
FORMAT: Technical-friendly brief (fokus pada behavior, bukan opini)

STRUKTUR:
• User behavior yang terobservasi (konkret, tidak interpretif)
• Friction points spesifik (di step mana, dalam kondisi apa)
• Proposed changes dengan rationale
• Edge cases yang ditemukan

NADA:
• Faktual — "3 dari 5 user stuck di step X karena Y"
• Collaborative — "Gw butuh input dari lo soal feasibility ini"
• Hindari kata "simple" dan "just" — engineering selalu lebih complex dari yang keliatan
```

### Seluruh Tim (Town Hall / All Hands)
```
FORMAT: Story-driven (20–30 menit dengan Q&A)

STRUKTUR:
• User story yang relatable sebagai pembuka
• Journey visual (proses riset singkat)
• 2–3 insight utama dengan quote user langsung
• Implication buat setiap fungsi
• Discussion: "Apa yang ini berarti buat pekerjaan lo sehari-hari?"

TIPS:
• Rekaman audio/video user (dengan izin) lebih kuat dari quote teks
• Ajak satu orang dari setiap tim untuk comment
• Akhiri dengan: "Ini bukan akhir — ini awal dari conversation"
```

---

## 5. Handling Pushback

Pushback yang umum terjadi dan cara counter-nya:

```
PUSHBACK: "Sample-nya terlalu kecil, tidak representatif."
COUNTER: "Untuk riset kualitatif, 5–8 responden cukup untuk identify pattern
          (Nielsen Norman Group research). Kita bukan cari angka — kita cari 'mengapa'.
          Kalau lo mau validasi skala, gw saranin survey kuantitatif sebagai langkah berikutnya."

PUSHBACK: "User bilang ini, tapi kita tahu lebih baik dari user."
COUNTER: "Yang menarik justru itu — mereka tidak minta fitur [X], tapi
          perilaku mereka menunjukkan kebutuhan [Y]. Riset ini bukan tentang
          ngikutin apa yang user minta, tapi memahami masalah yang mereka rasakan."

PUSHBACK: "Kita sudah tahu ini masalahnya."
COUNTER: "Besar kemungkinan lo benar. Tapi ada dua insight yang mungkin tidak terduga:
          [sebutkan yang paling counter-intuitive]. Dan sekarang kita punya data
          untuk back up keputusan yang kita buat."

PUSHBACK: "Ini akan memperlambat kita."
COUNTER: "Riset ini justru mempersingkat. Kita spend [2 minggu] untuk riset vs
          risiko build [3 bulan] ke arah yang salah. Data ini mengurangi rework."

PUSHBACK: "Anekdotal — cuma beberapa orang."
COUNTER: "Ini valid. Itulah kenapa di report ini gw bedain mana yang HIGH confidence
          (ada di mayoritas responden) vs MEDIUM/LOW (perlu validasi lebih lanjut).
          Gw rekomendasiin kita act on yang HIGH confidence dulu."
```

---

## 6. Research Repository — Supaya Insight Tidak Hilang

Research yang tidak terdokumentasi dengan baik = invisible. Bantu user setup sistem sederhana:

```
MINIMUM VIABLE RESEARCH REPO:
Cukup 3 dokumen:

1. INSIGHT LIBRARY
   Format: Tabel | Kolom: Insight, Evidence, Date, Project, Status (active/outdated)
   Tujuan: Semua insight bisa di-search dan tidak expired
   Tool: Notion, Confluence, Google Sheets

2. RESEARCH LOG
   Format: List per project | Kolom: Tanggal, Metode, Responden, Link summary
   Tujuan: Audit trail — siapa riset apa kapan
   Tool: Sama di atas

3. ASSUMPTION TRACKER
   Format: Tabel | Kolom: Asumsi, Status (belum/sedang/sudah divalidasi), Evidence
   Tujuan: Jangan validate hal yang sama dua kali
   Tool: Sama di atas
```

**Cara Claude bantu setup:**
```
"Lo mau insight dari riset ini tidak hilang setelah project selesai?

Gw saranin kita dokumentasiin 3 hal sebelum tutup sesi ini:
1. Insight statements yang sudah kita formulasikan (siap masuk Insight Library)
2. Asumsi yang masih belum tervalidasi (masuk Assumption Tracker)
3. Open questions untuk riset berikutnya

Mau gw generate draft-nya dalam format yang bisa langsung lo paste?"
```

---

*Reference ini adalah bagian dari skill `ux-deep-research`. Kembali ke SKILL.md untuk routing stage berikutnya.*
