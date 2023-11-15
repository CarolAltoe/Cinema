<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Idioma.aspx.cs" Inherits="Cinema.View.Idioma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
    
        <h1>Idioma</h1>

         <hr />

         <div>
             <asp:Label ID="Label1" runat="server" Text="Label">Tabela: Idioma</asp:Label>
             <asp:GridView ID="GridView1" runat="server"></asp:GridView>
         </div>

        <div>
            <asp:Label ID="lblDescricao" runat="server" Text="lblDescricao">Digite a descrição:</asp:Label>
            <br />
            <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" />
        </div>
    </main>


</asp:Content>
