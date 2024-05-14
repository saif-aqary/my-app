#!/usr/bin/env sh

echo 'Creating Optimized Production Build.'
set -x
npm run build
set +x

echo 'Serving Build ...'
echo 'Process ID will be safed in .pidfile'
set -x
npm start &
sleep 1
echo $!
echo $! > .pidfile
set +x

echo 'Now...'
echo 'Visit http://192.168.1.168:3000 to see your Node.js/React application in action.'
