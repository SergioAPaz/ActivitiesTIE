<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TIE.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Assets/css/Login.css" rel="stylesheet" />
    <script src="Assets/Bootstrap/js/bootstrap.js"></script>
    <script src="Assets/js/Login.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="panel panel-default">
            <div class="panel-body">
                <div class="panel-heading">
                    <div class="panel-title text-center">
                        <h1 class="title">Nuevo usuario</h1>
                        <hr />
                    </div>
                </div>

                <asp:panel id="pnlThankYouMessage" runat="server" visible="false">
                    <div class="alert alert-success">
                        <strong>Exito!</strong> Nuevo usuario creado satifactoriamente! <a href="Login.aspx">Inicia Sesion.</a>
                    </div>
                </asp:panel>

                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">Nombre completo</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <asp:textbox id="txtNombreCompleto" class="form-control" runat="server"></asp:textbox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">Correo</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <asp:textbox id="txtCorreo" class="form-control" runat="server"></asp:textbox>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">Nombre de usuario</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <asp:textbox id="txtUser" class="form-control" runat="server"></asp:textbox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">Contraseña</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                            <asp:textbox id="txtPassword" class="form-control" runat="server"></asp:textbox>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="form-group ">
                    <asp:button id="btnSubmit" cssclass="btn btn-primary  login-button" runat="server" text="Aceptar" onclick="Conexion" />
                    <asp:button id="btnClean" cssclass="btn btn-default  login-button" runat="server" text="Limpiar" />
                </div>
            </div>
        </div>


    </div>

</asp:Content>
