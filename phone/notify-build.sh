#!/bin/bash
telegram-send  "$(tail log | grep "failed to build" >> /dev/null && echo "Build Failed" || echo "Builed Successful")"
