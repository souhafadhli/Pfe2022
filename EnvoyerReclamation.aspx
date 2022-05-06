<%@ Page Title="" Language="C#" MasterPageFile="~/Visiteur.Master" AutoEventWireup="true" CodeBehind="envoyerreclamation.aspx.cs" Inherits="WebApplication3.envoyerreclamation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Envoyer réclamation</title>
     <script src="swalert.js" type="text/javascript"></script>
    <script>
      
    
  
         function Envoyer() {
             Swal.fire(
                 'Réclamation bien envoyée ',
                 'avec succées',
                 'success'
 )
         }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link href="https://select2.github.io/dist/css/select2.min.css" rel="stylesheet">
<script src="https://select2.github.io/dist/js/select2.full.js"></script>
    <body>

<br>
<br>
<div class="container bootdey">
<div class="email-app">
    
    <main>

<section class="mail-seccess section" width="280px">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-3 col-12">
				<!-- Error Inner -->
				<div class="success-inner">
					<h1><img src="images/tyy.png" width="280px"><span>Envoyer Réclamation!</span></h1>
					<p>Le temps il y'a un probléme dans l'envoi des commandes du tissus aux faconniers,il faut remplié tous les champs.</p>
			
				</div>
			
			</div>
		</div>
	</div>
</section>
        <form runat="server" width="280px">
            <div class="form-row mb-3">
                <label for="to" class="col-2 col-sm-1 col-form-label">Nom:</label>
                <div class="col-10 col-sm-11">
                      <asp:TextBox  id="nom" AutoComplete="Off"  runat="server"  class="form-control" placeholder="Nom" ></asp:TextBox>
               
                </div>
            </div>
            <div class="form-row mb-3">
                <label for="cc" class="col-2 col-sm-1 col-form-label">Prénom:</label>
                <div class="col-10 col-sm-11">
    <asp:TextBox  id="prenom" AutoComplete="Off"  runat="server"  class="form-control" placeholder="Prénom" ></asp:TextBox>
                </div>
            </div>
            <div class="form-row mb-3">
                <label for="bcc" class="col-2 col-sm-1 col-form-label">Réference:</label>
                <div class="col-10 col-sm-11">
               <asp:DropDownList ID="reference" runat="server"  DataSourceID="SqlDataSource2" DataTextField="reference" DataValueField="reference" class="form-control" ></asp:DropDownList>
                    
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT [reference] FROM [Commande]" ></asp:SqlDataSource>
               
                </div>
            </div>
               <div class="form-row mb-3">
                <label for="bcc" class="col-2 col-sm-1 col-form-label">Objet:</label>
                <div class="col-10 col-sm-11">
                  <asp:TextBox  id="objet" AutoComplete="Off"  runat="server"  class="form-control" placeholder="Objet" ></asp:TextBox>
                </div>
            </div>
       
        <div class="row">
            <div class="col-sm-11 ml-auto">
                <div class="toolbar" role="toolbar">
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-bold"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-italic"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-underline"></span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-left"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-right"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-center"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-align-justify"></span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-indent"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-outdent"></span>
                        </button>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-list-ul"></span>
                        </button>
                        <button type="button" class="btn btn-light">
                            <span class="fa fa-list-ol"></span>
                        </button>
                    </div>
                    <button type="button" class="btn btn-light">
                        <span class="fa fa-trash-o"></span>
                    </button>
                    <button type="button" class="btn btn-light">
                        <span class="fa fa-paperclip"></span>
                    </button>
                    <div class="btn-group">
                        <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown">
                            <span class="fa fa-tags"></span>
                            <span class="caret"></span>
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">add label <span class="badge badge-danger"> Home</span></a>
                            <a class="dropdown-item" href="#">add label <span class="badge badge-info"> Job</span></a>
                            <a class="dropdown-item" href="#">add label <span class="badge badge-success"> Clients</span></a>
                            <a class="dropdown-item" href="#">add label <span class="badge badge-warning"> News</span></a>
                        </div>
                    </div>
                </div>
                <div class="form-group mt-4">
                   <%-- <textarea class="form-control" id="recla" name="body" rows="12" placeholder="Rédiger votre réclamation.."></textarea>--%>
                    <asp:TextBox ID="recla" runat="server" class="form-control" TextMode="MultiLine" rows="12" placeholder="Rédiger votre réclamation.."></asp:TextBox>
                    </div>
          
                <div class="form-group">
                    	  <asp:Button  runat="server" text="Envoyer" class="btn btn-primary"  Width="150px"  OnClick="Unnamed_Click"/>
                    	
         
                  
                </div>
                   
            </div>
        </div>
    </main>
</div>
</div>
     </form>    
        </body>
	<style type="text/css">

