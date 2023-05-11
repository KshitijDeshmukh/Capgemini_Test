for ($i=0; $i -lt 10; $i++){
$fileName='File '+$i+'.txt'
New-Item -Path $fileName -ItemType File
}

/*create 10 folders*/
for ($i=0; $i -lt 10; $i++){
$path='Folder'+$i
New-Item -Path $path -ItemType Directory
}


/*create 10 folders inside 10 folders*/
for ($i=0; $i -lt 10 ; $i++){
$path='Folder'+$i
for($j=0; $j -lt 10; $j++){
    $path1='newFolder'+$j
    New-Item -Path $path/$path1 -ItemType Directory
    }
}


/*create 10 files inside last step*/
for($i=0; $i -lt 10; $i++){
$path='Folder'+$i
for($j=0; $j -lt 10; $j++){
$path1='newFolder'+$j
for($k=0; $k -lt 10; $k++){
$path2='newFile'+$k+'.txt'
New-Item -Path $path/$path1/$path2 -ItemType File
}
}
}


/*copy 10  files of 1st step into 2nd step folder*/
for($i=0; $i -lt 10; $i++){
$path='Folder'+$i
for ($j=0; $j -lt 10; $j++){
$fileName='File '+$i+'.txt'
Copy-Item -Path $filename -Recurse -Destination $path
}
}

/*Remove 10 files from last step*/
for($i=0; $i -lt 10; $i++){
$path='Folder'+$i

for($k=0; $k -lt 10; $k++){
$fileName='File '+$i+'.txt'
Remove-Item -Path $path/$fileName -Recurse 
}
}
