#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function karabiner::load {
    if [ ! -e "${KARABINER_APP_DIR}" ]; then
        return
    fi
}
