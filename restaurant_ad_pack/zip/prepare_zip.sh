#!/usr/bin/env bash
set -e

# Folder structure
rm -rf build
mkdir -p build/templates
mkdir -p build/mockups
mkdir -p build/docs
mkdir -p build/landing

echo "Creating SVG templates..."

cat > build/templates/template1-1080x1080.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1080" viewBox="0 0 1080 1080">
  <rect width="1080" height="1080" fill="#FFF8F0"/>
  <!-- image placeholder -->
  <rect x="80" y="140" width="920" height="520" fill="#E6D5C6" stroke="#E0CBBF" rx="12"/>
  <text x="540" y="410" font-size="36" text-anchor="middle" fill="#9A6B4F" font-family="Arial">Imagine produs / meniu</text>
  <!-- logo -->
  <circle cx="120" cy="80" r="48" fill="#9A6B4F"/>
  <text x="120" y="88" font-size="20" text-anchor="middle" fill="#FFF" font-family="Arial">LOGO</text>
  <!-- headline -->
  <text x="540" y="700" font-size="48" text-anchor="middle" fill="#2B2B2B" font-family="Arial" font-weight="700">Meniu special azi</text>
  <!-- subheadline -->
  <text x="540" y="760" font-size="20" text-anchor="middle" fill="#555" font-family="Arial">50% reducere pentru comenzile din aplicație</text>
  <!-- CTA -->
  <rect x="360" y="820" width="360" height="72" rx="10" fill="#FF6B35"/>
  <text x="540" y="868" font-size="26" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă acum</text>
  <!-- footer -->
  <text x="540" y="1020" font-size="16" text-anchor="middle" fill="#888" font-family="Arial">www.restaurantul-tau.ro • +40 7XX XXX XXX</text>
</svg>
SVG

cat > build/templates/template1-1200x628.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="628" viewBox="0 0 1200 628">
  <rect width="1200" height="628" fill="#FFF8F0"/>
  <rect x="40" y="40" width="1120" height="360" fill="#E6D5C6" rx="10"/>
  <text x="600" y="220" font-size="28" text-anchor="middle" fill="#9A6B4F" font-family="Arial">Imagine produs / meniu</text>
  <circle cx="80" cy="560" r="48" fill="#9A6B4F"/>
  <text x="80" y="566" font-size="18" text-anchor="middle" fill="#FFF" font-family="Arial">LOGO</text>
  <text x="600" y="440" font-size="36" text-anchor="middle" fill="#2B2B2B" font-family="Arial" font-weight="700">Meniu special azi</text>
  <text x="600" y="480" font-size="16" text-anchor="middle" fill="#555" font-family="Arial">Livrare rapidă • Gust autentic</text>
  <rect x="480" y="500" width="240" height="56" rx="8" fill="#FF6B35"/>
  <text x="600" y="538" font-size="20" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă</text>
  <text x="600" y="600" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">+40 7XX XXX XXX • Adresă</text>
</svg>
SVG

cat > build/templates/template1-1080x1350.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1350" viewBox="0 0 1080 1350">
  <rect width="1080" height="1350" fill="#FFF8F0"/>
  <rect x="60" y="100" width="960" height="560" fill="#E6D5C6" rx="12"/>
  <text x="540" y="380" font-size="34" text-anchor="middle" fill="#9A6B4F" font-family="Arial">Imagine produs / meniu</text>
  <circle cx="540" cy="720" r="70" fill="#9A6B4F"/>
  <text x="540" y="735" font-size="28" text-anchor="middle" fill="#FFF" font-family="Arial">LOGO</text>
  <text x="540" y="940" font-size="44" text-anchor="middle" fill="#2B2B2B" font-family="Arial" font-weight="700">Meniu special azi</text>
  <text x="540" y="1000" font-size="20" text-anchor="middle" fill="#555" font-family="Arial">Oferta valabilă azi până la 22:00</text>
  <rect x="360" y="1040" width="360" height="72" rx="12" fill="#FF6B35"/>
  <text x="540" y="1088" font-size="26" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă acum</text>
  <text x="540" y="1280" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Livrare • Rezervări la +40 7XX XXX XXX</text>
</svg>
SVG

