#!/bin/bash
module_target="$HOME"

module_preinstall() {
	sudo apt-get update -qq && \
	sudo apt-get upgrade -y && \
	sudo apt-get install --no-install-recommends -y \
	        autoconf \
		autogen \
		automake \
		autotools-dev \
		bc \
		binutils \
		binutils-aarch64-linux-gnu \
		binutils-arm-linux-gnueabi \
		bison \
		bzip2 \
		ca-certificates \
		ccache \
		coreutils \
		cmake \
		curl \
	        cpio \
		expect \
		flex \
		g++ \
		gawk \
		gcc \
		git \
		gnupg \
		gperf \
		help2man \
		lftp \
		libc6-dev \
		libelf-dev \
		libgomp1-* \
		liblz4-tool \
		libncurses5-dev \
		libssl-dev \
		libstdc++6 \
		libtool \
		libtool-bin \
		libtinfo5 \
		llvm \
		lld \
		m4 \
		make \
		nano \
		openjdk-8-jdk \
		openssh-client \
		openssl \
		ovmf \
		patch \
		pigz \
		python3 \
		python2 \
		rsync \
		shtool \
		sshpass \
		subversion \
		tar \
		texinfo \
		tzdata \
		u-boot-tools \
		unzip \
		wget \
		xz-utils \
		zip \
		zlib1g-dev \
		zstd \
		jq \
		tmux \
		fish \
		expect
}

module_install() {
	echo "***** Install requirements for build android *****"
	git clone https://github.com/akhilnarang/scripts $module_target/scripts
	sudo bash $module_target/scripts/setup/android_build_env.sh

	echo "***** Install barom *******"
	curl -L https://git.io/JkItH | bash

}

module_postinstall() {
	echo "***** Setup git configuration *****"
	bash install.sh git

	echo "***** Setup tmux configuration *****"
	bash install.sh tmux

	rm -rf $module_target/scripts
}
