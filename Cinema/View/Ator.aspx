<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ator.aspx.cs" Inherits="Cinema.View.Ator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <h1>Atores</h1>

        <hr />

        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Tabela: Atores</asp:Label>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
        <a href="../InserirAtor.aspx">Inserir novo ator</a>
    </main>



</asp:Content>
