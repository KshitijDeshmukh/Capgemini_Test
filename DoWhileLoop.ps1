$cnt=0
do{
$fileName='File'+$cnt+'.txt'
New-Item -Path $fileName -ItemType File
$cnt+=1
}while($cnt -lt 10)


$cnt=0
do{
$path='Folder'+$cnt
New-Item -Path $path -ItemType Directory
$cnt+=1
}while($cnt -lt 10)

$i=0
do{
$path='Folder'+$i
$j=0
do{
$path1='newFolder'+$j
New-Item -Path $path/$path1 -ItemType Directory
$j+=1
}while($j -lt 10)
$i+=1
}while($i -lt 10)


$i=0
do{
$path='Folder'+$i
$j=0
do{
$path1='newFolder'+$j
$k=0
do{
$path2='newFile'+$k+'.txt'
New-Item -Path $path/$path1/$path2 -ItemType File
$k++
}while($k -lt 10)
$j++
}while($j -lt 10)
$i++ 
}while($i -lt 10)


$i=0
do{
$fileName='File'+$i+'.txt'
$j=0
do{
$path='Folder'+$j
Copy-Item -Path $fileName -Recurse -Destination $path
$j++
}while ($j -lt 10)
$i++
}while($i -lt 10)


$i=0
do{
    $path='Folder'+$i
$j=0
do{
$fileName='File'+$j+'.txt'
Remove-Item -Path $path\$fileName -Recurse
$j++
}while ($j -lt 10)
$i++
}while($i -lt 10)