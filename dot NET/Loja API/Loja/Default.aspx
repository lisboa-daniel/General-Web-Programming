<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Loja._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="ObjectDataSourceProdutos">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Nome:
                    <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    <br />
                    Valor:
                    <asp:TextBox ID="ValorTextBox" runat="server" Text='<%# Bind("Valor") %>' />
                    <br />
                    Descricao:
                    <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
                    <br />
                    Foto:
                    <asp:TextBox ID="FotoTextBox" runat="server" Text='<%# Bind("Foto") %>' />
                    <br />
                    Categoria:
                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Atualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <asp:LinkButton ID="btNovo" runat="server" CommandName="New">Novo</asp:LinkButton>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id", "{0}") %>' />
                    <asp:Button ID="btGerar" runat="server" OnClick="btGerar_Click" Text="Gerar" />
                    <br />
                    Nome:
                    <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    <br />
                    Valor:
                    <asp:TextBox ID="ValorTextBox" runat="server" Text='<%# Bind("Valor") %>' />
                    <br />
                    Descricao:
                    <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
                    <br />
                    Foto:
                    <asp:TextBox ID="FotoTextBox" runat="server" Text='<%# Bind("Foto") %>' />
                    <br />
                    Categoria:
                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Nome:
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Bind("Nome") %>' />
                    <br />
                    Valor:
                    <asp:Label ID="ValorLabel" runat="server" Text='<%# Bind("Valor") %>' />
                    <br />
                    Descricao:
                    <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Bind("Descricao") %>' />
                    <br />
                    Foto:
                    <asp:Label ID="FotoLabel" runat="server" Text='<%# Bind("Foto") %>' />
                    <br />
                    Categoria:
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Bind("Categoria") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Excluir" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Novo" />
                </ItemTemplate>
            </asp:FormView>
            <asp:ObjectDataSource ID="ObjectDataSourceProdutos" runat="server" DataObjectTypeName="System.Guid" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Loja.DBSoutaiseirionDataSetTableAdapters.ProdutosTableAdapter" UpdateMethod="Update">
                <InsertParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Valor" Type="Decimal" />
                    <asp:Parameter Name="Descricao" Type="String" />
                    <asp:Parameter Name="Foto" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />

                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Valor" Type="Decimal" />
                    <asp:Parameter Name="Descricao" Type="String" />
                    <asp:Parameter Name="Foto" Type="String" />
                    <asp:Parameter Name="Categoria" Type="String" />
                    <asp:Parameter DbType="Guid" Name="Original_Id" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
