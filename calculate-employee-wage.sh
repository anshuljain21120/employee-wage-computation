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

function get_working_hours()
{
	local randomCheck fullday_hour;
	randomCheck=1;
	fullday_hour=${1:-8};

	if [ $( employee_attendance ) -eq 1 ] && [ $randomCheck -eq 1 ]
	then
		echo "$fullday_hour";
	else
		echo "0";
	fi
}

wage_per_hour=20;
echo "Daily Employee wage: $(( $( get_working_hours ) * wage_per_hour))";
