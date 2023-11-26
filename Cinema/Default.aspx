<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cinema._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <h1>Cine Girls</h1>
        <br />
        <h2>Atuações</h2>

        <div>

            <hr />
            <div class="d-flex justify-content-end">
                <asp:Button ID="btnCriarAtuacao" class="btn btn-primary " runat="server" Text="Criar atuacao" OnClick="btnCriarAtuacao_Click" />
            </div>
            <div>
                <h4>Digite o nome do ator ou filme que deseja encontrar:</h4>
                <div class="row ">
                    <div class="col-md-3">
                        <asp:Label ID="lblAtor" class="label" runat="server" Text="Digite o nome do Ator:"></asp:Label>
                        <asp:TextBox class="form-control" ID="txtAtorAtuacao" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-md-3">
                        <asp:Label ID="Label3" class="label" runat="server" Text=" ou "></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:Label class="label" ID="lblFilme" runat="server" Text="Digite o nome do Filme:"></asp:Label>
                        <asp:TextBox class="form-control" ID="txtFilmeAtuacao" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row col-md-7 ">
                    <asp:Button ID="btnPesquisar" class="btn btn-primary" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
                </div>

                <br />
                <br />

                <h4>Lista de atuaçoes:</h4>
                <asp:GridView ID="gvAtuacao" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered">
                    <Columns>
                        <asp:BoundField DataField="Ator" HeaderText="Ator" SortExpression="Ator" />
                        <asp:BoundField DataField="Filme" HeaderText="Filme" SortExpression="Filme" />
                        <asp:BoundField DataField="link" HtmlEncode="False" />
                    </Columns>
                </asp:GridView>


            </div>

        </div>


    </main>

</asp:Content>



<%--  <hr />

        <div>
            <asp:Label ID="Label2" runat="server" Text="Label">
                Digite o nome do ator ou filme que deseja buscar:
            </asp:Label> <br />
            <input id="Text1" type="text" /> <br />
            <asp:Button ID="bntBuscar" runat="server" Text="Buscar" /> 
            <asp:Button ID="btnAddAtuacao" runat="server" Text="Adicionar atuação (ator-filme)" OnClick="btnAddAtuacao_Click" /> <br />
            
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Relação filmes e atores</asp:Label>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>--%>