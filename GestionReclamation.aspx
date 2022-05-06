<%@ Page Title="" Language="C#" MasterPageFile="~/Visiteur.Master" AutoEventWireup="true" CodeBehind="GestionReclamation.aspx.cs" Inherits="WebApplication3.GestionReclamation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>Liste des réclamations envoyés </title>
    <script src="swalert.js"></script>
     <script>


         function rechercher() {
             Swal.fire(
                 "aucun réclamation avec cette objet ",
             )
         }

     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
	<br />
	<br />
	<form runat="server">
    <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Liste Des Récalamtions Accepter & refuser</h2>
					</div>
					<div class="col-sm-6">
						<a href="Envoyerreclamation.aspx" class="btn"><i class="material-icons"><img src="images/ajouter.png" width="25px"/></i> <span>Envoyer réclamation</span></a>
						 <div class="search-box">
                             
                            <i class="material-icons"><img src="images/chercher.png" width="25px"/></i>
                            <asp:TextBox ID="txtsearch"  class="form-control" placeholder="Rechercher..." runat="server" AutoPostBack="true" />
                        </div>
                    						
					</div>
				</div>
			</div>

 
    <div class="table table-striped table-hover">
    <asp:Label ID="Label1" runat="server" Text="Label" style="color:white"></asp:Label>
		   <asp:Label ID="Label2" runat="server" Text="Label" style="color:white"></asp:Label>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Reclamation] WHERE (([NomVisiteur] = @NomVisiteur) AND ([PrenomVisiteur] = @PrenomVisiteur) AND ([objet] = @objet))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="NomVisiteur" PropertyName="Text" Type="String" />
				 <asp:ControlParameter ControlID="Label2" Name="PrenomVisiteur" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtsearch" Name="objet" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Reclamation] WHERE (([NomGestionnaire] = @NomGestionnaire) AND ([PrenomGestionnaire] = @PrenomGestionnaire))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="NomGestionnaire" PropertyName="Text" Type="String" />
			 <asp:ControlParameter ControlID="Label2" Name="PrenomGestionnaire" PropertyName="Text" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="#333333">
        <Columns>
             <asp:ImageField DataImageUrlField="ID" DataImageUrlFormatString="images/rec2.png"  ReadOnly="True" >
                        <ControlStyle Height="50px" Width="50px" />
                    </asp:ImageField>
       
			<asp:BoundField DataField="NomVisiteur" HeaderText="Nom Visiteur" SortExpression="NomVisiteur" >
            <HeaderStyle ForeColor="#003399"></HeaderStyle>
				  </asp:BoundField>
			<asp:BoundField DataField="PrenomVisiteur" HeaderText="Prénom Visiteur" SortExpression="PrenomVisiteur" >
            <HeaderStyle ForeColor="#003399"></HeaderStyle>
				  </asp:BoundField>
			<asp:BoundField DataField="objet" HeaderText="Objet" SortExpression="objet" >
            <HeaderStyle ForeColor="#003399"></HeaderStyle>
				  </asp:BoundField>
			<asp:BoundField DataField="description" HeaderText="Description" SortExpression="description">
            <HeaderStyle ForeColor="#003399"></HeaderStyle>
				  </asp:BoundField>
			<asp:BoundField DataField="état" HeaderText="État" SortExpression="état" ItemStyle-ForeColor="#3399FF"  >
            <HeaderStyle ForeColor="#003399"></HeaderStyle>
				  </asp:BoundField>
			<asp:BoundField DataField="NomGestionnaire" HeaderText="Nom Gestionnaire" SortExpression="NomGestionnaire" >
            <HeaderStyle ForeColor="#003399"></HeaderStyle>
				  </asp:BoundField>
			<asp:BoundField DataField="PrenomGestionnaire" HeaderText="Prénom Gestionnaire" SortExpression="PrenomGestionnaire" >
            <HeaderStyle ForeColor="#003399"></HeaderStyle>
				  </asp:BoundField>
        </Columns>
             <PagerStyle BorderColor="White" BorderStyle="None" />
    </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>

      </div>
			</form>
</div>

	
	<style type="text/css">
body {
	color: #566787;
	background: #f5f5f5;
	
	font-size: 13px;
}

.search-box {
    position: relative;        
    float: right;
}
.search-box input {
    height: 34px;
    border-radius: 20px;
    padding-left: 35px;
    border-color: #ddd;
    box-shadow: none;
}
.search-box input:focus {
    border-color: #3FBAE4;
}
.search-box i {
    color: #a0a5b1;
    position: absolute;
    font-size: 19px;
    top: 8px;
    left: 10px;
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {        
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}
.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}
.table-title .btn-group {
	float: right;
}
.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}
.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}
.table-title .btn span {
	float: left;
	margin-top: 2px;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
table.table tr th:first-child {
	width: 60px;
}
table.table tr th:last-child {
	width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}
table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}	
table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td a.edit {
	color: #FFC107;
}
table.table td a.delete {
	color: #F44336;
}
table.table td i {
	font-size: 19px;
}
table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}
.pagination {
	float: right;
	margin: 0 0 5px;
}
.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}
.pagination li a:hover {
	color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}
.pagination li.active a:hover {        
	background: #0397d6;
}
.pagination li.disabled i {
	color: #ccc;
}
.pagination li i {
	font-size: 16px;
	padding-top: 6px
}
.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}    
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}
.custom-checkbox input[type="checkbox"] {    
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}
.custom-checkbox label:before{
	width: 18px;
	height: 18px;
}
.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}
.custom-checkbox input[type="checkbox"]:checked + label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	border-color: #fff;
}
.custom-checkbox input[type="checkbox"]:disabled + label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}	
	</style>
</asp:Content>
