; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SCUT Server"
#define MyAppVersion "6.1.6.5"
#define MyAppPublisher "ScutGame, Inc."
#define MyAppCopyright "Copyright (c) 2013-2015 scutgame.com Inc."
#define MyAppURL "http://www.scutgame.com/"
#define MyAppExeName "GameServer.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D53BF991-823A-42ED-AB06-28D462E37354}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppCopyright={#MyAppCopyright}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\SCUTServer
DefaultGroupName={#MyAppName}
OutputBaseFilename=SCUTServerSetup
SetupIconFile=scut36.ico
Compression=lzma
SolidCompression=yes


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\Console\GameServer.exe"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\GameServer.exe.config"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\GameServer.pdb"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ICSharpCode.SharpZipLib.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\IronPython.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\IronPython.Modules.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\Microsoft.Dynamic.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\Microsoft.Scripting.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\Mono.Cecil.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\MySql.Data.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\Newtonsoft.Json.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\NLog.config"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\NLog.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\protobuf-net.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ScutSMS.exe"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ServiceStack.Common.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ServiceStack.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ServiceStack.Interfaces.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ServiceStack.Redis.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ServiceStack.Text.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ZyGames.Framework.Common.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ZyGames.Framework.dll"; DestDir: "{app}\Console"; Flags: ignoreversion
Source: "..\Console\ZyGames.Framework.Game.dll"; DestDir: "{app}\Console"; Flags: ignoreversion

Source: "..\Console\Script\CsScript\MainClass.cs"; DestDir: "{app}\Console\Script\CsScript"; Flags: ignoreversion  
Source: "..\Console\Script\Model\GuestUser.cs"; DestDir: "{app}\Console\Script\Model"; Flags: ignoreversion      
Source: "..\Console\Script\Model\UserRanking.cs"; DestDir: "{app}\Console\Script\Model"; Flags: ignoreversion
Source: "..\Console\Script\CsScript\Locale\SimplifiedLanguage.cs"; DestDir: "{app}\Console\Script\CsScript\Locale"; Flags: ignoreversion
Source: "..\Console\Script\CsScript\Action\Action1000.cs"; DestDir: "{app}\Console\Script\CsScript\Action"; Flags: ignoreversion
Source: "..\Console\Script\CsScript\Action\Action1001.cs"; DestDir: "{app}\Console\Script\CsScript\Action"; Flags: ignoreversion

Source: "..\..\..\Document\API\SCUT Server Framework API.chm"; DestDir: "{app}\Doc"; Flags: ignoreversion
Source: "..\..\..\Document\API\SCUT Server Middleware API.chm"; DestDir: "{app}\Doc"; Flags: ignoreversion

Source: "Redis\x32\redis.conf"; DestDir: "{app}\Redis\x32"; Flags: ignoreversion
Source: "Redis\x32\redis-server.exe"; DestDir: "{app}\Redis\x32"; Flags: ignoreversion  
Source: "Redis\x32\redis-cli.exe"; DestDir: "{app}\Redis\x32"; Flags: ignoreversion   

Source: "Redis\x64\redis.conf"; DestDir: "{app}\Redis\x64"; Flags: ignoreversion
Source: "Redis\x64\redis-server.exe"; DestDir: "{app}\Redis\x64"; Flags: ignoreversion 
Source: "Redis\x64\redis-cli.exe"; DestDir: "{app}\Redis\x64"; Flags: ignoreversion 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\Console\{#MyAppExeName}"        
Name: "{group}\Redis Server(x64)"; Filename: "{app}\redis\x64\redis-server.exe"  
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\SCUT Server Management Studio"; Filename: "{app}\console\ScutSMS.exe"
Name: "{group}\Document\SCUT Server Framework API"; Filename: "{app}\Doc\SCUT Server Framework API.chm" 
Name: "{group}\Document\SCUT Server Middleware API"; Filename: "{app}\Doc\SCUT Server Middleware API.chm"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\Console\{#MyAppExeName}"; Tasks: desktopicon

[Run]
;Filename: "{app}\Console\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

