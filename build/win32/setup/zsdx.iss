; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Zelda Mystery of Solarus DX"
#define MyAppVersion "1.10.0"
#define MyAppPublisher "Solarus"
#define MyAppURL "http://www.solarus-games.org"
#define MyAppExeName "solarus_run.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D5146C5B-BDAE-4568-8949-B88993C93C84}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=solarus_license.txt
OutputBaseFilename=zsdx-{#MyAppVersion}-setup
SetupIconFile="files_to_install\quest_icon.ico"
Compression=lzma
SolidCompression=yes

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"; InfoBeforeFile: "info_pre_install.fr.txt"
Name: "english"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile: "info_pre_install.en.txt"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "files_to_install\solarus_run.exe"; DestDir: "{app}"; Flags: ignoreversion    
Source: "files_to_install\libsolarus.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "files_to_install\data.solarus"; DestDir: "{app}"; Flags: ignoreversion
Source: "files_to_install\quest_icon.ico"; DestDir: "{app}"
Source: "files_to_install\libfreetype-6.dll"; DestDir: "{sys}"
Source: "files_to_install\libgcc_s_dw2-1.dll"; DestDir: "{sys}"
Source: "files_to_install\libmodplug-1.dll"; DestDir: "{sys}"
Source: "files_to_install\libogg.dll"; DestDir: "{sys}"
Source: "files_to_install\libphysfs.dll"; DestDir: "{sys}"
Source: "files_to_install\libpng16-16.dll"; DestDir: "{sys}"
Source: "files_to_install\libstdc++-6.dll"; DestDir: "{sys}"
Source: "files_to_install\libvorbis.dll"; DestDir: "{sys}"
Source: "files_to_install\libvorbisfile.dll"; DestDir: "{sys}"
Source: "files_to_install\luajit-5.1.dll"; DestDir: "{sys}"
Source: "files_to_install\OpenAL32.dll"; DestDir: "{sys}"
Source: "files_to_install\SDL2.dll"; DestDir: "{sys}"
Source: "files_to_install\SDL2_image.dll"; DestDir: "{sys}"
Source: "files_to_install\SDL2_ttf.dll"; DestDir: "{sys}"
Source: "files_to_install\wrap_oal.dll"; DestDir: "{sys}"
Source: "files_to_install\zlib1.dll"; DestDir: "{sys}"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\quest_icon.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename: "{app}\quest_icon.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent
