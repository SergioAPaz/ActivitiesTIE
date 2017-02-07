<%@ Page Title="" Language="C#" MasterPageFile="~/ControlPanel.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="TIE.MyProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="height: 100%; color: white">

        <div class="col-xs-12 col-sm-4 col-md-4" style="align-items: center; text-align: center; align-content: center">
            <div class="panel panel-default" style="background-color: #424242; border: 0 solid">
                <div class="panel-body">
                    <div class="account-wall">
                        <img class="profile-img img-thumbnail" style="width: 200px; height: auto" src="Images/profile_default.png" />

                        <asp:Panel ID="ErrorEditUser" runat="server" Visible="false">
                            <div class="alert alert-warning">
                                <strong>Error!</strong>Favor de llenar todos los espacios.
                            </div>
                        </asp:Panel>


                        <div style="text-align: left; margin-top: 30px">
                            <h4>Usuario:<span class="label label-default"></span></h4>
                            <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>

                            <h4>Nombre:<span class="label label-default"></span></h4>
                            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                            <asp:TextBox ID="txtName" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>

                            <h4>Correo:<span class="label label-default"></span></h4>
                            <asp:Label ID="lblMail" runat="server" Text="Label"></asp:Label>
                            <asp:TextBox ID="txtMail" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="btnEdit" CssClass="btn btn-primary" runat="server" Text="Editar" Visible="true" OnClick="btn_edit" />
                            <asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" Text="Guardar" Visible="false" OnClick="btn_Save" />
                            <asp:Button ID="btnEditCancel" CssClass="btn btn-warning" runat="server" Text="Cancelar" Visible="false" OnClick="btn_EditCancel" />
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="col-xs-12 col-sm-8 col-md-8" style="align-items: center; text-align: center; align-content: center">
            <div class="panel panel-default" style="background-color: #424242; border: 0 solid">
                <div class="panel-body">
                    <div class="account-wall">
                        <h2>Mi perfil<span class="label label-default"></span></h2>
                        <img class="profile-img img-thumbnail" style="width: 200px; height: auto" src="Images/profile_default.png" />

                    </div>
                </div>
            </div>
        </div>

    </div>



</asp:Content>
