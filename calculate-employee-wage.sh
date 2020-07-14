#! /bin/bash -x
echo "Welcome to Employee wage computation program!";

function employee_attendance()
{
	local present_mark absent_mark randomCheck;

	present_mark="${1:-1}";
	absent_mark="${2:-0}";
	randomCheck=$((RANDOM%2));

	( [ $randomCheck -eq 1 ] && echo "$present_mark") || echo "$absent_mark";
}

echo "$( employee_attendance 'Employee is present.' 'Employee is absent.' )";