cat > build/templates/template2-1080x1080.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1080" viewBox="0 0 1080 1080">
  <rect width="1080" height="1080" fill="#FFF"/>
  <rect x="60" y="120" width="960" height="520" fill="#F7F7F7" rx="8"/>
  <text x="540" y="360" font-size="36" text-anchor="middle" fill="#333" font-family="Arial" font-weight="700">Mâncare autentică</text>
  <rect x="80" y="660" width="920" height="320" fill="#FDF2E9" rx="12"/>
  <text x="540" y="730" font-size="28" text-anchor="middle" fill="#9A6B4F" font-family="Arial">- 3 feluri de meniu -</text>
  <rect x="420" y="840" width="240" height="64" rx="10" fill="#2B8CFF"/>
  <text x="540" y="884" font-size="22" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Rezervă masa</text>
  <text x="540" y="1010" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Adresa • ore • telefon</text>
</svg>
SVG

cat > build/templates/template2-1200x628.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="628" viewBox="0 0 1200 628">
  <rect width="1200" height="628" fill="#FFF"/>
  <rect x="40" y="40" width="1120" height="440" fill="#F7F7F7" rx="10"/>
  <text x="600" y="240" font-size="30" text-anchor="middle" fill="#333" font-family="Arial" font-weight="700">Mâncare autentică</text>
  <text x="600" y="300" font-size="18" text-anchor="middle" fill="#9A6B4F" font-family="Arial">Rețete tradiționale, ingrediente proaspete</text>
  <rect x="480" y="380" width="240" height="56" rx="8" fill="#2B8CFF"/>
  <text x="600" y="418" font-size="20" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă online</text>
  <text x="600" y="560" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Livrare în 30-45 min • +40 7XX XXX XXX</text>
</svg>
SVG

cat > build/templates/template2-1080x1350.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1350" viewBox="0 0 1080 1350">
  <rect width="1080" height="1350" fill="#FFF"/>
  <rect x="60" y="80" width="960" height="520" fill="#F7F7F7" rx="12"/>
  <text x="540" y="320" font-size="40" text-anchor="middle" fill="#333" font-family="Arial" font-weight="700">Gusturi care rămân</text>
  <text x="540" y="380" font-size="18" text-anchor="middle" fill="#9A6B4F" font-family="Arial">Degustări, meniuri evenimente, pachete business</text>
  <rect x="360" y="980" width="360" height="72" rx="12" fill="#2B8CFF"/>
  <text x="540" y="1028" font-size="24" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Rezervă eveniment</text>
  <text x="540" y="1260" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Adresa • Program • Telefon</text>
</svg>
SVG

cat > build/templates/template3-1080x1080.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1080" viewBox="0 0 1080 1080">
  <rect width="1080" height="1080" fill="#FFF7F3"/>
  <rect x="80" y="200" width="920" height="520" fill="#FFDAB3" rx="10"/>
  <text x="540" y="420" font-size="36" text-anchor="middle" fill="#6B3F2F" font-family="Arial" font-weight="700">Burgeri artizani</text>
  <text x="540" y="470" font-size="18" text-anchor="middle" fill="#4D2E24" font-family="Arial">Carne proaspătă • Chifle făcute în casă</text>
  <rect x="420" y="780" width="240" height="64" rx="10" fill="#222"/>
  <text x="540" y="824" font-size="22" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă rapid</text>
  <text x="540" y="980" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Livrare și takeaway</text>
</svg>
SVG

cat > build/templates/template3-1200x628.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="628" viewBox="0 0 1200 628">
  <rect width="1200" height="628" fill="#FFF7F3"/>
  <rect x="40" y="40" width="1120" height="360" fill="#FFDAB3" rx="10"/>
  <text x="600" y="200" font-size="30" text-anchor="middle" fill="#6B3F2F" font-family="Arial" font-weight="700">Burgeri artizani</text>
  <text x="600" y="240" font-size="16" text-anchor="middle" fill="#4D2E24" font-family="Arial">Promo: 2 pentru 1 în zilele de luni</text>
  <rect x="480" y="300" width="240" height="56" rx="8" fill="#222"/>
  <text x="600" y="338" font-size="20" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă acum</text>
  <text x="600" y="520" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">+40 7XX XXX XXX • Adresă</text>
</svg>
SVG

