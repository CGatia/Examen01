<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Iniciar Sesi�n</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header>
        <h1>Eco Consciente</h1>
        <h2>"Salvando el planeta d�a a d�a"</h2>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>
    </header>

    <!-- Secci�n de Iniciar Sesi�n -->
    <section id="login">
        <h1>Iniciar Sesi�n</h1>
        <form action="login_process.jsp" method="post">
            <div class="form-group">
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Contrase�a:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Iniciar Sesi�n</button>
        </form>
        <div class="social-login">
            <h2>O inicia sesi�n con:</h2>
            <button onclick="window.location.href='https://www.facebook.com/login'">Facebook</button>
            <button onclick="window.location.href='https://accounts.google.com/signin'">Google</button>
        </div>
    </section>

    <!-- Pie de P�gina -->
    <footer>
        <p>&copy; 2024 Desarrollo Sostenible. Todos los derechos reservados.</p>
    </footer>

</body>
</html>
    