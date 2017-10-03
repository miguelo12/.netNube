<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudUsuario.aspx.cs" Inherits="Web.CrudUsuario" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Portafolio</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="keywords">
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/tables.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>		
	</head>
	<body>
        <form runat="server" class="pure-form pure-form-aligned">
		    <div style="width: 80%; left: 0; right: 0;" >
						<!-- Panel -->
                <br />
                <br />
                <br />
                                        <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="IdComentario" InsertItemPosition="LastItem">
                                            <AlternatingItemTemplate>
                                                
                                                    <tr style="">
                                                        <td>
                                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="pure-button" />
                                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="pure-button" />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="IdComentarioLabel" runat="server" Text='<%# Eval("IdComentario") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="TextoLabel" runat="server" Text='<%# Eval("Texto") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                                        </td>
                                                    </tr>
                                                
                                            </AlternatingItemTemplate>
                                            <EditItemTemplate>
                                                <tr style="">
                                                    <td>
                                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="pure-button" />
                                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="pure-button" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="IdComentarioLabel1" runat="server" Text='<%# Eval("IdComentario") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextoTextBox" runat="server" Text='<%# Bind("Texto") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                                                    </td>
                                                </tr>
                                            </EditItemTemplate>
                                            <EmptyDataTemplate>
                                                <table runat="server" style="">
                                                    <tr>
                                                        <td>No hay datos en la tabla.</td>
                                                    </tr>
                                                </table>
                                            </EmptyDataTemplate>
                                            <InsertItemTemplate>
                                                <tr style="">
                                                    <td>
                                                        <asp:Button  ID="InsertButton" runat="server" ValidationGroup="Three" CommandName="Insert" Text="Insert" CssClass="pure-button" />
                                                        <asp:Button  ID="CancelButton" runat="server" ValidationGroup="Three" CommandName="Cancel" Text="Clear" CssClass="pure-button" />
                                                    </td>
                                                    <td>
                                                        
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextoTextBox" runat="server" ValidationGroup="Three" Text='<%# Bind("Texto") %>' />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Three" ControlToValidate="TextoTextBox" runat="server" ErrorMessage="Vacio"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Three" ControlToValidate="EmailTextBox" runat="server" ErrorMessage="Vacio"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="Three" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="NombreTextBox" runat="server" ValidationGroup="Three" Text='<%# Bind("Nombre") %>' />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Three" ControlToValidate="NombreTextBox" runat="server" ErrorMessage="Vacio"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <tr style="">
                                                    <td>
                                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="pure-button" />
                                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="pure-button" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="IdComentarioLabel" runat="server" Text='<%# Eval("IdComentario") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="TextoLabel" runat="server" Text='<%# Eval("Texto") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <LayoutTemplate>
                                                <table class="table table-bordered" runat="server">
                                                    <tr runat="server">
                                                        <td runat="server">
                                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                                <tr runat="server" style="">
                                                                    <th runat="server"></th>
                                                                    <th runat="server">IdComentario</th>
                                                                    <th runat="server">Texto</th>
                                                                    <th runat="server">Email</th>
                                                                    <th runat="server">Nombre</th>
                                                                </tr>
                                                                <tr id="itemPlaceholder" runat="server">
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr runat="server">
                                                        <td runat="server" style="">
                                                            <asp:DataPager ID="DataPager1" runat="server">
                                                                <Fields>
                                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="pure-button" />
                                                                    <asp:NumericPagerField />
                                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="pure-button" />
                                                                </Fields>
                                                            </asp:DataPager>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </LayoutTemplate>
                                            <SelectedItemTemplate>
                                                <tr style="">
                                                    <td>
                                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="pure-button" />
                                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="pure-button" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="IdComentarioLabel" runat="server" Text='<%# Eval("IdComentario") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="TextoLabel" runat="server" Text='<%# Eval("Texto") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                                    </td>
                                                </tr>
                                            </SelectedItemTemplate>
                                        </asp:ListView>

									    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PruebaNubeEntities" DefaultContainerName="PruebaNubeEntities" EnableFlattening="False" EntitySetName="Comentario" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                                        </asp:EntityDataSource>
                </div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/main.js"></script>
                        									
										</form>
</body>
</html>
