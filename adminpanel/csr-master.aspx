<%@ Page Title="Corporate Social Responsibility | Uday Group Of Industries" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="csr-master.aspx.cs" Inherits="adminpanel_csr_master" %>
<%@ MasterType VirtualPath="~/adminpanel/MasterAdmin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
		$(document).ready(function () {
            $('[id$=gvCsr]').DataTable({
				columnDefs: [
					{ orderable: false, targets: [0, 1, 2, 3, 4] }
				],
				order: [[0, 'desc']]
			});
		});
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<h2 class="pgTitle">Corporate Social Responsibility (CSR)</h2>
    <span class="space10"></span>
    <asp:UpdatePanel ID="UpdatePanel" runat="server">
        <ContentTemplate>
            <div id="editCsr" runat="server">

                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><%=pgTitle %></h3>
                    </div>
                    <%-- Card Body --%>
                    <div class="card-body">
                        <div class="colorLightBlue">
                            <%--<span>Id</span>--%>
                            <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                        </div>
                        <span class="space15"></span>
                        <%-- From Row Start --%>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Csr Title:*</label>
                                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" Width="100%" MaxLength="50"></asp:TextBox>
                            </div>

                           
                            <div class="form-group col-md-6">
                                <label>Crs Description :*</label>
                                <asp:TextBox ID="txtCsrDesc" runat="server" CssClass="form-control textarea" Height="200px" Width="100%" TextMode="MultiLine" MaxLength="400"></asp:TextBox>
                            </div>

                         
                        </div>
                    </div>
                </div>
                <!-- Button controls starts -->
                <span class="space10"></span>
                <span class="space10"></span>
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-outline-info" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');" OnClick="btnDelete_Click" />
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="btnCancel_Click" />
                <div class="float_clear"></div>
                <!-- Button controls ends -->
                <%--</ContentTemplate>
		</asp:UpdatePanel>--%>
            </div>
            <div id="viewCsr" runat="server">
                <a href="csr-master.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>
                <%--<a href="contactdata.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>--%>
                <span class="space20"></span>
                <div class="formPanel table-responsive-md">
                    <asp:GridView ID="gvCsr" runat="server" CssClass="table table-striped table-bordered table-hover" GridLines="None"
                        AutoGenerateColumns="false" OnRowDataBound="gvCsr_RowDataBound">
                        <HeaderStyle CssClass="thead-dark" />
                        <RowStyle CssClass="" />
                        <AlternatingRowStyle CssClass="alt" />
                        <Columns>
                            <asp:BoundField DataField="CsrId">
                                <HeaderStyle CssClass="HideCol" />
                                <ItemStyle CssClass="HideCol" />
                            </asp:BoundField>

                            <asp:BoundField DataField="CsrDate" HeaderText="Date">
                                <ItemStyle Width="5%" />
                            </asp:BoundField>

                            <asp:BoundField DataField="CsrTitle" HeaderText="Title">
                                <ItemStyle Width="40%" />
                            </asp:BoundField>

                            <asp:TemplateField>
                                <ItemStyle Width="5%" />
                                <ItemTemplate>
                                    <asp:Literal ID="litAnch" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemStyle Width="5%" />
                                <ItemTemplate>
                                    <asp:Literal ID="litAddPhotos" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <span class="warning">Its Empty Here... :(</span>
                        </EmptyDataTemplate>
                        <PagerStyle CssClass="" />
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
        <%--  <Triggers>
            <asp:PostBackTrigger ControlID="btnSubmit" />
        </Triggers>--%>
    </asp:UpdatePanel>
</asp:Content>

