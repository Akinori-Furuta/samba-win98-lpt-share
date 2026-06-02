#!/bin/bash
# Install packages to build samba-3.6.25

echo "$0: Update package information."

sudo apt update

echo "$0: Checking extra packages."

packages_ext=( \
	+ libcephfs-dev \
	+ libcephfs2 \
	. \
	libgfchangelog0 \
	libglusterfs-dev \
	librados-dev \
	+ libgnutls28-dev \
	+ libgnutls-dane0 \
	+ libgnutls-dane0t64 \
	. \
	+ libgnutls-openssl-dev \
	+ libgnutls-openssl27 \
	. \
	liblerc-dev \
	libsharpyuv-dev \
	+ libtiff-dev \
	+ libtiffxx6 \
	. \
	+ liburcu-dev \
	+ liburcu8 \
	+ liburcu8t64 \
	. \
	+ liburing-dev \
	+ liburing2 \
	. \
	+ libwebp-dev \
	+ libwebpdecoder3 \
	. \
	libcrypt-dev \
	+ libturbojpeg0-dev \
	+ libjpeg62-turbo-dev \
	. \
	+ libiniparser-dev \
	. \
	+ libkrb5-dev \
	.
	+ libgamin-dev \
	.
)

packages_ext_exists=()

pstate="s"

for p in ${packages_ext[*]}
do
	case "${pstate}" in
	(s) # single
		if [[ "${p}" == "+" ]]
		then
			pstate="c"
			continue
		fi

		if [[ "${p}" == "." ]]
		then
			continue
		fi
		# do after esac.
		;;

	(c) # choose
		if [[ "${p}" == "+" ]]
		then
			continue
		fi

		if [[ "${p}" == "." ]]
		then
			pstate="s";
			continue
		fi
		# do after esac.
		;;

	(f) # forward
		if [[ "${p}" == "+" ]]
		then
			continue
		fi

		if [[ "${p}" == "." ]]
		then
			pstate="s";
			continue
		fi
		# found one of them.
		continue
		;;

	(*)
		# Unknown state.
		if [[ "${p}" == "+" ]]
		then
			pstate="c"
			continue
		fi

		if [[ "${p}" == "." ]]
		then
			pstate="s";
			continue
		fi
		# do after esac.
		;;
	esac

	if apt-cache show ${p} > /dev/null
	then
		echo "$0: Add extra package ${p}"
		packages_ext_exists=( ${packages_ext_exists[*]} ${p} )
		if [[ "${pstate}" == "c" ]]
		then
			pstate="f"
		fi
	else
		echo "$0: Skip extra package ${p}"
	fi
done

sudo apt install \
build-essential \
git \
\
autoconf \
automake \
autopoint \
autotools-dev \
binutils-mingw-w64-i686 \
binutils-mingw-w64-x86-64 \
bison \
comerr-dev \
debhelper \
dh-autoreconf \
dh-exec \
dh-python \
dh-strip-nondeterminism \
docbook-xml \
docbook-xsl \
dwz \
flex \
gcc-mingw-w64-base \
gcc-mingw-w64-i686-win32 \
gcc-mingw-w64-i686-win32-runtime \
gcc-mingw-w64-x86-64-win32 \
gcc-mingw-w64-x86-64-win32-runtime \
gettext \
icu-devtools \
intltool-debian \
libacl1-dev \
libarchive-dev \
libarchive-zip-perl \
libassuan-dev \
libattr1-dev \
libavahi-client-dev \
libavahi-common-dev \
libblkid-dev \
libbsd-dev \
libbz2-dev \
libcap-dev \
libcmocka0 \
libcmocka-dev \
libcups2-dev \
libcupsimage2-dev \
libdbus-1-dev \
libdebhelper-perl \
libdeflate-dev \
libext2fs-dev \
libfile-stripnondeterminism-perl \
libgmp-dev \
libgmpxx4ldbl \
libgpg-error-dev \
libgpgme-dev \
libicu-dev \
libidn2-dev \
libjansson-dev \
libjbig-dev \
libjpeg-dev \
libkeyutils-dev \
libldap2-dev \
libldap-dev \
liblmdb-dev \
liblz4-dev \
liblzma-dev \
libmd-dev \
libncurses-dev \
libp11-kit-dev \
libpam0g-dev \
libparse-yapp-perl \
libpng-dev \
libpopt-dev \
libreadline-dev \
libsystemd-dev \
libtasn1-6-dev \
libtasn1-bin \
libtirpc-dev \
libtool \
libunbound8 \
libxml2-dev \
libxxhash-dev \
libzstd-dev \
m4 \
mingw-w64-common \
mingw-w64-i686-dev \
mingw-w64-x86-64-dev \
nettle-dev \
po-debconf \
python3-dnspython \
python3-etcd \
python3-markdown \
sgml-data \
xfslibs-dev \
xfsprogs \
xsltproc \
\
python3-all-dev \
libiconv-hook-dev \
libnsl-dev \
python-dev-is-python3 \
gawk \
libunwind-dev \
\
${packages_ext_exists[*]}
