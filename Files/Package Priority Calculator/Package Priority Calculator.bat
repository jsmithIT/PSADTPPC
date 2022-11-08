::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdDyDJGa09UE7KRxRSESjLHupOp8d6+Py6ta3o04WVeU6OL/J07ucKfQKqmbleZU42ntOl9kwPw5Ibh25eik9pWtRikWWJMKIoDPNRU+GqEIzFAU=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdDyDJGa09UE7KRxRSESjLHupOp8d6+Py6ta3o04WVeU6OL/J07ucKfQKqmbleZU42ntOl9kwKhJUewGXXg43om9FsyS1Jc6ToQb1Uwiq50czDml1k2zCwi4jZbM=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo .SYNOPSIS
echo A batch script to calculate the priority of a package.
echo Authors: JBSMITH
echo Version: 1.0.0

:: Gets user input
set /p USERIMPACT="How many people would be affected? "
set /p ITIMPACT="How complex is the manual installation, out of 10 (10 being very complex)? "
set /p COST="How complex will the package be, out of 10 (10 being very complex)? "
set /p EXCEPTION="How convenient would it be if the application was packaged, out of 10 (10 being very convenient)? "
set /p DEPIMPACT="How important is the department out of 10 (10 being high visibility and impact)? "
:: Number of County employees divided by 10.
set num1=80

:: Calculates the priority score based on the pros and cons given.
set /a Impact1=%USERIMPACT%/%num1%
set /a Pros=%Impact1%+%ITIMPACT%+%EXCEPTION%+%DEPIMPACT%
set /a Score=%Pros% - %COST%

:: Informs the user of the calculation.
if %Score% LSS 20 (
 echo This package scored a %Score%/40 for priority. This is a low priority package.
)
if %Score% GTR 20 (
 echo This package scored a %Score%/40 for priority. This is a high priority package.
)
if %Score% EQU 20 (
echo This package scored a %Score%/40 for priority. This is a medium priority package.
)

pause