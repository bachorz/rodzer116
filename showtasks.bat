call runcrud.bat
if "%ERRORLEVEL%" == "0" goto openBrowser
echo.
echo GRADLEW BUILD has errors - breaking work
goto fail

:openBrowser
start chrome http://localhost:8080/crud/v1/task/getTasks
goto end
if "%ERRORLEVEL%" == "0" goto goto end
echo.
echo Cannot run browser
goto fail


:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.
