<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filme.aspx.cs" Inherits="Cinema.View.Filme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container mt-4">
        <h1>Filmes</h1>
        <hr />
        <div class="d-flex justify-content-end">
            <asp:Button ID="btnCriarFilme" class="btn btn-success " runat="server" Text="Criar Filme" OnClick="btnCriarFilme_Click" />
        </div>
        <div>
            <h4>Pesquisar Filme</h4>
            <div class="row ">
                <div class="col-md-3">
                    <asp:Label ID="lblTitulo" class="label" runat="server" Text="Digite o titulo:"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtTituloFilme" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label class="label" ID="lblCategoria" runat="server" Text="Digite a categoria:"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtCategoriaFilme" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label class="label" ID="lblClassificacaoIndicativa" runat="server" Text="Digite a classificação indicativa:"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtClassificacaoIndicativa" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            
                <asp:Button ID="btnPesquisar" class="btn btn-dark" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            


            <br />
            <br />

            <h4>Lista de Filmes:</h4>
            <asp:GridView ID="gvFilme" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered">
                <Columns>
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="ano_lancamento" HeaderText="Ano de Lançamento" SortExpression="Categoria" />
                    <asp:BoundField DataField="classificacao_indicativa" HeaderText="Classificacao Indicativa" SortExpression="ClassificacaoIndicativa" />
                    <asp:BoundField DataField="link" HtmlEncode="False" />
                </Columns>
            </asp:GridView>

        </div>
    </main>
</asp:Content>
