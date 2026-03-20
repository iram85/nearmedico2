@echo off
echo =========================================
echo Setting Up NearMedico Application...
echo =========================================
echo.

echo 1/2: Installing Backend Dependencies...
cd backend
call npm install
cd ..

echo.
echo 2/2: Installing Frontend Dependencies...
cd frontend
call npm install
cd ..

echo.
echo =========================================
echo Starting NearMedico Servers...
echo =========================================

:: Start the Node.js Backend Server in a new window
echo Starting Backend Server on port 5000...
start "NearMedico Backend" cmd /k "cd backend && node server.js"

:: Give the backend a second to start
timeout /t 2 /nobreak > nul

:: Start the React Vite Frontend in a new window
echo Starting Frontend Development Server...
start "NearMedico Frontend" cmd /k "cd frontend && npm run dev"

echo.
echo Setup Complete! Both servers have been launched in separate terminal windows.
echo Please keep those new windows open to keep the application running.
pause
