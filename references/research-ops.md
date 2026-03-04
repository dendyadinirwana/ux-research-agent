# Research Ops — Deep Reference

> Dibaca Claude saat:
> - Stage 0: User perlu setup penelitian dari nol (timeline, rekrut, tool)
> - User menyebut "gimana cara rekrut responden", "tool apa yang dipake", "butuh berapa orang"
> - User perlu research plan sebelum mulai eksekusi

---

## Table of Contents
1. [Research Planning Canvas](#1-planning-canvas)
2. [Rekrutmen Responden](#2-rekrutmen)
3. [Tool Stack per Metode](#3-tool-stack)
4. [Informed Consent & Etika Riset](#4-etika)
5. [Timeline Planning](#5-timeline)
6. [Knowledge Management — Supaya Insight Tidak Silo](#6-knowledge-management)

---

## 1. Research Planning Canvas

Gunakan ini sebelum mulai eksekusi apapun:

```
═══════════════════════════════════════════════════════════════════
📐 RESEARCH PLANNING CANVAS
═══════════════════════════════════════════════════════════════════

RESEARCH QUESTION (satu kalimat — apa yang ingin dijawab?)
→ ...

BUSINESS QUESTION (mengapa ini penting untuk bisnis?)
→ ...

METODE
→ Primary: [Metode utama]
→ Secondary: [Metode pendukung, jika ada]

RESPONDEN
→ Target profil: [deskripsi spesifik]
→ Kriteria inklusi: [siapa yang eligible]
→ Kriteria eksklusi: [siapa yang tidak eligible]
→ Jumlah: [angka konkret]
→ Cara rekrut: [channel rekrutmen]

TIMELINE
→ Prep & rekrut: [tanggal mulai–selesai]
→ Fieldwork: [tanggal mulai–selesai]
→ Analisis: [tanggal mulai–selesai]
→ Deliverable: [tanggal]

DELIVERABLE
→ Format output: [brief / deck / doc / workshop]
→ Untuk siapa: [audiens]

BUDGET
→ Responden incentive: [total]
→ Tool: [total]
→ Lain-lain: [total]

ASUMSI YANG DITEST
→ [Asumsi 1 yang mau divalidasi]
→ [Asumsi 2]

DEFINISI SUKSES
→ Riset ini berhasil kalau: [kondisi konkret]
═══════════════════════════════════════════════════════════════════
```

---

## 2. Rekrutmen Responden

### Profil Responden yang Tepat
```
Profil yang baik adalah spesifik, bukan generic.

❌ TERLALU BROAD:
"User berumur 20–40 tahun yang pakai smartphone."

✅ SPESIFIK:
"Freelancer atau karyawan yang pernah melakukan pembayaran digital
minimal 2x per bulan dalam 3 bulan terakhir,
dan pernah mengalami masalah saat proses pembayaran."

DIMENSI UNTUK DEFINE PROFIL:
• Demografis: usia, gender, lokasi (kalau relevan)
• Behavioral: perilaku atau kebiasaan spesifik yang relevan
• Experiential: pengalaman dengan produk/domain tertentu
• Attitudinal: sikap atau belief yang relevan (early adopter vs late adopter)
```

### Screening Questions
```
Bantu user buat 3–5 pertanyaan screening untuk filter responden yang tepat:

CONTOH:
1. "Apakah lo pernah [melakukan aktivitas X] dalam 3 bulan terakhir?"
   → Eliminasi: tidak pernah

2. "Seberapa sering lo [aktivitas relevan]?"
   A. Hampir setiap hari ← TARGET
   B. 1–2x seminggu ← TARGET
   C. Sekali sebulan ← mungkin exclude
   D. Sangat jarang ← exclude

3. "Platform apa yang biasanya lo pakai untuk [aktivitas]?"
   → Pastikan ada variasi (tidak semua dari platform yang sama)

PRINSIP SCREENING:
• Jangan reveal jawaban yang "benar" dalam pertanyaan
• Hindari leading: "Apakah lo setuju bahwa [produk] mudah digunakan?"
• Sertakan satu pertanyaan open-ended untuk lihat cara mereka expression
```

### Channel Rekrutmen — per Budget & Waktu
```
GRATIS / CEPAT:
• Network pribadi — cepat, tapi risiko familiarity bias (mereka ingin menyenangkan lo)
• LinkedIn — efektif untuk B2B / profesional, butuh pesan yang compelling
• Community (Facebook Group, Discord, Telegram) — efektif kalau lo aktif di community
• Email blast ke existing user — kalau lo punya akses database
• Guerrilla (coffee shop, mall) — untuk consumer, tidak butuh akses database

BERBAYAR / LEBIH TERSCREENING:
• User testing platform (Maze, UserZoom, Respondent.io)
• Research panel (Nielsen, Ipsos — untuk scale besar)
• Incentive via e-voucher / transfer (tingkatkan response rate signifikan)

REKRUTMEN INTERNAL (B2B):
• Via sales/CS yang punya hubungan dengan user
• Via email ke existing customer dengan izin tim
• Pastikan ada incentive — bahkan untuk internal user
```

### Template Pesan Rekrutmen
```
[SHORT VERSION — untuk WhatsApp/DM]
"Hei [nama]! Kami lagi lakukan riset singkat tentang [topik].
Butuh 30 menit ngobrol santai — tidak ada jawaban benar/salah.
Ada [incentive] sebagai apresiasi. Tertarik? Reply 'Ya' dan gw kirim detailnya."

[LONG VERSION — untuk email]
Subject: Undangan Riset — 30 Menit, [Incentive]

Hei [nama],

Kami dari [tim/perusahaan] lagi ngejalanin penelitian tentang [topik yang relevan].

Kami cari [profil singkat] yang mau ngobrol 30 menit via [platform].
Tidak ada persiapan khusus — tinggal sharing pengalaman lo.

Sebagai apresiasi: [incentive konkret].

Kalau tertarik, isi form singkat ini [link] untuk cek apakah lo match dengan
kriteria yang kita cari.

Sesi bisa dijadwalin [range waktu] — fleksibel mengikuti jadwal lo.

Makasih!
[Nama]
```

---

## 3. Tool Stack per Metode

### Rekrutmen & Scheduling
```
Tool          │ Harga      │ Cocok untuk
──────────────┼────────────┼──────────────────────────
Calendly      │ Gratis/paid│ Scheduling otomatis
Google Form   │ Gratis     │ Screening form sederhana
Typeform      │ Gratis/paid│ Screening form yang engaging
Respondent.io │ Berbayar   │ Panel rekrutmen terscreened
```

### User Interview & Usability Testing
```
Tool          │ Harga      │ Cocok untuk
──────────────┼────────────┼──────────────────────────
Google Meet   │ Gratis     │ Remote interview, record
Zoom          │ Gratis/paid│ Remote interview, screen share
Lookback      │ Berbayar   │ Moderated + unmoderated testing
Maze          │ Gratis/paid│ Unmoderated usability testing
Lyssna        │ Gratis/paid│ Unmoderated testing, 5-sec test
UserZoom      │ Enterprise │ Large-scale testing
```

### Survey
```
Tool          │ Harga      │ Cocok untuk
──────────────┼────────────┼──────────────────────────
Google Forms  │ Gratis     │ Survey sederhana
Typeform      │ Gratis/paid│ Survey dengan UX bagus
SurveyMonkey  │ Gratis/paid│ Analytics lebih advanced
Tally         │ Gratis/paid│ Alternatif Typeform gratis
```

### Analytics & Session Recording
```
Tool          │ Harga      │ Cocok untuk
──────────────┼────────────┼──────────────────────────
Google Analytics│ Gratis   │ Traffic, funnel, behavior
Mixpanel      │ Gratis/paid│ Event-based analytics, cohort
Hotjar        │ Gratis/paid│ Heatmap, session recording, survey
Microsoft Clarity│ Gratis  │ Heatmap + recording (gratis penuh)
FullStory     │ Berbayar   │ Detailed session recording
```

### Synthesis & Documentation
```
Tool          │ Harga      │ Cocok untuk
──────────────┼────────────┼──────────────────────────
FigJam        │ Gratis/paid│ Affinity mapping kolaboratif
Miro          │ Gratis/paid│ Workshop & synthesis
Notion        │ Gratis/paid│ Research repository
Dovetail      │ Berbayar   │ Research repository + tagging
Airtable      │ Gratis/paid│ Structured insight library
```

---

## 4. Informed Consent & Etika Riset

Bagian yang sering di-skip tapi krusial:

```
YANG WAJIB DIKOMUNIKASIKAN KE RESPONDEN:
□ Tujuan riset (high-level — tidak perlu expose hipotesis)
□ Cara data akan digunakan
□ Apakah sesi direkam
□ Siapa yang akan melihat data
□ Hak untuk stop kapanpun tanpa konsekuensi
□ Cara menghubungi jika ada pertanyaan setelahnya

TEMPLATE VERBAL CONSENT (di awal sesi):
"Sebelum kita mulai — gw mau inform beberapa hal:
Sesi ini akan gw rekam untuk keperluan analisis — hanya tim kecil yang akan akses.
Lo bisa stop kapanpun atau skip pertanyaan yang tidak nyaman.
Nama lo tidak akan disebut dalam laporan — kita pakai inisial atau pseudonim.
Ada pertanyaan sebelum kita mulai?"

PERLINDUNGAN DATA:
• Simpan data di tempat yang aman (bukan email attachments)
• Anonymize sebelum share ke stakeholder
• Tentukan berapa lama data disimpan
• Jangan share recording tanpa izin eksplisit responden
```

---

## 5. Timeline Planning

### Estimasi waktu per metode:
```
METODE                  │ PREP  │ FIELDWORK │ ANALISIS │ TOTAL
────────────────────────┼───────┼───────────┼──────────┼────────
Guerrilla Interview     │ 1 hari│ 1–2 hari  │ 1–2 hari │ 3–5 hari
In-depth Interview (5x) │ 3 hari│ 5–7 hari  │ 3–5 hari │ ~2 minggu
Survey Kuantitatif      │ 2 hari│ 5–7 hari  │ 2–3 hari │ ~2 minggu
Usability Testing (5x)  │ 3 hari│ 3–5 hari  │ 3–5 hari │ ~2 minggu
Diary Study             │ 3 hari│ 7–14 hari │ 5–7 hari │ 3–4 minggu
Analytics Audit         │ 1 hari│ –         │ 3–5 hari │ ~1 minggu
```

### Buffer yang sering dilupakan:
```
⚠️ SELALU tambahkan:
• 30% buffer untuk rekrutmen (orang cancel, no-show)
• 1–2 hari untuk technical issues (rekaman gagal, koneksi buruk)
• 2–3 hari untuk synthesis yang lebih dalam dari ekspektasi
• Review round dengan stakeholder sebelum final deliverable
```

### Quick Research Timeline (kalau waktu mepet < 1 minggu):
```
Hari 1: Finalize research question + screening criteria
Hari 2: Rekrut via network/community + prep discussion guide
Hari 3–4: Jalankan 3–5 interview singkat (30 menit each)
Hari 5: Synthesize pattern + draft insight statements
Hari 6: Share temuan ke stakeholder dalam format sederhana

Output yang realistis: 3–5 directional insights
(Bukan untuk keputusan besar, tapi cukup untuk next step)
```

---

## 6. Knowledge Management — Supaya Insight Tidak Silo

Sistem sederhana yang sustainable:

### Insight Tagging System
```
Setiap insight harus di-tag dengan:
• STAGE: Discovery / Define / Validate / Post-launch
• CONFIDENCE: HIGH / MEDIUM / LOW
• STATUS: Active / Superseded / Needs refresh
• USER SEGMENT: [segment yang relevan]
• FEATURE AREA: [area produk yang terkait]
• DATE: [kapan ditemukan]
```

### Research Handoff ke Tim
```
Ketika researcher harus handoff ke tim lain atau project selesai:

RESEARCH HANDOFF BRIEF:
1. Context: Kenapa riset ini dilakukan
2. Key insights: [3–5 poin utama]
3. What we validated: [asumsi yang terbukti]
4. What we invalidated: [asumsi yang terbukti salah]
5. What we still don't know: [open questions]
6. Recommended next steps: [aksi konkret]
7. Where to find raw data: [link/location]
8. Contact: [siapa yang bisa dihubungi untuk follow-up]
```

---

*Reference ini adalah bagian dari skill `ux-deep-research`. Kembali ke SKILL.md untuk routing stage berikutnya.*
