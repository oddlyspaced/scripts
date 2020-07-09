#!/bin/bash
curl -T $1 -Lv station307.com 2>&1 | grep located-at
