<%@ Page Title="" Language="C#" MasterPageFile="~/Gestionnaire.Master" AutoEventWireup="true" CodeBehind="GestionTissu2.aspx.cs" Inherits="WebApplication.GestionTissu2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>Gestion tissus</title>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  
<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styleliste.css">
         <link rel="stylesheet" href="css/s.css">
       
       
    
    <link rel="stylesheet" href="css/responsive.css">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>


.table-wrapper .btn {
	float: right;


}

.table-wrapper .btn.btn-primary {
	color: #fff;
	background: #03A9F4;
}



.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}
.show-entries select.form-control {        
	width: 60px;
	margin: 0 5px;
}
.table-filter .filter-group {
	float: right;
	margin-left: 15px;
}
.table-filter input, .table-filter select {
	height: 34px;
	border-radius: 3px;
	border-color: #ddd;
	box-shadow: none;
}
.table-filter {
	padding: 5px 0 15px;
	border-bottom: 1px solid #e9e9e9;
	margin-bottom: 5px;
}
.table-filter .btn {
	height: 34px;
}
.table-filter label {
	font-weight: normal;
	margin-left: 10px;
}
.table-filter select, .table-filter input {
	display: inline-block;
	margin-left: 5px;
}
.table-filter input {
	width: 200px;
	display: inline-block;
}
.filter-group select.form-control {
	width: 110px;
}
.filter-icon {
	float: right;
	margin-top: 7px;
}
.filter-icon i {
	font-size: 18px;
	opacity: 0.7;
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
	width: 80px;
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
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td a.view {        
	width: 30px;
	height: 30px;
	color: #2196F3;
	border: 2px solid;
	border-radius: 30px;
	text-align: center;
}
table.table td a.view i {
	font-size: 22px;
	margin: 2px 0 0 1px;
}   
table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}




input {
    width:110px;

    border-bottom: 2px solid #ddd;


}

.wrapper {
    width: 85%;
    margin: 20px auto;
    box-shadow: 1px 1px 30px 10px rgba(250, 250, 250, 0.8)
}

.h3 {
    padding-top: 40px;
    font-size: 34px
}
}

.wrapper {
    clear: both
}

#country {
    border: none;
    outline: none;
    width: 100%;
    padding-bottom: 12px;
    border-bottom: 2px solid #ddd
}

.wrapper .col-md-6:hover label {
    color: blue
}

.wrapper .col-md-6:hover input,
.wrapper .col-md-6:hover #country {
 border-color: blue;
    cursor: pointer
}

.wrapper .col-md-6 input:focus {
    border-color: blue
}

.option {
    position: relative;
    padding-left: 30px;
    display: block;
    cursor: pointer;
  border-color: blue
}

.option input {
    display: none
}

.checkmark {
    position: absolute;
    top: -1px;
    left: 0;
    height: 20px;
    width: 20px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 50%
}
  
