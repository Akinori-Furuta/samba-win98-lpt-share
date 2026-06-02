#!/bin/bash
# Make samba 3.*.* source code.

MyBase="$( basename "$0" )"
MyWhich="$( which "$0" )"
MyPath="$( readlink -f "${MyWhich}" )"
MyDir="$( dirname "${MyPath}" )"

if [[ "${0}" == -* ]]
then
	echo "$0: Do not \"source\" this script."
fi

[[ -f "${MyDir}/s0-common.sh" ]] && source "${MyDir}/s0-common.sh"

if [[ -z "${SAMBA_SOURCE}" ]]
then
	SAMBA_SOURCE=$( ls | FindSambaSourceTree )
	[[ -z "${SAMBA_SOURCE}" ]] && SAMBA_SOURCE="."
fi

configure_dir="${SAMBA_SOURCE}/source3"

if [[ ! -d "${configure_dir}" ]]
then
	echo "$0: Can not find source3 directory in samba source code tree. configure_dir=\"${configure_dir}\""
	exit 1
fi

[[ -z "${cpus}" ]] && cpus=1

pushd "${configure_dir}"
make -j ${cpus} "$@"
result=$?
popd
exit ${result}
