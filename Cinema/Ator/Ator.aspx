<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ator.aspx.cs" Inherits="Cinema.View.Ator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <h1>Atores</h1>

        <hr />
        <div class="d-flex justify-content-end">
           <asp:Button ID="btnCriarAtor" class="btn btn-primary " runat="server" Text="Criar ator" OnClick="btnCriarAtor_Click" />
        </div>
        <div>
            <h4>Pesquisar ator</h4>
            <div class="row ">
                <div class="col-md-3">
                    <asp:Label ID="lblNome" class="label" runat="server" Text="Digite o nome:"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtNomeAtor" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label class="label" ID="lblSobrenome" runat="server" Text="Digite o sobrenome:"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtSobreNomeAtor" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row col-md-7 ">
                <asp:Button ID="btnPesquisar" class="btn btn-primary" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            </div>


            <br />
            <br />

            <h4>Lista de atores</h4>
            <asp:GridView ID="gvAtor" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered">
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Sobrenome" HeaderText="Sobrenome" SortExpression="Sobrenome" />
                    <asp:BoundField DataField="link" HtmlEncode="False" />
                </Columns>
            </asp:GridView>

        </div>


    </main>



</asp:Content>
