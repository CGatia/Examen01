<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Puntos de Reciclaje</title>
<link rel="stylesheet" href="css/style.css">
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" async defer></script>
<script>
    function initMap() {
        var mapOptions = {
            center: { lat: -34.397, lng: 150.644 },
            zoom: 8
        };
        var map = new google.maps.Map(document.getElementById('map'), mapOptions);

        // Ejemplo de puntos de reciclaje (se deben reemplazar con datos reales)
        var puntosDeReciclaje = [
            { lat:  PFWW+V5 , lng: 150.644, info: 'Reciclaje' },
            { lat: -34.407, lng: 150.654, info: 'Palnet 2' },
            { lat: -34.417, lng: 150.664, info: 'Punto de Reciclaje 3' }
        ];

        puntosDeReciclaje.forEach(function(punto) {
            var marker = new google.maps.Marker({
                position: { lat: punto.lat, lng: punto.lng },
                map: map,
                title: punto.info
            });

            var infoWindow = new google.maps.InfoWindow({
                content: '<h3>' + punto.info + '</h3>'
            });

            marker.addListener('click', function() {
                infoWindow.open(map, marker);
            });
        });
    }
</script>
</head>
<body>

    <header>
        <h1>Eco Consciente</h1>
        <h2>"Salvando el planeta día a día"</h2>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="local.jsp">Puntos de Reciclaje</a></li>
            </ul>
        </nav>
    </header>

    <!-- Sección del Mapa de Puntos de Reciclaje -->
    <section id="recycling-points">
        <h1>Puntos de Reciclaje</h1>
        <div id="map" style="height: 500px; width: 100%;"></div>
    </section>

    <!-- Pie de Página -->
    <footer>
        <p>&copy; 2024 Desarrollo Sostenible. Todos los derechos reservados.</p>
    </footer>

</body>
</html>
    