cat > build/templates/template3-1080x1350.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1350" viewBox="0 0 1080 1350">
  <rect width="1080" height="1350" fill="#FFF7F3"/>
  <rect x="60" y="80" width="960" height="600" fill="#FFDAB3" rx="12"/>
  <text x="540" y="380" font-size="40" text-anchor="middle" fill="#6B3F2F" font-family="Arial" font-weight="700">Burgeri artizani</text>
  <text x="540" y="440" font-size="18" text-anchor="middle" fill="#4D2E24" font-family="Arial">Alege gustul preferat • Livrare rapidă</text>
  <rect x="360" y="980" width="360" height="72" rx="12" fill="#222"/>
  <text x="540" y="1028" font-size="24" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă</text>
  <text x="540" y="1260" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Rezervări & Catering</text>
</svg>
SVG

cat > build/templates/template4-1080x1080.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1080" viewBox="0 0 1080 1080">
  <rect width="1080" height="1080" fill="#F0FFF4"/>
  <rect x="70" y="150" width="940" height="480" fill="#DFF3E6" rx="12"/>
  <text x="540" y="380" font-size="36" text-anchor="middle" fill="#1F7A44" font-family="Arial" font-weight="700">Salată proaspătă</text>
  <text x="540" y="420" font-size="18" text-anchor="middle" fill="#2F6A50" font-family="Arial">Ingrediente locale • opțiuni vegetariene</text>
  <rect x="420" y="820" width="240" height="64" rx="10" fill="#1F7A44"/>
  <text x="540" y="864" font-size="22" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă acum</text>
  <text x="540" y="1010" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Program • Contact</text>
</svg>
SVG

cat > build/templates/template4-1200x628.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="628" viewBox="0 0 1200 628">
  <rect width="1200" height="628" fill="#F0FFF4"/>
  <rect x="40" y="40" width="1120" height="420" fill="#DFF3E6" rx="10"/>
  <text x="600" y="220" font-size="30" text-anchor="middle" fill="#1F7A44" font-family="Arial" font-weight="700">Salată proaspătă</text>
  <text x="600" y="260" font-size="16" text-anchor="middle" fill="#2F6A50" font-family="Arial">Livrare în 30 minute</text>
  <rect x="480" y="320" width="240" height="56" rx="8" fill="#1F7A44"/>
  <text x="600" y="358" font-size="20" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă</text>
  <text x="600" y="540" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">+40 7XX XXX XXX</text>
</svg>
SVG

cat > build/templates/template4-1080x1350.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1350" viewBox="0 0 1080 1350">
  <rect width="1080" height="1350" fill="#F0FFF4"/>
  <rect x="60" y="100" width="960" height="560" fill="#DFF3E6" rx="12"/>
  <text x="540" y="380" font-size="40" text-anchor="middle" fill="#1F7A44" font-family="Arial" font-weight="700">Salate & Bowl-uri</text>
  <text x="540" y="440" font-size="18" text-anchor="middle" fill="#2F6A50" font-family="Arial">Sănătos • Rapid • Delicios</text>
  <rect x="360" y="1040" width="360" height="72" rx="12" fill="#1F7A44"/>
  <text x="540" y="1088" font-size="24" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă online</text>
  <text x="540" y="1260" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Rezervări & Catering</text>
</svg>
SVG

cat > build/templates/template5-1080x1080.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1080" viewBox="0 0 1080 1080">
  <rect width="1080" height="1080" fill="#FFF8F8"/>
  <rect x="80" y="140" width="920" height="520" fill="#FFEFEF" rx="12"/>
  <text x="540" y="380" font-size="36" text-anchor="middle" fill="#B23A3A" font-family="Arial" font-weight="700">Pizza proaspătă</text>
  <text x="540" y="430" font-size="18" text-anchor="middle" fill="#7A2A2A" font-family="Arial" font-weight="400">Cuptor de lemne • Rețete originale</text>
  <rect x="420" y="760" width="240" height="64" rx="10" fill="#B23A3A"/>
  <text x="540" y="804" font-size="22" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă</text>
  <text x="540" y="980" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Livrare • Takeaway</text>
</svg>
SVG

