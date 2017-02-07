<%@ Page Title="" Language="C#" MasterPageFile="~/ControlPanel.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="TIE.ControlPanel1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Assets/materialize/css/materialize.css" rel="stylesheet" />
    <script src="Assets/materialize/js/materialize.js"></script>
    <link href="Assets/css/ControlPanel.css" rel="stylesheet" />
    <script src="Assets/Jquery/jquery-3.1.1.js"></script>
        
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid scroll">


        <div class="col-xs-12 col-sm-3">
      
        </div>

        <div class="col-xs-12 col-sm-12">

            <ul class="collapsible" data-collapsible="expandable">
                <li>
                    <div class="collapsible-header"><i class="material-icons"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span></i>Mis actividades asignadas<asp:Label class="pull-right badge" id="NotificacionsCounter" runat="server" style="color:white" Text="0"></asp:Label></div>

                    <div class="collapsible-body" style="background-color: #fafafa">

                        <div class="forssmato">
                            <asp:GridView ID="MyActivitiesGrid" runat="server" CssClass="table table-hover bs-table formato" AutoGenerateColumns="false" GridLines="Vertical" OnRowDataBound="MyActivitiesGrid_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" Visible="true" />
                                    <asp:BoundField DataField="Fecha_de_alta" HeaderText="Fecha de alta" />
                                    <asp:BoundField DataField="Asignador" HeaderText="Asignador" />
                                    <asp:BoundField DataField="Asignado" HeaderText="Asignado" />
                                    <asp:BoundField DataField="Tercero" HeaderText="Tercero" />
                                    <asp:BoundField DataField="Actividad" HeaderText="Actividad" />
                                    <asp:BoundField DataField="Cmnt_asignador" HeaderText="Comentarios del Asignador" Visible="true" />
                                    <asp:BoundField DataField="Comnt_asignado" HeaderText="Comentarios del Asignado" />
                                    <asp:BoundField DataField="Comnt_tercero" HeaderText="Comentarios de tercero" />
                                    <asp:BoundField DataField="Fecha_de_requisision" HeaderText="Fecha de requisición" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="Area" HeaderText="Area" />
                                    <asp:BoundField DataField="Prioridad" HeaderText="Prioridad" Visible="true" />
                                    <asp:BoundField DataField="Progreso" HeaderText="Progreso" />
                                    <asp:TemplateField ShowHeader="true" HeaderText="Acciones">
                                        <ItemTemplate>
                                            <div class="btn-group-xs">
                                                <asp:Button ID="Button1" CssClass="btn btn-primary margenbutton" runat="server" Text="Modificar" />
                                                <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" BackColor="Red" UseSubmitBehavior="False" Text="Eliminar" CommandName="Edit" ValidateRequestMode="Disabled" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle CssClass="cursor-pointer" />
                            </asp:GridView>
                        </div>
                    </div>


                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></i>Actividades que he asignado<asp:Label class="pull-right badge" id="Label1" runat="server" style="color:white" Text="0"></asp:Label></div>
                         <div class="collapsible-body" style="background-color: #fafafa">

                        <div class="forssmato">
                            <asp:GridView ID="MyAssignedTaskGrid" runat="server" CssClass="table table-hover bs-table formato" AutoGenerateColumns="false" GridLines="Vertical" OnRowDataBound="MyActivitiesGrid_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" Visible="true" />
                                    <asp:BoundField DataField="Fecha_de_alta" HeaderText="Fecha de alta" />
                                    <asp:BoundField DataField="Asignador" HeaderText="Asignador" />
                                    <asp:BoundField DataField="Asignado" HeaderText="Asignado" />
                                    <asp:BoundField DataField="Tercero" HeaderText="Tercero" />
                                    <asp:BoundField DataField="Actividad" HeaderText="Actividad" />
                                    <asp:BoundField DataField="Cmnt_asignador" HeaderText="Comentarios del Asignador" Visible="true" />
                                    <asp:BoundField DataField="Comnt_asignado" HeaderText="Comentarios del Asignado" />
                                    <asp:BoundField DataField="Comnt_tercero" HeaderText="Comentarios de tercero" />
                                    <asp:BoundField DataField="Fecha_de_requisision" HeaderText="Fecha de requisición" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="Area" HeaderText="Area" />
                                    <asp:BoundField DataField="Prioridad" HeaderText="Prioridad" Visible="true" />
                                    <asp:BoundField DataField="Progreso" HeaderText="Progreso" />
                                    <asp:TemplateField ShowHeader="true" HeaderText="Acciones">
                                        <ItemTemplate>
                                            <div class="btn-group-xs">
                                                <asp:Button ID="Button1" CssClass="btn btn-primary margenbutton" runat="server" Text="Modificar" />
                                                <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" BackColor="Red" UseSubmitBehavior="False" Text="Eliminar" CommandName="Edit" ValidateRequestMode="Disabled" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle CssClass="cursor-pointer" />
                            </asp:GridView>
                        </div>
                    </div>                
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons"><span class="glyphicon glyphicon-education" aria-hidden="true"></span></i>Mi historico</div>
                         <div class="collapsible-body" style="background-color: #fafafa">

                        <div class="forssmato">
                            <asp:GridView ID="MyHistoricGrid" runat="server" CssClass="table table-hover bs-table formato" AutoGenerateColumns="false" GridLines="Vertical" OnRowDataBound="MyActivitiesGrid_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" Visible="true" />
                                    <asp:BoundField DataField="Fecha_de_alta" HeaderText="Fecha de alta" />
                                    <asp:BoundField DataField="Asignador" HeaderText="Asignador" />
                                    <asp:BoundField DataField="Asignado" HeaderText="Asignado" />
                                    <asp:BoundField DataField="Tercero" HeaderText="Tercero" />
                                    <asp:BoundField DataField="Actividad" HeaderText="Actividad" />
                                    <asp:BoundField DataField="Cmnt_asignador" HeaderText="Comentarios del Asignador" Visible="true" />
                                    <asp:BoundField DataField="Comnt_asignado" HeaderText="Comentarios del Asignado" />
                                    <asp:BoundField DataField="Comnt_tercero" HeaderText="Comentarios de tercero" />
                                    <asp:BoundField DataField="Fecha_de_requisision" HeaderText="Fecha de requisición" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="Area" HeaderText="Area" />
                                    <asp:BoundField DataField="Prioridad" HeaderText="Prioridad" Visible="true" />
                                    <asp:BoundField DataField="Progreso" HeaderText="Progreso" />
                                    <asp:TemplateField ShowHeader="true" HeaderText="Acciones">
                                        <ItemTemplate>
                                            <div class="btn-group-xs">
                                                <asp:Button ID="Button1" CssClass="btn btn-primary margenbutton" runat="server" Text="Modificar" />
                                                <asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" BackColor="Red" UseSubmitBehavior="False" Text="Eliminar" CommandName="Edit" ValidateRequestMode="Disabled" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle CssClass="cursor-pointer" />
                            </asp:GridView>
                        </div>
                    </div>
                </li>
            </ul>


        </div>




    </div>


</asp:Content>
