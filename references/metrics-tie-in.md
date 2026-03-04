# Metrics Tie-In — Deep Reference

> Dibaca Claude saat:
> - Stage 2 Define: User mau connect temuan kualitatif ke data kuantitatif
> - User menyebut "data analytics", "funnel", "conversion", "retention", "NPS", "DAU"
> - User butuh justify research dengan angka, atau sebaliknya — interpret angka dengan riset

---

## Table of Contents
1. [Mengapa Kualitatif + Kuantitatif Harus Berpasangan](#1-mengapa-harus-berpasangan)
2. [Framework HEART — Metrics untuk UX](#2-heart-framework)
3. [Membaca Funnel dengan Lensa UX](#3-funnel-dengan-lensa-ux)
4. [Dari Kualitatif ke Kuantitatif — dan Sebaliknya](#4-bridging-qual-quant)
5. [North Star Metric vs Guardrail Metrics](#5-north-star-vs-guardrail)
6. [Cara Formulasikan Research Impact dalam Angka](#6-research-impact)

---

## 1. Mengapa Kualitatif + Kuantitatif Harus Berpasangan

```
KUANTITATIF tanpa kualitatif:
→ "60% user drop di step 3." — tapi kenapa? Kita tidak tahu.
→ Bahaya: Ambil keputusan berdasarkan gejala, bukan penyakit.

KUALITATIF tanpa kuantitatif:
→ "User bilang step 3 bikin bingung." — tapi seberapa besar dampaknya?
→ Bahaya: Fix masalah edge case seperti masalah mayoritas.

IDEAL — Triangulasi:
→ "60% drop di step 3 (quant). Dari riset, mayoritas user tidak paham
   kenapa data tertentu diminta di sini (qual). Ini bukan UX issue —
   ini trust & transparency issue yang menyebabkan 60% revenue leak."
→ Ini yang bisa jadi landasan keputusan besar.
```

---

## 2. HEART Framework — Metrics untuk UX

Framework dari Google untuk measure UX quality secara sistematis.

```
H — HAPPINESS (kepuasan subjektif)
    Metric: NPS, CSAT, star rating, survey satisfaction
    Cara ukur: Post-task survey, periodic survey
    Pertanyaan: "Seberapa puas user dengan pengalaman ini?"

E — ENGAGEMENT (tingkat keterlibatan)
    Metric: DAU/MAU, session length, fitur yang dipake, depth of interaction
    Cara ukur: Analytics events
    Pertanyaan: "Seberapa sering dan dalam user berinteraksi?"

A — ADOPTION (penerimaan fitur/produk baru)
    Metric: % new user pakai fitur X dalam 30 hari, activation rate
    Cara ukur: Cohort analysis, funnel
    Pertanyaan: "Seberapa cepat user discover dan pakai fitur baru?"

R — RETENTION (tingkat kembali)
    Metric: Day-1/7/30 retention, churn rate, cohort retention curve
    Cara ukur: Cohort analysis
    Pertanyaan: "Seberapa banyak user yang kembali?"

T — TASK SUCCESS (keberhasilan tugas)
    Metric: Completion rate, time-on-task, error rate
    Cara ukur: Usability testing, analytics event sequence
    Pertanyaan: "Seberapa efektif user accomplish goal mereka?"
```

**Cara Claude bantu pilih metric yang tepat:**
```
"Lo mau measure apa dari perubahan ini?

• Kalau lo mau tau user suka atau tidak → HAPPINESS (NPS/CSAT)
• Kalau lo mau tau apakah user makin aktif → ENGAGEMENT (DAU, session)
• Kalau lo mau tau apakah fitur baru kepake → ADOPTION
• Kalau lo mau tau user balik atau tidak → RETENTION
• Kalau lo mau tau user bisa accomplish task → TASK SUCCESS

Mana yang paling relevan dengan masalah yang kita solve?"
```

---

## 3. Membaca Funnel dengan Lensa UX

Saat user share data funnel, ini cara interpret-nya:

```
TEMPLATE FUNNEL ANALYSIS:
Step 1: [X user] → Step 2: [Y user] → Step 3: [Z user] → Converted: [W user]

PERTANYAAN DIAGNOSTIK per drop-off:

Drop antara Step 1 → 2:
→ "Apa yang terjadi di Step 1 yang bikin user tidak lanjut?"
→ Kemungkinan: Value prop tidak jelas, commitment terlalu besar terlalu cepat

Drop antara Step 2 → 3:
→ "Apa yang user butuhkan di Step 2 yang tidak mereka dapat?"
→ Kemungkinan: Friction, confusion, missing info, trust issue

Drop antara Step 3 → Konversi:
→ "Apa yang memblok keputusan akhir?"
→ Kemungkinan: Harga, trust, FOMO, ketidakpastian

BACA JUGA:
• Drop besar = friction atau confusion yang jelas
• Drop kecil tapi konsisten = friction kecil yang menumpuk (death by a thousand cuts)
• Drop mendadak setelah update = fitur baru yang break flow
```

**Cara Claude fasilitasi:**
```
"Share data funnel lo — format apapun bisa.
Gw bantu lo baca mana yang kemungkinan UX issue vs bisnis issue vs teknis issue,
dan recommend langkah riset apa yang bisa explain drop-off tersebut."
```

---

## 4. Dari Kualitatif ke Kuantitatif — dan Sebaliknya

### Arah 1: Quant → Qual (anomali data, perlu explanation)
```
SITUASI: "Analytics kita nunjukin 40% user abandon di halaman payment."

PENDEKATAN:
1. Formulasikan hipotesis berdasarkan angka:
   "Kemungkinan: (a) user tidak percaya, (b) UX confusing, (c) harga tidak expected"

2. Desain riset kualitatif yang target hipotesis:
   → 5 interview dengan user yang pernah abandon
   → Session recording review (kalau ada Hotjar/FullStory)
   → Quick survey: "Apa yang bikin lo stop di halaman payment?"

3. Validasi hipotesis:
   → "Hipotesis (a) terbukti — 4 dari 5 user menyebut trust"
   → Sekarang angka 40% punya makna: ini trust & credibility issue
```

### Arah 2: Qual → Quant (insight perlu di-scale)
```
SITUASI: "Dari 5 interview, user bilang feature X membingungkan."

PENDEKATAN:
1. Jangan langsung generalize — 5 orang bukan representasi semua user
2. Desain survey untuk validate di skala lebih besar:
   "Seberapa mudah lo understand tujuan dari [feature X]?" (skala 1–5)
3. Kalau hasil survey support → confidence HIGH untuk jadikan prioritas
4. Kalau tidak support → ada kemungkinan 5 responden pertama adalah outlier

FORMULA GENERALIZE DENGAN AMAN:
"Dari riset kualitatif (N=5), kita identifikasi [issue].
Survey follow-up (N=120) menunjukkan [X]% mengalami hal yang sama.
Ini mengkonfirmasi bahwa ini bukan edge case."
```

---

## 5. North Star Metric vs Guardrail Metrics

Bantu user think tentang metric yang bisa jadi anchor decision:

```
NORTH STAR METRIC:
→ Satu angka yang paling merefleksikan value yang user dapat dari produk
→ Bukan bisnis metric (revenue) — tapi metric yang, kalau naik, revenue ikut naik
→ Contoh:
   • Spotify: Time listening per user per week
   • Airbnb: Nights booked
   • Gojek: Orders completed per user per month

CARA BANTU USER TEMUKAN NORTH STAR MEREKA:
"Kalau user produk lo makin sukses, apa yang terjadi lebih sering?
Bukan yang lo dapatkan (revenue) — tapi yang user lakukan atau rasakan."

GUARDRAIL METRICS:
→ Metrics yang tidak boleh turun, meski lo optimize north star
→ Contoh: Sambil kejar engagement, jangan sampai abuse report naik
→ Selalu define guardrails sebelum eksperimen
```

---

## 6. Cara Formulasikan Research Impact dalam Angka

Sering kali research susah di-justify karena tidak ada angkanya. Ini cara bantu user hitung:

```
FRAMEWORK: COST OF NOT KNOWING

"Kalau kita build tanpa riset dan salah arah, berapa cost-nya?"

1. ENGINEERING COST:
   [Jumlah engineer] × [Berapa minggu] × [Rate per minggu]
   → Contoh: 3 engineer × 12 minggu × $X/minggu = $Y wasted

2. OPPORTUNITY COST:
   Kalau kita build hal yang salah, apa yang tidak kita build?
   → Feature yang tertunda × potential impact

3. REWORK COST:
   Probabilitas salah arah × cost to fix post-launch
   → "Historical rate kita 30% feature di-revamp dalam 6 bulan"

BANDINGKAN DENGAN RESEARCH COST:
[Waktu research] × [Cost researcher] + [Incentive responden]
→ "2 minggu × $Z = $W untuk riset yang prevent $Y wasted"

JADI FRAMING-NYA:
"Riset ini cost $W. Tanpa riset, risiko kita build salah arah yang cost $Y.
ROI riset: [($Y × 0.3) - $W] / $W = [X]%"
```

**Cara Claude bantu formulasikan:**
```
"Lo perlu justify kenapa riset ini worth dilakukan?

Gw bantu hitung rough ROI. Ceritain:
1. Berapa lama project yang akan dipengaruhi hasil riset ini?
2. Berapa orang yang akan work di project itu?
3. Berapa kira-kira biaya riset ini (waktu + responden)?

Dari sana gw bisa bantu formulasikan cost of not knowing-nya."
```

---

*Reference ini adalah bagian dari skill `ux-deep-research`. Kembali ke SKILL.md untuk routing stage berikutnya.*