cat > build/templates/template5-1200x628.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="628" viewBox="0 0 1200 628">
  <rect width="1200" height="628" fill="#FFF8F8"/>
  <rect x="40" y="40" width="1120" height="400" fill="#FFEFEF" rx="10"/>
  <text x="600" y="220" font-size="30" text-anchor="middle" fill="#B23A3A" font-family="Arial" font-weight="700">Pizza proaspătă azi</text>
  <text x="600" y="260" font-size="16" text-anchor="middle" fill="#7A2A2A" font-family="Arial">20% reducere la prima comandă</text>
  <rect x="480" y="320" width="240" height="56" rx="8" fill="#B23A3A"/>
  <text x="600" y="358" font-size="20" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă</text>
  <text x="600" y="540" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">+40 7XX XXX XXX</text>
</svg>
SVG

cat > build/templates/template5-1080x1350.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1350" viewBox="0 0 1080 1350">
  <rect width="1080" height="1350" fill="#FFF8F8"/>
  <rect x="60" y="100" width="960" height="560" fill="#FFEFEF" rx="12"/>
  <text x="540" y="360" font-size="40" text-anchor="middle" fill="#B23A3A" font-family="Arial" font-weight="700">Pizza delicioasă</text>
  <text x="540" y="420" font-size="18" text-anchor="middle" fill="#7A2A2A" font-family="Arial">Savurează livrarea caldă acasă</text>
  <rect x="360" y="1040" width="360" height="72" rx="12" fill="#B23A3A"/>
  <text x="540" y="1088" font-size="24" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă acum</text>
  <text x="540" y="1260" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Rezervări & Catering</text>
</svg>
SVG

cat > build/templates/template6-1080x1080.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1080" viewBox="0 0 1080 1080">
  <rect width="1080" height="1080" fill="#FFFDF4"/>
  <rect x="80" y="120" width="920" height="520" fill="#FFF4D9" rx="12"/>
  <text x="540" y="360" font-size="36" text-anchor="middle" fill="#8A5A12" font-family="Arial" font-weight="700">Deserturi & Cafele</text>
  <text x="540" y="410" font-size="18" text-anchor="middle" fill="#6E4B12" font-family="Arial">Dulciuri proaspete în fiecare zi</text>
  <rect x="360" y="760" width="360" height="64" rx="10" fill="#8A5A12"/>
  <text x="540" y="804" font-size="22" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă</text>
  <text x="540" y="980" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Livrare • Coffee to go</text>
</svg>
SVG

cat > build/templates/template6-1200x628.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="628" viewBox="0 0 1200 628">
  <rect width="1200" height="628" fill="#FFFDF4"/>
  <rect x="40" y="40" width="1120" height="440" fill="#FFF4D9" rx="10"/>
  <text x="600" y="220" font-size="30" text-anchor="middle" fill="#8A5A12" font-family="Arial" font-weight="700">Deserturi & Cafele</text>
  <text x="600" y="260" font-size="16" text-anchor="middle" fill="#6E4B12" font-family="Arial">Promo: cafea + desert 12€</text>
  <rect x="480" y="320" width="240" height="56" rx="8" fill="#8A5A12"/>
  <text x="600" y="358" font-size="20" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă</text>
  <text x="600" y="540" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">+40 7XX XXX XXX</text>
</svg>
SVG

cat > build/templates/template6-1080x1350.svg <<'SVG'
<svg xmlns="http://www.w3.org/2000/svg" width="1080" height="1350" viewBox="0 0 1080 1350">
  <rect width="1080" height="1350" fill="#FFFDF4"/>
  <rect x="60" y="80" width="960" height="560" fill="#FFF4D9" rx="12"/>
  <text x="540" y="360" font-size="40" text-anchor="middle" fill="#8A5A12" font-family="Arial" font-weight="700">Deserturi & Cafea</text>
  <text x="540" y="420" font-size="18" text-anchor="middle" fill="#6E4B12" font-family="Arial">Gusturi care te fac să revii</text>
  <rect x="360" y="1040" width="360" height="72" rx="12" fill="#8A5A12"/>
  <text x="540" y="1088" font-size="24" text-anchor="middle" fill="#FFF" font-family="Arial" font-weight="700">Comandă acum</text>
  <text x="540" y="1260" font-size="14" text-anchor="middle" fill="#888" font-family="Arial">Rezervări & Catering</text>
