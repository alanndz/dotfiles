#!/bin/bash
module_target="/usr/local/bin"

module_postinstall() {
    chmod -v +x $module_target/*
}
