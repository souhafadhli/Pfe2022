<%@ Page Title="" Language="C#" MasterPageFile="~/Administrateur.Master" AutoEventWireup="true" CodeBehind="AjouterCommande.aspx.cs" Inherits="WebApplication.AjouterCommande" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <title>Ajouter commande</title>
    <script src="swalert.js" type="text/javascript"></script>
    <script>
      
    
         function errorPO() {
             Swal.fire(
   'Ordre de production est déja utilisé',
   'Veuillez le vérifier et réessayer',
   'error'
 )
         }
         function errorREF() {
             Swal.fire(
   'La réference est déja utilisé',
   'Veuillez le vérifier et réessayer',
   'error'
 )
         }
         function Ajouter() {
             Swal.fire(
   'La Commande est ajoutée ',
   'avec succées',
   'success'
 )
         }
         function vide() {
             Swal.fire(
   'les champs ne doivent pas etre vide',
   'Veuillez le vérifier et réessayer',
   'error'
 )
        }
        function client() {
            Swal.fire(
                ' obligatoire d ajouter un client ',
                'Veuillez le vérifier et réessayer',
                'error'
            )
        }
    </script>





</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="vh-100" style="background-color:white" >
  <div class="container h-100" >

    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
     
      
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

            

                <form class="mx-1 mx-md-4">        <p class="text-center h1 fw-bold mb-5 " >Commande </p>
                     <div class="d-flex flex-row align-items-center mb-4">
                  
                    <div class="form-outline flex-fill mb-0">
                              <label class="form-label" for="form3Example1c">Référence</label>
                     <asp:TextBox  id="reference" AutoComplete="Off" runat="server" class="form-control" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox>
                
                    </div>
                  </div>
                     <div class="d-flex flex-row align-items-center mb-4">
                  
                    <div class="form-outline flex-fill mb-0">
                           <label class="form-label" for="form3Example1c">Ordre de production</label>
                        <asp:TextBox  id="ordre" AutoComplete="Off" runat="server" class="form-control" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox>
                   
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                
                    <div class="form-outline flex-fill mb-0">
                            <label class="form-label" for="form3Example1c">Lavage</label>
                        <asp:TextBox  id="lavage" AutoComplete="Off" runat="server" class="form-control" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox>
                  
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                
                    <div class="form-outline flex-fill mb-0">
                                              <label class="form-label" for="form3Example3c">Modéle</label>
    <asp:TextBox  id="modele" AutoComplete="Off" runat="server" class="form-control"  style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:TextBox>

                    </div>
                  </div>

            <div class="d-flex flex-row align-items-center mb-4">
                
                    <div class="form-outline flex-fill mb-0">
                               <label class="form-label" for="form3Example3c">Client</label>
   <asp:DropDownList ID="nomclient" runat="server"  DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="nom" style="border:none;outline:none;border-bottom:2px solid #ddd;width:100%;padding-bottom:10px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICConnectionString %>" SelectCommand="SELECT [nom] FROM [Client]"></asp:SqlDataSource>
               
                    </div>
                  </div>
               


                    	
                    <asp:Button ID="Button1" runat="server" Text="Ajouter"  class="btn btn-facebook" OnClick="Confirmer_Click" heigth="150px" />
                    <asp:Button ID="Button2" runat="server" Text="Annuler"   class="btn btn-dark" OnClick="Annuler_Click1"  heigth="150px"  />
			
                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="images/c2.png" class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
  
</section>

</asp:Content>
