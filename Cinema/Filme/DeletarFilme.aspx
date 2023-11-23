<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeletarFilme.aspx.cs" Inherits="Cinema.Filme.DeletarFilme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

         <h2>Tem certeza que deseja excluir o filme abaixo?</h2>
         <asp:Label ID="lblNomeFilme" runat="server" Text=""></asp:Label>
         <br>
         <asp:Button ID="btnSim" runat="server" Text="Sim" OnClick="btnSim_Click" />
         <asp:Button ID="btnNão" runat="server" Text="Não" OnClick="btnNão_Click" />
    </main>
</asp:Content>
