#! /usr/bin/env sh
set -e

python3.6 -c 'import sys; print("python version: {}.{}".format(sys.version_info.major, sys.version_info.minor))'

nvidia-smi
