<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AjouterCommande.aspx.cs" Inherits="Pfe2022.AjouterCommande" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"><title>Ajouter Commande</title>

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
        function role() {
            Swal.fire(
                ' obligatoire d ajouter un role ',
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

            

                <form class="mx-1 mx-md-4">        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Commande </p>
                     <div class="d-flex flex-row align-items-center mb-4">
                  
                    <div class="form-outline flex-fill mb-0">
                     <asp:TextBox  id="reference" AutoComplete="Off" runat="server" class="form-control" ></asp:TextBox>
                      <label class="form-label" for="form3Example1c">Référence</label>
                    </div>
                  </div>
                     <div class="d-flex flex-row align-items-center mb-4">
                  
                    <div class="form-outline flex-fill mb-0">
                        <asp:TextBox  id="ordre" AutoComplete="Off" runat="server" class="form-control"></asp:TextBox>
                      <label class="form-label" for="form3Example1c">Ordre de production</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                
                    <div class="form-outline flex-fill mb-0">
                        <asp:TextBox  id="lavage" AutoComplete="Off" runat="server" class="form-control"></asp:TextBox>
                      <label class="form-label" for="form3Example1c">Lavage</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                
                    <div class="form-outline flex-fill mb-0">
    <asp:TextBox  id="modele" AutoComplete="Off" runat="server" class="form-control"></asp:TextBox>
                      <label class="form-label" for="form3Example3c">Modéle</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                  
                    <div class="form-outline flex-fill mb-0">
                        
                       <asp:DropDownList ID="Cli" runat="server"  Height="50px"  class="form-control"> 
                                    <asp:ListItem></asp:ListItem>
                            	<asp:ListItem>Zara</asp:ListItem>
                            <asp:ListItem>Bershka</asp:ListItem>
                            <asp:ListItem>Pull&Bear</asp:ListItem>
                        </asp:DropDownList>
                        <label class="form-label" for="form3Example4c">Client</label>


                       
                    </div>
                  </div>

               


                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">

                  </div>
                    	<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
                    <asp:Button ID="Button1" runat="server" Text="Confirmer"  class="btn btn-primary" OnClick="Confirmer_Click"  />
                    <asp:Button ID="Button2" runat="server" Text="Annuler"   class="btn btn-warning" OnClick="Annuler_Click1"  />
					</div>
			</div>
		</div>
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

