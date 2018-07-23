# Dotfiles for winodws

This repository is MY PERSONAL dotfiles.

"C:\git-sdk-64\usr\bin\bash.exe"

set MSYSTEM=MINGW64 & "C:\git-sdk-64\usr\bin\bash.exe" --login -i

### Install apps
 - [chocolatey](https://chocolatey.org/install)
```
#install chocolatey commands with cmd.exe
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

```
 - [msys2](http://www.msys2.org/)
 - [GIT for Windows sdk](https://github.com/git-for-windows/build-extra/releases)

### Install cmder portable (without git for windows etc.)
 - Run the following command
```
choco install -y cmdermini.portable
```

#### option
 - change environment variables
```
HOME=C:\Users\ts-takao.a.fukuoka\UnixHome
```

 - [Keys & Macro] タブ内の 「[InSelection] Copy: Current selection as plain text: Copy(0,0)」の[Choose hotkey] を「なし」にする。
 - [Keys & Macro] タブ内の 「Paste first line of clipboard contents, autoconvert paths…」の[Choose hotkey] を「なし」にする。


### setting cmder
 - Main -> [change fonts]
 - Main -> [monospace] unchecked
 - Main -> Tab bar -> [Tabs on bottom] unchecked
 - Startup -> Tasks -> Add/refresh... 
    -> [Bash::Msys2-64] Select
 - Startup -> Specifed named task
    -> [Bash::Msys2-64] Select
  - Commands の枠に下記設定
```
set CHERE_INVOKING=1 & set MSYS2_PATH_TYPE=inherit & set "PATH=%ConEmuDrive%\msys64\usr\bin;%PATH%" & cd %HOME% & %ConEmuBaseDirShort%\conemu-msys2-64.exe -new_console:p %ConEmuDrive%\msys64\usr\bin\bash.exe --login -i -new_console:C:"%ConEmuDrive%\msys64\msys2.ico"
```

### update msys2
```
pacman -Syu
# if exit, retry this comand
# reopen console
```

#### pacman help for using command
1. pacman -hでヘルプ。
1. pacman -S -hで-Sオプションのヘルプ。
1. pacman -Suでパッケージのアップデート(事前にupdate-coreが必要)。
1. pacman -Ss [pattern]でパッケージを検索。
1. pacman -Sl | grep [pattern]でもだいたい分かる。
1. pacman -S [package]でインストール。
1. pacman -S --noconfirm [package]でyesでインストール。
1. pacman -Rs [package]でアンインストール。
1. pacman -Sgでパッケージグループの一覧を表示。
1. pacman -Qqeでインストール済みのパッケージ一覧を表示。
1. pacman -Si [package]で詳しい情報を表示。
1. pacman -Scで使っていないキャッシュを削除。

### Install Git
```
pacman -S --noconfirm git
```

### Setup
```
mkdir ~/src && cd ~/src
git clone https://ts-takao.a.fukuoka@git.rakuten-it.com/scm/~ts-takao.a.fukuoka/dotfiles.git
cp -r dotfiles ~/dotfiles
cd dotfiles

# symlink support
export MSYS=winsymlinks:nativestrict

# start setup
./setup.sh
```

