<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cinema._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  
    <main>
        <h1>Cine Girls</h1> <br />
        <h2>Welcome!</h2>
        heeyy jhennifeeerrrrrrrrr!!!!

        <hr />

        <div>
            <asp:Label ID="Label2" runat="server" Text="Label">
                Digite o nome do ator ou filme que deseja buscar:
            </asp:Label> <br />
            <input id="Text1" type="text" /> <br />
            <asp:Button ID="bntBuscar" runat="server" Text="Buscar" /> 
            <asp:Button ID="btnAddAtorFilme" runat="server" Text="Adicionar atuação (ator-filme)" /> <br />
            
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Relação filmes e atores</asp:Label>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
       
    </main>

</asp:Content>
