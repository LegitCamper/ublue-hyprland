#!/bin/sh
set -e
URL=$(curl https://raw.githubusercontent.com/hyprland-community/pyprland/main/scripts/get-pypr | head -n 3 | tail -n 1 | cut -c 5- | sed 's/\"//g')
PROGRAM=/usr/bin/pypr
CACHEDIR=/var/cache/pypr
WHEEL=package.whl

[ ! -d $CACHEDIR ] && ${SUDO} mkdir $CACHEDIR
cd $CACHEDIR
curl -o $WHEEL $URL

append() {
    echo $@ | tee -a $PROGRAM
}

touch $PROGRAM
chmod 755 $PROGRAM
chmod 755 $CACHEDIR
chmod 644 $CACHEDIR/$WHEEL

append "#!/bin/sh"
append "export PYTHONPATH='$CACHEDIR/$WHEEL'"
append 'exec python -m pyprland.command $@'
