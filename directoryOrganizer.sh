#!/bin/sh
# mkdir testef

# [ ! -d testef ] && echo yes



folders[0]="images"
folders[1]="pythonFiles"
folders[2]="zipFiles" 
folders[3]="appFiles" 
folders[4]="docxFiles"
folders[5]="otherFolders"
folders[6]="pascalFiles"
folders[7]="pdfFiles" 
folders[8]="jarFiles" 
folders[9]="luaFiles" 
folders[10]="sqlFiles" 
folders[11]="ipynbFiles" 
folders[12]="mp4Files" 
folders[13]="htmlFiles"
folders[14]="txtFiles" 
folders[15]="blenderFiles"
folders[16]="msiFiles" 
folders[17]="otherFiles" 



[ ! -d /images ] && mkdir --parents images
[ ! -d /pythonFiles ] && mkdir --parents pythonFiles
[ ! -d /zipFiles ] && mkdir --parents zipFiles
[ ! -d /appFiles ] && mkdir --parents appFiles
[ ! -d /docxFiles ] && mkdir --parents docxFiles
[ ! -d /otherFolders ] && mkdir --parents otherFolders
[ ! -d /pascalFiles ] && mkdir --parents pascalFiles
[ ! -d /pdfFiles ] && mkdir --parents pdfFiles
[ ! -d /jarFiles ] && mkdir --parents jarFiles
[ ! -d /luaFiles ] && mkdir --parents luaFiles
[ ! -d /sqlFiles ] && mkdir --parents sqlFiles
[ ! -d /ipynbFiles ] && mkdir --parents ipynbFiles
[ ! -d /mp4Files ] && mkdir --parents mp4Files
[ ! -d /htmlFiles ] && mkdir --parents htmlFiles
[ ! -d /txtFiles ] && mkdir --parents txtFiles
[ ! -d /blenderFiles ] && mkdir --parents blenderFiles
[ ! -d /msiFiles ] && mkdir --parents msiFiles
[ ! -d /otherFiles ] && mkdir --parents otherFiles


for folder in * ; do
		case "$folder" in
			"images"|"pythonFiles"|"zipFiles"|"appFiles"|"docxFiles"|"otherFolders"|"pascalFiles"|"pdfFiles"|"jarFiles"|"luaFiles"|"sqlFiles"|"ipynbFiles"|"mp4Files"|"htmlFiles"|"txtFiles"|"blenderFiles"|"msiFiles"|"otherFiles" )
					echo "$folder"
					;;
				*)
					[ -d "$folder" ] && mv "$folder" otherFolders


		esac
		
done




# echo *.html
for msiFile in "*.msi" ; do
	mv $msiFile msiFiles
	done
for mp4File in "*.mp4" ; do
	mv $mp4File mp4Files
	done
for htmlFile in "*.html" ; do
	mv $htmlFile htmlFiles
	done
for txtFile in "*.txt" ; do
	mv $txtFile txtFiles
	done
for logFile in "*.log" ; do
	mv $logFile txtFiles
	done
for blenderFile in "*.blend" ; do
	mv $blenderFile blenderFiles
	done
for blenderFile in "*.blend1" ; do
	mv $blenderFile blenderFiles
	done
for jpgImg in "*.jpg" ; do
	mv $jpgImg images
	done
for pngImg in "*.png" ; do
	mv $pngImg images
	done
for pyFile in "*.py" ; do
	mv $pyFile pythonFiles
	done
for zipFile in "*.zip" ; do
	mv $zipFile zipFiles
	done
for appFile in "*.exe" ; do
	mv $appFile appFiles
	done
for docxFile in "*.docx" ; do
	mv $docxFile docxFiles
	done
for pascalFile in "*.pp" ; do
	mv $pascalFile pascalFiles
	done
for pascalFile in "*.pas" ; do
	mv $pascalFile pascalFiles
	done
for pdfFile in "*.pdf" ; do
	mv $pdfFile pdfFiles
	done
for jarFile in "*.jar" ; do
	mv $jarFile jarFiles
	done
for luaFile in "*.lua" ; do
	mv $luaFile luaFiles
	done
for sqlFile in "*.sql" ; do
	mv $sqlFile sqlFiles
	done
for ipynbFile in "*.ipynb" ; do
	mv $ipynbFile ipynbFiles
	done
for file in * ; do
	[ ! -d "$file" ] && mv "$file" otherFiles
	done

