source-directory=`pwd`
src=$(source-directory)/screenshot.sh
target-directory=~/.local/bin
target=$(target-directory)/screenshot.sh

install: clean
	mkdir -p $(target-directory)
	ln -s $(src) $(target)
clean:
	rm -f $(target)

.PHONY: install clean

