<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarIdioma.aspx.cs" Inherits="Cinema.Idioma.EditarIdioma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h1>Alterar Idioma:</h1>

        <hr />
        <div>
            <asp:Label ID="lblDescricao" class="label" runat="server" Text="Descricao">Digite a nova descricao:</asp:Label>
            <br />
            <asp:TextBox ID="txtDescricao" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescricao" runat="server"
                ControlToValidate="txtDescricao"
                Display="Dynamic"
                ErrorMessage="Descrição é um campo obrigatório.">
            </asp:RequiredFieldValidator>
            <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O Idioma inserido já existe." Visible="False"></asp:Label>
            <br />
            <asp:Button ID="btnAlterarIdioma" class="btn btn-dark" runat="server" Text="Alterar" OnClick="btnAlterarIdioma_Click" />
        </div>
    </main>
</asp:Content>
