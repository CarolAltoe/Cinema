<%@ Page Title="Inserir Idioma" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirIdioma.aspx.cs" Inherits="Cinema.InserirIdioma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <main>
    <div>
        <asp:Label ID="lblDescricao" runat="server" Text="Digite a descrição:"></asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnCadastrarAtor" runat="server" Text="Cadastrar Idioma" />
    </div>
    </main>
</asp:Content>
