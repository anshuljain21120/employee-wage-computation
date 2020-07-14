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
	local randomCheck fullday_hour parttime_hour;
	randomCheck=$(( (RANDOM%2 + 1) * $( employee_attendance ) ));
	fullday_hour=${1:-8};
	parttime_hour=${2:-4};

	case $randomCheck in
		0)
			echo "0";;

		1)
			echo "$fullday_hour";;

		2)
			echo "$parttime_hour";;
	esac
}

wage_per_hour=20;
echo "Daily Employee wage: $(( $( get_working_hours ) * wage_per_hour))";
