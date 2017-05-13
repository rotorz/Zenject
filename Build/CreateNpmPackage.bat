@echo off

rmdir npm\zenject /s /q
mkdir npm\zenject
mkdir npm\zenject\assets

xcopy ..\UnityProject\Assets\Plugins\Zenject\Documentation npm\zenject\assets\Documentation /s /i
copy ..\UnityProject\Assets\Plugins\Zenject\Documentation.meta npm\zenject\assets\Documentation.meta
xcopy ..\UnityProject\Assets\Plugins\Zenject\Source npm\zenject\assets\Source /s /i
copy ..\UnityProject\Assets\Plugins\Zenject\Source.meta npm\zenject\assets\Source.meta

copy npm\package.json npm\zenject\package.json
copy ..\License.md npm\zenject\LICENSE
copy ..\README.md npm\zenject\README.md

cd npm\zenject

rem TODO: Run a command that updates version number in npm\zenject\package.json.

rem TODO: Run the npm publish command here to automate publishing to npm registry.
