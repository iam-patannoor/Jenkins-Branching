<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Premium Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #0f172a;
            --surface-bg: #f8fafc;
            --primary: #0f172a;
            --accent: #0284c7;
            --accent-hover: #0369a1;
            --accent-light: #e0f2fe;
            --text-main: #1e293b;
            --muted: #64748b;
            --card: #ffffff;
            --surface: #f1f5f9;
            --success: #10b981;
            --danger: #ef4444;
            --radius: 16px;
            --radius-sm: 8px;
            --container: 1240px;
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.1);
            --shadow-md: 0 10px 25px -5px rgba(0, 0, 0, 0.05), 0 8px 10px -6px rgba(0, 0, 0, 0.01);
            --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 8px 10px -6px rgba(0, 0, 0, 0.04);
            --transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            color: var(--text-main);
            background: var(--surface-bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
            overflow-x: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Modern Glass Header */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.85);
            border-bottom: 1px solid rgba(226, 232, 240, 0.8);
            backdrop-filter: blur(12px);
            transition: var(--transition);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 22px;
            color: var(--primary);
            letter-spacing: -0.5px;
        }

        .brand .logo-icon {
            background: var(--accent);
            color: white;
            width: 36px;
            height: 36px;
            border-radius: 10px;
            display: grid;
            place-items: center;
            font-size: 18px;
        }

        .brand .accent {
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 8px 16px;
            border-radius: 999px;
            color: var(--text-main);
            font-weight: 500;
            font-size: 14px;
            transition: var(--transition);
        }

        nav.main-nav li a:hover {
            background: var(--accent-light);
            color: var(--accent);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 10px;
            background: var(--surface);
            padding: 10px 16px;
            border-radius: 999px;
            width: 300px;
            border: 1px solid transparent;
            transition: var(--transition);
        }

        .search:focus-within {
            border-color: var(--accent);
            background: #ffffff;
            box-shadow: 0 0 0 4px var(--accent-light);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--text-main);
        }

        .icon-btn {
            background: var(--surface);
            border: 0;
            cursor: pointer;
            color: var(--primary);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 16px;
            transition: var(--transition);
            position: relative;
        }

        .icon-btn:hover {
            background: var(--accent-light);
            color: var(--accent);
            transform: translateY(-2px);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #ffffff;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 22px;
            cursor: pointer;
            color: var(--primary);
        }

        /* Hero Banner */
        .hero {
            position: relative;
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            color: white;
            padding: 80px 0;
            overflow: hidden;
            border-radius: 0 0 var(--radius) var(--radius);
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(2,132,199,0.25) 0%, rgba(0,0,0,0) 70%);
            border-radius: 50%;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 640px;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(2, 132, 199, 0.2);
            color: #38bdf8;
            padding: 6px 14px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 20px;
            border: 1px solid rgba(56, 189, 248, 0.3);
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 48px;
            font-weight: 800;
            line-height: 1.15;
            margin-bottom: 16px;
            letter-spacing: -1px;
        }

        .hero p {
            margin-bottom: 28px;
            color: #94a3b8;
            font-size: 16px;
            line-height: 1.6;
        }

        .hero-buttons {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 12px 26px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            border: 0;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--accent);
            color: white;
            box-shadow: 0 4px 14px rgba(2, 132, 199, 0.4);
        }

        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(2, 132, 199, 0.6);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.2);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.15);
            transform: translateY(-2px);
        }

        /* Sections */
        .section {
            padding: 64px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 32px;
        }

        .section-header h2 {
            font-family: 'Poppins', sans-serif;
            font-size: 28px;
            font-weight: 700;
            color: var(--primary);
            letter-spacing: -0.5px;
        }

        .section-header p {
            color: var(--muted);
            font-size: 15px;
            margin-top: 4px;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 24px 16px;
            text-align: center;
            box-shadow: var(--shadow-sm);
            border: 1px solid #e2e8f0;
            transition: var(--transition);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-md);
            border-color: var(--accent-light);
        }

        .cat-card .icon {
            width: 52px;
            height: 52px;
            background: var(--accent-light);
            color: var(--accent);
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 20px;
            margin: 0 auto 14px;
            transition: var(--transition);
        }

        .cat-card:hover .icon {
            background: var(--accent);
            color: white;
        }

        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
            color: var(--primary);
        }

        /* Products Grid */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow-sm);
            border: 1px solid #e2e8f0;
            transition: var(--transition);
            position: relative;
        }

        .product:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-lg);
        }

        .product-img-wrapper {
            position: relative;
            width: 100%;
            height: 220px;
            overflow: hidden;
            background: var(--surface);
        }

        .product img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product:hover img {
            transform: scale(1.08);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: white;
            padding: 4px 10px;
            border-radius: 999px;
            font-weight: 700;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            z-index: 2;
        }

        .product-badge.sale {
            background: var(--danger);
        }

        .product-body {
            padding: 18px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1;
        }

        .product-category {
            font-size: 12px;
            text-transform: uppercase;
            font-weight: 600;
            color: var(--muted);
            letter-spacing: 0.5px;
        }

        .product h3 {
            font-size: 16px;
            font-weight: 600;
            color: var(--primary);
            line-height: 1.3;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: auto;
            padding-top: 12px;
        }

        .price-group {
            display: flex;
            align-items: baseline;
            gap: 8px;
        }

        .price {
            font-size: 18px;
            font-weight: 700;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 13px;
        }

        .rating {
            color: #f59e0b;
            font-size: 12px;
            display: flex;
            align-items: center;
            gap: 4px;
            font-weight: 600;
        }

        .product-footer {
            padding: 0 18px 18px;
            display: flex;
            gap: 8px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 10px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
        }

        .add-btn:hover {
            background: var(--accent);
        }

        .wish-btn {
            background: var(--surface);
            border: 0;
            width: 40px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            color: var(--muted);
            transition: var(--transition);
            display: grid;
            place-items: center;
        }

        .wish-btn:hover {
            color: var(--danger);
            background: #fef2f2;
        }

        /* Deal Section */
        .deal-card {
            background: linear-gradient(135deg, #ffffff 0%, #f1f5f9 100%);
            border-radius: var(--radius);
            border: 1px solid #e2e8f0;
            overflow: hidden;
            display: flex;
            box-shadow: var(--shadow-md);
        }

        .deal-img {
            width: 50%;
            position: relative;
            min-height: 360px;
        }

        .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            width: 50%;
            padding: 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .timer {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .time-box {
            background: var(--primary);
            color: white;
            padding: 10px;
            border-radius: 10px;
            min-width: 68px;
            text-align: center;
        }

        .time-box .num {
            font-size: 20px;
            font-weight: 700;
            font-family: 'Poppins', sans-serif;
        }

        .time-box .label {
            font-size: 11px;
            color: #94a3b8;
            text-transform: uppercase;
        }

        /* Cart Drawer */
        .cart-drawer-overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, 0.6);
            backdrop-filter: blur(4px);
            z-index: 100;
            opacity: 0;
            pointer-events: none;
            transition: var(--transition);
        }

        .cart-drawer-overlay.active {
            opacity: 1;
            pointer-events: auto;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 400px;
            max-width: 100%;
            height: 100%;
            background: white;
            z-index: 101;
            transform: translateX(100%);
            transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow-lg);
        }

        .cart-drawer.active {
            transform: translateX(0);
        }

        .cart-header {
            padding: 20px 24px;
            border-bottom: 1px solid #e2e8f0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-body {
            padding: 24px;
            overflow-y: auto;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .cart-item {
            display: flex;
            gap: 14px;
            align-items: center;
            padding-bottom: 16px;
            border-bottom: 1px solid #f1f5f9;
        }

        .cart-item img {
            width: 64px;
            height: 64px;
            border-radius: 8px;
            object-fit: cover;
        }

        .cart-item-details {
            flex: 1;
        }

        .cart-footer {
            padding: 24px;
            border-top: 1px solid #e2e8f0;
            background: var(--surface-bg);
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, var(--primary) 0%, #1e293b 100%);
            color: white;
            border-radius: var(--radius);
            padding: 56px 24px;
            text-align: center;
        }

        .newsletter form {
            display: flex;
            justify-content: center;
            gap: 10px;
            max-width: 480px;
            margin: 24px auto 0;
        }

        .newsletter input {
            padding: 12px 20px;
            border-radius: 999px;
            border: 0;
            flex: 1;
            outline: none;
            font-size: 14px;
        }

        /* Footer */
        footer {
            background: #ffffff;
            border-top: 1px solid #e2e8f0;
            padding: 64px 0 32px;
            margin-top: 64px;
            color: var(--muted);
            font-size: 14px;
        }

        /* Responsive Breakpoints */
        @media (max-width: 1024px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width: 768px) {
            nav.main-nav, .search { display: none; }
            .mobile-toggle { display: block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .deal-card { flex-direction: column; }
            .deal-img, .deal-content { width: 100%; }
            .hero h1 { font-size: 32px; }
            .newsletter form { flex-direction: column; }
            .newsletter input { border-radius: 999px; }
        }

        @media (max-width: 480px) {
            .categories { grid-template-columns: repeat(2, 1fr); }
            .products { grid-template-columns: 1fr; }
        }
    </style>
</head>

<body>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:16px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <div class="logo-icon"><i class="fas fa-bolt"></i></div>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:12px;">
                <div class="search">
                    <i class="fas fa-search" style="color:var(--muted)"></i>
                    <input type="search" id="searchInput" placeholder="Search items..." />
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                    <button class="icon-btn" id="cartBtn" title="View cart">
                        <i class="fas fa-shopping-bag"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </button>
                </div>
            </div>
        </div>
    </header>

    <!-- Slide-out Cart Drawer -->
    <div class="cart-drawer-overlay" id="cartOverlay"></div>
    <div class="cart-drawer" id="cartDrawer">
        <div class="cart-header">
            <h3 style="font-weight: 700;">Your Shopping Bag</h3>
            <button class="icon-btn" id="closeCart" style="background:transparent;"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-body" id="cartItemsContainer">
            <!-- Items injected via JS -->
        </div>
        <div class="cart-footer">
            <div style="display: flex; justify-content: space-between; font-weight: 700; margin-bottom: 16px;">
                <span>Total</span>
                <span id="cartTotal">$0.00</span>
            </div>
            <button class="btn btn-primary" style="width: 100%;" onclick="alert('Proceeding to checkout...')">Checkout</button>
        </div>
    </div>

    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="container hero-content">
                <div class="hero-badge"><i class="fas fa-sparkles"></i> New Season Arrivals</div>
                <h1>Summer Collection Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology, and essential lifestyle accessories curated specifically for performance and style.</p>
                <div class="hero-buttons">
                    <button class="btn btn-primary" id="shopNow">Shop Collection <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Flash Sale</button>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="section container" id="categories">
            <div class="section-header">
                <div>
                    <h2>Shop by Category</h2>
                    <p>Browse through top quality products organized by type.</p>
                </div>
            </div>
            <div class="grid categories" id="categoriesGrid"></div>
        </section>

        <!-- Products Section -->
        <section class="section container" id="products">
            <div class="section-header">
                <div>
                    <h2>Trending Products</h2>
                    <p>Popular choices updated in real-time based on buyer activity.</p>
                </div>
            </div>
            <div class="grid products" id="productsGrid"></div>
        </section>

        <!-- Deals Section -->
        <section id="deals" class="section container">
            <div class="deal-card">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                </div>
                <div class="deal-content">
                    <span style="color:var(--accent); font-weight:700; text-transform:uppercase; font-size:12px; letter-spacing:1px;">Limited Offer</span>
                    <h2 style="font-size:32px; font-weight:800; margin-top:4px;">MacBook Air M2</h2>
                    <p style="color:var(--muted); margin-top:8px;">Thin, light, and hyper-fast performance. Perfect for creators and tech lovers.</p>

                    <div class="timer">
                        <div class="time-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
                        <div class="time-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
                        <div class="time-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
                    </div>

                    <div style="display:flex; align-items:center; gap:12px;">
                        <span class="price" style="font-size:28px;">$999</span>
                        <span class="old-price" style="font-size:18px;">$1,199</span>
                    </div>

                    <button class="btn btn-primary" id="buyDeal" style="margin-top:24px; width:fit-content;">Claim Deal</button>
                </div>
            </div>
        </section>

        <!-- Newsletter Section -->
        <section class="section container">
            <div class="newsletter">
                <h3>Stay Ahead of the Curve</h3>
                <p style="color:#94a3b8; margin-top:8px;">Subscribe to get early access to product releases and exclusive discounts.</p>
                <form id="newsletterForm">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email address" required />
                    <button class="btn btn-primary" type="submit">Subscribe</button>
                </form>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex; flex-wrap:wrap; gap:32px; justify-content:space-between;">
            <div style="max-width:320px;">
                <div class="brand" style="margin-bottom:12px;">
                    <div class="logo-icon"><i class="fas fa-bolt"></i></div>
                    <span>Nexus<span class="accent">Shop</span></span>
                </div>
                <p>Designed to deliver high performance, responsive, modern online shopping experiences.</p>
            </div>
            <div>
                <h4 style="color:var(--primary); margin-bottom:12px;">Quick Links</h4>
                <p style="line-height:2;">About Us<br>Careers<br>Shipping Policy</p>
            </div>
            <div>
                <h4 style="color:var(--primary); margin-bottom:12px;">Customer Support</h4>
                <p style="line-height:2;">Help Center<br>Returns & Refunds<br>Contact Support</p>
            </div>
        </div>
        <div style="text-align:center; margin-top:40px; padding-top:20px; border-top:1px solid #f1f5f9;">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>
    </footer>

    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Audio', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Watches', icon: 'fa-clock' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4.8, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 4.9, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4.5, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 4.7, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4.3, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 4.9, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
        ];

        let cart = [];

        // DOM elements
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartBtn = document.getElementById('cartBtn');
        const cartDrawer = document.getElementById('cartDrawer');
        const cartOverlay = document.getElementById('cartOverlay');
        const closeCart = document.getElementById('closeCart');
        const cartCountEl = document.getElementById('cartCount');
        const cartItemsContainer = document.getElementById('cartItemsContainer');
        const cartTotalEl = document.getElementById('cartTotal');
        const searchInput = document.getElementById('searchInput');

        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(cat => `
                <div class="cat-card" onclick="filterCategory('${cat.id}')">
                    <div class="icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                </div>
            `).join('');
        }

        function renderProducts(list) {
            productsGrid.innerHTML = list.map(p => `
                <article class="product">
                    <div class="product-img-wrapper">
                        ${p.badge ? `<span class="product-badge ${p.badge === 'Sale' ? 'sale' : ''}">${p.badge}</span>` : ''}
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                    </div>
                    <div class="product-body">
                        <span class="product-category">${p.category}</span>
                        <h3>${p.title}</h3>
                        <div class="price-row">
                            <div class="price-group">
                                <span class="price">$${p.price}</span>
                                ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                            </div>
                            <div class="rating"><i class="fas fa-star"></i> ${p.rating}</div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" onclick="addToCart(${p.id})"><i class="fas fa-shopping-bag"></i> Add to Bag</button>
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                </article>
            `).join('');
        }

        function filterCategory(catId) {
            const filtered = PRODUCTS.filter(p => p.category === catId);
            renderProducts(filtered);
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        }

        function addToCart(productId) {
            const item = PRODUCTS.find(p => p.id === productId);
            if (!item) return;

            const existingIndex = cart.findIndex(p => p.id === productId);
            if (existingIndex > -1) {
                cart[existingIndex].qty += 1;
            } else {
                cart.push({ ...item, qty: 1 });
            }
            updateCartUI();
            toggleCart(true);
        }

        function updateCartUI() {
            const totalItems = cart.reduce((acc, curr) => acc + curr.qty, 0);
            const totalPrice = cart.reduce((acc, curr) => acc + (curr.price * curr.qty), 0);

            cartCountEl.textContent = totalItems;
            cartTotalEl.textContent = `$${totalPrice.toFixed(2)}`;

            if (cart.length === 0) {
                cartItemsContainer.innerHTML = `<p style="text-align:center; color:var(--muted); margin-top:40px;">Your shopping bag is empty.</p>`;
            } else {
                cartItemsContainer.innerHTML = cart.map(item => `
                    <div class="cart-item">
                        <img src="${item.img}" alt="${item.title}">
                        <div class="cart-item-details">
                            <h4 style="font-size:14px; font-weight:600;">${item.title}</h4>
                            <p style="color:var(--muted); font-size:13px;">Qty: ${item.qty} × $${item.price}</p>
                        </div>
                        <div style="font-weight:700;">$${item.qty * item.price}</div>
                    </div>
                `).join('');
            }
        }

        function toggleCart(open) {
            cartDrawer.classList.toggle('active', open);
            cartOverlay.classList.toggle('active', open);
        }

        // Event listeners
        cartBtn.addEventListener('click', () => toggleCart(true));
        closeCart.addEventListener('click', () => toggleCart(false));
        cartOverlay.addEventListener('click', () => toggleCart(false));

        searchInput.addEventListener('input', (e) => {
            const term = e.target.value.toLowerCase();
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
            renderProducts(filtered);
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });

        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
        });

        // Timer Logic
        (function setupTimer() {
            const target = new Date().getTime() + (12 * 60 * 60 * 1000);
            setInterval(() => {
                const now = new Date().getTime();
                const diff = target - now;
                document.getElementById('dealHours').textContent = String(Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60))).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (1000 * 60)) / 1000)).padStart(2, '0');
            }, 1000);
        })();

        // Init
        renderCategories();
        renderProducts(PRODUCTS);
        updateCartUI();
        document.getElementById('year').textContent = new Date().getFullYear();
    </script>
</body>

</html>
