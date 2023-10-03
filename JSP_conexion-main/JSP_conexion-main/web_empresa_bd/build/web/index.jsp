<%@page  import="modelo.Puesto" %>
<%@page  import="java.util.HashMap" %>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Empleados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
       
    <h1>formulario empleados</h1>
    <div class="container">
        <form action="" method="post" class="form-group">
            <label for="lbl_codigo"><b>Codigo:</b></label>
            <input type="text" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="ejemplo: codigo" required>
            <label for="lbl_nombres"><b>Nombres:</b> </label>
            <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="ejemplo: nombres" required>
            <label for="lbl_apellidos">Apellidos:</label>6
            <input type="text" name="txt_apellidos" id="txt_apellidos"  class="form-control"placeholder="ejemplo: apellidos" required>
            <label for="lbl_direccion"><b>Direccion:</b></label>
            <input type="text" name="txt_direccion" id="txt_direccion"  class="form-control"placeholder="ejemplo: direccion" required>
            <label for="lbl_telefono"><b>Telefono:</b> </label>
            <input type="number" name="txt_telefono" id="txt_apellidos"  class="form-control"placeholder="ejemplo: telefono" required>
            <label for="lbl_fn"><b>Fecha Nacimiento:</b></label>
            <input type="date" name="txt_fn" id="txt_fn"  class="form-control" required>
            <label for="lbl_sangre"><b>Tipo de Sangre:</b></label>
            <select name="drop_sangre" id="drop_sangre" class="form-group"> 
                <% 
                    Puesto puesto = new Puesto();
                    HashMap<String, String> drop = puesto.drop_sangre();
                    for (String i: drop.keySet()){
                        out.println("<option value='"+i+"'>"+drop.get(i)+"</option>");
                    }
                %>
            </select> 
             <br>
             <button type="button" name="btn_agregar" id="btn_agregar" class="btn btn-primary">Agregar</button>
            
        </form>
    </div>
    </body>
</html>
