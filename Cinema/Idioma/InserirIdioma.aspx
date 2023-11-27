<%@ Page Title="Inserir Ator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirIdioma.aspx.cs" Inherits="Cinema.InserirIdioma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h1>Criação de Idiomas</h1>

        <hr />
        <div class="mb-3">
            <asp:Label ID="lblDescricao" class="label" runat="server" Text="Descrição"></asp:Label>
            <br />
            <asp:TextBox ID="txtDescricao" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescricao" runat="server"
                ControlToValidate="txtDescricao"
                Display="Dynamic"
                ErrorMessage="Descrição é um campo obrigatório.">
            </asp:RequiredFieldValidator>
            <br />
            <asp:Timer ID="timerHideErrorMessage" runat="server" Interval="3000" OnTick="timerHideErrorMessage_Tick" Enabled="false" />
            <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O idioma inserido já existe." Visible="False"></asp:Label>
        </div>
        <asp:Button ID="btnCadastrarIdioma" class="btn btn-success" runat="server" Text="Cadastrar Idioma" OnClick="btnCadastrarIdioma_Click" />
        <asp:Button ID="btnVoltar" class="btn btn-secondary" runat="server" Text="Voltar" OnClick="btnVoltar_Click" CausesValidation="False" />
     </main>
</asp:Content>
