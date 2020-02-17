<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminListContent.aspx.cs" Inherits="adminListContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
             <div>
              <div class="limiter" style="margin-top: 50px; margin-left:300px">
		<div class="container-login100">

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
        <asp:Button BackColor="#660066" runat="server" ID="btnAdd" Font-Bold="True" ForeColor="White" Text="ADD" BorderStyle="None" Width="80" Height="30" OnClick="btnAdd_Click" /><br /><br />
    <asp:GridView HorizontalAlign="Center"  Width="75%" Height="100%"  CellPadding="3" ForeColor="#333333" OnRowCommand="GV_RowCommand" GridLines="None" runat="server" ID="GV" AutoGenerateColumns="false" CssClass="border" >
       <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#660066" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#660066" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#ffccff " ForeColor="black" HorizontalAlign="Center" />
        <RowStyle BackColor="#ffccff" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
          <Columns> 
            <asp:BoundField  DataField="adminEmail" HeaderText="Email"  />
            <asp:BoundField DataField="adminName" HeaderText="User Name" />
            <asp:TemplateField HeaderText="Update" >
                <ItemTemplate>
                    <asp:LinkButton  BorderStyle="None" Font-Underline="false"  ForeColor="Black"  runat="server" Width="100%"  Height="100%" Text="Edit" CommandName="edit" ID="btnEdit" CommandArgument='<%#Eval("adminID")%>' ></asp:LinkButton>
                    </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Delete" >
                <ItemTemplate>
                    <asp:linkbutton  BorderStyle="None"  Font-Underline="false" ForeColor="Black" runat="server" Text="Delete" ID="btnDelete" CommandArgument='<%#Eval("adminID")%>'  ></asp:linkbutton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
            </div>
                  </div>
                  </div>
</asp:Content>

