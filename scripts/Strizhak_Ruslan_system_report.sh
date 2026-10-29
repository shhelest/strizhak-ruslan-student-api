#!/bin/bash

LOG_FILE="logs/Strizhak_Ruslan_system_report.log"

{
    echo "=========================================="
    echo "SYSTEM REPORT - Ruslan Strizhak"
    echo "Student ID: 37187"
    echo "Group: IT2-2314"
    echo "Date and time: $(date)"
    echo "Username: $(whoami)"
    echo "Operating system:"
    sw_vers
    echo "Kernel information:"
    uname -a
    echo "CPU information:"
    sysctl -n machdep.cpu.brand_string
    echo "Memory information:"
    sysctl hw.memsize
    echo "Disk usage:"
    df -h
    echo "Available disk space:"
    df -h /
    echo "=========================================="
    echo
} | tee -a "$LOG_FILE"
