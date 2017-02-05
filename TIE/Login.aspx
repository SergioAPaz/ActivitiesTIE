<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TIE.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Assets/css/Login.css" rel="stylesheet" />
    <script src="Assets/Bootstrap/js/bootstrap.js"></script>
    <script src="Assets/js/Login.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <div class="account-wall">
                    <img class="profile-img img-thumbnail" style="width: 200px; height: auto" src="Images/profile_default.png" />

                    <div class="form-signin">

                        <asp:Panel ID="msgNoUser" runat="server" Visible="false">
                            <div class="alert alert-danger">
                                <strong>Error!</strong> Usuario o contraseña incorrectos.
                            </div>
                        </asp:Panel>

                        
                        <asp:TextBox ID="txtUser" CssClass="form-control" placeholder="Usuario" runat="server" required="Complete this field" text="tester"></asp:TextBox>
                       
                        <br />
                        <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Contraseña" runat="server" required="Complete this field" text="tester"></asp:TextBox>
                        
                        <br />
                        <asp:Button ID="btnFind" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Aceptar" OnClick="ConsultaAccount"/>
                        <br />
                        <label class="checkbox pull-left" style="margin-left: 20px">
                            <input type="checkbox" value="remember-me">
                            Recordarme
                        </label>
                        <button type="button" class="btn btn-lg btn-default btn-xs pull-right" style="margin-top: 6px" data-toggle="popover" title="Correo de contacto" data-content="Puedes enviar un correo con tus dudas a Admin@tie.com">Necesitas ayuda?</button>
                        <br />
                    </div>
                </div>
                <a href="#" class="text-center new-account">Crear una cuenta</a>
            </div>
        </div>
    </div>

</asp:Content>
