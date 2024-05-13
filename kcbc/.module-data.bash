#!/bin/bash
module_target="/usr/local/bin"

module_preinstall() {
	sudo apt-get install --no-install-recommends -y \
		binutils \
		binutils-aarch64-linux-gnu \
		binutils-arm-linux-gnueabi \
		jq
}
