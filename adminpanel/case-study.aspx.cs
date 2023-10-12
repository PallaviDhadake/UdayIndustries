using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class adminpanel_case_study : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle, nwsPhoto, rootPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            pgTitle = Request.QueryString["action"] == "new" ? "Add Case Study" : "Edit Case Study";
            btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
            btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
            btnCancel.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");

            if (!IsPostBack)
            {
                if (Request.QueryString["action"] != null)
                {
                    editCase.Visible = true;
                    viewCase.Visible = false;

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
                        GetCaseData(Convert.ToInt32(Request.QueryString["id"]));
                    }
                }
                else
                {
                    editCase.Visible = false;
                    viewCase.Visible = true;
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
            using (DataTable dtNws = c.GetDataTable("Select csId, Convert(varchar(20), csDate, 103) as csDate, csTitle, csAuthorName, viewCount From CaseStudy Where delMark=0 Order By csDate DESC"))
            {
                gvCaseStudy.DataSource = dtNws;
                gvCaseStudy.DataBind();

                if (dtNws.Rows.Count > 0)
                {
                    gvCaseStudy.UseAccessibleHeader = true;
                    gvCaseStudy.HeaderRow.TableSection = TableRowSection.TableHeader;
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

    protected void gvCaseStudy_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"case-study.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\"class=\"gAnch\" title=\"View/Edit\"></a>";



                Literal litPhotos = (Literal)e.Row.FindControl("litAddPhotos");
                litPhotos.Text = "<a href=\"case-study-photos.aspx?caseId=" + e.Row.Cells[0].Text + "\" class=\"addPhoto\" title=\"Add Photos to album\" ></a>";
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



    public void GetCaseData(int CaseIdx)
    {
        try
        {
            using (DataTable dtCase = c.GetDataTable("select * from CaseStudy where csId=" + CaseIdx))
            {
                if (dtCase.Rows.Count > 0)
                {
                    DataRow row = dtCase.Rows[0];
                    lblId.Text = CaseIdx.ToString();
                    //Date.Text = Convert.ToDateTime(row["csDate"]).ToString("dd/MM/yyyy");
                    txtAuthorName.Text = row["csAuthorName"].ToString();
                    txtCaseTitle.Text = row["csTitle"].ToString();
                    txtCaseDesc.Text = row["csDetails"].ToString();

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
            if (txtAuthorName.Text == "" || txtCaseTitle.Text == "" || txtCaseDesc.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * Fields are mandatory');", true);
                return;
            }

            //Insert Update data
            int maxId = lblId.Text == "[New]" ? c.NextId("CaseStudy", "csId") : Convert.ToInt32(lblId.Text);

           
            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert into CaseStudy(csId, csDate, csTitle, csDetails, csAuthorName, viewCount, delMark)Values(" + maxId + ", '" + DateTime.Now + "', '" + txtCaseTitle.Text + "', '" + txtCaseDesc.Text + "', '" + txtAuthorName.Text + "', 0, 0)");
                

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Case Study   Added');", true);
            }

            else
            {
                c.ExecuteQuery("Update CaseStudy set csDate='" + DateTime.Now + "', csTitle='" + txtCaseTitle.Text + "', csDetails='" + txtCaseDesc.Text + "', csAuthorName='"+ txtAuthorName.Text + "' where csId=" + maxId);

               

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Case Study  Updated');", true);
            }
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('case-study.aspx', 2000);", true);

            txtAuthorName.Text = txtCaseDesc.Text = txtCaseTitle.Text = "";
           

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
            c.ExecuteQuery("Update CaseStudy set delMark=1 where csId=" + Request.QueryString["id"]);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Record Deleted');", true);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('case-study.aspx', 2000);", true);
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
        Response.Redirect("case-study.aspx");
    }
}