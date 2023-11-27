<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Idioma.aspx.cs" Inherits="Cinema.View.Idioma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <h1>Idiomas</h1>

        <hr />
        <div class="d-flex justify-content-end">
            <asp:Button ID="btnCriarIdioma" class="btn btn-success " runat="server" Text="Criar Idioma" OnClick="btnCriarIdioma_Click" />
        </div>
        <div>
            <h4>Pesquisar Idioma</h4>
            <div class="row ">
                <div class="col-md-3">
                    <asp:Label ID="lblNome" class="label" runat="server" Text="Digite a descrição:"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtDescricaoIdioma" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <asp:Button ID="btnPesquisar" class="btn btn-dark" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            <br />
            <br />

            <h4>Lista de idiomas:</h4>
            <asp:GridView ID="gvIdioma" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered">
                <Columns>
                    <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                    <asp:BoundField DataField="link" HtmlEncode="False" />
                </Columns>
            </asp:GridView>

        </div>


    </main>



</asp:Content>
