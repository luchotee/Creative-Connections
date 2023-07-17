Public Class Form1

Dim conn As New OleDbConnection
Dim dAdapter As New OleDbDataAdapter
Dim ds As New DataSet

Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Creative Connections\Connection.accdb"
dAdapter.SelectCommand = New OleDbCommand("select * from Connection", conn)
conn.Open()

dAdapter.Fill(ds, "Connection")
DataGridView1.DataSource = ds.Tables("Connection")
conn.Close()

End Sub

Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click

Dim cb As New OleDbCommandBuilder(dAdapter)
dAdapter.Update(ds, "Connection")

End Sub

Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click

Dim dRow As DataRow
dRow = ds.Tables("Connection").NewRow()

dRow(1) = txtID.Text
dRow(2) = txtName.Text
dRow(3) = txtFamilyName.Text
dRow(4) = txtCompany.Text
dRow(5) = txtPhone.Text
dRow(6) = txtAddress.Text

ds.Tables("Connection").Rows.Add(dRow)

End Sub

Private Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click

Dim dRow As DataRow
dRow = ds.Tables("Connection").Rows(DataGridView1.CurrentCell.RowIndex)
dRow.Delete()

End Sub

Private Sub DataGridView1_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick

Dim dr As DataGridViewRow = DataGridView1.Rows(e.RowIndex)

txtID.Text = dr.Cells(0).Value.ToString()
txtName.Text = dr.Cells(1).Value.ToString()
txtFamilyName.Text = dr.Cells(2).Value.ToString()
txtCompany.Text = dr.Cells(3).Value.ToString()
txtPhone.Text = dr.Cells(4).Value.ToString()
txtAddress.Text = dr.Cells(5).Value.ToString()

End Sub

Private Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click

Dim dRow As DataRow
dRow = ds.Tables("Connection").Rows(DataGridView1.CurrentCell.RowIndex)

dRow(1) = txtID.Text
dRow(2) = txtName.Text
dRow(3) = txtFamilyName.Text
dRow(4) = txtCompany.Text
dRow(5) = txtPhone.Text
dRow(6) = txtAddress.Text

End Sub

End Class