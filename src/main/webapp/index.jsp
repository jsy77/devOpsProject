<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>RailConnect - Online Railway Reservation</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f6f8;
            color: #333;
        }

        /* ---------- Header ---------- */

        header {
            background: #ffffff;
            border-bottom: 1px solid #ddd;
        }

        .top-bar {
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 8%;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #b71c1c;
        }

        .logo span {
            color: #333;
        }

        .top-links a {
            text-decoration: none;
            color: #444;
            margin-left: 25px;
            font-size: 14px;
        }

        .top-links a:hover {
            color: #b71c1c;
        }

        /* ---------- Navigation ---------- */

        nav {
            background: #8e0000;
        }

        .nav-container {
            width: 84%;
            margin: auto;
            display: flex;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 15px 22px;
            display: block;
            font-size: 14px;
        }

        nav a:hover {
            background: #650000;
        }

        /* ---------- Hero ---------- */

        .hero {
            min-height: 390px;
            background:
                linear-gradient(
                    rgba(0, 0, 0, 0.45),
                    rgba(0, 0, 0, 0.45)
                ),
                linear-gradient(135deg, #37474f, #90a4ae);

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hero-content {
            width: 80%;
            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 38px;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 17px;
            margin-bottom: 30px;
        }

        /* ---------- Search Card ---------- */

        .search-card {
            background: white;
            color: #333;
            max-width: 1000px;
            margin: auto;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
            text-align: left;
        }

        .search-card h2 {
            margin-bottom: 20px;
            color: #8e0000;
        }

        .form-row {
            display: flex;
            gap: 15px;
            margin-bottom: 18px;
        }

        .form-group {
            flex: 1;
        }

        .form-group label {
            display: block;
            font-size: 13px;
            font-weight: bold;
            margin-bottom: 7px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .search-button {
            background: #e65100;
            color: white;
            border: none;
            padding: 13px 30px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 15px;
            font-weight: bold;
        }

        .search-button:hover {
            background: #bf360c;
        }

        /* ---------- Services ---------- */

        .services {
            width: 84%;
            margin: 45px auto;
        }

        .section-title {
            text-align: center;
            margin-bottom: 30px;
        }

        .section-title h2 {
            color: #8e0000;
            margin-bottom: 8px;
        }

        .section-title p {
            color: #777;
        }

        .service-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .service-card {
            background: white;
            padding: 25px;
            text-align: center;
            border-radius: 6px;
            border: 1px solid #e0e0e0;
            transition: 0.2s;
        }

        .service-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .service-icon {
            font-size: 35px;
            margin-bottom: 12px;
        }

        .service-card h3 {
            margin-bottom: 8px;
            color: #444;
        }

        .service-card p {
            color: #777;
            font-size: 13px;
            line-height: 1.5;
        }

        /* ---------- Information ---------- */

        .information {
            background: white;
            padding: 40px 8%;
            margin-top: 40px;
        }

        .info-grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 40px;
        }

        .info-box h2 {
            color: #8e0000;
            margin-bottom: 15px;
        }

        .info-box p {
            line-height: 1.7;
            color: #555;
        }

        .notice {
            background: #fff3e0;
            border-left: 4px solid #e65100;
            padding: 15px;
            margin-bottom: 10px;
            font-size: 14px;
        }

        /* ---------- Footer ---------- */

        footer {
            background: #333;
            color: #ddd;
            padding: 30px 8%;
            text-align: center;
        }

        footer p {
            font-size: 13px;
            margin: 5px;
        }

        /* ---------- Responsive ---------- */

        @media (max-width: 800px) {

            .top-bar {
                padding: 0 4%;
            }

            .nav-container {
                width: 100%;
                overflow-x: auto;
            }

            .service-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .form-row {
                flex-direction: column;
            }

            .info-grid {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 28px;
            }
        }

        @media (max-width: 500px) {

            .top-links {
                display: none;
            }

            .service-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

    <div class="top-bar">

        <div class="logo">
            Rail<span>Connect</span>
        </div>

        <div class="top-links">
            <a href="#">Login</a>
            <a href="#">Register</a>
            <a href="#">Help</a>
        </div>

    </div>

    <nav>
        <div class="nav-container">
            <a href="#">Home</a>
            <a href="#">Train Search</a>
            <a href="#">PNR Status</a>
            <a href="#">Live Train Status</a>
            <a href="#">My Bookings</a>
            <a href="#">Contact</a>
        </div>
    </nav>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <h1>Book Your Train Journey</h1>

        <p>
            Search trains, check availability and plan your journey.
        </p>


        <!-- Search Form -->

        <div class="search-card">

            <h2>Search Trains</h2>

            <form action="#" method="get">

                <div class="form-row">

                    <div class="form-group">
                        <label for="from">From</label>

                        <input
                            type="text"
                            id="from"
                            name="from"
                            placeholder="Enter source station">
                    </div>


                    <div class="form-group">
                        <label for="to">To</label>

                        <input
                            type="text"
                            id="to"
                            name="to"
                            placeholder="Enter destination station">
                    </div>


                    <div class="form-group">
                        <label for="date">Journey Date</label>

                        <input
                            type="date"
                            id="date"
                            name="date">
                    </div>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label for="class">
                            Travel Class
                        </label>

                        <select id="class" name="class">

                            <option value="SL">
                                Sleeper (SL)
                            </option>

                            <option value="3A">
                                AC 3 Tier (3A)
                            </option>

                            <option value="2A">
                                AC 2 Tier (2A)
                            </option>

                            <option value="1A">
                                AC First Class (1A)
                            </option>

                        </select>

                    </div>


                    <div class="form-group">

                        <label for="quota">
                            Quota
                        </label>

                        <select id="quota" name="quota">

                            <option value="general">
                                General
                            </option>

                            <option value="tatkal">
                                Tatkal
                            </option>

                            <option value="senior">
                                Senior Citizen
                            </option>

                        </select>

                    </div>


                    <div class="form-group">

                        <label>&nbsp;</label>

                        <button
                            type="submit"
                            class="search-button">
                            Search Trains
                        </button>

                    </div>

                </div>

            </form>

        </div>

    </div>

</section>


<!-- ================= SERVICES ================= -->

<section class="services">

    <div class="section-title">

        <h2>Railway Services</h2>

        <p>
            Access commonly used railway services
        </p>

    </div>


    <div class="service-grid">

        <div class="service-card">

            <div class="service-icon">🚆</div>

            <h3>Train Search</h3>

            <p>
                Find trains between two stations
                and check available classes.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">🎫</div>

            <h3>PNR Status</h3>

            <p>
                Check your ticket booking and
                current reservation status.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">📍</div>

            <h3>Live Train Status</h3>

            <p>
                Track your train and view
                expected arrival information.
            </p>

        </div>


        <div class="service-card">

            <div class="service-icon">📋</div>

            <h3>My Bookings</h3>

            <p>
                View your bookings and
                manage your railway journeys.
            </p>

        </div>

    </div>

</section>


<!-- ================= INFORMATION ================= -->

<section class="information">

    <div class="info-grid">

        <div class="info-box">

            <h2>Plan Your Journey</h2>

            <p>
                RailConnect provides a simple interface for
                searching trains and managing railway journeys.
                This application is a learning project built
                using Java, Maven, JSP and Servlets.
            </p>

        </div>


        <div class="info-box">

            <h2>Important Notices</h2>

            <div class="notice">
                Check your journey date before booking.
            </div>

            <div class="notice">
                Carry a valid identity document while travelling.
            </div>

            <div class="notice">
                Please verify your booking details before payment.
            </div>

        </div>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <p>
        &copy; 2026 RailConnect
    </p>

    <p>
        Learning Project | Java + Maven + JSP + Servlets
    </p>

</footer>

</body>
</html>
