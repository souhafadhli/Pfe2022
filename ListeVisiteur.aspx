<%@ Page Title="" Language="C#" MasterPageFile="~/Gestionnaire.Master" AutoEventWireup="true" CodeBehind="ListeVisiteur.aspx.cs" Inherits="Pfe2022.ListeVisiteur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/styleliste.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">

            
            <br />
           <br />
        <h2 class="text-primary">Liste Des Visiteurs</h2>
           <br />
            <br />


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Utilisateurs] WHERE ([role] = @role)">
        <SelectParameters>
            <asp:Parameter DefaultValue="visiteur" Name="role" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <Columns>
            	 <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="images/im1.jpg" HeaderText="Photo" ReadOnly="True" >
                        <ControlStyle Height="50px" Width="50px" />
                    </asp:ImageField>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="cin" HeaderText="CIN" SortExpression="cin" />
            <asp:BoundField DataField="nom" HeaderText="Nom" SortExpression="nom" />
            <asp:BoundField DataField="prenom" HeaderText="Prenom" SortExpression="prenom" />
            <asp:BoundField DataField="login" HeaderText="Nom d'utilisateur" SortExpression="login" />
            <asp:BoundField DataField="motdepasse" HeaderText="Mot de passe" SortExpression="motdepasse" />
            <asp:BoundField DataField="telephone" HeaderText="Telephone" SortExpression="telephone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
          
        </Columns>
        <HeaderStyle BorderColor="White" BorderStyle="None" ForeColor="#333333" />
                
                <PagerStyle BorderColor="White" BorderStyle="None" />
                
            </asp:GridView>
           
       
            </div>
          
	
 




</asp:Content>

