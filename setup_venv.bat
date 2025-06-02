@echo off
echo Checking for virtual environment...

if not exist .venv (
    echo Creating virtual environment...
    python -m venv .venv
    if errorlevel 1 (
        echo Failed to create virtual environment
        pause
        exit /b 1
    )
)

echo Activating virtual environment...
cmd /k ".venv\Scripts\activate.bat"

echo Installing requirements...
python -m pip install -r requirements.txt
if errorlevel 1 (
    echo Failed to install requirements
    pause
    exit /b 1
)

echo Setup completed successfully!
echo Virtual environment is now activated and requirements are installed.
echo.
echo You can run 'deactivate' to exit the virtual environment
pause
