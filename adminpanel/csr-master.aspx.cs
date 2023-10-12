using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class adminpanel_csr_master : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle, rootPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            pgTitle = Request.QueryString["action"] == "new" ? "Add CSR" : "Edit CSR";
            btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
            btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
            btnCancel.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");

            if (!IsPostBack)
            {
                if (Request.QueryString["action"] != null)
                {
                    editCsr.Visible = true;
                    viewCsr.Visible = false;

                    if (Request.QueryString["action"] == "new")
                    {
                        btnSave.Text = "Save Info";
                        btnDelete.Visible = false;
                        // txtDate.Text = DateTime.Now.ToString("dd/MM/yyyy");

                    }
                    else
                    {
                        btnSave.Text = "Modify Info";
                        btnDelete.Visible = true;
                        GetCsrData(Convert.ToInt32(Request.QueryString["id"]));
                    }
                }
                else
                {
                    editCsr.Visible = false;
                    viewCsr.Visible = true;
                    FillGrid();
                }
            }
            lblId.Visible = false;
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "Page_Load", ex.Message.ToString());
            return;
        }
    }

    private void FillGrid()
    {
        try
        {
            using (DataTable dtNws = c.GetDataTable("Select CsrId, Convert(varchar(20), CsrDate, 103) as CsrDate, CsrTitle From CsrData Where DelMark=0 Order By CsrId DESC"))
            {
                gvCsr.DataSource = dtNws;
                gvCsr.DataBind();

                if (dtNws.Rows.Count > 0)
                {
                    gvCsr.UseAccessibleHeader = true;
                    gvCsr.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "FillGrid", ex.Message.ToString());
            return;
        }
    }


    protected void gvCsr_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"csr-master.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\"class=\"gAnch\" title=\"View/Edit\"></a>";



                Literal litPhotos = (Literal)e.Row.FindControl("litAddPhotos");
                litPhotos.Text = "<a href=\"events-gallery.aspx?albumId=" + e.Row.Cells[0].Text + "\" class=\"addPhoto\" title=\"Add Photos to album\" ></a>";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "gvCaseStudy_RowDataBound", ex.Message.ToString());
            return;
        }
    }


    public void GetAllControls(ControlCollection ctrs)
    {
        foreach (Control c in ctrs)
        {
            if (c is System.Web.UI.WebControls.TextBox)
            {
                TextBox tt = c as TextBox;
                tt.Text = tt.Text.Trim().Replace("'", "");
            }
            if (c.HasControls())
            {
                GetAllControls(c.Controls);
            }
        }
    }


    public void GetCsrData(int CsrIdx)
    {
        try
        {
            using (DataTable dtCsr = c.GetDataTable("select * from CsrData where CsrId=" + CsrIdx))
            {
                if (dtCsr.Rows.Count > 0)
                {
                    DataRow row = dtCsr.Rows[0];
                    lblId.Text = CsrIdx.ToString();
                    //Date.Text = Convert.ToDateTime(row["csDate"]).ToString("dd/MM/yyyy");
                    txtTitle.Text = row["CsrTitle"].ToString();
                    txtCsrDesc.Text = row["CsrDesc"].ToString();

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetCaseData", ex.Message.ToString());
            return;
        }
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            GetAllControls(this.Controls);
            //Empty Validations
            if (txtTitle.Text == "" || txtCsrDesc.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * Fields are mandatory');", true);
                return;
            }

            //Insert Update data
            int maxId = lblId.Text == "[New]" ? c.NextId("CsrData", "CsrId") : Convert.ToInt32(lblId.Text);


            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into CsrData(CsrId, CsrDate, CsrTitle, CsrDesc, DelMark)Values(" + maxId + ", '" + DateTime.Now + "', '" + txtTitle.Text + "', '" + txtCsrDesc.Text + "', 0)");


                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'CSR  Added');", true);
            }

            else
            {
                c.ExecuteQuery("Update CsrData set CsrDate='" + DateTime.Now + "', CsrTitle='" + txtTitle.Text + "', CsrDesc='" + txtCsrDesc.Text + "' where CsrId=" + maxId);



                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'CSR  Updated');", true);
            }
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('csr-master.aspx', 2000);", true);

            txtTitle.Text = txtCsrDesc.Text = "";


        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("Update CsrData set DelMark=1 where CsrId=" + Request.QueryString["id"]);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Record Deleted');", true);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('csr-master.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnDelete_Click", ex.Message.ToString());
            return;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("csr-master.aspx");
    }


}