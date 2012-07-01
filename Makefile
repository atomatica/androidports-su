default:
	- bash -c "source ../../aosp/build/envsetup.sh; \
	cd ../../aosp; \
	mv system/extras/su /tmp/; \
	cp -a ../androidports/su system/extras/su/; \
	lunch full_toro-userdebug; \
	make -j16 OUT_DIR="../androidports/out" su; \
	rm -rf system/extras/su; \
	mv /tmp/su system/extras/"
