<%@page contentType="text/html;charset=UTF-8"%>

<html>
    <head>
        <title>Main page</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet"/>
        <link href='https://unpkg.com/mapillary-js@2.11.1/dist/mapillary.min.css' rel='stylesheet' />
        <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.44.2/mapbox-gl.css' rel='stylesheet' />
        <link href="../../static/css/main.css" rel="stylesheet"/>

        <script
                src="https://code.jquery.com/jquery-3.3.1.min.js"
                integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
                crossorigin="anonymous"></script>
        <script src='https://unpkg.com/mapillary-js@2.11.1/dist/mapillary.min.js'></script>

        <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.44.2/mapbox-gl.js'></script>
    </head>
    <body>
        <%@include file="templates/header.jsp"%>

        <div id='mly'></div>
        <div id='map'></div>

        <script src="../../static/js/main.js"></script>
    </body>
</html>
