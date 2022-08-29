REPO=swindles-arch-packages
REPODIR=${HOME}/git/${REPO}
PKGBUILD_DIR=${HOME}/git/PKGBUILDs

add:
	grep "swindles-arch-packages" /etc/pacman.conf > /dev/null || printf '\n[swindles-arch-packages]\nSigLevel = Optional DatabaseOptional\nServer = https://git.cbps.xyz/swindlesmccoop/swindles-arch-packages/raw/branch/master/x86_64\n' >> /etc/pacman.conf

update:
	cp ${PKGBUILD_DIR}/*/*.pkg.tar.zst x86_64/
	rm -f x86_64/${REPO}*
	repo-add x86_64/${REPO}.db.tar.gz x86_64/*.pkg.tar.zst
	unlink x86_64/*.db
	unlink x86_64/*.files
	mv x86_64/${REPO}.db* x86_64/${REPO}.db
	mv x86_64/${REPO}.files* x86_64/${REPO}.files
	git add .
	@printf '\033[1;32m-----------------------------------------\n'
	@git diff HEAD --name-only
	@printf '\033[1;32m-----------------------------------------\n\033[0m'
	git commit -a -m "Update repository"
	git push

.PHONY: add update