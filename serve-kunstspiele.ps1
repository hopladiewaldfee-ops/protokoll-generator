$port = 3457
$file = "C:\Users\Administrator\OneDrive\Dokumente\MAMA\KunstSpiele.html"
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
Write-Host "KunstSpiele: http://localhost:$port/"
while ($listener.IsListening) {
    $ctx = $listener.GetContext()
    $res = $ctx.Response
    $content = [System.IO.File]::ReadAllBytes($file)
    $res.ContentType = "text/html; charset=utf-8"
    $res.ContentLength64 = $content.Length
    $res.OutputStream.Write($content, 0, $content.Length)
    $res.OutputStream.Close()
}
