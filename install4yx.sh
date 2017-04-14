#!/bin/bash
# Install bundle for Yinxiang.
# By chenxm
set -e

GEEKNOTE_REPO=https://github.com/VitaliyRodnenko/geeknote.git
YX_SERVER=app.yinxiang.com

if [ -d geeknote ]; then
  echo "warnning: existing dir: geeknote"
else
  git clone $GEEKNOTE_REPO
fi 

sed -i 's/www.evernote.com/app.yinxiang.com/g' geeknote/geeknote/config.py

cd geeknote
python setup.py install
cd -

echo "Success!"
echo "Use 'geeknote --help' for more info."
exit 0