</svg>
SVG

echo "Creating landing page files..."
cat > build/landing/landing.html <<'HTML'
<!doctype html>
<html lang="ro">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Restaurant Ad Pack — Template-uri reclame</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header class="site-header">
    <div class="container">
      <h1 class="logo">Restaurant Ad Pack</h1>
      <nav class="nav">
        <a href="#features">Ce primești</a>
        <a href="#templates">Șabloane</a>
        <a href="#buy">Cumpără</a>
      </nav>
    </div>
  </header>

  <section class="hero" id="hero">
    <div class="container hero-inner">
      <div>
        <h2>Pachete de reclame gata de folosit pentru restaurante</h2>
        <p>18 imagini editabile (Canva-ready) în 3 dimensiuni, plus 3 variante de text pentru campanii Facebook/Instagram.</p>
        <a href="#buy" class="btn">Cumpără pe Gumroad</a>
      </div>
      <div class="hero-image">
        <img src="../templates/template1-1080x1080.svg" alt="Exemplu template" />
      </div>
    </div>
  </section>

  <section id="features" class="container features">
    <h3>Ce primești</h3>
    <ul>
      <li>18 imagini în 3 dimensiuni: 1080x1080, 1200x628, 1080x1350</li>
      <li>Fișiere editabile pentru Canva (încarci SVG-urile în Canva și editezi)</li>
      <li>3 variante de copy pentru fiecare template (headline + description + CTA)</li>
      <li>Instrucțiuni rapide „Cum rulezi o campanie locală” (PDF)</li>
      <li>Mockup‑uri pentru prezentare pe social</li>
    </ul>
  </section>

  <section id="templates" class="container templates">
    <h3>Preview șabloane</h3>
    <div class="grid">
      <div class="card"><img src="../templates/template1-1200x628.svg" alt="Template 1" /><p>Template 1 — Meniu special</p></div>
      <div class="card"><img src="../templates/template2-1200x628.svg" alt="Template 2" /><p>Template 2 — Mâncare autentică</p></div>
      <div class="card"><img src="../templates/template3-1200x628.svg" alt="Template 3" /><p>Template 3 — Burgeri</p></div>
    </div>
  </section>

  <section id="buy" class="container buy">
    <h3>Cumpără</h3>
    <p>Pachet complet pentru restaurante — preț recomandat: 14€</p>
    <a class="btn" href="https://gumroad.com/l/YOUR_GUMROAD_LINK" target="_blank">Cumpără pe Gumroad</a>
    <p class="muted">După achiziție primești fișierele direct automat pe email.</p>
  </section>

  <footer class="site-footer">
    <div class="container">
      <p>© <span id="year"></span> Restaurant Ad Pack — Template-uri pentru reclame</p>
    </div>
  </footer>

  <script>
    document.getElementById('year').textContent = new Date().getFullYear();
  </script>
</body>
</html>
HTML

