<%@ Page Title="" Language="C#" MasterPageFile="~/Gestionnaire.Master" AutoEventWireup="true" CodeBehind="Listefournisseurs.aspx.cs" Inherits="Pfe2022.Listefournisseurs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/styleliste.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	
                  <section class="main-content">
		<div class="container">
             <h2 class="text-primary">Liste Des Fournisseurs</h2>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT * FROM [Fournisseur]"></asp:SqlDataSource>
      
            <br />
           
             
				
            <asp:GridView ID="GridView1" runat="server" class="table" AutoGenerateColumns ="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BorderColor="#CC0099" BorderStyle="None">
              <Columns>   
          <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="images/logo.png" HeaderText="Photo" ReadOnly="True" >
                        <ControlStyle Height="40px" Width="40px" />
                    </asp:ImageField>
                 
                  
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
               
                  <asp:BoundField DataField="NomFournisseur" HeaderText="Fournisseur" SortExpression="NomFournisseur" />
                  <asp:BoundField DataField="GOTSPJ" HeaderText="GOTSPJ" SortExpression="GOTSPJ" />
                <asp:BoundField DataField="GOTSdate" HeaderText="GOTSdate" SortExpression="GOTSdate" />
                <asp:BoundField DataField="GRSPJ" HeaderText="GRSPJ" SortExpression="GRSPJ" />
                <asp:BoundField DataField="GRSdate" HeaderText="GRSdate" SortExpression="GRSdate" />
                <asp:BoundField DataField="OCSPJ" HeaderText="OCSPJ" SortExpression="OCSPJ" />
                <asp:BoundField DataField="OSCdate" HeaderText="OSCdate" SortExpression="OSCdate" />
                <asp:BoundField DataField="RCSPJ" HeaderText="RCSPJ" SortExpression="RCSPJ" />
                <asp:BoundField DataField="RCSdate" HeaderText="RCSdate" SortExpression="RCSdate" />
              

                
              
            

            </Columns>
          
          
        </asp:GridView>
                           </div>
	</section>
</asp:Content>
