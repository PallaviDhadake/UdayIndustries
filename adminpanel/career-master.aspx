<%@ Page Title="Career | Uday Group Of Industries" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="career-master.aspx.cs" Inherits="adminpanel_career_master" %>
<%@ MasterType VirtualPath="~/adminpanel/MasterAdmin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
		$(document).ready(function () {
            $('[id$=gvCareer]').DataTable({
				columnDefs: [
					{ orderable: false, targets: [0, 1, 2, 3, 4, 5, 6, 7] }
				],
				order: [[0, 'desc']]
			});
		});
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<h2 class="pgTitle">Career Master</h2>
	<span class="space10"></span>

	 <div id="editCareer" runat="server">
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
						<label>Applicant Name:*</label>
						<asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="100%" MaxLength="50"></asp:TextBox>
					</div>
					
					<div class="form-group col-md-6">
						<label>Email :*</label>
						<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="100%" 
							MaxLength="30" ></asp:TextBox>
					</div>
					<div class="form-group col-md-6">
						<label>Mobile :*</label>
						<asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" MaxLength="10" Width="100%"  ></asp:TextBox>
					</div>
					
					<div class="form-group col-md-6">
						<label>Experiance :</label>
						<%--<asp:TextBox ID="txtExp" runat="server" CssClass="form-control" Width="100%" MaxLength="4"></asp:TextBox>--%>
						<asp:TextBox ID="txtExp" runat="server" CssClass="form-control" MaxLength="4" Width="100%"  ></asp:TextBox>
					</div>
					<div class="form-group col-md-6">
						<label>Upload Resume: *</label>
						<asp:FileUpload ID="fuReume" runat="server" CssClass="form-control-file" />
						<span class="space10"></span>
						<%= Resume %><span class="space5"></span>
						<%--<asp:Button ID="btnRemove" runat="server" CssClass="btn btn-secondary" Text="Remove Photo"  OnClientClick="return confirm('Are you sure to remove photo?');" OnClick="btnRemove_Click" />--%>
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
	<div id="viewCareer" runat="server">
		<a href="career-master.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>
		<%--<a href="contactdata.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>--%>
		<span class="space20"></span>
		<div class="formPanel table-responsive-md">
			<asp:GridView ID="gvCareer" runat="server" CssClass="table table-striped table-bordered table-hover" GridLines="None" 
				AutoGenerateColumns="false" OnRowDataBound="gvCareer_RowDataBound">
				 <HeaderStyle CssClass="thead-dark" />
				<RowStyle CssClass="" />
				<AlternatingRowStyle CssClass="alt" />
				<Columns>
					 <asp:BoundField DataField="CareerId">
						<HeaderStyle CssClass="HideCol" />
						<ItemStyle  CssClass="HideCol"/>
					</asp:BoundField>
					
					<asp:BoundField DataField="Resume">
						<HeaderStyle CssClass="HideCol" />
						<ItemStyle  CssClass="HideCol"/>
					</asp:BoundField>

					 <asp:BoundField DataField="Date" HeaderText="Date">
						<ItemStyle Width="5%" />
					</asp:BoundField>

					 <asp:BoundField DataField="ApplicantName" HeaderText="Applicant Name">
						<ItemStyle Width="30%" />
					</asp:BoundField>

					 <asp:BoundField DataField="ApplicantEmail" HeaderText="Email">
						<ItemStyle Width="15%" />
					</asp:BoundField>

					 <asp:BoundField DataField="ApplicantMobile" HeaderText="Mobile No.">
						<ItemStyle Width="15%" />
					</asp:BoundField>

					  

					<asp:TemplateField HeaderText="View Resume">
						<ItemStyle Width="15%"  />
						<ItemTemplate>
							<asp:Literal ID="litResume" runat="server"></asp:Literal>
						</ItemTemplate>
					</asp:TemplateField> 


					<asp:TemplateField>
						<ItemStyle Width="5%" />
						<ItemTemplate>
							<asp:Literal ID="litAnch" runat="server"></asp:Literal>
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
</asp:Content>

