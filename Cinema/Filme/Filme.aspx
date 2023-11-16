<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filme.aspx.cs" Inherits="Cinema.View.Filme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     <main>
     
         <h1>Filmes</h1>

          <hr />

          <div>
              <asp:Label ID="Label1" runat="server" Text="Label">Tabela: Filmes</asp:Label>
              <asp:GridView ID="GridView1" runat="server"></asp:GridView>
          </div>
         <a href="/Filme/InserirFilme.aspx">Inserir novo filme</a>
     </main>


</asp:Content>
