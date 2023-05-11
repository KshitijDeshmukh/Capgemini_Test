/*create 10 files*/
$cnt=0
while($cnt -lt 10){
$fileName='File'+$cnt+'.txt'
New-Item -Path $fileName -ItemType File
$cnt+=1
}

/*create 10 folders*/
$cnt=0
while($cnt -lt 10){
$path='Folder'+$cnt
New-Item -Path $path -ItemType Directory
$cnt+=1
}


/*create 10 folders inside 10 folders*/
$i=0
while($i -lt 10){
$path='Folder'+$i
$j=0
while($j -lt 10){
$path1='newFolder'+$j
New-Item -Path $path/$path1 -ItemType Directory
$j+=1
}
$i+=1
}


/*create 10 files inside last step*/
$i=0
while($i -lt 10){
$path='Folder'+$i
$j=0
while($j -lt 10){
$path1='newFolder'+$j
$k=0
while($k -lt 10){
$path2='newFile'+$k+'.txt'
New-Item -Path $path/$path1/$path2 -ItemType File
$k++
}
$j++
}
$i++ 
}


/*copy 10  files of 1st step into 2nd step folder*/
$i=0
while($i -lt 10){
$fileName='File'+$i+'.txt'
$j=0
while ($j -lt 10){
$path='Folder'+$j
Copy-Item -Path $fileName -Recurse -Destination $path
$j++
}
$i++
}

/*Remove 10 files from last step*/
$i=0
while($i -lt 10){
    $path='Folder'+$i
$j=0
while ($j -lt 10){
$fileName='File'+$j+'.txt'
Remove-Item -Path $path\$fileName -Recurse
$j++
}
$i++
}