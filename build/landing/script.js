// build/landing/script.js — ready to paste
// - ensures .nav-toggle exists (creates it if missing) and uses Font Awesome icon if available
// - toggles mobile nav (#site-nav) and updates aria-expanded
// - thumbs -> preview (click/keyboard)
// - preview frames disabled (no lightbox opening)
// - removes only lightbox elements (non-aggressive retries)

// NOTE: If you want the Font Awesome bars icon to render, include in your <head>:
// <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

(() => {
  const body = document.body;

  /* ============ NAV TOGGLE ============ */
  function ensureNavToggleExists() {
    const headerRow = document.querySelector('.header-row');
    if (!headerRow) return null;

    // return existing toggle if present
    let navToggle = document.querySelector('.nav-toggle');
    if (navToggle) return navToggle;

    // create the button
    navToggle = document.createElement('button');
    navToggle.className = 'nav-toggle';
    navToggle.type = 'button';
    navToggle.setAttribute('aria-label', 'Meniu');
    navToggle.setAttribute('aria-expanded', 'false');
    navToggle.setAttribute('aria-controls', 'site-nav');
    // use Font Awesome icon if loaded; fallback to text glyph
    navToggle.innerHTML = '<i class="fa-solid fa-bars" aria-hidden="true"></i><span class="sr-only">Meniu</span>';

    // insert after logo (best-effort)
    try {
      headerRow.insertBefore(navToggle, headerRow.children[1] || null);
    } catch (e) {
      headerRow.appendChild(navToggle);
    }

    return navToggle;
  }

  function initNavToggleBehavior() {
    const siteNav = document.getElementById('site-nav');
    let navToggle = ensureNavToggleExists();

    function toggleHandler() {
      const open = body.classList.toggle('nav-open');
      if (!navToggle) navToggle = document.querySelector('.nav-toggle');
      if (navToggle) navToggle.setAttribute('aria-expanded', String(open));
      if (siteNav) siteNav.style.display = open ? 'flex' : 'none';
    }

    // bind once
    if (navToggle && !navToggle.dataset.navBound) {
      navToggle.addEventListener('click', toggleHandler);
      navToggle.dataset.navBound = 'true';
    }

    // responsive initial state
    function applyResponsiveInitial() {
      if (window.innerWidth <= 520) {
        if (siteNav) siteNav.style.display = 'none';
        if (navToggle) navToggle.style.display = 'inline-flex';
      } else {
        if (siteNav) siteNav.style.display = '';
        if (navToggle) navToggle.style.display = 'none';
        body.classList.remove('nav-open');
        if (navToggle) navToggle.setAttribute('aria-expanded', 'false');
      }
    }

    applyResponsiveInitial();

    // on resize create toggle if needed and re-apply visibility
    window.addEventListener('resize', () => {
      if (window.innerWidth <= 520 && !document.querySelector('.nav-toggle')) {
        navToggle = ensureNavToggleExists();
        if (navToggle && !navToggle.dataset.navBound) {
          navToggle.addEventListener('click', toggleHandler);
          navToggle.dataset.navBound = 'true';
        }
      }
      applyResponsiveInitial();
    }, { passive: true });
  }

  /* ============ THUMBS -> PREVIEW ============ */
  function initThumbs() {
    const thumbButtons = Array.from(document.querySelectorAll('.rap-thumb'));
    const previewImgs = Array.from(document.querySelectorAll('.rap-preview-img, #rapPreviewImg'));
    if (!thumbButtons.length) return;

    thumbButtons.forEach((btn, idx) => {
      if (typeof btn.dataset.index === 'undefined' || btn.dataset.index === '') btn.dataset.index = String(idx);

      btn.addEventListener('click', () => {
        const full = btn.dataset.full || btn.dataset.preview;
        thumbButtons.forEach(b => b.setAttribute('aria-pressed', 'false'));
        btn.setAttribute('aria-pressed', 'true');
        previewImgs.forEach(pi => { if (full) pi.src = full; });
      });

      btn.addEventListener('keydown', (ev) => {
        if (ev.key === 'Enter' || ev.key === ' ') {
          ev.preventDefault();
          btn.click();
        }
      });
    });

    // mark first as active if none
    const first = document.querySelector('.rap-thumb[aria-pressed="true"]') || document.querySelector('.rap-thumb');
    if (first) first.setAttribute('aria-pressed', 'true');
  }

  /* ============ DISABLE PREVIEW CLICKS (NO LIGHTBOX) ============ */
  function disablePreviewClicks() {
    const previewFrames = Array.from(document.querySelectorAll('.rap-preview-frame, .rap-preview-img'));
    previewFrames.forEach(pf => {
      pf.addEventListener('click', (ev) => {
        ev.preventDefault();
        ev.stopImmediatePropagation();
      }, { capture: true });

      pf.addEventListener('keydown', (ev) => {
        if (ev.key === 'Enter' || ev.key === ' ') ev.preventDefault();
      });
    });
  }

  /* ============ REMOVE LIGHTBOX ELEMENTS ONLY ============ */
  function removeLightboxElements() {
    const selectors = [
      '#rap-tlb', '.rap-tlb',
      '.rap-tlb-backdrop', '.rap-tlb-content',
      '.rap-tlb-close', '.rap-tlb-prev', '.rap-tlb-next'
    ];
    function removeAll() {
      selectors.forEach(sel => {
        document.querySelectorAll(sel).forEach(el => {
          try { el.remove(); } catch (e) { /* ignore */ }
        });
      });
    }
    removeAll();
    let tries = 0;
    const maxTries = 6;
    const interval = setInterval(() => {
      tries++;
      removeAll();
      if (tries >= maxTries) clearInterval(interval);
    }, 600);
  }

  /* ============ INIT ON DOM READY ============ */
  document.addEventListener('DOMContentLoaded', () => {
    initNavToggleBehavior();
    initThumbs();
    disablePreviewClicks();
    removeLightboxElements();
  });
})();