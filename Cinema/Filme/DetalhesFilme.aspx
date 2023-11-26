<%@ Page Title="Detalhes Filme" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetalhesFilme.aspx.cs" Inherits="Cinema.Filme.DetalhesFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Detalhes de Filme</h1>

        <hr />
        <div class="row">

            <div class="col-md-3">
                <asp:Label ID="lblTitulo" class="label" runat="server" Text="Digite o título:"></asp:Label>
                <asp:TextBox ID="txtTitulo" class="form-control" readonly="true" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblDescricao" class="label" runat="server" Text="Digite a descrição:"></asp:Label>
                <asp:TextBox ID="txtDescricao" class="form-control" readonly="true" type="textarea" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblAnoLancamento" class="label" runat="server" Text="Digite o ano de lançamento:"></asp:Label>
                <asp:TextBox ID="txtAnoLancamento" class="form-control" readonly="true" type="number" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblIdioma" class="label" runat="server" Text="Digite o idioma:"></asp:Label>
                <asp:DropDownList ID="ddlIdioma" runat="server" readonly="readonly"  disabled="true" AutoPostBack="true" class="form-select"></asp:DropDownList>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblClassificacaoIndicativa" class="label" runat="server" Text="Digite a classificação indicativa:"></asp:Label>
                <asp:TextBox ID="txtClassificacaoIndicativa" readonly="true" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:Label ID="lblCategoria" class="label" runat="server" Text="Digite a categoria:"></asp:Label>
                <asp:TextBox ID="txtCategoria" class="form-control" readonly="true" runat="server"></asp:TextBox>
            </div>
            <br />
            <br />
            <br />
            
        </div>
        <asp:Button ID="btnEditarFilme" class="btn btn-secondary" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
    </main>
</asp:Content>
