REPO=swindles-arch-packages
REPODIR=${HOME}/git/${REPO}
PKGBUILD_DIR=${HOME}/git/PKGBUILDs

add:
	grep "swindles-arch-packages" /etc/pacman.conf > /dev/null || printf '\n[swindles-arch-packages]\nSigLevel = Optional DatabaseOptional\nServer = https://git.cbps.xyz/swindlesmccoop/swindles-arch-packages/raw/branch/master/x86_64\n' >> /etc/pacman.conf

update:
	cd x86_64
	mv ${PKGBUILD_DIR}/*/*.pkg.tar.zst .
	rm -f ${REPO}*
	repo-add ${REPO}.db.tar.gz *.pkg.tar.zst
	unlink *.db
	unlink *.files
	mv ${REPO}.db* ${REPO}.db
	mv ${REPO}.files* ${REPO}.files
	git add .
	@printf '\033[1;32m-----------------------------------------\n'
	@git diff HEAD --name-only
	@printf '\033[1;32m-----------------------------------------\n\033[0m'
	git commit -a -m "Update repository"
	git push

.PHONY: add update