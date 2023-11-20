<%@ Page Title="Inserir Ator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirIdioma.aspx.cs" Inherits="Cinema.InserirIdioma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Criação de Idiomas</h1>

        <hr />
        <div>
            <asp:Label ID="lblDescricao" class="label" runat="server" Text="Descricao"></asp:Label>
            <br />
            <asp:TextBox ID="txtDescricao" runat="server" class="form-control"></asp:TextBox>
            <br />

            <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O ator inserido já existe." Visible="False"></asp:Label>
            <br />
            <asp:Button ID="btnCadastrarIdioma" class="btn btn-primary" runat="server" Text="Cadastrar Idioma" OnClick="btnCadastrarIdioma_Click" />
        </div>
    </main>
</asp:Content>
