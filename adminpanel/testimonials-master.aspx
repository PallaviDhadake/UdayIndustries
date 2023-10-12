﻿<%@ Page Title="Testimonilas | Uday Group" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="testimonials-master.aspx.cs" Inherits="adminpanel_testimonials_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
		$(document).ready(function () {
            $('[id$=gvTestimonials]').DataTable({
                columnDefs: [
                    { orderable: false, targets: [0, 1, 2, 3, 4]}
				],
				order: [[0, 'desc']]
			});
		});
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 class="pgTitle">Testimonials Master</h2>
    <span class="space10"></span>
	<div id="editinfo" runat="server">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><%=pgTitle %></h3>
            </div>
           
            <div class="card-body">
                <div class="colorLightBlue">
                  
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>
                <span class="space15"></span>
              
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Person Name:*</label>
                        <asp:TextBox ID="txtPerNm" runat="server" CssClass="form-control" Width="100%" MaxLength="50"></asp:TextBox>
                    </div>
                    
                    <div class="form-group col-md-6">
                        <label>Place:*</label>
                        <asp:TextBox ID="txtPlace" runat="server" CssClass="form-control" Width="100%" 
                            MaxLength="50" ></asp:TextBox>
                    </div>

                     <div class="form-group col-md-6">
                        <label>Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="100%" 
                            MaxLength="50" ></asp:TextBox>
                    </div>

                     <div class="form-group col-md-6">
                        <label>Company Name: *</label>
                        <asp:TextBox ID="txtCompName" runat="server" CssClass="form-control" Width="100%" 
                            MaxLength="50" palceholder="Uday Chains" ></asp:TextBox>
                    </div>

                    <div class="form-group col-md-6">
                        <label>Testimonails Description :*</label>
                        <asp:TextBox ID="txtTesDesc" runat="server" CssClass="form-control textarea" Height="200px" Width="100%" textmode="MultiLine"></asp:TextBox>
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
       
    </div>
     <div id="viewinfo" runat="server">
        <a href="testimonials-master.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>
		<%--<a href="contactdata.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>--%>
        <span class="space20"></span>
        <div class="formPanel table-responsive-md">
            <asp:GridView ID="gvTestimonials" runat="server" CssClass="table table-striped table-bordered table-hover" GridLines="None" 
				AutoGenerateColumns="false" OnRowDataBound="gvTestimonials_RowDataBound">
				 <HeaderStyle CssClass="thead-dark" />
				<RowStyle CssClass="" />
				<AlternatingRowStyle CssClass="alt" />
				<Columns>
					 <asp:BoundField DataField="testId">
						<HeaderStyle CssClass="HideCol" />
						<ItemStyle  CssClass="HideCol"/>
					</asp:BoundField>
					
					 <asp:BoundField DataField="testPerson" HeaderText="Person Name">
						<ItemStyle Width="20%" />
					</asp:BoundField>

                     <asp:BoundField DataField="testPlace" HeaderText="Place">
						<ItemStyle Width="10%" />
					</asp:BoundField>

                     <asp:BoundField DataField="testEmail" HeaderText="Email">
						<ItemStyle Width="15%" />
					</asp:BoundField>
                  
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

