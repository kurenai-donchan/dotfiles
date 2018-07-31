# Dotfiles for winodws

This repository is MY PERSONAL dotfiles.

### Install apps
 - [chocolatey](https://chocolatey.org/install)
```
#install chocolatey commands with cmd.exe
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

```
 - [GIT for Windows sdk](https://github.com/git-for-windows/build-extra/releases)

### Install cmder portable (without git for windows etc.)
 - Run the following command
```
choco install -y cmdermini.portable
```

#### option
 - change environment variables
```
HOME=C:\Users\%USERNAME%\UnixHome
```

### setting cmder
 - [Keys & Macro] タブ内の 「[InSelection] Copy: Current selection as plain text: Copy(0,0)」の[Choose hotkey] を「なし」にする。
 - [Keys & Macro] タブ内の 「Paste first line of clipboard contents, autoconvert paths…」の[Choose hotkey] を「なし」にする。
 - Main -> [change fonts]
 - Main -> [monospace] unchecked
 - Main -> Tab bar -> [Tabs on bottom] unchecked
 - Startup -> Tasks -> [+]
    -> [Title] Git for Windows SDK
    -> [Task parameter] /icon "C:\git-sdk-64\usr\bin\bash.exe"
    -> [Commands] cd %HOME% & "C:\git-sdk-64\usr\bin\bash.exe" --login -i
 - Startup -> Specifed named task
    -> [Git for Windows SDK] Select

### update pacman
(open cmder)
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


### Setup
```
mkdir ~/src && cd ~/src

# default git-sdk-64 bin
/c/git-sdk-64/mingw64/bin/git clone ${this repository}
cp -r dotfiles ~/dotfiles
cd ~/src/dotfiles

# symlink support for windows
export MSYS=winsymlinks:nativestrict

# start setup
./setup.sh
```

### reopen console

Enjoy console. development.


