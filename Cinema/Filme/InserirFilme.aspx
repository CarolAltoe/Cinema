<%@ Page Title="Inserir Filme" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirFilme.aspx.cs" Inherits="Cinema.InserirFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Criação de Filme</h1>

        <hr />
        <div class="row">

            <div class="col-md-3">
                <asp:Label ID="lblTitulo" class="label" runat="server" Text="Digite o título:"></asp:Label>
                <asp:TextBox ID="txtTitulo" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblDescricao" class="label" runat="server" Text="Digite a descrição:"></asp:Label>
                <asp:TextBox ID="txtDescricao" class="form-control" type="textarea" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblAnoLancamento" class="label" runat="server" Text="Digite o ano de lançamento:"></asp:Label>
                <asp:TextBox ID="txtAnoLancamento" class="form-control" type="number" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblIdioma" class="label" runat="server" Text="Digite o idioma:"></asp:Label>
                <asp:DropDownList ID="ddlIdioma" runat="server" AutoPostBack="true" class="form-select"></asp:DropDownList>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblClassificacaoIndicativa" class="label" runat="server" Text="Digite a classificação indicativa:"></asp:Label>
                <asp:TextBox ID="txtClassificacaoIndicativa" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblCategoria" class="label" runat="server" Text="Digite a categoria:"></asp:Label>
                <asp:TextBox ID="txtCategoria" class="form-control" runat="server"></asp:TextBox>
            </div>
            <br />
            <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O ator inserido já existe." Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnCadastrarFilme" class="btn btn-primary" runat="server" Text="Cadastrar Filme" OnClick="btnCadastrarFilme_Click" />
        </div>
    </main>
</asp:Content>
