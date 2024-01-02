<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Shopping Mall</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <header>
        <div class="header">
            <div class="brand-content">Online Shopping Mall</div>
            <div class="brand-logo"><span>Logo</span></div>
        </div>
    </header>
    <nav>
        <%@include file="menu.jsp" %>
        <%--        // java bean--%>
    </nav>
    <main>
        <section>
            <article>
                <jsp:include page="item.jsp">
                    <jsp:param name="image" value="Product image 1"/>
                    <jsp:param name="name" value="Product name 1"/>
                </jsp:include>
                <jsp:include page="item.jsp">
                    <jsp:param name="image" value="Product image 2"/>
                    <jsp:param name="name" value="Product name 2"/>
                </jsp:include>
                <jsp:include page="item.jsp">
                    <jsp:param name="image" value="Product image 3"/>
                    <jsp:param name="name" value="Product name 3"/>
                </jsp:include>
                <jsp:include page="item.jsp">
                    <jsp:param name="image" value="Product image 4"/>
                    <jsp:param name="name" value="Product name 4"/>
                </jsp:include>
                <jsp:include page="item.jsp">
                    <jsp:param name="image" value="Product image 5"/>
                    <jsp:param name="name" value="Product name 5"/>
                </jsp:include>
                <jsp:include page="item.jsp">
                    <jsp:param name="image" value="Product image 6"/>
                    <jsp:param name="name" value="Product name 6"/>
                </jsp:include>
            </article>
            <aside>
                <%@include file="login.jsp" %>
                <%@include file="category.jsp" %>
            </aside>
        </section>
    </main>
    <footer>
        <div class="footer-content"><p>FPT Polytechnic @2024. All rights reserved.</p></div>
    </footer>
</div>
</body>
</html>
