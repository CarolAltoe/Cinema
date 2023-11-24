<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeletarIdioma.aspx.cs" Inherits="Cinema.Idioma.DeletarIdioma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

         <h2>Tem certeza que deseja excluir o idioma abaixo?</h2>
         <asp:Label ID="lblDescricao" runat="server" Text=""></asp:Label>
         <br>
         <asp:Button ID="btnSim" runat="server" Text="Sim" OnClick="btnSim_Click" />
         <asp:Button ID="btnNão" runat="server" Text="Não" OnClick="btnNão_Click" />
        <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O Idioma está sendo utilizado." Visible="False"></asp:Label>
    </main>
</asp:Content>
