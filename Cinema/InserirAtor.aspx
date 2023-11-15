<%@ Page Title="Inserir Ator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirAtor.aspx.cs" Inherits="Cinema.InserirAtor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <main>
    <div>
        <asp:Label ID="lblNome" runat="server" Text="Nome">Digite o nome:</asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblSobrenome" runat="server" Text="Sobrenome"></asp:Label>
        <br />
        <asp:TextBox ID="txtSobrenome" runat="server"></asp:TextBox>
        <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O ator inserido já existe." Visible="False"></asp:Label>
        <asp:Button ID="btnCadastrarAtor" runat="server" Text="Cadastrar Ator" OnClick="btnCadastrarAtor_Click"/>
    </div>
    </main>
</asp:Content>
