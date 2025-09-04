// Page Transition Management
class PageTransitions {
    constructor() {
        this.isTransitioning = false;
        this.init();
    }

    init() {
        // Add page loader
        this.addPageLoader();
        
        // Handle page load
        this.handlePageLoad();
        
        // Handle navigation links
        this.handleNavigationLinks();
        
        // Handle scroll animations
        this.handleScrollAnimations();
        
        // Handle form submissions
        this.handleFormSubmissions();
    }

    addPageLoader() {
        const loader = document.createElement('div');
        loader.className = 'page-loader';
        loader.innerHTML = '<div class="loader-spinner"></div>';
        document.body.appendChild(loader);
    }

    handlePageLoad() {
        // Hide loader and show page content
        window.addEventListener('load', () => {
            setTimeout(() => {
                document.body.classList.add('loaded');
                const loader = document.querySelector('.page-loader');
                if (loader) {
                    loader.classList.add('hidden');
                    setTimeout(() => {
                        loader.remove();
                    }, 300);
                }
            }, 500);
        });

        // Fallback for faster loading
        if (document.readyState === 'complete') {
            setTimeout(() => {
                document.body.classList.add('loaded');
                const loader = document.querySelector('.page-loader');
                if (loader) {
                    loader.classList.add('hidden');
                    setTimeout(() => {
                        loader.remove();
                    }, 300);
                }
            }, 100);
        }
    }

    handleNavigationLinks() {
        // Handle all navigation links
        document.addEventListener('click', (e) => {
            const link = e.target.closest('a');
            if (!link) return;

            const href = link.getAttribute('href');
            
            // Skip if it's an external link, anchor link, or special link
            if (!href || 
                href.startsWith('#') || 
                href.startsWith('javascript:') || 
                href.startsWith('mailto:') || 
                href.startsWith('tel:') ||
                link.target === '_blank' ||
                link.hasAttribute('download')) {
                return;
            }

            // Skip if it's the same page
            if (href === window.location.pathname || href === window.location.href) {
                return;
            }

            e.preventDefault();
            this.navigateToPage(href);
        });
    }

    navigateToPage(url) {
        if (this.isTransitioning) return;
        this.isTransitioning = true;

        // Show loading animation
        this.showPageTransition();

        // Fetch the new page
        fetch(url)
            .then(response => response.text())
            .then(html => {
                // Parse the HTML
                const parser = new DOMParser();
                const newDoc = parser.parseFromString(html, 'text/html');
                
                // Update the page content
                this.updatePageContent(newDoc, url);
            })
            .catch(error => {
                console.error('Navigation error:', error);
                // Fallback to normal navigation
                window.location.href = url;
            });
    }

    showPageTransition() {
        // Create transition overlay
        const overlay = document.createElement('div');
        overlay.className = 'page-transition-overlay';
        overlay.style.cssText = `
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #000;
            z-index: 9998;
            opacity: 0;
            transition: opacity 0.3s ease;
        `;
        document.body.appendChild(overlay);

        // Fade in overlay
        setTimeout(() => {
            overlay.style.opacity = '1';
        }, 10);
    }

    updatePageContent(newDoc, url) {
        // Update title
        document.title = newDoc.title;

        // Update main content
        const newMain = newDoc.querySelector('main');
        const currentMain = document.querySelector('main');
        
        if (newMain && currentMain) {
            // Fade out current content
            currentMain.style.opacity = '0';
            currentMain.style.transform = 'translateY(-20px)';
            currentMain.style.transition = 'all 0.3s ease';

            setTimeout(() => {
                // Replace content
                currentMain.innerHTML = newMain.innerHTML;
                
                // Fade in new content
                currentMain.style.opacity = '1';
                currentMain.style.transform = 'translateY(0)';
                
                // Update URL without page reload
                window.history.pushState({}, '', url);
                
                // Remove transition overlay
                const overlay = document.querySelector('.page-transition-overlay');
                if (overlay) {
                    overlay.style.opacity = '0';
                    setTimeout(() => {
                        overlay.remove();
                    }, 300);
                }

                // Reinitialize page-specific scripts
                this.reinitializePageScripts();
                
                this.isTransitioning = false;
            }, 300);
        } else {
            // Fallback to normal navigation
            window.location.href = url;
        }
    }

