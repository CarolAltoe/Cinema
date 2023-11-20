<%@ Page Title="Inserir Filme" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirFilme.aspx.cs" Inherits="Cinema.InserirFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <main>
    <div>
        <asp:Label ID="lblTitulo" runat="server" Text="Digite o título:"></asp:Label>
        <br />
        <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblDescricao" runat="server" Text="Digite a descrição:"></asp:Label>
        <br />
        <textarea id="txtDescricao" cols="30" rows="5"></textarea>
         <br />

        <asp:Label ID="lblAnoLancamento" runat="server" Text="Digite o ano de lançamento:"></asp:Label>
         <br />
        <asp:TextBox ID="txtAnoLancamento" type="number" runat="server"></asp:TextBox>
         <br />

        <asp:Label ID="lblIdioma" runat="server" Text="Digite o idioma:"></asp:Label>
         <br />
        <asp:TextBox ID="txtIdioma" runat="server"></asp:TextBox>
         <br />

         <asp:Label ID="lblClassificacao" runat="server" Text="Digite a classificação indicativa:"></asp:Label>
         <br />
        <asp:TextBox ID="txtClassificacao" type="number" runat="server"></asp:TextBox>
         <br />

        <asp:Button ID="btnCadastrarAtor" runat="server" Text="Cadastrar Ator" />
    </div>
    </main>
</asp:Content>
