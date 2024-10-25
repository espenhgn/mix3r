#!/bin/bash
set -e

case "$1" in
  "mix3r_int_weights")
    /opt/conda/bin/python /scripts/mix3r_int_weights.py
    ;;
  "extract_p")
    /opt/conda/bin/python /scripts/extract_p.py
    ;;
  "make_template")
    /opt/conda/bin/python /scripts/make_template.py
    ;;
  "make_euler")
    /opt/conda/bin/Rscript /scripts/make_euler.r
    ;;
  *)
    echo "Invalid command. Available commands are: mix3r_int_weights, extract_p, make_template, make_euler"
    exit 1
    ;;
esac
