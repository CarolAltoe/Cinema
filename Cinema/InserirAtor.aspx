<%@ Page Title="Inserir Ator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirAtor.aspx.cs" Inherits="Cinema.InserirAtor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Criação de Atores</h1>

        <hr />
        <div>
            <asp:Label ID="lblNome" class="label" runat="server" Text="Nome">Digite o nome:</asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server" class="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="lblSobrenome" class="label" runat="server" Text="Sobrenome"></asp:Label>
            <br />
            <asp:TextBox ID="txtSobrenome" runat="server" class="form-control"></asp:TextBox>
            <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O ator inserido já existe." Visible="False"></asp:Label>
            <br />
            <asp:Button ID="btnCadastrarAtor" class="btn btn-primary" runat="server" Text="Cadastrar Ator" OnClick="btnCadastrarAtor_Click" />
        </div>
    </main>
</asp:Content>
