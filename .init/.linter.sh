#!/bin/bash
cd /home/kavia/workspace/code-generation/learning-dashboard-platform-334831-334847/language_learning_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

