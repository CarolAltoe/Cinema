<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeletarFilme.aspx.cs" Inherits="Cinema.Filme.DeletarFilme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container mt-4">
        <div class="card">
            <div class="card-body">
               
                <asp:Label ID="lblNomeFilme" runat="server" class="h4" Text=""></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnSim" runat="server" Text="Sim" OnClick="btnSim_Click" class="btn btn-danger" />
                <asp:Button ID="btnNão" runat="server" Text="Não" OnClick="btnNão_Click" class="btn btn-secondary ml-2" />
            </div>
        </div>
    </main>
</asp:Content>
