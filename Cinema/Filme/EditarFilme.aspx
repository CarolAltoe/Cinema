<%@ Page Title="Editar Filme" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarFilme.aspx.cs" Inherits="Cinema.Filme.EditarFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Edição de Filme</h1>

        <hr />
        <div class="row">

            <div class="col-md-4">
                <asp:Label ID="lblTitulo" class="label" runat="server" Text="Digite o título:"></asp:Label>
                <asp:TextBox ID="txtTitulo" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitulo" runat="server"
                    ControlToValidate="txtTitulo"
                    Display="Dynamic"
                    ErrorMessage="Título obrigatório">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <asp:Label ID="lblAnoLancamento" class="label" runat="server" Text="Digite o ano de lançamento:"></asp:Label>
                <asp:TextBox ID="txtAnoLancamento" class="form-control" type="number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAnoLancamento" runat="server"
                    ControlToValidate="txtAnoLancamento"
                    Display="Dynamic"
                    ErrorMessage="Ano de lançamento obrigatório">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <asp:Label ID="lblIdioma" class="label" runat="server" Text="Digite o idioma:"></asp:Label>
                <asp:DropDownList ID="ddlIdioma" runat="server" AutoPostBack="true" class="form-select"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvIdioma" runat="server"
                    ControlToValidate="ddlIdioma"
                    Display="Dynamic"
                    ErrorMessage="Idioma obrigatório">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <asp:Label ID="lblClassificacaoIndicativa" class="label" runat="server" Text="Digite a classificação indicativa:"></asp:Label>
                <asp:TextBox ID="txtClassificacaoIndicativa" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClassificacaoIndicativa" runat="server"
                    ControlToValidate="txtClassificacaoIndicativa"
                    Display="Dynamic"
                    ErrorMessage="Classificação indicativa obrigatória">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <asp:Label ID="lblCategoria" class="label" runat="server" Text="Digite a categoria:"></asp:Label>
                <asp:TextBox ID="txtCategoria" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCategoria" runat="server"
                    ControlToValidate="txtCategoria"
                    Display="Dynamic"
                    ErrorMessage="Categoria obrigatória">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O filme inserido já existe." Visible="False"></asp:Label>
            <br />
        </div>
        <asp:Label ID="lblDescricao" class="label" runat="server" Text="Digite a descrição:"></asp:Label>
        <asp:TextBox ID="txtDescricao" class="form-control" TextMode="MultiLine" Rows="4" Columns="10" type="textarea" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDescricao" runat="server"
            ControlToValidate="txtDescricao"
            Display="Dynamic"
            ErrorMessage="Descrição obrigatória">
        </asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnEditarFilme" class="btn btn-success" runat="server" Text="Alterar Filme" OnClick="btnEditarFilme_Click" />
        <asp:Button ID="btnVoltar" class="btn btn-secondary" runat="server" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="False" />
    </main>
</asp:Content>
