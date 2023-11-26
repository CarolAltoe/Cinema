<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirAtuacao.aspx.cs" Inherits="Cinema.Atuacao.InserirAtuacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <main>
      <h1>Cadastrando Atuação:</h1>

      <hr />
      <div class="row">

          <div class="col-md-3">
              <asp:Label ID="lblAtor" class="label" runat="server" Text="Informe o ator:"></asp:Label>
              <asp:DropDownList ID="ddlAtor" runat="server" AutoPostBack="true" class="form-select"></asp:DropDownList>
          </div>

          <div class="col-md-3">
            <asp:Label ID="lblFilme" class="label" runat="server" Text="Informe o filme:"></asp:Label>
            <asp:DropDownList ID="ddlFilme" runat="server" AutoPostBack="true" class="form-select"></asp:DropDownList>
          </div>
        
          <br />
          <asp:Label ID="lblMsgErro" runat="server" Text="Erro! A Atuação inserida já existe." Visible="False"></asp:Label>
          <br />
          <br />
          <asp:Button ID="btnCadastrarAtuacao" class="btn btn-primary" runat="server" Text="Cadastrar atuacao" OnClick="btnCadastrarAtuacao_Click" />
      </div>
  </main>

</asp:Content>
