Add-Type -AssemblyName 'System.IO.Compression.FileSystem'
$zip = [System.IO.Compression.ZipFile]::OpenRead('Instruction file.docx')
$entry = $zip.Entries | Where-Object { $_.FullName -eq 'word/document.xml' }
$stream = $entry.Open()
$reader = New-Object System.IO.StreamReader($stream)
$xmlContent = $reader.ReadToEnd()
$reader.Close()
$stream.Close()
$zip.Dispose()

$xml = [xml]$xmlContent
$ns = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
$ns.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
$paragraphs = $xml.SelectNodes('//w:p', $ns)
$text = ''
foreach ($p in $paragraphs) {
    $runs = $p.SelectNodes('.//w:t', $ns)
    $line = ''
    foreach ($r in $runs) {
        $line += $r.InnerText
    }
    $text += $line + "`n"
}
$text | Out-File -FilePath 'extracted_content.txt' -Encoding UTF8
Write-Host "Extraction complete. Length: $($text.Length) characters"