</style>

  <br />
    <br />
    <br />
   <form class="form-horizontal">
    <form class="well form-inline">
  
         
            
                  
                      
                   
                            <div class="add-product">     <h1 style="font-size: 25px" >Caractéristiques Des Tissus</h1>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                
                             
               
                            </div>
        <br />
        <table class="table table-bordered">
            <tr>
               	<th>N° Rouleau</th>
						<th>Code Tissu</th>
						<th>Tissu</th>
						<th>Fournisseur</th>
						<th>Date Facture</th>
						<th>Métrage</th>
                        <th>Nombre De Rouleau </th>
                        <th> Visiteur</th>
                       <th>  Date De Saisie</th>
                        <th>Laize Rouleau</th>
            </tr>
            <tr>
                <td><asp:TextBox style=" border: none;" id="Tnum" AutoComplete="Off"  runat="server" placeholder="Entrer le numéro de rouleau"  ></asp:TextBox></td>
                <td><asp:TextBox  id="code" style="border:none;"  placeholder="Entrer code tissu" AutoComplete="Off"  runat="server" ></asp:TextBox></td>
                <td> <asp:TextBox  id="tissu" AutoComplete="Off"  runat="server" style="border:none;"  placeholder="Entrer Tissu"></asp:TextBox></td>
                <td> <asp:TextBox  id="fournisseur" AutoComplete="Off"  runat="server" style="border:none;"  placeholder="Fournisseur"></asp:TextBox></td>
               </td>
                <td> <asp:TextBox  id="datef" AutoComplete="Off"  runat="server"  type="date" style="border:none;"  ></asp:TextBox></td>
                <td><asp:TextBox  id="metrage" AutoComplete="Off"  runat="server"  style="border:none;"  placeholder=" Entrer métrage"  ></asp:TextBox></td>
                <td> <asp:TextBox  id="nbr" AutoComplete="Off"  runat="server"   style="border:none;"  placeholder=" nbre de rouleau" ></asp:TextBox>   </td>
                <td> <asp:TextBox  id="visiteur" AutoComplete="Off"  runat="server"   style="border:none;"  placeholder="nom de visiteur" ></asp:TextBox></td>
                <td><asp:TextBox  id="dateS" AutoComplete="Off"  runat="server"  type="date"  style="border:none;"  ></asp:TextBox></td>
                <td><asp:TextBox  id="laize" AutoComplete="Off"  runat="server"  style="border:none;"  placeholder=" laize rouleau"  ></asp:TextBox></td>
           
               
            </tr> 
  
       </table>   <br />

                        <form class="well form-inline">
        <table class="table " style="width:10px">
         <h1 style="font-size: 25px" >Défauts Des Tissus</h1>
      
       
            <tr>
               	<th>Code Défaut</th>
				<th>Description Défaut</th>
				<th>Nombre Des Points</th>
				<th>M/N</th>
                 </tr>
            <tr>
                
                <td>  <asp:DropDownList ID="codefaut" runat="server"  DataSourceID="SqlDataSource2" DataTextField="code" DataValueField="code"  Width="100px" style="border:none"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT [code] FROM [Defaut]"></asp:SqlDataSource>
                </td>
                <td>  <asp:DropDownList ID="DropDownList2" runat="server"  DataSourceID="SqlDataSource4" DataTextField="description" DataValueField="description"  Width="100px" style="border:none"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT [description] FROM [Defaut]"></asp:SqlDataSource>
                </td>
                <td><asp:TextBox  id="nbre" AutoComplete="Off"  runat="server" style="border:none;"  placeholder="nombre de point"></asp:TextBox> </td>
                <td> 
                    
                         <asp:DropDownList ID="marquage" runat="server"  Width="100px" style="border:none"  > 
                            
                            <asp:ListItem>Marqué</asp:ListItem>
                            <asp:ListItem>Nom marqué</asp:ListItem>
                         
                        </asp:DropDownList>

                </td>


                   </tr> 
        </table>
    </form>
