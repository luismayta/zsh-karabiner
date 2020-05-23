#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install karabiner for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#
export KARABINER_PACKAGE_NAME=karabiner-elements

KARABINER_ROOT_DIR=$(dirname "$0")
KARABINER_SRC_DIR="${KARABINER_ROOT_DIR}"/src

export KARABINER_APP_DIR="/Applications/Karabiner-Elements.app"

export KARABINER_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"

# shellcheck source=/dev/null
source "${KARABINER_SRC_DIR}"/base.zsh

# shellcheck source=/dev/null
source "${KARABINER_SRC_DIR}"/utils.zsh

# cross::os functions for osx and linux
function karabiner::cross::os {

    case "${OSTYPE}" in
        darwin*)
            # shellcheck source=/dev/null
            source "${KARABINER_SRC_DIR}"/darwin.zsh
            ;;
        linux*)
            # shellcheck source=/dev/null
            source "${KARABINER_SRC_DIR}"/linux.zsh
            ;;
    esac

}

karabiner::cross::os

# shellcheck source=/dev/null
source "${KARABINER_SRC_DIR}"/install.zsh

karabiner::load

karabiner::install
