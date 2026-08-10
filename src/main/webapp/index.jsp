<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · fresh UI</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Outfit:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f6f9fc;
      color: #0a1a2b;
      line-height: 1.5;
    }

    :root {
      --primary: #1e3c5c;
      --primary-light: #2b4b6f;
      --accent: #f2a65a;
      --accent-hover: #e08e3a;
      --soft-bg: #ffffff;
      --card-bg: #ffffff;
      --border-light: #eef3f8;
      --shadow-card: 0 12px 30px -12px rgba(0,20,40,0.08);
      --shadow-hover: 0 20px 40px -14px rgba(0,20,40,0.18);
      --radius-lg: 28px;
      --radius-md: 18px;
      --radius-sm: 12px;
      --transition: 0.2s ease;
    }

    .container {
      max-width: 1300px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* header – light & airy */
    header {
      background: rgba(255,255,255,0.75);
      backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 16px 0;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Outfit', sans-serif;
      font-weight: 800;
      font-size: 26px;
      letter-spacing: -0.3px;
      color: var(--primary);
    }

    .brand .logo-badge {
      background: var(--accent);
      color: #1e3c5c;
      width: 38px;
      height: 38px;
      border-radius: 14px;
      display: grid;
      place-items: center;
      font-size: 20px;
    }

    .brand span { color: var(--accent); }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid var(--border-light);
      border-radius: 60px;
      padding: 8px 18px;
      gap: 8px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.01);
      width: 280px;
      transition: 0.2s;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(242,166,90,0.15);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
    }

    .search-wrap i { color: #8b9eb0; }

    .nav-links {
      display: flex;
      gap: 6px;
      list-style: none;
    }

    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--primary);
      transition: 0.15s;
    }

    .nav-links a:hover {
      background: #eef3f8;
      color: var(--accent-hover);
    }

    .header-actions {
      display: flex;
      gap: 8px;
      align-items: center;
    }

    .icon-btn {
      background: white;
      border: 1px solid var(--border-light);
      width: 42px;
      height: 42px;
      border-radius: 60px;
      display: grid;
      place-items: center;
      color: var(--primary);
      cursor: pointer;
      transition: 0.15s;
      position: relative;
    }

    .icon-btn:hover {
      background: #f2f7fc;
      border-color: var(--accent);
      transform: translateY(-2px);
    }

    .cart-badge {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: #1e3c5c;
      font-weight: 700;
      font-size: 11px;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }

    .mobile-toggle { display: none; background: none; border: 0; font-size: 24px; color: var(--primary); }

    /* hero – soft gradient */
    .hero {
      background: linear-gradient(145deg, #eaf0f6 0%, #d9e3ed 100%);
      border-radius: 0 0 48px 48px;
      padding: 80px 0 70px;
      margin-bottom: 20px;
    }

    .hero-content {
      max-width: 600px;
    }

    .hero-tag {
      display: inline-flex;
      gap: 8px;
      background: white;
      padding: 6px 18px 6px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 13px;
      color: var(--primary);
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      margin-bottom: 24px;
    }

    .hero h1 {
      font-family: 'Outfit', sans-serif;
      font-size: 54px;
      font-weight: 800;
      letter-spacing: -1.2px;
      line-height: 1.1;
      color: #0a1a2b;
    }

    .hero p {
      color: #2b4b6f;
      opacity: 0.8;
      font-size: 17px;
      margin: 18px 0 30px;
      max-width: 440px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      border: 0;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      cursor: pointer;
      transition: 0.2s;
    }

    .btn-primary {
      background: var(--primary);
      color: white;
      box-shadow: 0 8px 22px -8px rgba(30,60,92,0.3);
    }

    .btn-primary:hover {
      background: var(--primary-light);
      transform: translateY(-3px);
      box-shadow: 0 14px 28px -10px rgba(30,60,92,0.4);
    }

    .btn-outline {
      background: white;
      color: var(--primary);
      border: 1px solid #dce5ed;
    }

    .btn-outline:hover {
      background: #f2f7fc;
      transform: translateY(-3px);
    }

    .section {
      padding: 52px 0 24px;
    }

    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 32px;
    }

    .section-head h2 {
      font-family: 'Outfit', sans-serif;
      font-weight: 700;
      font-size: 30px;
      letter-spacing: -0.5px;
      color: #0a1a2b;
    }

    .section-head p {
      color: #5f7d9c;
      font-size: 15px;
      margin-top: 4px;
    }

    .grid-cats {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 22px;
    }

    .cat-card {
      background: white;
      border-radius: 28px;
      padding: 28px 10px 22px;
      text-align: center;
      box-shadow: var(--shadow-card);
      border: 1px solid #f0f5fa;
      transition: 0.2s;
      cursor: pointer;
    }

    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent);
    }

    .cat-icon {
      width: 60px;
      height: 60px;
      background: #eef4fa;
      border-radius: 30px;
      display: grid;
      place-items: center;
      margin: 0 auto 16px;
      font-size: 24px;
      color: var(--primary);
      transition: 0.15s;
    }

    .cat-card:hover .cat-icon {
      background: var(--accent);
      color: white;
    }

    .cat-card h4 { font-weight: 600; font-size: 15px; }

    /* products grid */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 28px;
    }

    .product-card {
      background: white;
      border-radius: 28px;
      overflow: hidden;
      box-shadow: var(--shadow-card);
      transition: 0.25s;
      border: 1px solid #f0f5fa;
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-10px);
      box-shadow: var(--shadow-hover);
    }

    .product-img {
      height: 210px;
      background: #f3f8fd;
      position: relative;
      overflow: hidden;
    }

    .product-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.5s;
    }

    .product-card:hover .product-img img { transform: scale(1.04); }

    .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #1e3c5c;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 11px;
      letter-spacing: 0.3px;
    }

    .badge.sale { background: #e56b6b; color: white; }

    .product-body {
      padding: 20px 18px 12px;
      flex: 1;
    }

    .product-cat {
      font-size: 12px;
      font-weight: 600;
      text-transform: uppercase;
      color: #7b99b5;
      letter-spacing: 0.5px;
    }

    .product-body h3 {
      font-size: 17px;
      font-weight: 700;
      margin: 6px 0 10px;
      color: #0a1a2b;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 4px;
    }

    .price { font-weight: 700; font-size: 20px; color: var(--primary); }
    .old-price { font-size: 14px; color: #90a9c0; text-decoration: line-through; margin-left: 8px; }
    .rating { color: #f2a65a; font-weight: 600; font-size: 13px; }

    .product-actions {
      padding: 0 18px 20px;
      display: flex;
      gap: 10px;
    }

    .btn-add {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 12px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      transition: 0.2s;
      cursor: pointer;
    }

    .btn-add:hover { background: var(--primary-light); }

    .btn-wish {
      background: #f0f5fa;
      border: 0;
      width: 46px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      color: #5f7d9c;
      transition: 0.15s;
      cursor: pointer;
    }

    .btn-wish:hover { background: #ffeaed; color: #c94a4a; }

    /* deal block */
    .deal-block {
      background: white;
      border-radius: 40px;
      display: flex;
      overflow: hidden;
      box-shadow: var(--shadow-card);
      border: 1px solid #eef3f8;
      margin: 24px 0 12px;
    }

    .deal-img {
      width: 45%;
      min-height: 300px;
      background: #d9e3ed;
    }

    .deal-img img { width: 100%; height: 100%; object-fit: cover; }

    .deal-content {
      padding: 44px 48px;
      width: 55%;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-content h2 { font-family: 'Outfit', sans-serif; font-size: 34px; font-weight: 800; }

    .timer {
      display: flex;
      gap: 16px;
      margin: 20px 0;
    }

    .time-box {
      background: #eaf0f6;
      border-radius: 20px;
      padding: 10px 16px;
      min-width: 70px;
      text-align: center;
    }

    .time-box .num { font-weight: 700; font-size: 24px; color: var(--primary); }
    .time-box .label { font-size: 11px; color: #5f7d9c; text-transform: uppercase; }

    /* newsletter */
    .newsletter-card {
      background: linear-gradient(145deg, #1e3c5c, #2b4b6f);
      border-radius: 48px;
      padding: 56px 40px;
      color: white;
      text-align: center;
    }

    .newsletter-card form {
      display: flex;
      justify-content: center;
      gap: 12px;
      max-width: 500px;
      margin: 28px auto 0;
    }

    .newsletter-card input {
      padding: 14px 24px;
      border-radius: 60px;
      border: 0;
      flex: 1;
      font-size: 15px;
      outline: none;
    }

    .newsletter-card .btn-primary { background: var(--accent); color: var(--primary); box-shadow: 0 8px 18px rgba(0,0,0,0.1); }
    .newsletter-card .btn-primary:hover { background: var(--accent-hover); }

    /* footer */
    footer {
      background: white;
      border-top: 1px solid var(--border-light);
      padding: 56px 0 32px;
      margin-top: 48px;
      color: #4e6f8b;
    }

    /* cart drawer – soft */
    .cart-overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,0.2);
      backdrop-filter: blur(4px);
      z-index: 90;
      opacity: 0;
      pointer-events: none;
      transition: 0.2s;
    }

    .cart-overlay.active { opacity: 1; pointer-events: auto; }

    .cart-drawer {
      position: fixed;
      top: 0;
      right: 0;
      width: 400px;
      max-width: 100%;
      height: 100%;
      background: white;
      z-index: 95;
      transform: translateX(100%);
      transition: 0.3s cubic-bezier(0.2,0.8,0.3,1);
      display: flex;
      flex-direction: column;
      box-shadow: -8px 0 40px rgba(0,0,0,0.04);
    }

    .cart-drawer.active { transform: translateX(0); }

    .cart-header {
      padding: 24px 28px;
      border-bottom: 1px solid var(--border-light);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .cart-body { padding: 24px 28px; flex: 1; overflow-y: auto; }
    .cart-footer { padding: 24px 28px; border-top: 1px solid var(--border-light); background: #fafcfe; }

    /* responsive */
    @media (max-width: 1100px) {
      .grid-products { grid-template-columns: repeat(3,1fr); }
      .grid-cats { grid-template-columns: repeat(3,1fr); }
    }

    @media (max-width: 820px) {
      .search-wrap { width: 200px; }
      .nav-links { display: none; }
      .mobile-toggle { display: block; }
      .hero h1 { font-size: 40px; }
      .deal-block { flex-direction: column; }
      .deal-img, .deal-content { width: 100%; }
      .deal-content { padding: 32px; }
    }

    @media (max-width: 600px) {
      .grid-products { grid-template-columns: 1fr 1fr; }
      .grid-cats { grid-template-columns: 1fr 1fr; }
      .header-inner { flex-wrap: wrap; }
      .search-wrap { width: 100%; order: 10; }
    }

    @media (max-width: 450px) {
      .grid-products { grid-template-columns: 1fr; }
      .hero h1 { font-size: 32px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand">
        <div class="logo-badge"><i class="fas fa-bolt"></i></div>
        <span>Nexus<span>Shop</span></span>
      </a>
    </div>

    <ul class="nav-links">
      <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
    </ul>

    <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
      <div class="search-wrap">
        <i class="fas fa-search"></i>
        <input type="search" id="searchInput" placeholder="Search...">
      </div>
      <div class="header-actions">
        <button class="icon-btn"><i class="far fa-user"></i></button>
        <button class="icon-btn" id="cartBtn">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </div>
</header>

<!-- Cart drawer -->
<div class="cart-overlay" id="cartOverlay"></div>
<div class="cart-drawer" id="cartDrawer">
  <div class="cart-header">
    <h3 style="font-weight:700;">Your Bag</h3>
    <button class="icon-btn" id="closeCart" style="border:0;background:transparent;"><i class="fas fa-times"></i></button>
  </div>
  <div class="cart-body" id="cartItemsContainer"></div>
  <div class="cart-footer">
    <div style="display:flex;justify-content:space-between;font-weight:700;margin-bottom:16px;">
      <span>Total</span>
      <span id="cartTotal">$0.00</span>
    </div>
    <button class="btn btn-primary" style="width:100%;" onclick="alert('Checkout flow')">Checkout</button>
  </div>
</div>

<main>
  <!-- hero -->
  <section class="hero">
    <div class="container hero-content">
      <div class="hero-tag"><i class="fas fa-sparkles" style="color:var(--accent);"></i> fresh drops · summer</div>
      <h1>Where style meets performance</h1>
      <p>Handpicked premium goods, from tech to threads. curated for the modern lifestyle.</p>
      <div style="display:flex;gap:16px;flex-wrap:wrap;">
        <button class="btn btn-primary" id="shopNow">Explore collection <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-outline" id="exploreDeals">Flash deals</button>
      </div>
    </div>
  </section>

  <!-- categories -->
  <section class="section container" id="categories">
    <div class="section-head">
      <div><h2>Categories</h2><p>shop by what you love</p></div>
    </div>
    <div class="grid-cats" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container" id="products">
    <div class="section-head">
      <div><h2>Trending now</h2><p>most loved by our community</p></div>
    </div>
    <div class="grid-products" id="productsGrid"></div>
  </section>

  <!-- deals -->
  <section id="deals" class="container" style="padding:24px 0 12px;">
    <div class="deal-block">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="deal">
      </div>
      <div class="deal-content">
        <span style="color:var(--accent);font-weight:700;text-transform:uppercase;font-size:12px;letter-spacing:1px;">⚡ limited offer</span>
        <h2>MacBook Air M2</h2>
        <p style="color:#4e6f8b;margin:8px 0 4px;">Ultra‑thin, fast, and made to last. perfect for work and play.</p>
        <div class="timer">
          <div class="time-box"><div class="num" id="dealHours">00</div><div class="label">hours</div></div>
          <div class="time-box"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
          <div class="time-box"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
        </div>
        <div style="display:flex;align-items:center;gap:16px;">
          <span class="price" style="font-size:28px;">$999</span>
          <span class="old-price" style="font-size:16px;">$1,199</span>
        </div>
        <button class="btn btn-primary" style="margin-top:20px;width:fit-content;">Claim deal <i class="fas fa-bolt"></i></button>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="container" style="padding:24px 0 12px;">
    <div class="newsletter-card">
      <h3 style="font-weight:700;font-size:28px;">Stay in the loop</h3>
      <p style="opacity:0.8;margin-top:4px;">Get early access and exclusive discounts.</p>
      <form id="newsletterForm">
        <input id="newsletterEmail" type="email" placeholder="you@email.com" required>
        <button class="btn btn-primary" type="submit">Subscribe</button>
      </form>
    </div>
  </section>
</main>

<footer>
  <div class="container" style="display:flex;flex-wrap:wrap;gap:40px;justify-content:space-between;">
    <div style="max-width:280px;">
      <div class="brand" style="margin-bottom:8px;"><div class="logo-badge"><i class="fas fa-bolt"></i></div>Nexus<span>Shop</span></div>
      <p style="color:#5f7d9c;font-size:14px;">Modern, minimal, built for the future of shopping.</p>
    </div>
    <div><h4 style="color:var(--primary);font-weight:600;">Quick</h4><p style="line-height:2;color:#5f7d9c;">About<br>Careers<br>Shipping</p></div>
    <div><h4 style="color:var(--primary);font-weight:600;">Support</h4><p style="line-height:2;color:#5f7d9c;">Help<br>Returns<br>Contact</p></div>
  </div>
  <div style="text-align:center;margin-top:40px;padding-top:20px;border-top:1px solid #eef3f8;color:#7b99b5;font-size:14px;">
    © <span id="year"></span> NexusShop. all rights reserved.
  </div>
</footer>

<script>
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-screen' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
    { id: 'gadgets', name: 'Audio', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Sneakers', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Watches', icon: 'fa-clock' }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4.8, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 4.9, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4.5, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
    { id: 6, title: 'Chanel No. 5', price: 120, rating: 4.7, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4.3, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 4.9, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
  ];

  let cart = [];
  const catGrid = document.getElementById('categoriesGrid');
  const prodGrid = document.getElementById('productsGrid');
  const cartBtn = document.getElementById('cartBtn');
  const cartDrawer = document.getElementById('cartDrawer');
  const cartOverlay = document.getElementById('cartOverlay');
  const closeCart = document.getElementById('closeCart');
  const cartCount = document.getElementById('cartCount');
  const cartItems = document.getElementById('cartItemsContainer');
  const cartTotal = document.getElementById('cartTotal');
  const searchInput = document.getElementById('searchInput');

  function renderCategories() {
    catGrid.innerHTML = CATEGORIES.map(c => `
      <div class="cat-card" onclick="filterCategory('${c.id}')">
        <div class="cat-icon"><i class="fas ${c.icon}"></i></div>
        <h4>${c.name}</h4>
      </div>
    `).join('');
  }

  function renderProducts(list) {
    prodGrid.innerHTML = list.map(p => `
      <div class="product-card">
        <div class="product-img">
          ${p.badge ? `<span class="badge ${p.badge==='Sale'?'sale':''}">${p.badge}</span>` : ''}
          <img src="${p.img}" alt="${p.title}" loading="lazy">
        </div>
        <div class="product-body">
          <div class="product-cat">${p.category}</div>
          <h3>${p.title}</h3>
          <div class="price-row">
            <div><span class="price">$${p.price}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
            <div class="rating"><i class="fas fa-star"></i> ${p.rating}</div>
          </div>
        </div>
        <div class="product-actions">
          <button class="btn-add" onclick="addToCart(${p.id})"><i class="fas fa-shopping-bag"></i> Add</button>
          <button class="btn-wish"><i class="far fa-heart"></i></button>
        </div>
      </div>
    `).join('');
  }

  function filterCategory(id) {
    const filtered = PRODUCTS.filter(p => p.category === id);
    renderProducts(filtered);
    document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
  }

  function addToCart(id) {
    const item = PRODUCTS.find(p => p.id === id);
    if (!item) return;
    const exist = cart.find(p => p.id === id);
    if (exist) exist.qty += 1;
    else cart.push({ ...item, qty: 1 });
    updateCartUI();
    openCart(true);
  }

  function updateCartUI() {
    const totalItems = cart.reduce((s, i) => s + i.qty, 0);
    const totalPrice = cart.reduce((s, i) => s + i.price * i.qty, 0);
    cartCount.textContent = totalItems;
    cartTotal.textContent = `$${totalPrice.toFixed(2)}`;
    if (!cart.length) {
      cartItems.innerHTML = `<p style="text-align:center;color:#7b99b5;margin-top:40px;">Your bag is empty.</p>`;
    } else {
      cartItems.innerHTML = cart.map(i => `
        <div style="display:flex;gap:14px;padding:12px 0;border-bottom:1px solid #f0f5fa;">
          <img src="${i.img}" style="width:60px;height:60px;border-radius:16px;object-fit:cover;">
          <div style="flex:1;"><div style="font-weight:600;">${i.title}</div><div style="color:#5f7d9c;font-size:13px;">Qty ${i.qty} × $${i.price}</div></div>
          <div style="font-weight:700;">$${i.qty * i.price}</div>
        </div>
      `).join('');
    }
  }

  function openCart(open) {
    cartDrawer.classList.toggle('active', open);
    cartOverlay.classList.toggle('active', open);
  }

  cartBtn.addEventListener('click', () => openCart(true));
  closeCart.addEventListener('click', () => openCart(false));
  cartOverlay.addEventListener('click', () => openCart(false));

  searchInput.addEventListener('input', (e) => {
    const q = e.target.value.toLowerCase();
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  });

  document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

  // timer
  (function() {
    const target = Date.now() + 12 * 3600 * 1000;
    setInterval(() => {
      const diff = target - Date.now();
      if (diff < 0) return;
      document.getElementById('dealHours').textContent = String(Math.floor((diff % (3600*24*1000)) / (3600*1000))).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
    }, 1000);
  })();

  renderCategories();
  renderProducts(PRODUCTS);
  updateCartUI();
  document.getElementById('year').textContent = new Date().getFullYear();
</script>
</body>
</html>
