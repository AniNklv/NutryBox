document.addEventListener('DOMContentLoaded', () => {
  // Scroll reveal logic
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
      }
    });
  }, { threshold: 0.1 });

  document.querySelectorAll('.reveal, .stagger-children').forEach(el => {
    observer.observe(el);
  });

  // Mobile menu logic
  const menuBtn = document.querySelector('button[aria-label="Toggle menu"]');
  // The menu is the next sibling of the button's parent container
  const mobileMenu = menuBtn ? menuBtn.parentElement.nextElementSibling : null;

  if (menuBtn && mobileMenu) {
    menuBtn.addEventListener('click', () => {
      const isClosed = mobileMenu.classList.contains('max-h-0');
      if (isClosed) {
        mobileMenu.classList.remove('max-h-0', 'opacity-0', 'border-t-transparent');
        mobileMenu.classList.add('max-h-96', 'opacity-100');
      } else {
        mobileMenu.classList.remove('max-h-96', 'opacity-100');
        mobileMenu.classList.add('max-h-0', 'opacity-0', 'border-t-transparent');
      }
    });
  }
});


window.switchLanguage = function(targetLang) {
    localStorage.setItem('preferredLang', targetLang);
    const isCurrentlyEn = window.location.pathname.includes('/en/');
    let filename = window.location.pathname.split('/').pop() || 'index.html';
    
    if (targetLang === 'en' && !isCurrentlyEn) {
        window.location.href = 'en/' + filename;
    } else if (targetLang === 'bg' && isCurrentlyEn) {
        window.location.href = '../' + filename;
    }
};

document.addEventListener('DOMContentLoaded', () => {
    const preferredLang = localStorage.getItem('preferredLang');
    const isCurrentlyEn = window.location.pathname.includes('/en/');
    let filename = window.location.pathname.split('/').pop() || 'index.html';
    
    // Auto redirect only if root is hit but they prefer english
    if (preferredLang === 'en' && !isCurrentlyEn) {
        window.location.href = 'en/' + filename;
    }
    // If they land on English but have NO preference, default to BG!
    else if (!preferredLang && isCurrentlyEn) {
        window.location.href = '../' + filename;
    }
});
