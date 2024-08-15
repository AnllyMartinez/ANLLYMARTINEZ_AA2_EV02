<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Registrar Usuarios</title>
        <style>
            form{
                width: 50vw;
                margin: 0 auto;
                padding: 20px;
                text-align: center;
                justify-content: center;
            }
        </style>
    </head>
    <body>
        <h1>Registrar Usuario(POST)</h1>
            <form action="servlets" method="POST">
                <div class="mb-3">
                    <label for="idUsuario" class="form-label">ID Usuario</label>
                    <input type="text" class="form-control" id="idUsuario" name="idUsuario" placeholder="Digite el ID del usuario" required>
                </div>
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Digite su nombre" required>
                </div>
                <div class="mb-3">
                    <label for="horario" class="form-label">Horario</label>
                    <input type="text" class="form-control" id="horario" name="horario" placeholder="Digite su horario" required>
                </div>
                <div class="mb-3">
                    <label for="rol" class="form-label">Rol</label>
                    <input type="text" class="form-control" id="rol" name="rol" placeholder="Digite su rol" required>
                </div>
                <button type="submit" class="btn btn-primary">Enviar datos</button>
            </form>

        <h1>Mostrar Usuarios(GET)</h1>
        <form action="servlets" method="GET">
            <button type="submit" class="btn bt-primary">Mostrar datos</button>
        </form>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</html>
