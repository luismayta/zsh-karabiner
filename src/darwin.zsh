#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function karabiner::install {
    if [ -e "${KARABINER_APP_DIR}" ]; then
        return
    fi
    message_info "Installing ${KARABINER_PACKAGE_NAME}"
    brew cask install "${KARABINER_PACKAGE_NAME}"
    message_info "Installed ${KARABINER_PACKAGE_NAME}"
}
