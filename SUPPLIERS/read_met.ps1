$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$wb = $excel.Workbooks.Open('C:\Users\aluizio\Desktop\Aluizio\2026-04-ORION\SUPPLIERS\SUPPLIERS.xlsx')
$ws = $wb.Sheets.Item('Suppliers')
# Only print rows where status = MET
for ($r = 2; $r -le $ws.UsedRange.Rows.Count; $r++) {
    $status = $ws.Cells.Item($r, 5).Text
    if ($status -eq 'MET') {
        $supplier = $ws.Cells.Item($r, 2).Text
        $nextStep = $ws.Cells.Item($r, 8).Text
        Write-Output "$supplier >> $nextStep"
    }
}
$wb.Close($false)
$excel.Quit()
