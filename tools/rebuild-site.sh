#~/bin/sh

# copy the components of the homepage over to index.html
# It's written like this on purpose.
 
pushd ../../maintainer.org/components/ || exit -100
for i in `ls *.page | sed "s/.page//"` ; do cat header.common $i.page footer.common > ../site/$i.html ; done



popd



exit 0
