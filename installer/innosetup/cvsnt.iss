; Script generated by the My Inno Setup Extensions Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppVersion GetFileVersion("..\..\cvsbin\cvs.exe")

[Setup]
SourceDir=..\..\cvsbin
AppName=cvsnt
AppVerName=cvsnt-{#AppVersion}
AppID=CVSNT
AppPublisherURL=http://www.cvsnt.org
AppSupportURL=http://www.cvsnt.org
AppUpdatesURL=http://www.cvsnt.org
DefaultDirName={pf}\cvsnt
DefaultGroupName=CVSNT
AllowNoIcons=true
LicenseFile=COPYING
DisableStartupPrompt=true
PrivilegesRequired=none
UninstallDisplayIcon={app}\cvs.exe
UninstallDisplayName=CVSNT
OutputDir=setup
FlatComponentsList=false
OutputBaseFilename=cvsnt-{#AppVersion}
MinVersion=4.0.1111,4.0.1381sp6
ShowTasksTreeLines=false
SolidCompression=true
AllowUNCPath=false
ShowLanguageDialog=auto
VersionInfoVersion={#AppVersion}
InfoAfterFile=relnotes.rtf

UseSetupLdr=true
VersionInfoCompany=March Hare Pty Ltd
VersionInfoDescription=CVSNT Setup Program
VersionInfoTextVersion=CVSNT {#AppVersion}
SetupIconFile=..\windows-NT\cvsnt.ico
UninstallIconFile=..\windows-NT\cvsnt.ico
AppPublisher=CVSNT
AppVersion={#AppVersion}
TimeStampsInUTC=true
Compression=lzma
InternalCompressLevel=ultra

[_ISTool]
EnableISX=true
UseAbsolutePaths=false
Use7zip=false

LogFile=
LogFileAppend=false
[LangOptions]
LanguageID=$0809

[Types]
Name: typical; Description: Typical installation
Name: full; Description: Full installation
Name: custom; Description: Custom installation; Flags: iscustom

[Components]
Name: Commandline; Description: Command line client; Types: custom typical full; MinVersion: 0,4.0.1381sp6
Name: Server; Description: Server Components; Types: custom full typical; MinVersion: 0,4.00.1381sp6; Check: isadmin
Name: Agent; Description: CVSNT Password Agent; Types: custom full typical
Name: win95; Description: Windows 95 support; Types: custom full; MinVersion: 4.0.950,0
Name: RCS; Description: RCS emulation components; Types: custom full typical
Name: ExtWrapper; Description: :ext: protocol wrapper for non-cvsnt clients; Types: custom full typical
Name: Protocols; Description: Protocols; Types: custom typical full
Name: Protocols\Pserver; Description: Password Server (:pserver:) Protocol; Types: custom typical full
Name: Protocols\NTServer; Description: Named Pipe (:ntserver:) Protocol; Types: custom full; MinVersion: 0,4.00.1381sp6
Name: Protocols\Ext; Description: External Command (:ext:) Protocol; Types: custom typical full
Name: Protocols\Fork; Description: Fork (:fork:) Protocol (for testing only)
Name: Protocols\GSSAPI; Description: GSSAPI (:gserver:) for Active Directory; Types: custom typical full; MinVersion: 0,5.00.2195
Name: Protocols\SSPI; Description: SSPI (:sspi:) protocol; Types: typical full custom
Name: Protocols\server; Description: RSH Client (:server:) protocol; Types: custom full typical
Name: Protocols\ssh; Description: SSH Client (:ssh:) protocol; Types: custom full typical
Name: Protocols\sserver; Description: SSL (:sserver) protocol; Types: custom full typical
Name: Protocols\sserver\CA; Description: Common CA certificates; Types: custom full typical
Name: Development; Description: Plugin development; Types: custom full; MinVersion: 0,4.0.1381sp6
Name: docs; Description: Documentation and help; Types: custom typical full

[Files]
Source: cvs.exe; DestDir: {app}; Flags: ignoreversion; Components: Commandline; MinVersion: 0,4.00.1381sp6; AfterInstall: RegisterCvs
Source: cvsapi.dll; DestDir: {app}; Flags: ignoreversion; Components: Commandline; MinVersion: 0,4.00.1381sp6; AfterInstall: RegisterCvs
Source: cvsdiag.exe; DestDir: {app}; Flags: ignoreversion; Components: Commandline win95; MinVersion: 0,4.00.1381sp6
Source: cvs95.exe; DestDir: {app}; Flags: ignoreversion; Components: win95
Source: cvslock.exe; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,4.00.1381sp6; Components: Server win95 Commandline; Check: StopCvsLockService
Source: cvsnt.cpl; DestDir: {app}; Flags: ignoreversion; Components: Server; MinVersion: 0,4.00.1381sp6
Source: cvsservice.exe; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,4.00.1381sp6; Components: Server; Check: StopCvsService
Source: default_trigger.dll; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,4.00.1381sp6; Components: Server
Source: ext_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\Ext
Source: fork_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\Fork
Source: gserver_protocol.dll; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,5.0.2195; Components: Protocols\GSSAPI
Source: ntserver_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\NTServer
Source: postinst.exe; DestDir: {app}; Flags: ignoreversion; Components: win95 Server Commandline
Source: uninsthlp.exe; DestDir: {app}; Flags: ignoreversion; Components: win95 Server Commandline
Source: protocol_map.ini; DestDir: {app}; Flags: ignoreversion; Components: Commandline Protocols\server Protocols\Fork Protocols\Ext Protocols\NTServer win95 Protocols\GSSAPI
Source: pserver_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\Pserver
Source: server_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\server
Source: sspi_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\SSPI
Source: sysfiles\msvcr71.dll; DestDir: {sys}; Flags: uninsneveruninstall sharedfile onlyifdoesntexist; Check: isadmin
Source: sysfiles\msvcp71.dll; DestDir: {sys}; Flags: uninsneveruninstall sharedfile onlyifdoesntexist; Check: isadmin
Source: sysfiles\MFC71U.dll; DestDir: {sys}; Flags: uninsneveruninstall sharedfile onlyifdoesntexist; Check: isadmin
Source: sysfiles\msvcp71.dll; DestDir: {app}
Source: sysfiles\msvcr71.dll; DestDir: {app}
Source: sysfiles\MFC71U.dll; DestDir: {app}
Source: sysfiles\iconv.dll; DestDir: {app}
Source: sysfiles\charset.dll; DestDir: {app}
Source: sysfiles\secur32_nt4.dll; DestDir: {sys}; DestName: secur32.dll; Flags: uninsneveruninstall sharedfile onlyifdoesntexist; MinVersion: 0,4.0.1381sp6; OnlyBelowVersion: 0,5.0.2195
;Source: sysfiles\secur32_w98.dll; DestDir: {sys}; DestName: secur32.dll; Flags: uninsneveruninstall sharedfile onlyifdoesntexist; MinVersion: 4.0.950,0; OnlyBelowVersion: 0,0
Source: ssh_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\ssh
Source: plink.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\ssh
Source: expat.dll; DestDir: {app}; Flags: ignoreversion; Components: win95 Commandline
Source: sysfiles\dbghelp.dll; DestDir: {app}
Source: sysfiles\ssleay32_vc71.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\sserver
Source: sysfiles\libeay32_vc71.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\sserver
Source: sserver_protocol.dll; DestDir: {app}; Flags: ignoreversion; Components: Protocols\sserver
Source: genkey.exe; DestDir: {app}; Flags: ignoreversion; Components: Protocols\sserver Server
Source: rcsdiff.exe; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,4.00.1381sp6; Components: RCS
Source: co.exe; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,4.00.1381sp6; Components: RCS
Source: rlog.exe; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,4.00.1381sp6; Components: RCS
Source: ca.pem; DestDir: {app}; Flags: ignoreversion; Components: Protocols\sserver\CA
Source: COPYING; DestDir: {app}
Source: infolib.h; DestDir: {app}; Flags: ignoreversion; Components: Development; MinVersion: 0,4.0.1381sp6
Source: keep\SetACL.exe; DestDir: {app}; Flags: ignoreversion; Components: Server; MinVersion: 0,5.0.2195
Source: setuid.dll; DestDir: {sys}; Flags: restartreplace sharedfile overwritereadonly promptifolder; MinVersion: 0,5.0.2195
;Source: posixdir.sys; DestDir: {sys}\drivers; Flags: restartreplace sharedfile overwritereadonly promptifolder; MinVersion: 0,5.0.2195
Source: su.exe; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,5.0.2195
Source: setci.exe; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,5.0.2195
Source: cvsagent.exe; DestDir: {app}; Flags: ignoreversion; Components: Agent
Source: cvs.chm; DestDir: {app}; Flags: ignoreversion; Components: docs; MinVersion: 0,4.0.1381sp6
Source: extnt.exe; DestDir: {app}; Flags: ignoreversion; Components: ExtWrapper
Source: extnt.ini; DestDir: {app}; Flags: ignoreversion; Components: ExtWrapper
Source: relnotes.rtf; DestDir: {app}; Flags: ignoreversion isreadme; DestName: Release Notes.rtf

[INI]
Filename: {app}\wiki.url; Section: InternetShortcut; Key: URL; String: http://www.cvsnt.org/wiki; Components: docs
Filename: {app}\cvsnt.url; Section: InternetShortcut; Key: URL; String: http://www.cvsnt.com; Components: docs
Filename: {win}\Control.ini; Section: MMCPL; Key: CVSNT; String: {app}\cvsnt.cpl

[Icons]
Name: {group}\Release Notes; Filename: {app}\Release Notes.rtf; Flags: createonlyiffileexists
Name: {group}\Service control panel; Filename: {sys}\cvsnt.cpl; IconIndex: 0; Flags: createonlyiffileexists; MinVersion: 0,4.00.1381sp6; Components: Server; IconFilename: {app}\cvs.exe
Name: {group}\CVSNT Opensource wiki; Filename: {app}\wiki.url; Components: docs
Name: {group}\CVSNT Commercial support; Filename: {app}\cvsnt.url; Components: docs
Name: {group}\CVSNT documentation; Filename: {app}\cvs.chm; Flags: createonlyiffileexists; Components: docs
Name: {group}\CVSNT Password Agent; Filename: {app}\cvsagent.exe; Flags: createonlyiffileexists; Components: Agent
Name: {group}\Uninstall cvsnt; Filename: {uninstallexe}

[InstallDelete]
;Old location of control panel applet
Name: {sys}\cvsnt.cpl; Type: files; Components: Server

[UninstallDelete]
Name: {app}\cvs.url; Type: files
Name: {app}\wiki.url; Type: files
Name: {app}\cvsnt-default.pem; Type: files

[Run]
Filename: {sys}\net.exe; Parameters: stop cvslock; Components: Server; Tasks: lockservice; Flags: runhidden; WorkingDir: {app}
Filename: {sys}\net.exe; Parameters: stop cvs; Tasks: service; Components: Server; Flags: runhidden; WorkingDir: {app}
Filename: {sys}\net.exe; Parameters: stop cvsnt; Tasks: service; Components: Server; Flags: runhidden; WorkingDir: {app}
;Filename: {app}\cvslock.exe; Parameters: -u; Components: Server; Tasks: lockservice; Flags: runhidden; WorkingDir: {app}
;Filename: {app}\cvsservice.exe; Parameters: -u; Components: Server; Tasks: service; Flags: runhidden; WorkingDir: {app}
Filename: {app}\cvsservice.exe; Parameters: -i; Components: Server; Tasks: service; WorkingDir: {app}; Description: Installing CVS Service; StatusMsg: Installing CVS Service; Flags: runhidden
Filename: {app}\postinst.exe; WorkingDir: {app}; Flags: runhidden nowait; Components: win95 Server Commandline
Filename: {app}\cvslock.exe; Parameters: -i; Components: Server; Tasks: lockservice; WorkingDir: {app}; Description: Installing CVS Lock Service; StatusMsg: Installing CVS Lock Service; Flags: runhidden
Filename: {sys}\net.exe; Parameters: start cvsnt; Tasks: service; Components: Server; WorkingDir: {app}; Description: Start CVS service; StatusMsg: Starting CVS service; Flags: runhidden postinstall nowait
Filename: {sys}\net.exe; Parameters: start cvslock; Components: Server; Tasks: lockservice; WorkingDir: {app}; Description: Start CVS Lock service; StatusMsg: Starting CVS Lock service; Flags: runhidden postinstall nowait
Filename: {app}\setacl.exe; Parameters: "-on Temp -ot file -actn setprot -op sacl:p_nc;dacl:p_nc -actn clear -clr sacl,dacl -actn ace -ace n:S-1-5-32-544;p:full;s:y -ace n:S-1-1-0;p:change;s:y -ace n:S-1-5-18;p:full;s:y -ace n:S-1-3-0;p:full;s:y"; StatusMsg: Setting default ACLs; Components: Server; WorkingDir: {app}; Flags: runhidden; Description: Set default ACLs; MinVersion: 0,5.0.2195
Filename: {app}\genkey.exe; Parameters: cvsnt-default.pem; WorkingDir: {app}; Description: Generate default server certificate; StatusMsg: Generating default server certificate; Flags: runhidden; Components: Protocols\sserver Server; Tasks: genkey
Filename: {app}\cvsservice.exe; Parameters: -reglsa; Tasks: service; WorkingDir: {app}; Description: Installing CVS Service; StatusMsg: Installing CVS Service; Flags: runhidden

[Dirs]
Name: {app}\Temp; Flags: uninsalwaysuninstall; Components: Server; MinVersion: 0,5.0.2195

[Tasks]
Name: service; Description: Install cvsnt service; MinVersion: 0,4.00.1381sp6; Components: Server; Check: isadmin
Name: lockservice; Description: Install cvsnt lock service; Components: Server; MinVersion: 0,4.00.1381sp6; Check: isadmin
Name: genkey; Description: Generate default certificate; Components: Protocols\sserver

[UninstallRun]
Filename: {sys}\net.exe; Parameters: stop cvslock; Components: Server; Tasks: lockservice; Flags: runhidden; WorkingDir: {app}
Filename: {sys}\net.exe; Parameters: stop cvsnt; Tasks: service; Components: Server; Flags: runhidden; WorkingDir: {app}
Filename: {app}\cvslock.exe; Parameters: -u; Components: Server; Tasks: lockservice; Flags: runhidden; WorkingDir: {app}
Filename: {app}\cvsservice.exe; Parameters: -u; Components: Server; Tasks: service; Flags: runhidden; WorkingDir: {app}
Filename: {app}\uninsthlp.exe; Parameters: {app}; Components: win95 Server Commandline; Flags: runhidden; WorkingDir: {app}
Filename: {app}\cvsservice.exe; Parameters: -unreglsa; Tasks: service; Flags: runhidden; WorkingDir: {app}

[Registry]
Root: HKLM; Subkey: Software\CVS\Pserver; ValueType: expandsz; ValueName: CertificateFile; ValueData: {app}\cvsnt-default.pem; Flags: createvalueifdoesntexist preservestringtype; Components: Server
Root: HKLM; Subkey: Software\CVS\Pserver; ValueType: expandsz; ValueName: PrivateKeyFile; ValueData: {app}\cvsnt-default.pem; Flags: createvalueifdoesntexist preservestringtype; Components: Server
Root: HKLM; Subkey: Software\CVS\Pserver; ValueType: string; ValueName: InstallPath; ValueData: {app}; Flags: uninsdeletevalue
Root: HKLM; Subkey: Software\CVS\PServer; ValueType: expandsz; ValueName: TempDir; ValueData: {app}\Temp; Flags: createvalueifdoesntexist preservestringtype; Components: Server; MinVersion: 0,5.0.2195
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows\CurrentVersion\Control Panel\Cpls; ValueType: string; ValueName: CVSNT; ValueData: {app}\cvsnt.cpl; Flags: uninsdeletevalue; Components: Server; MinVersion: 0,5.0.2195
Root: HKCU; Subkey: Software\cvsnt\sserver; ValueType: dword; ValueName: StrictChecking; ValueData: 0; Flags: createvalueifdoesntexist; Components: Protocols\sserver
Root: HKCU; Subkey: Environment; ValueType: expandsz; ValueName: Path; Flags: createvalueifdoesntexist preservestringtype

[Code]
type
DWORD = Cardinal;
TSystemInfo = record
    wProcessorArchitecture: Word;
    wReserved: Word;
    dwPageSize: DWORD;
    lpMinimumApplicationAddress: Integer;
    lpMaximumApplicationAddress: Integer;
    dwActiveProcessorMask: DWORD;
    dwNumberOfProcessors: DWORD;
    dwProcessorType: DWORD;
    dwAllocationGranularity: DWORD;
    wProcessorLevel: Integer;
    wProcessorRevision: Word;
end;

const
  WM_CLOSE = $0010;

procedure GetSystemInfo(var lpSystemInfo: TSystemInfo); external 'GetSystemInfo@kernel32.dll stdcall';

var
  Install : string;

procedure CurStepChanged(CurStep: integer);
var
	rslt : integer;
	path,
	mypath,
	cmps: string;
begin

	if IsAdminLoggedOn and (CurStep = csFinished) then
	begin
		mypath := ExpandConstant('{app}');
		if FileExists(mypath + '\cvsservice.exe') then
		begin
			cmps := WizardSelectedComponents(true);
			if Pos('Server', cmps) <> 0 then	{install cvs}
				InstExec(mypath + '\cvsservice.exe','-i',mypath,true,true,0,rslt);
		end;
	end;

	if IsAdminLoggedOn and (CurStep = csCopy) then
	begin
		mypath := ExpandConstant('{app}');
		if FileExists(mypath + '\cvsservice.exe') then
		begin
			cmps := WizardSelectedComponents(true);
			if Pos('Server', cmps) <> 0 then	{uninstall old cvs}
				InstExec(mypath + '\cvsservice.exe','-u',mypath,true,true,0,rslt);
		end;

		if IsAdminLoggedOn then
		begin
			RegQueryStringValue(HKEY_LOCAL_MACHINE,'SYSTEM\CurrentControlSet\Control\Session Manager\Environment','Path', path);
			rslt := Pos(mypath,path);
			if rslt = 0 then
			begin
				rslt := Pos(mypath,path);
				if rslt = 0 then
				begin
				    path := path + ';' + mypath;
					RegWriteStringValue(HKEY_LOCAL_MACHINE,'SYSTEM\CurrentControlSet\Control\Session Manager\Environment','Path', path);
				end
			end
		end
		else
		begin
			RegQueryStringValue(HKEY_CURRENT_USER,'Environment','Path', path);
			rslt := Pos(mypath,path);
			if rslt = 0 then
			begin
				mypath := GetShortName(mypath);
				rslt := Pos(mypath,path);
				if rslt = 0 then
				begin
				    path := path + ';' + mypath;
			    	RegWriteStringValue(HKEY_CURRENT_USER,'Environment','Path', path);
				end
			end
		end

		// WM_WININICHANGE == WM_SETTINGCHANGE == 0x001A
		// No way of specifying string (LongInt(PChar('Environment')) does't work)
		// so specify 0 for 'generic'
		SendBroadcastMessage($001a, 0, 0);

	end
end;

function isadmin : boolean;
begin
  Result := IsAdminLoggedOn;
end;

function StopCvsService : Boolean;
var rslt : integer;
begin
	InstExec(GetSystemDir()+'\net.exe','stop cvs',GetSystemDir(),true,true,0,rslt);
	InstExec(GetSystemDir()+'\net.exe','stop cvsnt',GetSystemDir(),true,true,0,rslt);
	InstExec(GetSystemDir()+'\net.exe','stop cvsssh',GetSystemDir(),true,true,0,rslt);
	{Remove old service from registry if existing}
	RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Services\CVS');
	Result := True;
end;

function StopCvsLockService : Boolean;
var rslt : integer;
begin
	InstExec(GetSystemDir()+'\net.exe','stop cvslock',GetSystemDir(),true,true,0,rslt);
	Result := True;
end;

procedure RegisterCvs;
var mypath : string;
begin
  mypath := ExpandConstant('{app}');
  RegisterTypeLibrary(mypath + '\cvs.exe');
end;

function InitializeSetup: Boolean;
var
  SysInfo: TSystemInfo;
begin
  GetSystemInfo(SysInfo);
  if SysInfo.wProcessorLevel < 6 then
  begin
    MsgBox('CVSNT requires at least a Pentium Pro to install',mbInformation,0);
    Result := False;
  end
  else
    Result := True;
end;