</form>
      
    <br />
    <br />
	    <br />
    <br />
     
 

        <div class="table-wrapper">

            <div class="table-filter">
                <div class="row">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;       <h1 style="font-size: 25px" >Liste Des Tissus</h1>
                    <div class="col-sm-9">
						</div>
		
                    <div class="col-sm-9">
                   <button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button>
                       
                     	
                         
                        </div>

                      <asp:TextBox ID="txtsearch"  class="search-int form-control" placeholder="Rechercher ici..." runat="server" AutoPostBack="true" Width="425px">   </asp:TextBox>
                 
                 
                    </div>
             
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Tissu]">
              
            </asp:SqlDataSource>
          
						 <asp:GridView ID="GridView1" runat="server" class="table table-striped table-hover" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="2030px">
           
            <Columns>

                 
                <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id"  />
                <asp:BoundField DataField="numerorouleau" HeaderText="N° De Rouleau" SortExpression="numerorouleau" />
                <asp:BoundField DataField="codetissu" HeaderText="Code Tissu" SortExpression="codetissu" />
                <asp:BoundField DataField="tissu" HeaderText="Tissu" SortExpression="tissu" />
                <asp:BoundField DataField="fournisseur" HeaderText="Fournisseur" SortExpression="fournisseur" />
                <asp:BoundField DataField="datef" HeaderText="Date Facture" SortExpression="datef" />
                <asp:BoundField DataField="metrage" HeaderText="Métrage" SortExpression="metrage" />
                <asp:BoundField DataField="nombrerouleau" HeaderText="Nombre De Rouleau" SortExpression="nombrerouleau" />
                <asp:BoundField DataField="visiteur" HeaderText="Visiteur" SortExpression="visiteur" />
                                
                      <asp:BoundField DataField="datesaisie" HeaderText="Date Saisie" SortExpression="datesaisie" />
                 <asp:BoundField DataField="laizerouleau" HeaderText="Laize Rouleau" SortExpression="laizerouleau" />
                 <asp:BoundField DataField="codedefaut" HeaderText="Code Défaut" SortExpression="codedefaut" />
                 <asp:BoundField DataField="descriptiondefaut" HeaderText="Description Défaut" SortExpression="descriptiondefaut" />
                 <asp:BoundField DataField="nombredepoint" HeaderText="Nombre De Points" SortExpression="nombredepoint" />
                 <asp:BoundField DataField="marquage" HeaderText="Marquage" SortExpression="marquage" />
                    <asp:TemplateField  HeaderText="Action ">
                                <ItemTemplate>
                               
                                     
         
                          <button type="button"  class="btn btn-success"   data-toggle="modal" data-target="#myModal1"  color="white" > <i class="mdi mdi-pencil-box-outline me-2 text-white" ></i> 
      </button>
							            <button  type="button"  class="btn btn-danger" data-toggle="modal" data-target="#myModal2"  color="white" >    <i class="mdi mdi-delete me-2 text-white" ></i> 
                       
      </button>
   
         
                            </ItemTemplate>
                      
                                   
                                   

                                  
                               <HeaderStyle CssClass="centered"></HeaderStyle>
                            </asp:TemplateField>
                </Columns>
                 
                <HeaderStyle BorderColor="White" BorderStyle="None" ForeColor="#333333" />
                
                <PagerStyle BorderColor="White" BorderStyle="None" />
                
            </asp:GridView>
           
           <div class="modal" id="myModal1">
         <div class="modal-dialog">
            <div class="modal-content">
            
               <div class="modal-header">
                  <h4 class="modal-title">Modifier Tissu</h4>

                  

					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="row my-4">
            <div class="col-md-6"> <label>N° Rouleau</label> 
              <asp:TextBox  id="num1" AutoComplete="Off"  runat="server"  placeholder="Entrer le numéro"  style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox>
                   </div>

             
                 
                <div class="col-md-6"> <label>Code Tissu</label>      <asp:TextBox  id="code1" AutoComplete="Off"  runat="server"  placeholder="Entrer le code" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox> </div>
         
        </div>
        <div class="row my-md-4 my-2">
        
            <div class="col-md-6 pt-md-0 pt-4"> <label>Tissu</label>     <asp:TextBox  id="tissu1" AutoComplete="Off"  runat="server"  placeholder="Entrer le tissu" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox> </div>
                 <div class="col-md-6"> <label>Fournisseur</label>      <asp:TextBox  id="fournisseur1" AutoComplete="Off"  runat="server"  placeholder="Fournisseur" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox></div>
             <div class="row my-md-4 my-2">
          <div class="col-md-6"> <label>Date Facture</label>      <asp:TextBox  id="datef1" AutoComplete="Off"  runat="server" type="date" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox></div>
                    <div class="col-md-6"> <label>Métrage</label>     <asp:TextBox  id="metrage1" AutoComplete="Off"  runat="server"  type="number"  style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox> </div>
        </div>
       
         
    
        
          <div class="row my-md-4 my-2">
    
            <div class="col-md-6"> <label>Nombre Rouleau</label>      <asp:TextBox  id="nbr1" AutoComplete="Off"  runat="server" type="number" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox></div>
                      <div class="col-md-6"> <label>Visiteur</label>  <asp:TextBox  id="visiteur1" AutoComplete="Off"  runat="server"  placeholder="Entrer le nom de visiteur" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox>  </div>
        </div>
          <div class="row my-md-4 my-2">
    
            <div class="col-md-6"> <label>Date De Saisie</label>  <asp:TextBox  id="dateS1" AutoComplete="Off"  runat="server"  type="date" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox>   </div>
                    <div class="col-md-6"> <label>Laize Rouleau</label> <asp:TextBox  id="laize1" AutoComplete="Off"  runat="server"  placeholder="Laize rouleau" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox>  </div>
        </div>
          <div class="row my-md-4 my-2">
            <div class="col-md-6"> <label>Code Défaut</label>  <asp:TextBox  id="codeD1" AutoComplete="Off"  runat="server"  style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox>  </div>
               <div class="col-md-6"> <label>Description Défaut</label> <asp:TextBox  id="description1" AutoComplete="Off"  runat="server" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox>  </div>
        </div>
        
             <div class="row my-md-4 my-2">
            <div class="col-md-6"> <label>Nombre De Points</label> <asp:TextBox  id="nombrepoints1" AutoComplete="Off"  runat="server"  type="number" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" ></asp:TextBox> </div>
      
                 

                   <div class="col-md-6 pt-md-0 pt-4"> 
				<div class="form-group" >
                   
				 <asp:Label ID="marquagee"  runat="server" Text="Marquage" ></asp:Label>
                    
                         <asp:DropDownList ID="marqué" runat="server"    class="form-control" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px" > 
                                <asp:ListItem></asp:ListItem>
                            	<asp:ListItem>Marqué</asp:ListItem>
                            <asp:ListItem>Marqué</asp:ListItem>
                   
                        </asp:DropDownList>
				</div>
			</div>


             
                  
				<div class="modal-footer">
				
					<input type="submit" class="btn btn-success" value="Confirmer">
				</div>


   
            </div>
       
			<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	   	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  
<script type="text/javascript" src="./assets/scripts/main.js"></script>
</asp:Content>


