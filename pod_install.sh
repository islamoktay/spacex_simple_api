#!/bin/bash
set -e

cd ios

arch -x86_64 pod update
arch -x86_64 pod install 