<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarAtor.aspx.cs" Inherits="Cinema.Ator.EditarAtor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <main>
     <h1>Alterar Ator:</h1>

     <hr />
     <div>
         <asp:Label ID="lblNome" class="label" runat="server" Text="Nome">Digite o novo nome:</asp:Label>
         <br />
         <asp:TextBox ID="txtNome" runat="server" class="form-control"></asp:TextBox>
         <br />

         <asp:Label ID="lblSobrenome" class="label" runat="server" Text="Sobrenome">Digite o novo sobrenome:</asp:Label>
         <br />
         <asp:TextBox ID="txtSobrenome" runat="server" class="form-control"></asp:TextBox>
         <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O ator inserido já existe." Visible="False"></asp:Label>
         <br />
         <asp:Button ID="btnAlterarAtor" class="btn btn-primary" runat="server" Text="Alterar" OnClick="btnAlterarAtor_Click" />
     </div>
 </main>
</asp:Content>
