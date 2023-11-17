<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeletarAtor.aspx.cs" Inherits="Cinema.Ator.DeletarAtor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

         <h2>Tem certeza que deseja excluir o ator abaixo?</h2>
         <asp:Label ID="lblNomeAtor" runat="server" Text=""></asp:Label>
         <br>
         <asp:Button ID="btnSim" runat="server" Text="Sim" OnClick="btnSim_Click" />
         <asp:Button ID="btnNão" runat="server" Text="Não" OnClick="btnNão_Click" />
    </main>
</asp:Content>
