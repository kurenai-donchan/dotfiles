@echo off

rem -------------------------------------------
rem chocolatery��package.config���쐬����o�b�`
rem ./create_pkgs,bat
rem -------------------------------------------

powershell Set-ExecutionPolicy RemoteSigned
powershell .\create_pkgs.ps1
powershell Set-ExecutionPolicy Restricted


echo 'Finish output pacakage.config.'
