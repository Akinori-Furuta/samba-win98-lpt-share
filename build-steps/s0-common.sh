#!/bin/bash
# Common script will be sourced

function FindSambaSourceTree() {
	declare -a ver_max
	declare -a ver_split
	local	grater
	local	samba_pick
	local	i
	local	ver_tuples=3
	local	result=0

	i=0
	while (( ${i} < ${ver_tuples} ))
	do
		ver_max[${i}]=0
		i=$(( ${i} + 1 ))
	done

	samba_pick=""

	while read
	do
		if [[ ! ( "${REPLY}" == samba-* ) ]]
		then
			continue
		fi

		if [[ ! -d "${REPLY}" ]]
		then
			continue
		fi

		ver_split=( $(echo "${REPLY}" | sed -e 's/^.*-//; s/^\([0-9.]\+\).*/\1/; s/[.]$//; s/[.]/ /g') )
		if (( ${#ver_split[*]} < ${ver_tuples} ))
		then
			continue
		fi

		grater=""
		i=0
		while (( ${i} <= ${ver_tuples} ))
		do
			if (( ${ver_split[${i}]} < ${ver_max[${i}]} ))
			then
				break
			fi
			if (( ${ver_split[${i}]} == ${ver_max[${i}]} ))
			then
				continue
			fi
			grater=${i}
			break
			i=$(( ${i} + 1 ))
		done
		if [[ -n "${grater}" ]]
		then
			ver_max=( ${ver_split[*]} )
			samba_pick="${REPLY}"
		fi
	done
	echo "${samba_pick}"

	[[ -z "${samba_pick}" ]] && result=1
	return ${result}
}

cpus=$( cat /proc/cpuinfo | grep -i '^processor' | wc -l )
cpus=$(( ${cpus} - 1 ))
(( ${cpus} <= 0 )) && cpus=1

build_tuples="$( make -v | grep -i 'Built' | awk '{print $NF}' )"

export CFLAGS="-I/usr/include/readline -I/usr/include/iniparser"
