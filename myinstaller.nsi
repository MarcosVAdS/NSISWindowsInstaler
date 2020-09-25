#
#instalador para o CTGVirtual
#

LoadLanguageFile "${NSISDIR}\Contrib\Language files\PortugueseBR.nlf"

Name "CTGVirtual"
OutFile "CTGVirtual.exe"
InstallDir "C:\CTGVirtual\"

Page directory 
Page components
Page instfiles

Section "-Obrigatoria"
SetOutPath $INSTDIR
File /r "c:\Users\Gamer-1\Desktop\ECGVirtual\*"
SectionEnd

Section "Atalho no Menu Iniciar"
CreateShortCut  "$SMPROGRAMS\CTGVirtual.lnk" "$INSTDIR\CTGVirtual.exe"
SectionEnd

Section "Atalho no Desktop"
CreateShortCut "$DESKTOP\CTGVirtual.lnk" "$INSTDIR\CTGVirtual.exe" "" "$INSTDIR\CTGVirtual.exe" 0
SectionEnd

