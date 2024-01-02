<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Shopping Mall</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <div class="sup-header">
            <div class="brand-content">Online Shopping Mall</div>
            <div class="brand-logo">Logo</div>
        </div>
    </header>
    <nav class="menu">
        <ul>
            <li>Home</li>
            <li>About Us</li>
            <li>Contact Us</li>
            <li>Feedback</li>
            <li>FAQs</li>
        </ul>
    </nav>
    <main>
        <section>
            <article>
                <div class="item">
                    <div class="item-img"><p>Product image 1</p></div>
                    <div class="item-name">Product name 1</div>
                </div>
            </article>
            <aside>
                <div class="login">
                    <form action="" method="post">
                        <label>
                            <input type="text" name="user" placeholder="Username ?" required/>
                        </label>
                        <label>
                            <input type="text" name="pass" placeholder="Password ?" required/>
                        </label>
                        <button>X</button>
                        Remember me?
                        <input type="submit" value="Login"/>
                    </form>
                </div>
                <div class="directory">
                    <div class="detail-directory"><p>Directory 1</p></div>
                    <div class="detail-directory"><p>Directory 2</p></div>
                    <div class="detail-directory"><p>Directory 3</p></div>
                </div>
            </aside>
        </section>
    </main>
    <footer>
        <div class="footer-content">FPT Polytechnic @2024. All rights reserved.</div>
    </footer>
</div>
</body>
</html>
