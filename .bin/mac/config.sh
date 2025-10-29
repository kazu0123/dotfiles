#!/usr/bin/env bash
sudo sysctl iogpu.wired_limit_mb=122880 #= 120MiB = 128GiB(Unified Memory Size) - 8GiB(Minimal System Memory Size, Customizable)