cat > build/landing/styles.css <<'CSS'
:root{
  --accent:#FF6B35;
  --bg:#fff;
  --text:#222;
  --muted:#666;
  --container:1100px;
  font-family: Inter, system-ui, Arial, sans-serif;
}
*{box-sizing:border-box}
body{margin:0;color:var(--text);background:var(--bg);line-height:1.5}
.container{max-width:var(--container);margin:0 auto;padding:20px}
.site-header{background:#fafafa;border-bottom:1px solid #eee}
.site-header .container{display:flex;align-items:center;justify-content:space-between}
.logo{margin:0;font-size:1.1rem}
.nav a{margin-left:16px;color:var(--muted);text-decoration:none}
.hero{padding:40px 0}
.hero-inner{display:flex;gap:20px;align-items:center}
.hero h2{font-size:1.8rem;margin:0 0 10px}
.hero p{color:var(--muted)}
.hero-image img{width:360px;max-width:40vw;border-radius:8px;object-fit:cover}
.btn{display:inline-block;padding:10px 18px;background:var(--accent);color:#fff;border-radius:6px;text-decoration:none}
.features{padding:20px 0}
.templates{padding:20px 0}
.grid{display:flex;gap:16px;flex-wrap:wrap}
.card{flex:1 1 300px;background:#fff;border:1px solid #eee;padding:12px;border-radius:8px;text-align:center}
.site-footer{padding:20px 0;text-align:center;color:var(--muted);border-top:1px solid #eee;margin-top:30px}
@media (max-width:800px){
  .hero-inner{flex-direction:column}
  .hero-image img{max-width:100%}
  .grid{flex-direction:column}
}
CSS

echo "Creating docs..."
cat > build/docs/README.txt <<'TXT'
README - Restaurant Ad Pack

Fișiere incluse:
- templates/ (18 SVG files) - șabloane editabile (3 dimensiuni)
- landing/ (landing.html + styles.css) - pagină demo pentru produs
- docs/guide.md - ghid scurt pentru cumpărător
- docs/product_description.txt - text gata pentru Gumroad
- mockups/ - (opțional) aici poți pune PNG-urile mockup

Instrucțiuni rapide:
1) Deschide Canva, Uploads -> Upload files -> încarcă SVG-urile din folderul templates/
2) Editează text, încarcă logo-ul clientului, exportă PNG/JPG pentru reclame
3) Pentru upload pe Gumroad: creează un ZIP (acesta), fă upload ca Digital Product
TXT

cat > build/docs/guide.md <<'MD'
Ghid rapid: Cum să rulezi o campanie locală (7 pași)

1. Alege obiectivul campaniei: comenzi online / rezervări / livrări.
2. Selectează 1-2 imagini (1080x1080 și 1200x628) și 1 variantă de text.
3. Încarcă imaginile în Ads Manager (Facebook/Instagram).
4. Target: 5-10 km în jurul localului, vârstă 18-55, interese: mâncare, restaurante.
5. Buget: începe cu 3-5 €/zi pentru 5-7 zile. Monitorizează CTR și conversii.
6. Testează 2 variante de text/imagini (A/B) și păstrează ce performează.
7. Optimizează: rulează cele mai bune creatii, scalează bugetul.

Sfaturi:
- CTA clar: "Comandă acum", "Rezervă masa"
- Include un cod promo pentru urmărire (ex: PRIMACOMANDA10)
MD

cat > build/docs/product_description.txt <<'TXT'
Titlu recomandat:
Restaurant Ad Pack — 18 social ads (Canva-ready) • 3 dimensiuni • Copy inclus

Descriere scurtă:
Pachet complet pentru restaurante: 18 imagini gata de folosit (1080x1080, 1200x628, 1080x1350) + fișiere editabile pentru Canva și 3 variante de copy pentru campanii Facebook/Instagram. Economisește timp și pornește reclame care atrag clienți în aceeași zi.

Ce include:
- 18 fișiere (6 template-uri x 3 dimensiuni): SVG editabile
- Fișiere Canva-ready (încarci SVG-urile în Canva și editezi)
- 3 variante de text per template (headline + description + CTA)
- 3 mockup-uri pentru prezentare pe social
- Ghid scurt PDF/MD: „Cum rulezi o campanie locală în 7 pași”
TXT

echo "Optional: generate guide.pdf if pandoc is installed..."
if command -v pandoc >/dev/null 2>&1; then
  pandoc build/docs/guide.md -o build/docs/guide.pdf
  echo "Generated build/docs/guide.pdf using pandoc."
else
  echo "pandoc not found, skipping PDF generation. guide.md saved in build/docs/."
fi

echo "Optional: create simple PNG mockups from SVGs if inkscape is installed..."
if command -v inkscape >/dev/null 2>&1; then
  inkscape -w 1200 -h 628 build/templates/template1-1200x628.svg --export-filename=build/mockups/mockup1-1200x628.png
  inkscape -w 1080 -h 1080 build/templates/template1-1080x1080.svg --export-filename=build/mockups/mockup1-1080x1080.png
  inkscape -w 1080 -h 1350 build/templates/template1-1080x1350.svg --export-filename=build/mockups/mockup1-1080x1350.png
  echo "Mockup PNGs generated in build/mockups/ using inkscape."
else
  echo "inkscape not found, mockup PNGs not generated. You can create PNGs manually or install inkscape."
fi

echo "Creating ZIP..."
zip -r restaurant-templates.zip build/
echo "Done. Generated restaurant-templates.zip in current folder."