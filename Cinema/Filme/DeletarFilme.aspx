<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeletarFilme.aspx.cs" Inherits="Cinema.Filme.DeletarFilme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container mt-4">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title">Tem certeza que deseja excluir o filme abaixo?</h2>
                <asp:Label ID="lblNomeFilme" runat="server" class="h4" Text=""></asp:Label>
                <br />
                 <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O Filme está atrelado a um ator." Visible="False"></asp:Label>
                <br />
                <asp:Button ID="btnSim" runat="server" Text="Sim" OnClick="btnSim_Click" class="btn btn-danger" />
                <asp:Button ID="btnNão" runat="server" Text="Não" OnClick="btnNão_Click" class="btn btn-secondary ml-2" />
            </div>
        </div>
    </main>
</asp:Content>
