@echo off

rmdir npm\zenject /s /q
mkdir npm\zenject

xcopy ..\UnityProject\Assets\Plugins\Zenject npm\zenject\assets /s /i
copy npm\package.json npm\zenject\package.json
copy ..\License.md npm\zenject\LICENSE
copy ..\README.md npm\zenject\README.md

cd npm\zenject

rem TODO: Run a command that updates version number in npm\zenject\package.json.

rem TODO: Run the npm publish command here to automate publishing to npm registry.
