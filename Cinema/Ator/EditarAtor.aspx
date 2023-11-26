<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarAtor.aspx.cs" Inherits="Cinema.Ator.EditarAtor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h1>Alterar Ator:</h1>

        <hr />
        <div>
            <div class="row ">
                <div class="col-md-3">
                    <asp:Label ID="lblNome" class="label" runat="server" Text="Nome">Digite o novo nome:</asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNome" runat="server"
                        ControlToValidate="txtNome"
                        Display="Dynamic"
                        ErrorMessage="Nome é um campo obrigatório.">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="lblSobrenome" class="label" runat="server" Text="Sobrenome">Digite o novo sobrenome:</asp:Label>
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
            <asp:Button ID="btnAlterarAtor" class="btn btn-success" runat="server" Text="Alterar" OnClick="btnAlterarAtor_Click" />
            <asp:Button ID="btnVoltar" class="btn btn-secondary" runat="server" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="False" />
        </div>
    </main>
</asp:Content>