.mail-seccess {
    text-align: center;
	background: #fff;
	
}
.mail-seccess .success-inner {
	display: inline-block;
}
.mail-seccess .success-inner h1 {
	font-size: 100px;
	text-shadow: 3px 5px 2px #3333;
	color: #006DFE;
	font-weight: 700;
}
.mail-seccess .success-inner h1 span {
	display: block;
	font-size: 25px;
	color: #333;
	font-weight: 600;
	text-shadow: none;
	margin-top: 20px;
}
.mail-seccess .success-inner p {
	padding: 20px 15px;
}
.mail-seccess .success-inner .btn{
	color:#fff;
}

.email-app {
    display: flex;
    flex-direction: row;
    background: #fff;
    border: 1px solid #e1e6ef;
}

.email-app nav {
    flex: 0 0 200px;
    padding: 1rem;
    border-right: 1px solid #e1e6ef;
}

.email-app nav .btn-block {
    margin-bottom: 15px;
}

.email-app nav .nav {
    flex-direction: column;
}

.email-app nav .nav .nav-item {
    position: relative;
}

.email-app nav .nav .nav-item .nav-link,
.email-app nav .nav .nav-item .navbar .dropdown-toggle,
.navbar .email-app nav .nav .nav-item .dropdown-toggle {
    color: #151b1e;
    border-bottom: 1px solid #e1e6ef;
}

.email-app nav .nav .nav-item .nav-link i,
.email-app nav .nav .nav-item .navbar .dropdown-toggle i,
.navbar .email-app nav .nav .nav-item .dropdown-toggle i {
    width: 20px;
    margin: 0 10px 0 0;
    font-size: 14px;
    text-align: center;
}

.email-app nav .nav .nav-item .nav-link .badge,
.email-app nav .nav .nav-item .navbar .dropdown-toggle .badge,
.navbar .email-app nav .nav .nav-item .dropdown-toggle .badge {
    float: right;
    margin-top: 4px;
    margin-left: 10px;
}

.email-app main {
    min-width: 0;
    flex: 1;
    padding: 1rem;
}

.email-app .inbox .toolbar {
    padding-bottom: 1rem;
    border-bottom: 1px solid #e1e6ef;
}

.email-app .inbox .messages {
    padding: 0;
    list-style: none;
}

.email-app .inbox .message {
    position: relative;
    padding: 1rem 1rem 1rem 2rem;
    cursor: pointer;
    border-bottom: 1px solid #e1e6ef;
}

.email-app .inbox .message:hover {
    background: #f9f9fa;
}

.email-app .inbox .message .actions {
    position: absolute;
    left: 0;
    display: flex;
    flex-direction: column;
}

.email-app .inbox .message .actions .action {
    width: 2rem;
    margin-bottom: 0.5rem;
    color: #c0cadd;
    text-align: center;
}

.email-app .inbox .message a {
    color: #000;
}

.email-app .inbox .message a:hover {
    text-decoration: none;
}

.email-app .inbox .message.unread .header,
.email-app .inbox .message.unread .title {
    font-weight: bold;
}

.email-app .inbox .message .header {
    display: flex;
    flex-direction: row;
    margin-bottom: 0.5rem;
}

.email-app .inbox .message .header .date {
    margin-left: auto;
}

.email-app .inbox .message .title {
    margin-bottom: 0.5rem;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.email-app .inbox .message .description {
    font-size: 12px;
}

.email-app .message .toolbar {
    padding-bottom: 1rem;
    border-bottom: 1px solid #e1e6ef;
}

.email-app .message .details .title {
    padding: 1rem 0;
    font-weight: bold;
}

.email-app .message .details .header {
    display: flex;
    padding: 1rem 0;
    margin: 1rem 0;
    border-top: 1px solid #e1e6ef;
    border-bottom: 1px solid #e1e6ef;
}

.email-app .message .details .header .avatar {
    width: 40px;
    height: 40px;
    margin-right: 1rem;
}

.email-app .message .details .header .from {
    font-size: 12px;
    color: #9faecb;
    align-self: center;
}

.email-app .message .details .header .from span {
    display: block;
    font-weight: bold;
}

.email-app .message .details .header .date {
    margin-left: auto;
}

.email-app .message .details .attachments {
    padding: 1rem 0;
    margin-bottom: 1rem;
    border-top: 3px solid #f9f9fa;
    border-bottom: 3px solid #f9f9fa;
}

.email-app .message .details .attachments .attachment {
    display: flex;
    margin: 0.5rem 0;
    font-size: 12px;
    align-self: center;
}

.email-app .message .details .attachments .attachment .badge {
    margin: 0 0.5rem;
    line-height: inherit;
}

.email-app .message .details .attachments .attachment .menu {
    margin-left: auto;
}

.email-app .message .details .attachments .attachment .menu a {
    padding: 0 0.5rem;
    font-size: 14px;
    color: #e1e6ef;
}

@media (max-width: 767px) {
    .email-app {
        flex-direction: column;
    }
    .email-app nav {
        flex: 0 0 100%;
    }
}

@media (max-width: 575px) {
    .email-app .message .header {
        flex-flow: row wrap;
    }
    .email-app .message .header .date {
        flex: 0 0 100%;
    }
}
	</style>
</asp:Content>

