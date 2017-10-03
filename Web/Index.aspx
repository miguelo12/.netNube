<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.Index" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Portafolio</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="keywords">
		<link rel="stylesheet" href="assets/css/main.css" type="text/css" />
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>		
	</head>
	<body>
        <form runat="server">
		<!-- Page Wrapper -->
			<div id="page-wrapper">
				<!-- Wrapper -->
					<div id="wrapper">

						<!-- Panel (Banner) -->
							<section class="panel banner right">
								<div class="content color0 span-3-75">
									<h1 class="major"><!--[-->Bienvenido,a  <!--]--><br />
									<!--[-->Safety load<!--]--></h1>
									<p><!--[-->Nuestro propocito <strong>es brindar</strong>,una aplicación que permita gestionar y administrar flotas de camiones de despacho.esto permitira al administrador de una empresa cualquier sea su tamaño tener siempre claro donde estan sus transportes y cual es su ruta definida y si se a desviado de ella.<!--]--></p>
                                    <p>Iniciar sesión, click en el boton</p>
									<ul class="actions">
										<li><a href="#first" class="button special color1 circle icon fa-angle-right">Next</a></li>
									</ul>
								</div>
								<div class="image filtered span-1-75" data-position="25% 25%">
									<img src="images/pic01.jpg" alt="" />
								</div>
							</section>

						<!-- Panel (Spotlight) -->
							<section class="panel spotlight medium right">
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
							<section class="panel color1">
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
							<section class="panel">
								
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
								<div class="intro color4">
									<h2 class="major">Contacto</h2>
									<p>Comunicate con nosotros y te daremos la solucion que tu empresa y/o emprendimiento necesita para seguir adelante.</p>
								</div>
								<div class="inner columns divided">
									<div class="span-3-25">
										<h2 class="major">Comentario</h2>

											<div class="field half">
												<label for="nombre">Nombre</label>
                                                <asp:TextBox ID="nombre" ValidationGroup="Two" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Two" runat="server" ControlToValidate="nombre" ErrorMessage="Nombre vacio"></asp:RequiredFieldValidator>
											</div>
											<div class="field half">
												<label for="emails">Email</label>
                                                <asp:TextBox ID="emails" ValidationGroup="Two" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Two" runat="server" ErrorMessage="Email vacio" ControlToValidate="emails" ></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="Two" ControlToValidate="emails" ErrorMessage="Email invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
											</div>
											<div class="field">
												<label for="mensaje">Mensaje</label>
                                                <asp:TextBox id="mensaje" ValidationGroup="Two" TextMode="multiline" Columns="20" Rows="4" runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Two" runat="server" ErrorMessage="Mensaje vacio" ControlToValidate="mensaje"></asp:RequiredFieldValidator>
											</div>
                                        <br>
											<ul class="actions">
                                                <asp:Label ID="Msg" ForeColor="red" runat="server" />
												<li><asp:Button ID="Button1" ValidationGroup="Two" runat="server" Text="Enviar" OnClick="Button1_Click" CssClass="button special" /></li>
											</ul>
										
									</div>
									<div class="span-1-5">
										<ul class="contact-icons color1">
											<li class="icon fa-twitter"><a href="#">@SafetyLoad</a></li>
											<li class="icon fa-facebook"><a href="#">facebook.com/SafetyLoad</a></li>
											<li class="icon fa-snapchat-ghost"><a href="#">@SafetyLoad</a></li>
											<li class="icon fa-instagram"><a href="#">@SafetyLoad</a></li>
											<li class="icon fa-medium"><a href="#">medium.com/SafetyLoad</a></li>
										</ul>
									</div>
								</div>
							</section>

						<!-- Panel -->
							<section class="panel color2-alt" id="first">
									<div class="inner columns divided">
									    <div class="span-3-25">
                                                <h2 class="major">Login</h2>
											    <div class="field half">
												    <label for="name">Nombre de usuario</label>
                                                    <asp:TextBox ID="username" ValidationGroup="One" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Usuario vacio" ValidationGroup="One" ControlToValidate="username"></asp:RequiredFieldValidator>
											    </div>

											    <div class="field half">
												    <label for="clave">Clave</label>
                                                    <asp:TextBox ID="password" ValidationGroup="One" TextMode="Password" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password vacio" ValidationGroup="One" ControlToValidate="password"></asp:RequiredFieldValidator>
											    </div>
											    <br>
											    <ul class="actions">
												    <li><asp:Button ID="Button2" ValidationGroup="One" runat="server" Text="Ingresar" OnClick="Button2_Click" /></li>
											    </ul>
									    </div>
                                        <div class="span-1-5">
                                        <ul class="contact-icons color1">
											<li class=""><a href="#">¿Olvido su contraseña?</a></li>
											<li class=""><a href="#">¿Olvido su usuario?</a></li>
										</ul>
									</div>
                                    </div>
                                    
                               </section>
        </div>										
    </div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/main.js"></script>
</form>
</body>
</html>
