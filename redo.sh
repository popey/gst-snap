#!/bin/bash

set -eu

snap remove gst
snapcraft clean --use-lxd
snapcraft --use-lxd
snap install gst_0.6.1-6-g7908836_amd64.snap --dangerous
sudo snap connect gst:hardware-observe
sudo snap connect gst:log-observe
sudo snap connect gst:system-observe
sudo snap connect gst:config-sensors
snap run gst