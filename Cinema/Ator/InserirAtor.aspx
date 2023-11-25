<%@ Page Title="Inserir Ator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirAtor.aspx.cs" Inherits="Cinema.InserirAtor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Criação de Atores</h1>

        <hr />
        <div>
            <div class="row ">
                <div class="col-md-3">
                    <asp:Label ID="lblNome" class="label" runat="server" Text="Nome">Digite o nome:</asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNome" runat="server"
                        ControlToValidate="txtNome"
                        Display="Dynamic"
                        ErrorMessage="Nome é um campo obrigatório.">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblSobrenome" class="label" runat="server" Text="Sobrenome"></asp:Label>
                    <asp:TextBox ID="txtSobrenome" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSobrenome" runat="server"
                        ControlToValidate="txtSobrenome"
                        Display="Dynamic"
                        ErrorMessage="Sobrenome é um campo obrigatório.">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O ator inserido já existe." Visible="False"></asp:Label>
            <br />
            <asp:Button ID="btnCadastrarAtor" class="btn btn-success" runat="server" Text="Cadastrar Ator" OnClick="btnCadastrarAtor_Click" />
            <asp:Button ID="btnVoltar" class="btn btn-secondary" runat="server" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="False" />
        </div>
    </main>
</asp:Content>