    reinitializePageScripts() {
        // Re-run any page-specific initialization
        if (typeof initializePageScripts === 'function') {
            initializePageScripts();
        }

        // Re-attach event listeners
        this.handleScrollAnimations();
        this.handleFormSubmissions();

        // Re-initialize any components that need it
        this.initializeComponents();
    }

    initializeComponents() {
        // Re-initialize Bootstrap components if needed
        if (typeof bootstrap !== 'undefined') {
            // Re-initialize tooltips
            const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
            tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl);
            });

            // Re-initialize popovers
            const popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
            popoverTriggerList.map(function (popoverTriggerEl) {
                return new bootstrap.Popover(popoverTriggerEl);
            });
        }

        // Re-initialize custom components
        this.initializeCustomComponents();
    }

    initializeCustomComponents() {
        // Re-initialize any custom components specific to pages
        
        // For buy-now page
        if (window.location.pathname.includes('buy-now')) {
            this.initializeBuyNowPage();
        }

        // For schedule page
        if (window.location.pathname.includes('schedule')) {
            this.initializeSchedulePage();
        }

        // For speakers page
        if (window.location.pathname.includes('speakers')) {
            this.initializeSpeakersPage();
        }
    }

    initializeBuyNowPage() {
        // Re-initialize buy now page scripts
        if (typeof selectTicket === 'function') {
            // Re-attach ticket selection events
            document.querySelectorAll('.ticket-card').forEach(card => {
                card.addEventListener('click', function() {
                    const type = this.getAttribute('data-type');
                    const price = parseInt(this.getAttribute('data-price'));
                    selectTicket(type, price);
                });
            });
        }
    }

    initializeSchedulePage() {
        // Re-initialize schedule page scripts
        // Bootstrap tabs should work automatically
    }

    initializeSpeakersPage() {
        // Re-initialize speakers page scripts
    }

    handleScrollAnimations() {
        // Intersection Observer for scroll animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('animate');
                }
            });
        }, observerOptions);

        // Observe all sections
        document.querySelectorAll('.section-padding').forEach(section => {
            observer.observe(section);
        });
    }

    handleFormSubmissions() {
        // Handle form submissions with smooth transitions
        document.querySelectorAll('form').forEach(form => {
            form.addEventListener('submit', (e) => {
                // Add loading state
                const submitBtn = form.querySelector('button[type="submit"]');
                if (submitBtn) {
                    const originalText = submitBtn.textContent;
                    submitBtn.textContent = 'Processing...';
                    submitBtn.disabled = true;

                    // Re-enable after a delay (for demo purposes)
                    setTimeout(() => {
                        submitBtn.textContent = originalText;
                        submitBtn.disabled = false;
                    }, 2000);
                }
            });
        });
    }
}

// Initialize page transitions when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    new PageTransitions();
});

// Handle browser back/forward buttons
window.addEventListener('popstate', (event) => {
    // Reload the page for browser navigation
    window.location.reload();
});

// Preload critical pages for faster navigation
function preloadPages() {
    const pagesToPreload = [
        'index.html',
        'about.html',
        'speakers.html',
        'schedule.html',
        'pricing.html',
        'venue.html',
        'contact.html',
        'buy-now.html'
    ];

    pagesToPreload.forEach(page => {
        const link = document.createElement('link');
        link.rel = 'prefetch';
        link.href = page;
        document.head.appendChild(link);
    });
}

// Preload pages after initial page load
window.addEventListener('load', () => {
    setTimeout(preloadPages, 1000);
});
