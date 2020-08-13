$prompt = New-Object -COMObject WScript.Shell 
$answer = $prompt.popup("Start Latest (Yes) or Tested (No)? Latest starts in 5 seconds`n",5,"JOSM Starter",3)

$file = "josm-tested.jar"
switch($answer)
{
  -1 { $file = "josm-latest.jar" }
  6 { $file = "josm-latest.jar" }
}

$url = "https://josm.openstreetmap.de/" + $file;
Write-Host "Downloading $file, please wait ..."
(New-Object System.Net.WebClient).DownloadFile($url, $file)
Write-Host "Starting ..."
& java -jar $file
