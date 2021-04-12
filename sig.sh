#!/bin/bash
unzip out.apk -d tmp
cd tmp
rm -rf META-INF
zip -r out.new.apk *
mv out.new.apk ..
cd ..
jarsigner -verbose -storepass abcd1234 -keypass abcd1234 -keystore ./android.key -signedjar signed.out.apk out.new.apk CERT

rm out.new.apk
rm -rf tmp
