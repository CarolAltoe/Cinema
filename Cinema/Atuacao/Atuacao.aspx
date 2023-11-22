<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Atuacao.aspx.cs" Inherits="Cinema.Atuacao.Atuacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

    <h1>Atuações</h1>

    <hr />
    <div class="d-flex justify-content-end">
       <asp:Button ID="btnCriarAtuacao" class="btn btn-primary " runat="server" Text="Criar atuacao" OnClick="btnCriarAtuacao_Click" />
    </div>
    <div>
        <h4>Pesquisar atuação:</h4>
        <div class="row ">
            <div class="col-md-3">
                <asp:Label ID="lblAtor" class="label" runat="server" Text="Digite o nome do Ator:"></asp:Label>
                <asp:TextBox class="form-control" ID="txtAtorAtuacao" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-3">
                 <asp:Label ID="Label1" class="label" runat="server" Text=" ou "></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:Label class="label" ID="lblFilme" runat="server" Text="Digite o nome do Filme:"></asp:Label>
                <asp:TextBox class="form-control" ID="txtFilmeAtuacao" runat="server"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row col-md-7 ">
            <asp:Button ID="btnPesquisar" class="btn btn-primary" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
        </div>


        <br />
        <br />

        <h4>Lista de atuaçoes</h4>
        <asp:GridView ID="gvAtuacao" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered">
            <Columns>
                <asp:BoundField DataField="Ator" HeaderText="Ator" SortExpression="Ator" />
                <asp:BoundField DataField="Filme" HeaderText="Filme" SortExpression="Filme" />
                <asp:BoundField DataField="link" HtmlEncode="False" />
            </Columns>
        </asp:GridView>

    </div>


</main>
</asp:Content>
