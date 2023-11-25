<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeletarIdioma.aspx.cs" Inherits="Cinema.Idioma.DeletarIdioma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="mb-3">Tem certeza que deseja excluir o idioma abaixo?</h2>
                <asp:Label ID="lblDescricao" runat="server" Text="" class="h4"></asp:Label>
                <br />
                <asp:Label ID="lblMsgErro" runat="server" Text="Erro! O Idioma está sendo utilizado." Visible="False"></asp:Label>
                <br />
                <asp:Button ID="btnSim" runat="server" Text="Sim" OnClick="btnSim_Click" class="btn btn-danger mr-2" />
                <asp:Button ID="btnNão" runat="server" Text="Não" OnClick="btnNão_Click" class="btn btn-secondary" />

            </div>
        </div>
    </main>

</asp:Content>
