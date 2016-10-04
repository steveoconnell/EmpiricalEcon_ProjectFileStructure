global NewProjectFolderPath "`1'"
mkdir $NewProjectFolderPath
foreach i in 1data 2progs 3analysis 4work 5prepdata 6docs 7tex 8maps 9xfer {
mkdir "$NewProjectFolderPath/`i'/"
}
foreach i in mergefiles helpers old scratch {
mkdir "$NewProjectFolderPath/2progs/`i'/"
}
foreach i in NotesEmails Admin Drafts Reference {
mkdir "$NewProjectFolderPath/6docs/`i'/"
}
foreach i in manuscript slides "manuscript/tables" {
mkdir "$NewProjectFolderPath/7tex/`i'/"
}
foreach i in 1LayerFiles 2JoinTables 3Workspaces {
mkdir "$NewProjectFolderPath/8maps/`i'/"
}
//now place docs
foreach file in 00_Code_header.do 00_set_paths.do {
*copy "https://raw.githubusercontent.com/steveoconnell/EmpiricalEcon_ProjectFileStructure/master/2progs/`file'" "$NewProjectFolderPath/2progs/`file'"
}


foreach file in _manuscript_template.tex appendix.tex biblio.bib body.tex _scratch_notes.tex {
copy "https://raw.githubusercontent.com/steveoconnell/EmpiricalEcon_ProjectFileStructure/master/7tex/manuscript/`file'" "$NewProjectFolderPath/7tex/manuscript/`file'"
}
foreach file in _slides_template.tex {
copy "https://raw.githubusercontent.com/steveoconnell/EmpiricalEcon_ProjectFileStructure/master/7tex/slides/`file'" "$NewProjectFolderPath/7tex/slides/`file'"
}
copy "https://raw.githubusercontent.com/steveoconnell/EmpiricalEcon_ProjectFileStructure/master/Notes%20on%20file%20structure.txt" "$NewProjectFolderPath/Notes on file structure.txt"

