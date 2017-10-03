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
        <form runat="server">
		
		<!-- Page Wrapper -->
			<div id="page-wrapper">
				<!-- Wrapper -->
					<div id="wrapper">

						<!-- Panel (Banner) -->
						<!--<section class="panel banner right">
								<div class="content color0 span-3-75">
									<h1 class="major"><!--[--><!--Bienvenido,a  <!--]--><!--<br /> -->
									<!--[--><!--Safety load<!--]--><!--</h1>
							<!--	<p><!--[--><!--Nuestro propocito <strong>es brindar</strong>,una aplicación que permita gestionar y administrar flotas de camiones de despacho.esto permitira al administrador de una empresa cualquier sea su tamaño tener siempre claro donde estan sus transportes y cual es su ruta definida y si se a desviado de ella.<!--]--></p>
								<!--<ul class="actions">
										<li><a href="#first" class="button special color1 circle icon fa-angle-right">Next</a></li>
									</ul>
								</div>
								<div class="image filtered span-1-75" data-position="25% 25%">
									<img src="images/pic01.jpg" alt="" />
								</div>
							</section>

						<!-- Panel (Spotlight) -->
						<!--	<section class="panel spotlight medium right" id="first">
								<div class="content span-7">
									<h2 class="major">Nosotros</h2>
									<p>Somos una empresa enfocada en dar soluciones optimas a problemas cotidianos.Orientados al area de transporte de mercancias de todo tipo
									,Dando asi una gestion y control en todo momento y lugar de los activos de tu compañia.</p>
									<p>Mediante la inclución de variadas tecnologias que nos permiten brindar una aplicación movil que te permitira a ti y a tu empresa aser la diferencia con tus competidores.</p>
								</div>
								<div class="image filtered tinted" data-position="top left">
									<img src="images/pic02.jpg" alt="" />
								</div>
							</section>

						<!-- Panel -->
						<!--<section class="panel color1">
								<div class="intro joined">
									<h2 class="major">Soluciones</h2>
									<p>Nuestra compañia genera soluciones a problemas cotidianos mediante las tecnologias,logrando asi generar un producto y/o servicio tecnologiaco de primer nivel.</p>
								</div>
								<div class="inner">
									<ul class="grid-icons three connected">
										<li><span class="icon fa-diamond"><span class="label">Lorem</span></span></li>
										<li><span class="icon fa-camera-retro"><span class="label">Ipsum</span></span></li>
										<li><span class="icon fa-cog"><span class="label">Dolor</span></span></li>
										<li><span class="icon fa-paper-plane"><span class="label">Sit</span></span></li>
										<li><span class="icon fa-bar-chart"><span class="label">Amet</span></span></li>
										<li><span class="icon fa-code"><span class="label">Nullam</span></span></li>
									</ul>
								</div>
							</section>
                        						
							

						<!-- Panel -->
						<!--<section class="panel">
								
								<div class="gallery">
									<div class="group span-3">
										<a href="images/rutas/r01.png" class="image filtered span-3" data-position="bottom"><img src="images/rutas/r01.png" alt="" /></a>
										<a href="images/rutas/r02.png" class="image filtered span-1-5" data-position="center"><img src="images/rutas/r02.png" alt="" /></a>
										<a href="images/rutas/r03.png" class="image filtered span-1-5" data-position="bottom"><img src="images/rutas/r03.png" alt="" /></a>
									</div>
									<a href="images/gallery/fulls/04.jpg" class="image filtered span-2-5" data-position="top"><img src="images/gallery/thumbs/04.jpg" alt="" /></a>
									<div class="group span-4-5">
										<a href="images/rutas/r04.png" class="image filtered span-3" data-position="top"><img src="images/rutas/r04.png" alt="" /></a>
										<a href="images/gallery/fulls/06.jpg" class="image filtered span-1-5" data-position="center"><img src="images/gallery/thumbs/06.jpg" alt="" /></a>
										<a href="images/logos/logo01.png" class="image filtered span-1-5" data-position="bottom"><img src="images/logos/logo01.png" alt="" /></a>
										<a href="images/gallery/fulls/08.jpg" class="image filtered span-3" data-position="top"><img src="images/gallery/thumbs/08.jpg" alt="" /></a>
									</div>
									<a href="images/gallery/fulls/09.jpg" class="image filtered span-2-5" data-position="right"><img src="images/gallery/thumbs/09.jpg" alt="" /></a>
								</div>
							</section>

						<!-- Panel -->
							<section class="panel color4-alt">
								<div class="inner columns divided">
									<div class="span-3-25">
                                        <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="IdComentario" InsertItemPosition="LastItem">
                                            <AlternatingItemTemplate>
                                                
                                                    <tr style="">
                                                        <td>
                                                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
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
                                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                                                        <td>No data was returned.</td>
                                                    </tr>
                                                </table>
                                            </EmptyDataTemplate>
                                            <InsertItemTemplate>
                                                <tr style="">
                                                    <td>
                                                        <asp:Button  ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                        <asp:Button  ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                                    </td>
                                                    <td>
                                                        
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
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <tr style="">
                                                    <td>
                                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
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
                                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                                    <asp:NumericPagerField />
                                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                                </Fields>
                                                            </asp:DataPager>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </LayoutTemplate>
                                            <SelectedItemTemplate>
                                                <tr style="">
                                                    <td>
                                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
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
								</div>
							</section>

						<!-- Panel -->
							<!--<section class="panel color2-alt">
								
									<div class="inner columns divided">
									<div class="span-3-25">
										<form method="post" action="Sesion.html">
											<div class="field half">
												<label for="name">Nombre de usuario</label>
												<input type="text" name="name" id="name" />
											</div>

											<div class="field half">
												<label for="clave">Clave</label>
												<input type="password" name="clave" id="clave" />
											</div>
											
											<ul class="actions">
												<li><input type="submit" value="Ingresar" class="button special" /></li>
											</ul>
										</form>
									</div>

</div>							
							</section>
-->
</div>	</div>	
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/main.js"></script>
                        									
										</form>
</body>
</html>
